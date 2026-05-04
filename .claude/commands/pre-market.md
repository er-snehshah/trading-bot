---
description: Pre-market research workflow — run before market open
---

You are running the pre-market research workflow.
DATE=$(date +%Y-%m-%d).

STEP 1 — Read memory for context:
- memory/TRADING-STRATEGY.md
- tail of memory/TRADE-LOG.md
- tail of memory/RESEARCH-LOG.md

STEP 2 — Pull live account state:
```
bash scripts/alpaca.sh account
bash scripts/alpaca.sh positions
bash scripts/alpaca.sh orders
```

STEP 3 — Research market context via Perplexity. Run for each query:
```
bash scripts/perplexity.sh "<query>"
```
Queries:
- "WTI and Brent oil price right now"
- "S&P 500 futures premarket today"
- "VIX level today"
- "Top stock market catalysts today $DATE"
- "Earnings reports today before market open"
- "Economic calendar today CPI PPI FOMC jobs data"
- "S&P 500 sector momentum YTD"
- News on each currently-held ticker

If Perplexity exits with code 3, fall back to native WebSearch and note the fallback in the log.

STEP 4 — Write a dated entry to memory/RESEARCH-LOG.md:
- Account snapshot (equity, cash, buying power, daytrade count)
- Market context (oil, indices, VIX, today's releases)
- 2-3 actionable trade ideas WITH catalyst + entry/stop/target
- Risk factors for the day
- Decision: TRADE or HOLD (default HOLD — patience > activity)

STEP 5 — Notification: silent unless genuinely urgent.
```
bash scripts/clickup.sh "<one urgent line>"
```

Local mode: credentials from .env. No commit needed locally.
