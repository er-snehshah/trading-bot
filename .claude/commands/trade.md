---
description: Manual trade helper with strategy-rule validation. Usage: /trade SYMBOL SHARES buy|sell
---

Execute a manual trade with full rule validation. Refuse if any rule fails.

Args: SYMBOL SHARES SIDE (buy or sell). If missing, ask for them.

1. Pull state:
   - `bash scripts/alpaca.sh account`
   - `bash scripts/alpaca.sh positions`
   - `bash scripts/alpaca.sh quote SYMBOL` (capture ask price P)

2. For BUY, validate every rule — STOP and print failed checks if any fail:
   - Total positions after fill <= 6
   - Trades this week + 1 <= 3
   - SHARES * P <= 20% of equity
   - SHARES * P <= available cash
   - daytrade_count < 3
   - Catalyst documented (ask for thesis if not in today's RESEARCH-LOG)
   - Instrument is a stock (confirm — no options)

3. For SELL, confirm position exists with the right quantity. No other checks.

4. Print the order JSON and validation results. Ask "Execute? (y/n)" before placing.

5. On confirm, place the order:
   ```
   bash scripts/alpaca.sh order '{"symbol":"SYM","qty":"N","side":"buy","type":"market","time_in_force":"day"}'
   ```

6. For BUYs, immediately place a 10% trailing stop GTC:
   ```
   bash scripts/alpaca.sh order '{"symbol":"SYM","qty":"N","side":"sell","type":"trailing_stop","trail_percent":"10","time_in_force":"gtc"}'
   ```
   If Alpaca rejects due to PDT, fall back to fixed stop 10% below entry.

7. Log the trade to memory/TRADE-LOG.md with full thesis, entry, stop, target, R:R.

8. `bash scripts/clickup.sh "<ticker, shares, fill price, one-line thesis>"`
