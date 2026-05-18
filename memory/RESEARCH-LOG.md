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

## 2026-05-18 — Pre-market Research
*(Alpaca unavailable — host_not_allowed network policy; Perplexity unavailable — same; fallback → WebSearch)*

### Account
- Equity: ~$10,000 | Cash: ~$10,000 (100%) | Buying power: ~$10,000
- Daytrade count: 0 | PDT: false | Positions: 0
- *Note: Alpaca API blocked by container network policy — using last known state from Trade Log*

### Market Context
- WTI: ~$107.35 (range $101.64–$104.36 intraday) | Brent: ~$110–$112 — Hormuz still effectively closed; WTI +11% last week
- S&P 500 futures: -0.6% premarket; SPY -0.23% at $737.47; QQQ -0.01% at $709 — risk-off open expected
- VIX: ~19.0 (Friday close 18.43, up 6.78%); elevated vs prior 16.78 — fear rising
- Today's catalysts: **Drone strike on UAE Barakah nuclear power plant perimeter** (Sunday May 17) — fire on electrical generator outside inner perimeter, no radiological hazard, no casualties. US and Iran signaling readiness to resume war. IAEA "grave concern." Saudi Arabia intercepted 3 additional drones. Geopolitical escalation accelerating.
- Earnings before open: ~50 reports scheduled today. No mega-cap pre-market movers confirmed. **NVDA reports Wednesday May 20 after close** (est. $1.78 EPS / $79.2B rev, stock up 20% past month — potential sell-the-news).
- Economic calendar: **Fed minutes Wednesday** (3 dissents at last meeting, investors seeking rate path signals). Thursday: housing starts, building permits, Philly Fed, PMIs flash, jobless claims. No CPI this week (April CPI already 3.8% YoY — hotter than 3.7% est.).
- Sector momentum YTD: Energy +22% #1 | Semis/Tech (Mag7) leading S&P | Defense strong | Financials +22% | Energy + Defense = top performers on geopolitical premium

### Trade Ideas

1. **OXY (Occidental Petroleum)** — oil at $107 WTI, Hormuz closed, new UAE nuclear escalation sustains supply premium. Highest E&P operating leverage. Catalyst confirmed and strengthening. Entry: market open (verify quote, skip if spread >$0.50); Stop: 10% trail GTC; Target: +20% (tighten to 7% at +15%); R:R ~2:1. Position size ≤20% equity (~$2,000).

2. **RTX (Raytheon Technologies)** — drone strike on nuclear plant + US/Iran war signals = near-term defense order flow. RTX makes Patriot/NASAMS air defense systems used in Gulf. Uncorrelated to oil reversal risk. Entry: market open; Stop: 10% trail GTC; Target: +15%; R:R ~1.5:1. Position size ≤20% equity.

3. **XOM (ExxonMobil)** — same oil thesis as OXY but lower beta, more liquid, dividend cushion. Backup if OXY spread is wide or position limit reached. Entry: market open; Stop: 10% trail GTC; Target: +15%.

### Risk Factors
- UAE/Iran ceasefire or de-escalation could immediately wipe 10–15% off oil → OXY/XOM exposed
- VIX rising to ~19 = fear premium building; broad market selloff risk if escalation overshoots
- NVDA earnings Wednesday — beat priced in at 97% (Polymarket); sell-the-news could drag broad tech
- CPI 3.8% (hot) → Fed rates higher-for-longer → multiple compression headwind for growth names
- S&P futures -0.6% = risk-off open; energy may be buffered by oil premium but watch early tape
- PDT limit: still 0/3 day trades used; don't waste on early chop

### Decision
**TRADE** — OXY as primary (1 position, ≤$2,000). Verify live quote at open. If OXY spread >$0.50 pivot to XOM. After OXY fills, evaluate RTX as second position if defense sector confirms bid. Do NOT enter NVDA ahead of earnings.

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
