# Cloud Routines

Paste each file's content verbatim into its Claude Code cloud routine.
Do NOT paraphrase — the env-var check and commit-and-push blocks are load-bearing.

## Setup Steps (per routine)

1. Claude Code cloud → Routines → New Routine
2. Name: e.g. "Trading bot pre-market"
3. Repository: your trading-bot repo (requires Claude GitHub App installed)
4. Branch: main
5. Environment variables: add all from env.template
6. Toggle ON: "Allow unrestricted branch pushes"
7. Cron schedule + timezone: see table below
8. Prompt: paste entire content of the matching routines/*.md file verbatim
9. Save → "Run now" to test

## Cron Schedules (America/Chicago)

| Routine | File | Cron | Time |
|---------|------|------|------|
| Pre-market | pre-market.md | `0 6 * * 1-5` | 6:00 AM weekdays |
| Market-open | market-open.md | `30 8 * * 1-5` | 8:30 AM weekdays |
| Midday | midday.md | `0 12 * * 1-5` | 12:00 PM weekdays |
| Daily summary | daily-summary.md | `0 15 * * 1-5` | 3:00 PM weekdays |
| Weekly review | weekly-review.md | `0 16 * * 5` | 4:00 PM Fridays |

## Required Environment Variables (set on each routine)

```
ALPACA_API_KEY        (required)
ALPACA_SECRET_KEY     (required)
ALPACA_ENDPOINT       (use paper URL to start)
ALPACA_DATA_ENDPOINT  (defaults to data.alpaca.markets/v2)
PERPLEXITY_API_KEY    (required for research)
PERPLEXITY_MODEL      (optional, defaults to sonar)
CLICKUP_API_KEY       (required for notifications)
CLICKUP_WORKSPACE_ID  (required, numeric)
CLICKUP_CHANNEL_ID    (required, format: 4-XXXXXXX-X)
```

## Critical: No .env File in Cloud

Credentials come from the routine's environment variables — NOT a .env file.
The prompts contain an explicit "DO NOT create .env" block. Never remove it.
