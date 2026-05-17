# Research Log

Daily pre-market research entries are appended here by the pre-market workflow.

---

## 2026-05-17 — Pre-market Research
*(Perplexity fallback → WebSearch; Alpaca blocked — cloud IP not in allowlist; account state from last known baseline)*

### Account
- Equity: ~$10,000 (Day 0 baseline — Alpaca API unreachable from cloud env)
- Cash: ~$10,000 (100%)
- Buying power: ~$10,000
- Daytrade count: 0 | Positions: 0
- **Note:** `alpaca.sh account` returns 403 "Host not in allowlist" — API key IP restriction blocks cloud runner

### Market Context
- **WTI:** ~$105.42 | **Brent:** ~$113.21 — elevated; Hormuz disruption sustaining premium
- **S&P 500 futures:** ~7,432 (opened 7,522, pulling back ~1.2%); risk-off tone
- **VIX:** ~18.43 (May 15 close) — mid-range, normal volatility; +6.8% on the week
- **Today's catalysts:** Yield breakouts (10Y >4.5%, 30Y >5.0%); bond market pressure on equities; Strait of Hormuz still disrupted; AI CapEx buildout offsetting energy supply shock; records in equities alongside supply-chain fears
- **Earnings this week:** NVDA (Wed May 20 after bell) — highest-impact; WMT (Thu May 21); HD (Tue May 19); no major BMO today (Sunday)
- **Economic calendar:** April CPI released May 12 — headline +0.6% MoM / +3.8% YoY (hot; energy +3.8% drove 40%+ of increase). Next: May CPI Jun 10. No FOMC this week. No Fed rate cuts expected all of 2026 (BofA, futures traders)
- **Sector momentum YTD:** Energy +26% #1 | Tech +16.7% | Materials +12.9% | Industrials +12.8% | Comms +12.3% | Financials -5.0% | Healthcare -6.2%

### Trade Ideas

1. **OXY (Occidental Petroleum)** — Highest operating leverage to oil among US E&P; Hormuz premium sustaining WTI $105+; Energy sector #1 YTD. Entry: Monday open (verify quote, skip if spread >$0.50). Stop: 10% trail GTC. Target: +20%. R:R ~2:1. Size: ≤20% equity (~$2,000 / price = shares).

2. **XOM (ExxonMobil)** — Same oil/Hormuz thesis, more liquid. Dividend cushion lowers downside. Backup if OXY spread is wide or if oil shows reversal signs. Same entry/stop/target framework.

3. **Post-NVDA reaction trade (Wed/Thu)** — Do NOT buy NVDA pre-earnings. If results beat Wednesday after bell, consider entry Thursday open on gap confirmation with tight 7% stop. Tech +16.7% YTD sector momentum. Only execute if setup is clean — this is a plan, not a commitment.

### Risk Factors
- Hormuz ceasefire/de-escalation: could wipe 10-15% off oil overnight → energy longs exposed
- Rising yields (30Y >5%): valuation headwind for tech, growth names; credit stress risk
- Hot inflation (3.8% CPI): no Fed relief; stagflation risk if growth slows
- NVDA earnings disappointment Wed could drag broader tech
- Today is Sunday — Monday open may gap on weekend geopolitical developments
- Alpaca API inaccessible from cloud env — cannot verify live positions or place orders remotely

### Decision
**TRADE** — Deploy 1 position Monday open (OXY primary, XOM backup). Keep remaining cash ready for 1-2 more during the week. Max 3 new trades this week. Do not chase NVDA pre-earnings.

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
