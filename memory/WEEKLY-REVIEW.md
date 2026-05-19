# Weekly Review

Friday reviews are appended here by the weekly-review workflow.

---

## Entry Format

```
## Week ending YYYY-MM-DD

### Stats
| Metric           | Value         |
|------------------|---------------|
| Starting portfolio | $X          |
| Ending portfolio   | $X          |
| Week return        | ±$X (±X%)   |
| S&P 500 week       | ±X%         |
| Bot vs S&P         | ±X%         |
| Trades             | N (W:X / L:Y / open:Z) |
| Win rate           | X%          |
| Best trade         | SYM +X%     |
| Worst trade        | SYM -X%     |
| Profit factor      | X.XX        |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|

### What Worked
- ...

### What Didn't Work
- ...

### Key Lessons
- ...

### Adjustments for Next Week
- ...

### Overall Grade: X
```

---

## Week ending 2026-05-19

*Note: Weekly-review routine fired Tuesday (not Friday). Window covers prior Fri close → Tue intraday; only 2 trading days of data, no Friday EOD snapshot in TRADE-LOG so prior week's close proxied by Monday's `last_equity` ($101,724.16).*

### Stats
| Metric           | Value         |
|------------------|---------------|
| Starting portfolio | $101,724.16 (Mon EOD proxy) |
| Ending portfolio   | $101,363.20 |
| Week return        | -$360.96 (-0.35%) |
| S&P 500 week       | ~-0.37% (Mon -0.07%, Tue -0.30%) |
| Bot vs S&P         | +0.02% (effectively flat) |
| Trades             | 0 (W:0 / L:0 / open:1) |
| Win rate           | N/A (no closed trades) |
| Best trade         | NVDA +6.85% unrealized |
| Worst trade        | NVDA (only position) |
| Profit factor      | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No closed trades this week |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| NVDA (96 sh) | $207.36 | $221.56 | +$1,363.20 (+6.85%) | $207 (10% trail GTC, HWM $230) |

### What Worked
- **Patience held under binary risk.** NVDA prints AMC Wed; resisted urge to add or trim into the event. Position-sizing rule (≤20%) prevented stacking on a binary.
- **Trail-stop discipline.** $207 stop locks in ~breakeven on the ~21% binary — the only hard floor and it's already in place.
- **Cash preservation.** 79% cash going into the week's main catalyst is the correct asymmetry — dry powder for post-print reaction.
- **Daily research cadence.** Two pre-market entries on 5/19 (initial + refresh) cross-checked consensus EPS/rev numbers and caught a stale data point from a prior log.

### What Didn't Work
- **Trade-log gap.** No Monday EOD snapshot exists for this week, forcing me to proxy "start of week" from the broker's `last_equity` field. Hurts attribution precision.
- **Single-name concentration.** ~21% of equity in one binary print (NVDA Wed AMC) is the maximum the rules allow; any negative reaction will dominate weekly P&L vs. the market.
- **No diversification despite strong sector signal.** Energy +22% YTD has been flagged on the watchlist for two weeks; no entry taken. Defensible pre-NVDA but the opportunity cost is real.

### Key Lessons
- Every day must produce an EOD snapshot in TRADE-LOG, even no-trade days. Weekly review depends on it.
- A binary event the size of ~21% of equity defines the week regardless of any other activity — sizing matters more than entry timing.
- Tracking vs. S&P flat is acceptable when ~79% in cash; the bet is on the catalyst, not on broad market beta.

### Adjustments for Next Week
- **Add Friday EOD snapshot discipline.** Every Friday's daily-summary routine must explicitly close the week with a labeled "Week ending YYYY-MM-DD" line so the next weekly review has a clean baseline.
- **Post-NVDA Thursday decision:** if NVDA gaps up materially, tighten trail to 7% (per rule at +15%) and consider initiating one energy position (OXY or XLE) with cash. If NVDA gaps down, trail-stop handles the exit; reassess sector entries from a cash position.
- **Do not add new positions Wed.** Binary day; only management orders.
- No rule changes to TRADING-STRATEGY.md — rules performed as intended; the gap was logging discipline, not strategy.

### Overall Grade: B

Solid risk management and rule adherence; flat performance vs. flat market is the right outcome heading into a binary catalyst. Loses points for the missing Monday EOD snapshot (process gap) and for a partial-week review window that limits signal.
