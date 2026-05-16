# Research Log

Daily pre-market research entries are appended here by the pre-market workflow.

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

## 2026-05-16 — Pre-market Research (Weekend; applies to Mon May 18 open)
*(Alpaca API: 403 network-blocked in cloud env — using last known state from trade log. Perplexity: 403 blocked — fallback WebSearch used.)*

### Account
- Equity: ~$10,000 | Cash: ~$10,000 (100%) | Buying power: ~$20,000 (est.)
- Daytrade count: 0 | PDT: false | Positions: 0
- Note: Live Alpaca call blocked by cloud network policy; state from Day 0 baseline

### Market Context
- WTI: ~$106/bbl (+4.5% on week) / Brent: ~$111/bbl — Hormuz closure premium persisting
- S&P 500 futures: ~7,432 (pulled back from ATH ~7,540), -1.23% past 24h; yields/inflation weighing
- VIX: 17.98, +4.17% — rising nervousness, but not extreme
- Today's catalysts (weekend → Monday open):
  - Strait of Hormuz still effectively closed → oil premium baked in; reversal risk if de-escalation
  - April jobs: +115k (beat +55k est.) — labor resilient; stagflation risk lower
  - Fed rate hike odds climbed to 45% for 2026 (vs. near-zero a month ago) → yields rising, headwind for growth
  - Trump–Xi Beijing summit: trade truce extended; ~$30B bilateral deal in progress → risk-on positive
  - **NVDA earnings May 20 (Wed)** — dominant catalyst for the week; Jensen Huang at summit (chip export deal potential)
  - Walmart, Home Depot also report this week
- Earnings Mon May 18 before open: CEPU, YALA — no market-movers
- Economic calendar: Light next week; major prints already digested (retail sales May 14, jobs May 9)
- Sector momentum YTD: Energy, Materials, Industrials, Staples = Leading quadrant | Tech, Comm, Discretionary, Financials = Lagging

### Trade Ideas

1. **OXY (Occidental Petroleum)** — Hormuz still closed, WTI >$100 persisting; energy leads sector momentum. Thesis unchanged from May 4 research. Entry: Monday open (verify quote/spread); Stop: 10% trail GTC; Target: +20%. Tighten to 7% at +15%. R:R ~2:1. Size: ≤20% of $10k (~$2,000).

2. **NVDA (Nvidia)** — pre-earnings momentum play with stacked catalysts: Jensen at Beijing (chip export deal to China), BofA PT raised to $320, Computex June catalyst upcoming, AI demand structural. Earnings Wed May 20 = binary event. Entry Monday on clean open; Stop: 10% trail GTC; Target: +15–20% into print or exit before close Tue. **High risk — must size ≤20%, plan exit before earnings if holding.** R:R ~2:1 if executed well.

3. **XOM (ExxonMobil)** — backup energy name if OXY spread >$0.50. Lower beta, dividend support, same Hormuz catalyst. Entry: market open; Stop: 10% trail GTC; Target: +12–15%. R:R ~1.5:1.

### Risk Factors
- NVDA earnings May 20: binary event — gap either direction. Do NOT hold through the print unless willing to accept large gap risk.
- Fed rate hike odds rising: growth/tech headwind. Rising yields compress multiples — NVDA especially exposed.
- Hormuz reversal: any ceasefire/de-escalation could wipe $10–15/bbl off oil instantly → OXY/XOM exposed.
- S&P 500 near ATH (7,540) with VIX ticking up — distribution phase possible after strong Q1 earnings.
- First live trade: max 1 position to open. Do not chase 75–85% deployment on Day 1.
- Alpaca API inaccessible in this env — verify account state manually or via direct API before sizing any order.

### Decision
**HOLD** — no Monday market-open action until live quote/account confirmed via Alpaca. OXY and NVDA are the two candidates; run market-open workflow Monday to confirm spread, account state, and price action before entering. Do not enter blind.

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
