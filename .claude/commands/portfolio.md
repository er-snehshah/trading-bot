---
description: Read-only snapshot of account, positions, open orders, and stops
---

Print a clean ad-hoc snapshot. No state changes, no orders, no file writes.

1. `bash scripts/alpaca.sh account`
2. `bash scripts/alpaca.sh positions`
3. `bash scripts/alpaca.sh orders`

Format the output as a single concise summary:

```
Portfolio — <today's date>
Equity: $X | Cash: $X (X%) | Buying power: $X
Daytrade count: N/3 | PDT flag: <true/false>

Positions:
  SYM | Shares | Entry -> Now | Unrealized P&L | Stop

Open orders:
  TYPE | SYM | qty | trail%/stop_price | order_id
```

No commentary unless something is broken:
- Flag any position with no corresponding stop order
- Flag any stop order priced below current bid
