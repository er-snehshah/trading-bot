# Trading Strategy

## Mission
Beat the S&P 500 over the challenge window. Stocks only — no options, ever.

## Capital & Constraints
- Starting capital: ~$10,000
- Platform: Alpaca (paper trading initially)
- Instruments: Stocks ONLY
- PDT limit: 3 day trades per 5 rolling days (account < $25k)

## Core Rules
1. **NO OPTIONS — ever**
2. **75-85% deployed** = 75-85% of account equity IN open positions (not in cash).
   - If deployed < 40% with no binary event pending → mandatory deployment scan in next pre-market. Must open a position or document in writing why no setup qualifies.
   - If deployed < 50% at Friday weekly review with no pending binary → forced written "deploy-or-skip" decision required.
3. **5-6 positions at a time, max 20% each** (~$2,000 per position on $10k)
4. **10% trailing stop on every position as a real GTC order** — place immediately after fill, same session
5. **Cut losers at -7% manually.** No hoping, no averaging down.
6. **Tighten trail:** 7% at +15% unrealized; 5% at +20% unrealized
7. **Never tighten within 3% of current price; never move a stop down**
8. **Max 3 new trades per week**
9. **Follow sector momentum.** Don't force a thesis if the sector is rolling over.
10. **Exit a sector after 2 consecutive failed trades**
11. **Patience means waiting for a catalyst — not avoiding deployment.** Zero trades is correct when there is no valid setup. It is wrong when 80%+ is in cash with no binary pending.

## High Water Mark (HWM) Mechanics
- HWM = the highest closing price since entry for the position
- Trail stop is calculated from HWM, not from current price: `stop = HWM × (1 - trail_pct)`
- When a new HWM is set (new closing high), recalculate the stop and record the new HWM in TRADE-LOG
- Never move the stop down, even if HWM calculation would require it
- Example: Entry $207.36, HWM $230.00, 10% trail → stop = $230 × 0.90 = $207.00
- On tighten events (+15%, +20%): apply new pct to HWM at time of tighten, not to current price

## Buy-Side Gate (ALL must pass before any order)
- Total positions after fill <= 6
- Trades this week (including this one) <= 3
- Position cost <= 20% of account equity
- Position cost <= available cash
- daytrade_count leaves room (under 3 on sub-$25k account)
- Specific catalyst documented in today's research log
- Instrument is a stock (not an option, not anything else)
- Size calc: `shares = floor(equity × 0.20 / ask_price)` — never exceed 20%

## Sell-Side Rules
- **Unrealized loss <= -7%:** close immediately
- **Thesis broken** (catalyst invalidated, sector rolling over): close even if not at -7%
- **Post-catalyst fade rule:** if position fades 3+ consecutive sessions after a catalyst event (earnings, news), treat thesis as broken regardless of P&L. Document the decision. Do not hold waiting for a recovery that contradicts the tape's verdict.
- **Good print, bad reaction:** if the catalyst beat but price action is negative/flat for 3+ days, exit or set a hard deadline (e.g., "close by Friday if no new HWM by then")
- **Up >= +20%:** tighten trailing stop to 5%
- **Up >= +15%:** tighten trailing stop to 7%
- **Sector has 2 consecutive failed trades:** exit all positions in that sector

## Max Hold Time Rule
- If unrealized P&L < +5% after 30 calendar days → mandatory reassessment
- Write decision: either close, tighten stop, or document specific forward catalyst with target date
- "Thesis still intact" is not sufficient — must name a specific upcoming event or price level
- If unrealized P&L < 0% after 30 calendar days → close unless actively in a defined recovery setup

## Post-Catalyst Action Rule
- After any major sector catalyst (earnings beat + raise from a sector leader), by next session:
  - Write a decision on adding ONE correlated but non-duplicate position
  - Default is no longer "pass" — it is "size or document why not"
  - Example: NVDA blowout → written decision on AVGO / MU / semis ETF next morning

## Entry Checklist (document before placing)
- What is the specific catalyst today?
- Is the sector in momentum?
- What is the stop level? `stop_price = entry × 0.90` (10% trail from entry as initial floor)
- What is the target (minimum 2:1 risk/reward)?
- What will I do if the position fades 3 sessions after the catalyst?

## Order Templates

```json
// Market buy
{"symbol":"XOM","qty":"12","side":"buy","type":"market","time_in_force":"day"}

// 10% trailing stop (default for every new position)
{"symbol":"XOM","qty":"12","side":"sell","type":"trailing_stop","trail_percent":"10","time_in_force":"gtc"}

// Fixed stop (fallback when PDT rules block trailing stop)
{"symbol":"XOM","qty":"12","side":"sell","type":"stop","stop_price":"140.00","time_in_force":"gtc"}
```

Fixed stop price calculation: `stop_price = entry_price × 0.90` (round to 2 decimal places)

## Alpaca Notes
- `trail_percent` and `qty` must be strings in JSON, not numbers
- Market data: data.alpaca.markets | Trading: api.alpaca.markets (or paper-api)
- quote.ap = ask, quote.bp = bid. Wide spread or zero = halted/illiquid — skip
- Trailing stops only work during market hours
- Env var ALPACA_API_KEY → HTTP header APCA-API-KEY-ID (wrapper handles this)
- Trailing stop orders require an open position to exist — never place before fill confirms
