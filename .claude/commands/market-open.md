---
description: Market-open execution workflow — run shortly after 9:30 AM ET / 8:30 AM CT
---

You are running the market-open execution workflow.
DATE=$(date +%Y-%m-%d).

STEP 1 — Read memory for today's plan:
- memory/TRADING-STRATEGY.md
- TODAY's entry in memory/RESEARCH-LOG.md (if missing, run pre-market steps inline first — never trade without documented research)
- tail of memory/TRADE-LOG.md (for weekly trade count)

STEP 2 — Re-validate each planned trade with live data:
```
bash scripts/alpaca.sh account
bash scripts/alpaca.sh positions
bash scripts/alpaca.sh quote <each planned ticker>
```
Check bid/ask spread. Skip any ticker with zero bid or wide spread (halted/illiquid).

STEP 3 — Hard-check every rule BEFORE each order. Skip and log if any fail:
- Total positions after fill <= 6
- Trades this week <= 3
- Position cost <= 20% of equity
- Catalyst documented in today's RESEARCH-LOG
- daytrade_count leaves room (PDT: 3/5 rolling business days)
- Instrument is a stock

STEP 4 — Execute buys (market orders, day TIF):
```
bash scripts/alpaca.sh order '{"symbol":"SYM","qty":"N","side":"buy","type":"market","time_in_force":"day"}'
```
Wait for fill confirmation before placing the stop.

STEP 5 — Immediately place 10% trailing stop GTC for each new position:
```
bash scripts/alpaca.sh order '{"symbol":"SYM","qty":"N","side":"sell","type":"trailing_stop","trail_percent":"10","time_in_force":"gtc"}'
```
If Alpaca rejects with PDT error, fall back to fixed stop 10% below entry:
```
bash scripts/alpaca.sh order '{"symbol":"SYM","qty":"N","side":"sell","type":"stop","stop_price":"X.XX","time_in_force":"gtc"}'
```
If also blocked, queue in TRADE-LOG as "PDT-blocked, set tomorrow AM".

STEP 6 — Append each trade to memory/TRADE-LOG.md (match existing format):
Date, ticker, side, shares, entry price, stop level, thesis, target, R:R.

STEP 7 — Notification only if a trade was placed:
```
bash scripts/telegram.sh "<tickers, shares, fill prices, one-line why>"
```

Local mode: credentials from .env. No commit needed locally.
