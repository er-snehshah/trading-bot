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


---

## Week ending 2026-05-22

*Full Mon→Fri window. NVDA earnings week — the binary event we positioned for. Print was a beat & raise; tape disagreed.*

### Stats
| Metric           | Value         |
|------------------|---------------|
| Starting portfolio | $101,436.16 (Mon May 18 EOD, sourced from Tue last_equity) |
| Ending portfolio   | $100,759.36 (Fri May 22 EOD snapshot) |
| Week return        | -$676.80 (-0.67%) |
| S&P 500 week       | +0.5% (FRED weekly series) |
| Bot vs S&P         | -1.17% |
| Trades             | 0 (W:0 / L:0 / open:1) |
| Win rate           | N/A (no closed trades) |
| Best trade         | NVDA +3.81% unrealized (only position) |
| Worst trade        | NVDA — peak +7.79% Wed → +3.81% Fri (gave back ~$1,019 unrealized post-print) |
| Profit factor      | N/A |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| — | — | — | — | No trades closed this week |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| NVDA (96 sh) | $207.36 | $215.27 | +$759.36 (+3.81%) | $207 (10% trail GTC, HWM $230) |

### What Worked
- **Sized the binary correctly.** ~21% of equity in NVDA pre-print respected the 20% cap; trail-stop @ $207 locked breakeven. Worst-case outcome on a bad print was preserved capital, not P&L damage.
- **Pre-print discipline.** Resisted all temptation to add/trim into the catalyst. Three pre-market entries cross-checked consensus vs whispers — analytical hygiene held.
- **Killed the energy thesis on time.** WTI rolled $103→$98; followed Rule #9 (don't force on a fading sector) instead of chasing a decaying setup. No bad trade taken from a deteriorating thesis.
- **Cash discipline.** 79% cash held all week — no FOMO deployment despite a multi-day positive tape.
- **Daily EOD snapshot cadence restored.** Every Mon-Fri now has a TRADE-LOG entry, including a labeled Friday weekly close — fixes the process gap from last week.

### What Didn't Work
- **Concentration defined the week.** Single 21% position drove 100% of P&L variance. NVDA's muted reaction to a blowout ($82B beat, $91B Q2 guide vs $87.4B cons) cost ~$1,019 in unrealized give-back across Wed→Fri.
- **Underperformed S&P by ~1.2%.** Bot -0.67% vs SPX +0.5%; tech leadership re-asserted (XLK +24% YTD per Thu data) but our concentration was in the one name the tape sold on a good print.
- **No diversification despite 79% cash.** Carried a full week of dry powder with zero second-leg exposure. Pre-NVDA pass was defensible; Thursday post-print pass (after blowout guide confirmed AI capex thesis) was a missed opportunity — should have considered MSFT/AVGO/MU or sector ETF.
- **Trail-stop never tightened.** NVDA peaked at +7.79% Wed — never crossed +15% threshold needed to tighten to 7%. Stop stayed at original $207 the whole week. Not a process error, but means the position has zero gain-protection above breakeven.

### Key Lessons
- **A "good print, bad reaction" outcome on a sized binary still hurts on a relative basis.** When the rest of the market is bid +0.5% and your one position fades, single-name binaries cost relative performance even when absolute capital is preserved.
- **Post-catalyst windows are where new positions become *easier*, not harder.** Thursday morning, with NVDA's $91B guide confirming AI capex, was the cleanest second-leg entry point of the week. Stayed paralyzed by recency bias from the muted reaction. Next time: a confirmed bullish catalyst from a leader = green light to add a correlated but uncorrelated-to-NVDA-stock-price name (semis ETF, hyperscaler).
- **Friday EOD discipline matters.** This week's review has a clean Mon start and Fri end. Keep it.

### Adjustments for Next Week
- **Active rule:** After a major sector catalyst (earnings beat & raise from a leader), force a written decision on adding ONE correlated position the next session. Default action is no longer "pass" — it's "size or document why not." This is a behavioral nudge, not a strategy change.
- **NVDA management:** Hold. Trail at $207 (HWM $230). If NVDA breaks $207 on weekend gap, trail handles exit; if it bases here ($215–220), reassess in Mon pre-market with cash-redeploy candidates ready (semis, industrials on momentum, financials on rate path).
- **Watchlist refresh Mon AM:** AVGO, MU, MSFT (AI follow-on); CAT/DE (industrials still leading); skip energy until WTI bases.
- **No TRADING-STRATEGY.md rule changes.** Rules performed as designed. The miss was discretionary post-catalyst behavior, not a rule failure.

### Overall Grade: C+

Capital preserved (-0.67% on a binary-event week is fine on absolute terms), all rules followed cleanly, logging discipline restored. But relative performance lagged (-1.17% vs SPX) because concentration without diversification + post-catalyst paralysis = predictable underperformance when the binary fades. Process: B+. Outcome: C. Net: C+.
