# Research Log

Daily pre-market research entries are appended here by the pre-market workflow.

---

## 2026-05-16 — Pre-market Research (Weekend / Monday Prep)
*(Perplexity API → 403; Alpaca API → 403; both fallback to WebSearch + Day-0 baseline)*

### Account
- **API status:** Alpaca returning 403 — credentials invalid in this environment. Using Day-0 baseline.
- Equity: $10,000.00 | Cash: $10,000.00 (100%) | Buying power: ~$10,000
- Daytrade count: 0 | Positions: 0 | Open orders: 0
- Note: Market closed today (Saturday). Next open: Monday May 18.

### Market Context
- **WTI:** ~$106/bbl | **Brent:** ~$109/bbl — +11% week, Strait of Hormuz effectively closed
- **S&P 500 futures:** ~7,419 (opened 7,493); slight intraday pullback; record highs reached this week
- **VIX:** 17.98 (+4.17% from prior close of 17.26) — fear ticking up
- **10yr Treasury:** 4.55% (+9bps spike, highest in 1 year)
- **Fed leadership:** Kevin Warsh confirmed May 13, Powell term ended May 15. Warsh era begins Monday.
- **Rate hike probability:** 45% sometime in 2026 (was <1% a month ago); hike odds 20% Oct / 30% Dec
- **Today's catalysts:** No market today (Sat). Week catalysts — Warsh Fed transition; Hormuz closure; Treasury yield spike; April NFP 115k beat (est. 55k); 84.3% Q1 beat rate with 26% earnings growth
- **Earnings before open:** None (Saturday). Monday May 18 has 61 reports.
- **Economic calendar:** No releases today. Watch NVDA earnings Wednesday May 20 — major AI read-through.
- **Sector momentum YTD:** Materials (+22%) #1 | Energy strong | Semis / AI infra leading | Industrials / Consumer Staples leading | Tech cooling | Financials lagging | Healthcare weakening

### Trade Ideas

1. **OXY (Occidental Petroleum)** — highest operating leverage to oil among US E&P; direct Hormuz beneficiary. Energy sector in top momentum. Catalyst: WTI >$100 sustained by Strait closure. Entry: Monday open (verify quote, skip if spread >$0.50). Stop: 10% trail GTC. Target: +20% (tighten to 7% at +15%). R:R ~2:1. Size: ≤20% of $10k = ≤$2,000.

2. **MPC (Marathon Petroleum)** — downstream energy, Momentum Score B, 49.5% avg quarterly earnings beat. Less exposed to oil-price reversal than E&P (refining margins can stay elevated). Catalyst: same Hormuz/energy supply thesis. Entry: Monday open. Stop: 10% trail GTC. Target: +15-18%. Backup if OXY spread is wide.

3. **LMT (Lockheed Martin)** — defense restocking theme; US military deployment + geopolitical tension driving new orders. Uncorrelated to oil reversal risk. Catalyst: ongoing Hormuz/Iran tensions + elevated defense spending. Entry: Monday open. Stop: 10% trail GTC. Target: +15%. R:R ~1.5:1.

### Risk Factors
- **Warsh Fed + oil >$100 = rate hike risk is real** — 10yr at 4.55%, 45% hike probability; rising yields compress equity multiples
- Hormuz de-escalation could drop oil 10-15% instantly, wiping energy longs
- VIX at 17.98 and rising — any surprise hits harder here
- Day-1 of live trading — start with 1 position max; do NOT rush to 75-85% deployed
- Alpaca API 403 must be resolved before any order can be placed Monday

### Decision
**HOLD** — Market closed (Saturday). Action for Monday: resolve Alpaca 403 first. If fixed and market confirms oil/Hormuz thesis intact, enter OXY as first position (1 position only). Max $2,000 size. If Alpaca still broken Monday open, no trades.

---

## 2026-05-04 — Pre-market Research
*(Perplexity fallback → WebSearch)*

### Account
- Equity: $100,000 | Cash: $100,000 (100%) | Buying power: $200,000
- Daytrade count: 0 | PDT: false | Positions: 0

### Market Context
- WTI: ~$102.90–106.70 / Brent: ~$109.43–113.25 — elevated, +4–5% on Hormuz closure
- S&P 500 futures: ~-0.40% premarket (7,265 area); risk-off tone on Iran news
- VIX: 16.78 — complacent but geopolitical tail risk is real
- Today's catalysts: Trump "Project Freedom" (US military to escort stranded Hormuz ships); Iran warning US forces away from strait; mixed futures
- Earnings before open: Tyson Foods (TSN), Norwegian Cruise Line (NCLH), Axsome Therapeutics — no mega-cap surprises
- Economic calendar: Light today. **BIG risk Friday: April NFP est. +53k vs prior +178k** — potential shock
- Sector momentum YTD: Energy +22.7% #1 | Materials +16.3% | Industrials +14.3% | Financials +22% | Tech lagging (-3.4%)

### Trade Ideas

1. **OXY (Occidental Petroleum)** — highest operating leverage to oil price among US E&P; direct beneficiary of Hormuz premium. Catalyst: Strait closure sustaining WTI >$100. Entry: market open (check quote); Stop: 10% trail GTC; Target: +20% (at +15% tighten to 7%). R:R ~2:1. Position size: ≤20% equity (~$20,000 / price = shares).

2. **XOM (ExxonMobil)** — same oil thesis, more liquid/defensive. Lower beta than OXY but dividend cushion. Entry: market open; Stop: 10% trail GTC; Target: +15–18%. Backup if OXY spread is wide.

3. **LMT (Lockheed Martin)** — US military active deployment drives near-term defense order expectations. Less correlated to oil reversal risk. Entry: market open; Stop: 10% trail GTC; Target: +15%. Lower R:R but uncorrelated to oil thesis.

### Risk Factors
- Iran ceasefire/de-escalation could wipe 10–15% off oil immediately → energy longs exposed
- April jobs Friday: +53k est. vs +178k prior — a miss could spark broad risk-off
- VIX at 16.78 = complacency premium; surprise events hit harder from here
- Day 1 of bot — start with 1 position, do not rush to 75–85% deployed immediately

### Decision
**TRADE** — OXY as primary; 1 position only to open the account. Verify live quote at open before sizing. If OXY spread >$0.50 at open, pivot to XOM.

---

## Entry Format

```
## YYYY-MM-DD — Pre-market Research

### Account
- Equity: $X
- Cash: $X
- Buying power: $X
- Daytrade count: N

### Market Context
- WTI / Brent:
- S&P 500 futures:
- VIX:
- Today's catalysts:
- Earnings before open:
- Economic calendar:
- Sector momentum:

### Trade Ideas
1. TICKER — catalyst, entry $X, stop $X, target $X, R:R X:1
2. ...

### Risk Factors
- ...

### Decision
TRADE or HOLD (default HOLD if no clear edge)
```
