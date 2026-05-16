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

## 2026-05-16 — Pre-market Research (Weekend — Monday Preview)
*(Perplexity fallback → WebSearch | Alpaca API blocked: host_not_allowed — cloud IP not on allowlist)*

### Account
- Equity: ~$10,000 (trade-log baseline — live API unreachable)
- Cash: ~$10,000 | Buying power: ~$10,000
- Daytrade count: 0 | PDT: false | Positions: 0
- **BLOCKER:** Alpaca returning 403 `host_not_allowed` — cloud runner IP not whitelisted. Cannot trade or verify live state until fixed.

### Market Context
- **WTI:** ~$106/bbl (+4.5% Fri May 15) | **Brent:** ~$109.24/bbl (+3.33% Fri May 15); Hormuz closure week-over-week +8.1%
- **S&P 500:** Closed above 7,500 for first time Thursday May 14; futures range 7,409–7,493 Fri
- **VIX:** 17.98 (+4.17% Sat morning) — ticking up; caution warranted at new market highs
- **Today's catalysts (weekend / Monday preview):**
  - Trump-Xi summit concluded; 16 US executives accompanied Trump; trade détente in focus
  - April NFP came in +115k (beat est.; March revised +7k) — labor market resilient but Info sector -16 months straight
  - U. Michigan consumer confidence: fresh record low — growth concern offset by jobs beat
  - Nvidia earnings May 20 (Wed) — AI/SOX setup into report; vol likely to expand Mon–Wed
  - Poet Technologies volatile (+43% then -18%) on $500M Lumilens contract news
- **Earnings today:** None (Saturday). Monday May 18: 61 reports scheduled — check calendar Sunday
- **Economic calendar:** No major releases on weekend. Watch next week: Nvidia (May 20), any Fed speakers
- **Sector momentum YTD:** Energy +22% #1 | Industrials + Materials leading | Consumer Staples flight-to-safety | Tech cooling after AI run; healthcare surprise performer (defensive bid)

### Trade Ideas (for Monday May 18 open)

1. **OXY (Occidental Petroleum)** — Hormuz premium intact, WTI >$100 sustained. Highest operating leverage among US E&P. Entry: market open Mon; Stop: 10% trail GTC; Target: +20%. R:R ~2:1. Size ≤20% equity (~$2,000). *Still the primary thesis from 5/4 — now validate that Alpaca API access is restored before placing.*

2. **NVDA (Nvidia)** — Earnings May 20 pre-report setup. AI capex cycle intact; SOX may rally into report. Risk: post-earnings vol crush. Entry: Mon open, hold through Wed earnings only if thesis clear; Stop: 10% trail GTC; Target: +12–15% into print. High-risk/high-reward; only if energy thesis unavailable. R:R ~1.5:1.

3. **XLE (Energy ETF)** — Diversified energy exposure if OXY spread is wide at open or if single-stock risk feels excessive. Same Hormuz catalyst, lower vol. Entry: Mon market open; Stop: 10% trail GTC; Target: +15%.

### Risk Factors
- **Alpaca API blocked** — cannot execute any trade until IP allowlist fixed. TOP PRIORITY.
- De-escalation / Hormuz reopening → energy -10 to -15% instantly
- VIX creeping up (17.98) at new S&P highs = fragile complacency
- Consumer confidence at record low conflicts with jobs beat — bifurcated signal
- Nvidia earnings Wed: miss would punish any tech long hard
- 0 positions means 0 risk currently; do NOT force a trade Monday if API is still blocked

### Decision
**HOLD** — Cannot trade (API blocked). Fix Alpaca allowlist before market open Monday. If resolved: TRADE OXY at Monday open, 1 position, ≤20% equity. Verify live quote, confirm spread <$0.50, place 10% trailing stop GTC immediately after fill.

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
