# Trading Bot

Autonomous swing trading bot powered by Claude Code cloud routines.

## Quick Start

1. Copy `env.template` to `.env` and fill in credentials
2. Open this repo in Claude Code
3. Run `/portfolio` to verify Alpaca connection
4. Set up cloud routines per `routines/README.md`

## Architecture

- **Claude is the bot** — each scheduled run is a fresh LLM invocation
- **Git is the memory** — all state lives in `memory/` committed to main
- **Bash wrappers** — all external calls go through `scripts/`

## Five Daily Cron Jobs (America/Chicago)

| Job | Cron | Purpose |
|-----|------|---------|
| Pre-market | `0 6 * * 1-5` | Research catalysts |
| Market-open | `30 8 * * 1-5` | Execute trades |
| Midday | `0 12 * * 1-5` | Cut losers, tighten stops |
| Daily summary | `0 15 * * 1-5` | EOD snapshot + ClickUp |
| Weekly review | `0 16 * * 5` | Grade week, update strategy |

## Hard Rules

- Stocks ONLY — no options, ever
- Max 5-6 positions, 20% each
- Max 3 new trades per week
- 10% trailing stop on every position
- Cut losers at -7%
- Patience > activity
