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
*(Perplexity fallback → WebSearch; Alpaca API 403 — account data from Trade Log baseline)*

### Account
- Equity: ~$10,000 (estimated — Alpaca 403, live pull failed)
- Cash: ~$10,000 | Buying power: unknown
- Daytrade count: 0 | PDT: false | Positions: 0
- ⚠️ Alpaca returning 403 on all endpoints — keys may be mismatched to endpoint (paper vs live). Investigate before placing orders.

### Market Context
- WTI: $102.84 (+1.80%), range $101.64–$104.36 — Hormuz still effectively closed; WTI +11% last week
- Brent: $110.95 (+1.73%), range $110.13–$111.99
- S&P 500 futures: -0.58% (-42.75 pts) as of 4 AM ET; S&P recently hit all-time high 7,501 Thursday
- VIX: 18.43 (May 15 close, +6.78% on week) — rising risk, geopolitical tail growing
- Today's catalysts: Drone struck perimeter of UAE's Barakah nuclear plant (Sunday May 17); no radiation released but US + Iran signaling war-resumption readiness; broad risk-off open expected
- Earnings before open: ~50 reports scheduled; no mega-cap pre-market surprises identified
- Economic calendar (week): PMIs, UMich consumer sentiment, housing data, retail sales (Thu), **FOMC minutes** (key — hot CPI/PPI means hawkish signals likely); **NVDA earnings Wed May 20** is single biggest market event this week
- Sector momentum YTD: Energy +26.0% #1 | Technology +16.7% | Materials +12.9% | Financials -5.0%

### Trade Ideas

1. **OXY (Occidental Petroleum)** — Hormuz closure sustaining WTI >$100 + UAE nuclear plant drone strike adds geopolitical risk premium. Highest operating leverage to oil among US E&P. Entry: market open if spread ≤$0.50 and not gapping down >2%; Stop: 10% trail GTC; Target: +20% (tighten to 7% trail at +15%). Size ≤20% equity (~$2,000). R:R ~2:1.

2. **NOC (Northrop Grumman)** — Drone strike on Arab nuclear facility + US/Iran war-resumption signals = near-term defense spending acceleration. Uncorrelated to oil reversal risk. Entry: market open; Stop: 10% trail GTC; Target: +15%. Backup if energy sector reverses.

3. **XOM (ExxonMobil)** — Same energy thesis as OXY, lower beta, more liquid. Fallback if OXY spread is wide or gapping hard. Entry: market open; Stop: 10% trail GTC; Target: +15–18%.

### Risk Factors
- UAE drone strike could trigger rapid ceasefire OR rapid escalation — oil binary event; energy longs exposed both ways
- VIX 18.43 and rising — surprise events hit harder from elevated vol baseline
- NVDA earnings May 20 will dominate mid-week; any tech-sector narrative shift can bleed into broad market
- FOMC minutes likely hawkish (hot CPI/PPI backdrop) — rate-sensitive sectors at risk
- Alpaca 403 error — MUST resolve before placing any orders; cannot confirm position size or account equity
- Broad futures -0.58% = risk-off open; energy may not escape the tide initially

### Decision
**TRADE** — OXY primary (energy thesis intact: Hormuz + UAE drone escalation + WTI +$102). **Condition: resolve Alpaca 403 first.** If API issue persists at open, HOLD all trades until resolved. If OXY spread >$0.50 at open, pivot to XOM. Start with 1 position only (≤$2,000). Do not chase if gapping up >3% at open.

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
