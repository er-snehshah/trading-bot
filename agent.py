#!/usr/bin/env python3
"""
Autonomous trading bot agent — runs a named routine using Anthropic tool use.
Usage: python agent.py --routine <pre-market|market-open|midday|weekly-review>
"""

import argparse
import json
import os
import subprocess
import sys
from pathlib import Path

import anthropic

ROOT = Path(__file__).parent.resolve()

ROUTINES = {
    "pre-market":     ROOT / "routines" / "pre-market.md",
    "market-open":    ROOT / "routines" / "market-open.md",
    "midday":         ROOT / "routines" / "midday.md",
    "weekly-review":  ROOT / "routines" / "weekly-review.md",
}

MEMORY_FILES = [
    "memory/TRADING-STRATEGY.md",
    "memory/TRADE-LOG.md",
    "memory/RESEARCH-LOG.md",
    "memory/PROJECT-CONTEXT.md",
    "memory/WEEKLY-REVIEW.md",
]

ALLOWED_BASH_PREFIXES = (
    "bash scripts/alpaca.sh ",
    "bash scripts/perplexity.sh ",
    "bash scripts/clickup.sh ",
    "git add ",
    "git commit ",
    "git push ",
    "git pull ",
    "git log ",
    "git status",
    "date",
    "echo ",
)

TOOLS = [
    {
        "name": "bash_exec",
        "description": (
            "Run an allowed shell command from the repo root. "
            "Allowed prefixes: bash scripts/alpaca.sh, bash scripts/perplexity.sh, "
            "bash scripts/clickup.sh, git add/commit/push/pull/log/status, date, echo."
        ),
        "input_schema": {
            "type": "object",
            "properties": {
                "command": {"type": "string", "description": "The shell command to run."}
            },
            "required": ["command"],
        },
    },
    {
        "name": "read_file",
        "description": "Read a file relative to the repo root.",
        "input_schema": {
            "type": "object",
            "properties": {
                "path": {"type": "string", "description": "Relative path from repo root."}
            },
            "required": ["path"],
        },
    },
    {
        "name": "write_file",
        "description": "Write (overwrite) a file relative to the repo root.",
        "input_schema": {
            "type": "object",
            "properties": {
                "path": {"type": "string", "description": "Relative path from repo root."},
                "content": {"type": "string", "description": "Full file content."},
            },
            "required": ["path", "content"],
        },
    },
    {
        "name": "append_file",
        "description": "Append text to a file relative to the repo root.",
        "input_schema": {
            "type": "object",
            "properties": {
                "path": {"type": "string", "description": "Relative path from repo root."},
                "content": {"type": "string", "description": "Text to append."},
            },
            "required": ["path", "content"],
        },
    },
]


def run_bash(command: str) -> str:
    allowed = any(command.strip().startswith(p) for p in ALLOWED_BASH_PREFIXES)
    if not allowed:
        return f"ERROR: command not in allowlist: {command}"
    try:
        result = subprocess.run(
            command,
            shell=True,
            cwd=str(ROOT),
            capture_output=True,
            text=True,
            timeout=60,
            env={**os.environ, "GIT_TERMINAL_PROMPT": "0"},
        )
        out = result.stdout + (f"\nSTDERR: {result.stderr}" if result.stderr.strip() else "")
        return out.strip() or "(empty output)"
    except subprocess.TimeoutExpired:
        return "ERROR: command timed out after 60s"
    except Exception as e:
        return f"ERROR: {e}"


def read_file(path: str) -> str:
    full = ROOT / path
    if not full.exists():
        return f"(file not found: {path})"
    return full.read_text(encoding="utf-8")


def write_file(path: str, content: str) -> str:
    full = ROOT / path
    full.parent.mkdir(parents=True, exist_ok=True)
    full.write_text(content, encoding="utf-8")
    return f"wrote {path} ({len(content)} bytes)"


def append_file(path: str, content: str) -> str:
    full = ROOT / path
    full.parent.mkdir(parents=True, exist_ok=True)
    with open(full, "a", encoding="utf-8") as f:
        f.write(content)
    return f"appended {len(content)} bytes to {path}"


def dispatch_tool(name: str, inputs: dict) -> str:
    if name == "bash_exec":
        return run_bash(inputs["command"])
    if name == "read_file":
        return read_file(inputs["path"])
    if name == "write_file":
        return write_file(inputs["path"], inputs["content"])
    if name == "append_file":
        return append_file(inputs["path"], inputs["content"])
    return f"ERROR: unknown tool {name}"


def build_system_prompt(routine_name: str, routine_text: str) -> str:
    memory_context = []
    for rel in MEMORY_FILES:
        content = read_file(rel)
        memory_context.append(f"=== {rel} ===\n{content}")

    return (
        "You are an autonomous trading bot agent managing a LIVE ~$10,000 Alpaca account.\n"
        "Hard rules: stocks only — NEVER touch options. Ultra-concise. Patience > activity.\n\n"
        "REPO ROOT: " + str(ROOT) + "\n\n"
        "ROUTINE: " + routine_name + "\n\n"
        "ROUTINE INSTRUCTIONS:\n" + routine_text + "\n\n"
        "CURRENT MEMORY FILES (preloaded for context):\n\n"
        + "\n\n".join(memory_context)
    )


def run_routine(routine_name: str) -> None:
    routine_path = ROUTINES[routine_name]
    routine_text = routine_path.read_text(encoding="utf-8")

    client = anthropic.Anthropic(api_key=os.environ["ANTHROPIC_API_KEY"])

    system = build_system_prompt(routine_name, routine_text)
    messages = [
        {
            "role": "user",
            "content": (
                f"Execute the {routine_name} routine now. "
                "Follow every step in the routine instructions exactly. "
                "Use tools to read/write memory files, call the bash wrappers, and commit results."
            ),
        }
    ]

    print(f"[agent] starting routine: {routine_name}", flush=True)

    while True:
        response = client.messages.create(
            model="claude-opus-4-7",
            max_tokens=16000,
            thinking={"type": "adaptive"},
            system=system,
            tools=TOOLS,
            messages=messages,
        )

        # Collect assistant turn
        assistant_content = response.content
        messages.append({"role": "assistant", "content": assistant_content})

        if response.stop_reason == "end_turn":
            # Print final text output
            for block in assistant_content:
                if hasattr(block, "text"):
                    print(block.text, flush=True)
            print(f"[agent] routine complete: {routine_name}", flush=True)
            break

        if response.stop_reason == "tool_use":
            tool_results = []
            for block in assistant_content:
                if block.type == "tool_use":
                    print(f"[tool] {block.name}({json.dumps(block.input)[:120]})", flush=True)
                    result = dispatch_tool(block.name, block.input)
                    print(f"[tool] -> {result[:200]}", flush=True)
                    tool_results.append({
                        "type": "tool_result",
                        "tool_use_id": block.id,
                        "content": result,
                    })
            messages.append({"role": "user", "content": tool_results})
            continue

        # Unexpected stop reason
        print(f"[agent] unexpected stop_reason: {response.stop_reason}", flush=True)
        break


def main() -> None:
    parser = argparse.ArgumentParser(description="Trading bot agent")
    parser.add_argument(
        "--routine",
        required=True,
        choices=list(ROUTINES.keys()),
        help="Which routine to run",
    )
    args = parser.parse_args()

    if "ANTHROPIC_API_KEY" not in os.environ:
        print("ERROR: ANTHROPIC_API_KEY not set in environment", file=sys.stderr)
        sys.exit(1)

    run_routine(args.routine)


if __name__ == "__main__":
    main()
