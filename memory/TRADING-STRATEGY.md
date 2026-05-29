# Trading Strategy

## Mission
Beat the S&P 500 over the challenge window. Stocks only — no options, ever.
Approach: high-frequency swing trades targeting +7% profit per trade with a hard -4% stop.

## Capital & Constraints
- Starting capital: ~$10,000
- Platform: Alpaca (paper trading initially)
- Instruments: Stocks ONLY
- PDT limit: 3 day trades per 5 rolling days (account < $25k)

## Core Rules
1. **NO OPTIONS — ever**
2. **Max 5 open positions, max 20% per position**
3. **Max 3 new trades per week**
4. **Every trade has TWO exit orders placed immediately after fill:**
   - Limit sell at **+7%** above entry (take profit)
   - Stop loss at **-4%** below entry (hard cut)
5. **Never move the stop down — ever**
6. **Only buy on a specific catalyst** — earnings, sector breakout, macro event. No catalyst = no trade.
7. **Only buy in leading sectors** — check sector momentum before every entry.
8. **Exit a sector after 2 consecutive losing trades in it**
9. **No averaging down** — if a position is losing, the stop handles it. Never add to a loser.
10. **Entry-day move filter (NEW — added Week ending 2026-05-29):** No new entry on a name already up **>5%** intraday from prior close UNLESS the breakout itself is the catalyst (clean structure + confirming volume). Rationale: catalysts that have already moved >5% are largely priced — asymmetry has shifted from "+7% likely, -4% unlikely" to roughly even. Evidence: ARM 2026-05-28 entered at +14% on a 3.5hr-old PCE print → stopped same day -3.09%.
11. **Post-catalyst hold review (NEW — added Week ending 2026-05-29):** When holding a position past a binary catalyst (earnings, macro print), force a written hold-or-trim decision on **day 2 of consecutive fade off the post-catalyst peak**. The +15% trail-tighten and -4% stop rules can leave too much room on a "good print, bad reaction" pattern. Evidence: NVDA peaked +7.79% on May 20 print day; manual exit didn't happen until May 28 after 5 fade sessions — gave back ~$1,057 of unrealized.

## Exit Math
| Parameter | Value |
|-----------|-------|
| Take profit | +7% above entry |
| Stop loss | -4% below entry |
| Risk:Reward | 1.75:1 |
| Break-even win rate | ~37% |
| Target win rate | 50%+ |

## Buy-Side Gate (ALL must pass before any order)
- Total positions after fill <= 5
- Trades this week (including this one) <= 3
- Position cost <= 20% of account equity
- Position cost <= available cash
- daytrade_count leaves room (under 3 on sub-$25k account)
- Specific catalyst documented in today's research log
- **Name is not already up >5% intraday from prior close (unless the breakout is the catalyst)**
- Instrument is a stock (not an option, not anything else)
- Size calc: `shares = floor(equity × 0.20 / ask_price)` — never exceed 20%

## Entry Checklist (document before placing)
- What is the specific catalyst?
- Is the sector in the leading quadrant?
- **Intraday move from prior close: is it <5%? (If >5%, is the breakout itself the catalyst with volume?)**
- Take profit price: `entry × 1.07`
- Stop loss price: `entry × 0.96`
- R:R check: target gain / max loss >= 1.5

## Order Sequence (every trade, no exceptions)

**Step 1 — Market buy:**
```json
{"symbol":"SYM","qty":"N","side":"buy","type":"market","time_in_force":"day"}
```

**Step 2 — Limit sell at +7% (take profit):**
```json
{"symbol":"SYM","qty":"N","side":"sell","type":"limit","limit_price":"X.XX","time_in_force":"gtc"}
```

**Step 3 — Stop loss at -4%:**
```json
{"symbol":"SYM","qty":"N","side":"sell","type":"stop","stop_price":"X.XX","time_in_force":"gtc"}
```

Wait for Step 1 fill before placing Steps 2 and 3.
When one of Steps 2/3 fills → **immediately cancel the other**.

## Price Calculations
```
take_profit  = round(entry × 1.07, 2)
stop_loss    = round(entry × 0.96, 2)
position_size = floor(equity × 0.20 / ask_price)
```

## Example
- Equity: $100,000 | Buy NVDA @ $200 | Size: 100 shares ($20,000)
- Limit sell GTC @ $214.00 (+7%)
- Stop loss GTC @ $192.00 (-4%)
- If target hits → +$1,400 profit (+7%)
- If stop hits → -$800 loss (-4%)

## Sell-Side Rules
- **Take profit hit (+7%):** limit order fills automatically → cancel the stop immediately
- **Stop loss hit (-4%):** stop order fills automatically → cancel the limit immediately
- **Thesis broken before either level:** close at market, cancel both orders
- **Sector has 2 consecutive losing trades:** exit all positions in that sector
- **Post-catalyst hold review:** on day 2 of consecutive fade off a post-catalyst peak, force a written hold-or-trim decision (don't wait for stop/trail to do it)

## Deployment Target
- Target: 60-100% deployed across 3-5 positions
- If deployed < 40% with no setup in research → mandatory scan next pre-market

## Alpaca Notes
- `qty`, `limit_price`, `stop_price` must be strings in JSON, not numbers
- Market data: data.alpaca.markets | Trading: paper-api.alpaca.markets
- quote.ap = ask, quote.bp = bid. Zero bid or wide spread = skip
- Limit and stop orders only work during market hours for most stocks
- Env var ALPACA_API_KEY → HTTP header APCA-API-KEY-ID (wrapper handles this)
- After a take-profit or stop fills, cancel the other order immediately: `bash scripts/alpaca.sh cancel ORDER_ID`
