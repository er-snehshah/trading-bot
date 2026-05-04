# Trading Strategy

## Mission
Beat the S&P 500 over the challenge window. Stocks only — no options, ever.

## Capital & Constraints
- Starting capital: ~$10,000
- Platform: Alpaca (paper trading initially)
- Instruments: Stocks ONLY
- PDT limit: 3 day trades per 5 rolling days (account < $25k)

## Core Rules
1. NO OPTIONS — ever
2. 75-85% deployed
3. 5-6 positions at a time, max 20% each (~$2,000 per position)
4. 10% trailing stop on every position as a real GTC order
5. Cut losers at -7% manually. No hoping, no averaging down.
6. Tighten trail: 7% at +15%, 5% at +20%
7. Never tighten within 3% of current price; never move a stop down
8. Max 3 new trades per week
9. Follow sector momentum. Don't force a thesis if the sector is rolling over.
10. Exit a sector after 2 consecutive failed trades
11. Patience > activity. A week with zero trades can be the right answer.

## Buy-Side Gate (ALL must pass before any order)
- Total positions after fill <= 6
- Trades this week (including this one) <= 3
- Position cost <= 20% of account equity
- Position cost <= available cash
- daytrade_count leaves room (under 3 on sub-$25k account)
- Specific catalyst documented in today's research log
- Instrument is a stock (not an option, not anything else)

## Sell-Side Rules
- Unrealized loss <= -7%: close immediately
- Thesis broken (catalyst invalidated, sector rolling over): close even if not at -7%
- Up >= +20%: tighten trailing stop to 5%
- Up >= +15%: tighten trailing stop to 7%
- Sector has 2 consecutive failed trades: exit all positions in that sector

## Entry Checklist (document before placing)
- What is the specific catalyst today?
- Is the sector in momentum?
- What is the stop level (7-10% below entry)?
- What is the target (minimum 2:1 risk/reward)?

## Order Templates

```json
// Market buy
{"symbol":"XOM","qty":"12","side":"buy","type":"market","time_in_force":"day"}

// 10% trailing stop (default for every new position)
{"symbol":"XOM","qty":"12","side":"sell","type":"trailing_stop","trail_percent":"10","time_in_force":"gtc"}

// Fixed stop (fallback when PDT rules block trailing stop)
{"symbol":"XOM","qty":"12","side":"sell","type":"stop","stop_price":"140.00","time_in_force":"gtc"}
```

## Alpaca Notes
- `trail_percent` and `qty` must be strings in JSON, not numbers
- Market data: data.alpaca.markets | Trading: api.alpaca.markets (or paper-api)
- quote.ap = ask, quote.bp = bid. Wide spread or zero = halted/illiquid — skip
- Trailing stops only work during market hours
- Env var ALPACA_API_KEY → HTTP header APCA-API-KEY-ID (wrapper handles this)
