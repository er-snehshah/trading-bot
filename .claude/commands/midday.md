---
description: Midday scan workflow — cut losers, tighten stops on winners
---

You are running the midday scan workflow.
DATE=$(date +%Y-%m-%d).

STEP 1 — Read memory:
- memory/TRADING-STRATEGY.md (exit rules)
- tail of memory/TRADE-LOG.md (entries, original thesis, stops)
- today's memory/RESEARCH-LOG.md entry

STEP 2 — Pull current state:
```
bash scripts/alpaca.sh positions
bash scripts/alpaca.sh orders
```

STEP 3 — Cut losers immediately. For every position where unrealized_plpc <= -0.07:
```
bash scripts/alpaca.sh close SYM
bash scripts/alpaca.sh cancel ORDER_ID   # cancel its trailing stop
```
Log the exit to TRADE-LOG: exit price, realized P&L, "cut at -7% per rule".

STEP 4 — Tighten trailing stops on winners. For each eligible position, cancel old stop, place new:
- Up >= +20% → trail_percent: "5"
- Up >= +15% → trail_percent: "7"
Never tighten within 3% of current price. Never move a stop down.

STEP 5 — Thesis check. For each remaining position, review price action and any midday news.
If a thesis broke intraday (catalyst invalidated, sector rolling over), close the position even if not at -7% yet.
Document reasoning in TRADE-LOG.

STEP 6 — Optional intraday research via Perplexity if something is moving sharply with no obvious cause:
```
bash scripts/perplexity.sh "<ticker + sharp move query>"
```
Append afternoon addendum to RESEARCH-LOG if relevant.

STEP 7 — Notification only if action was taken:
```
bash scripts/clickup.sh "<action summary>"
```

Local mode: credentials from .env. No commit needed locally.
