---
description: End-of-day portfolio snapshot and ClickUp summary — run after market close
---

Run the daily summary workflow locally.

1. Read tail of memory/TRADE-LOG.md (find yesterday's closing equity for Day P&L).
2. `bash scripts/alpaca.sh account`
3. `bash scripts/alpaca.sh positions`
4. `bash scripts/alpaca.sh orders`
5. Compute Day P&L, Phase P&L, trades today, week trade count.
6. Append EOD snapshot to memory/TRADE-LOG.md matching existing format:
   ### MMM DD — EOD Snapshot
   **Portfolio:** $X | **Cash:** $X (X%) | **Day P&L:** ±$X (±X%) | **Phase P&L:** ±$X (±X%)
   positions table + Notes paragraph
7. `bash scripts/telegram.sh "EOD <date> / Portfolio: $X ..."`
8. `git add memory/TRADE-LOG.md && git commit -m "EOD snapshot <date>" && git push origin main`
