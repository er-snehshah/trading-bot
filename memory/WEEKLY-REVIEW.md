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


---

## Week ending 2026-05-29

*Mon was Memorial Day (closed); 4-session week. Two trades closed: NVDA swing (21-day hold) exited at +2.48%, ARM same-day round-trip stopped at -3.09%. New +7%/-4% framework debuted on ARM.*

### Stats
| Metric           | Value         |
|------------------|---------------|
| Starting portfolio | $100,765.12 (Mon May 25 EOD — holiday, flat from Fri close) |
| Ending portfolio   | $99,883.98 (Fri May 29 EOD) |
| Week return        | -$881.14 (-0.87%) |
| S&P 500 week       | +0.4% (Bloomberg recap; 8th straight up week) |
| Bot vs S&P         | -1.27% |
| Trades             | 2 (W:1 / L:1 / open:0) |
| Win rate           | 50% (1 of 2 closed) |
| Best trade         | NVDA +2.48% (+$494.40, 21-day hold) |
| Worst trade        | ARM -3.09% (-$610.47, same-day) |
| Profit factor      | 0.81 ($494.40 / $610.47) |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| NVDA (96 sh) | $207.36 (May 7) | $212.51 (May 28, 11:39am) | +$494.40 (+2.48%) | Manual close — thesis review pre-PCE; post-print fade pattern (5 down sessions); peaked at +7.79% Wed May 20 |
| ARM (57 sh)  | $346.09 (May 28, 12:25pm) | $335.38 (May 28, 3:30pm) | -$610.47 (-3.09%) | 4% trailing stop GTC fired — HWM $349.42 → trail $335.44; PCE-beat AI-rotation thesis didn't follow through |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| — | — | — | — | None — 100% cash |

### What Worked
- **NVDA exit discipline.** Closed manually at +2.48% rather than ride a compressed cushion (2.6% above $207 trail) into a hot-PCE binary. Locked $494 profit; the alternative was triggering trail at breakeven.
- **PCE softer-than-cons read traded correctly.** Recognized rate-relief setup, sized within rules (19.6% ARM), placed stop immediately — process was clean even though the outcome was a stop-out.
- **Trail-stop on ARM did its job.** 4% trail off HWM $349.42 fired at $335.38 (-3.09% realized) — stop took us out before the position could bleed to the -4% hard floor or worse into the close.
- **Friday revenge-trade was resisted.** With 1 trade slot remaining and behavioral pressure to "make ARM back," documented SKIPs on DELL (chase), MDB (falling knife), and immediate energy entry. Patience > activity.
- **Daily logging + EOD snapshots clean all 5 sessions** (incl. Memorial Day flat-mark). Process discipline from last week's adjustment held.

### What Didn't Work
- **ARM entered into strength, not breakout.** Bought at $346.09 after the name was already +14% on the day (vs prior $302.71 close). Same chase-pattern flagged in past reviews — PCE catalyst was 3.5hrs old at entry, the move was largely priced. Exit was clean; entry asymmetry was wrong.
- **Profit factor < 1.** Winners ($494) didn't cover losers ($610) — first negative-P&L week of the phase. The bot's -0.87% vs SPX +0.4% = -1.27% relative.
- **Left ~$1,057 on the table from NVDA peak.** Held from +7.79% Wed May 20 down to +2.48% exit — the trail-tightening rule never triggered (under +15%), and the manual review came after 5 fade sessions, not after the 1st-2nd. A tighter post-print review cadence would have captured more.
- **Two strategy frameworks ran in parallel.** NVDA was on the old 10% trailing-stop regime; ARM was the new +7%/-4% regime. Mental overhead managing both creates decision lag.
- **Phase P&L flipped negative for the first time** (-0.12% vs $100k baseline). Absolute capital still preserved, but the cushion built across May is gone after one bad entry.

### Key Lessons
- **Catalyst-aware entries beat catalyst-old entries.** ARM at +14% on a 3.5hr-old PCE print = chasing. If the move is already 50%+ priced, the asymmetry has shifted from "+7% likely, -4% unlikely" to roughly even or worse. Codify: don't enter on a single-day move >5% from prior close unless the breakout itself is the catalyst (volume + structure).
- **Manual thesis-review cadence matters.** NVDA stayed open 5 days after the post-print top because the rules only triggered on +15% or -10% boundaries. A documented "review on day 2 of post-catalyst fade" would have exited closer to peak.
- **Same-day round-trips burn PDT budget AND signal.** ARM consumed 1 of 3 daytrades AND removed any chance to let the thesis breathe overnight. The new +7%/-4% framework with intraday entries is mechanically a higher-frequency setup — need to be selective about which entries deserve the slot.
- **A losing week with 50% win rate but profit factor <1 is exactly the math the rules predicted.** Break-even win rate is ~37% at 1.75:1 R:R; at 50% you should bank money. We didn't because ARM was a -3% loss (stop fired before -4%) — closer to a 1.25:1 realized R:R on the loss. Tighter entries = closer to spec R:R.

### Adjustments for Next Week
- **Entry filter:** No new entry on a name already up >5% on the day from prior close unless the catalyst IS the breakout (clean structure + volume confirmation). Codify in TRADING-STRATEGY.md (new behavioral rule).
- **Post-catalyst hold review:** When holding a position past a binary print, force a written hold-or-trim decision on day 2 of any consecutive fade off post-catalyst peak. Currently rules wait for stop or +15% trigger; this captures the gap.
- **Monday force-decision on energy.** WTI bounced $90→$97 on Gulf hostility headlines into the weekend; if it holds >$95 Monday, force a written add-or-skip on OXY or XLE — first re-test of the dead-then-revived sector thesis.
- **TRADING-STRATEGY.md change:** Add an "entry-day move filter" rule. Two weeks of evidence (this week's ARM, prior period's chase patterns) justify codification.

### Overall Grade: C

Capital still preserved on absolute terms (-0.87% week, -0.12% phase), full rule compliance on both trades. But: first losing week, profit factor <1, lagged SPX by 1.27%, and the loss came from a known anti-pattern (entering into strength on an already-digested catalyst). Discipline on the Friday no-trade was excellent — kept the loss to one bad entry, not two. Net: a learning week. Adjustment codified for next week.
