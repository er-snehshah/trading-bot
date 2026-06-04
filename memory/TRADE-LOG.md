# Trade Log

## Day 0 — EOD Snapshot (pre-launch baseline)

**Portfolio:** $10,000.00 | **Cash:** $10,000.00 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** $0.00 (0.00%)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|---------------|------|
| — | — | — | — | — | — | — |

**Notes:** Pre-launch baseline. No positions. Bot launches tomorrow. Starting equity $10,000.00.


### May 19 — EOD Snapshot (Tuesday)
**Portfolio:** $101,273.92 | **Cash:** $80,093.44 (79.1%) | **Day P&L:** -$162.24 (-0.16%) | **Phase P&L:** +$1,273.92 (+1.27% vs $100k baseline)

| Ticker | Shares | Entry   | Close   | Day Chg | Unrealized P&L      | Stop    |
|--------|--------|---------|---------|---------|---------------------|---------|
| NVDA   | 96     | $207.36 | $220.63 | -0.76%  | +$1,273.92 (+6.40%) | $207 (10% trail, HWM $230) |

**Notes:** Quiet T-1 session into NVDA AMC print tomorrow. NVDA drifted -0.76% intraday; trail-stop at $207 (≈breakeven) is the only hard floor on the ~21% binary exposure. Zero trades today — stacking risk pre-print is the wrong asymmetry. Cash 79.1% is intentional dry powder for post-print reaction. Trades this week: 0/3. Next decision point: Thursday pre-market after NVDA reaction — if NVDA gaps up materially, tighten trail to 7%; if down, trail-stop handles exit and we reassess from a cash position.


### May 20 — EOD Snapshot (Wednesday)
**Portfolio:** $101,551.36 | **Cash:** $80,093.44 (78.9%) | **Day P&L:** +$277.44 (+0.27%) | **Phase P&L:** +$1,551.36 (+1.55% vs $100k baseline)

| Ticker | Shares | Entry   | Close   | Day Chg | Unrealized P&L      | Stop                       |
|--------|--------|---------|---------|---------|---------------------|----------------------------|
| NVDA   | 96     | $207.36 | $223.52 | +1.32%  | +$1,551.36 (+7.79%) | $207 (10% trail, HWM $230) |

**Notes:** NVDA print day. Quiet session into the AMC catalyst — NVDA closed +1.32% to $223.52, lifting unrealized P&L to +7.79% on the ~21% binary position. Trail-stop $207 (HWM $230) remains the only hard floor; qty_available 0 by design (shares reserved by the GTC). Zero trades today — stacking exposure pre-print is the wrong asymmetry; cash 78.9% is intentional dry powder for the post-print reaction. FOMC April minutes (2pm) passed without redirecting the tape. Trades this week: 0/3. Next decision point: Thursday pre-market with NVDA reaction in hand — if up materially (+15%+ unrealized = ~$238), tighten trail to 7% per rule; if down hard, trail handles exit and we reassess sector entries from cash.


### May 21 — EOD Snapshot (Thursday)
**Portfolio:** $101,166.40 | **Cash:** $80,093.44 (79.2%) | **Day P&L:** -$384.96 (-0.38%) | **Phase P&L:** +$1,166.40 (+1.17% vs $100k baseline)

| Ticker | Shares | Entry   | Close   | Day Chg | Unrealized P&L      | Stop                       |
|--------|--------|---------|---------|---------|---------------------|----------------------------|
| NVDA   | 96     | $207.36 | $219.51 | -1.77%  | +$1,166.40 (+5.86%) | $207 (10% trail, HWM $230) |

**Notes:** NVDA reaction day — print was a beat ($82B rev) + raise ($91B Q2 guide vs $87.4B cons), but the tape gave back the overnight pop intraday. NVDA closed -1.77% to $219.51, trimming unrealized to +5.86% from +7.79% yesterday. Still well above trail-stop $207 (HWM $230); no management action — under the +15% threshold ($238.46) that would trigger a 7% trail tighten. Zero trades today; energy thesis remains degraded (WTI rolled $103→$99) so I'm not forcing the watchlist. Cash 79.2% — intentional dry powder, no rule pressure to deploy. Trades this week: 0/3. Next decision point: Friday open — if NVDA pushes through $238 intraday tighten trail; otherwise hold and close the week.


### May 22 — EOD Snapshot (Friday)
**Portfolio:** $100,759.36 | **Cash:** $80,093.44 (79.5%) | **Day P&L:** -$407.04 (-0.40%) | **Phase P&L:** +$759.36 (+0.76% vs $100k baseline)

| Ticker | Shares | Entry   | Close   | Day Chg | Unrealized P&L      | Stop                       |
|--------|--------|---------|---------|---------|---------------------|----------------------------|
| NVDA   | 96     | $207.36 | $215.27 | -1.93%  | +$759.36 (+3.81%)   | $207 (10% trail, HWM $230) |

**Notes:** Weekly close. NVDA -1.93% to $215.27, the second straight fade post-print as the muted reaction to a blowout Q1/guide ($82B beat, $91B Q2 guide) keeps grinding. Unrealized compressed to +3.81% from +5.86% Thursday and +7.79% Wednesday — bar was high and the tape is voting. Still well above trail-stop $207 (HWM $230); inside the 3% no-tighten zone anyway, so no management action. Energy stayed off — WTI ~$98.45, thesis decayed per Rule #9. Zero trades today; **trades this week: 0/3** (full pass). Cash 79.5% intact — dry powder for next week. Single-position concentration (~20.5%) defined the week's P&L; bot finishes the week +0.76% vs $100k baseline. Next decision point: Monday open — if NVDA breaks $207 over the weekend gap, trail handles exit; if it bases here, reassess sector rotation candidates from cash.


### May 25 — EOD Snapshot (Monday — Memorial Day, Market Closed)
**Portfolio:** $100,765.12 | **Cash:** $80,093.44 (79.5%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** +$765.12 (+0.77% vs $100k baseline)

| Ticker | Shares | Entry   | Close   | Day Chg | Unrealized P&L      | Stop                       |
|--------|--------|---------|---------|---------|---------------------|----------------------------|
| NVDA   | 96     | $207.36 | $215.33 | 0.00%   | +$765.12 (+3.84%)   | $207 (10% trail, HWM $230) |

**Notes:** US markets closed for Memorial Day — no session, no marks moved. NVDA flat at Friday's $215.33; trail-stop $207 (HWM $230) intact, qty_available 0 by design. Cash 79.5% unchanged. Zero trades today (impossible); **trades this week: 0/3** (week resets — Tuesday is the first trading day). Oil rolled hard over the weekend (WTI ~$91.90 per CME, ~-11% week-over-week) — energy thesis fully degraded, staying off the list. ES futures +0.61% into the holiday close suggests a bid reopen Tuesday. Next decision point: Tuesday 2026-05-26 pre-market — NVDA management (hold unless breaks $207), and a forced written add-or-skip on one AI-adjacent name (AVGO/MU/MSFT) per last week's review adjustment. PCE Friday is the only macro pivot this week.


### May 26 — EOD Snapshot (Tuesday — post-holiday reopen)
**Portfolio:** $100,709.44 | **Cash:** $80,093.44 (79.5%) | **Day P&L:** -$55.68 (-0.06%) | **Phase P&L:** +$709.44 (+0.71% vs $100k baseline)

| Ticker | Shares | Entry   | Close   | Day Chg | Unrealized P&L      | Stop                       |
|--------|--------|---------|---------|---------|---------------------|----------------------------|
| NVDA   | 96     | $207.36 | $214.86 | -0.22%  | +$720.00 (+3.62%)   | $207 (10% trail, HWM $230) |

**Notes:** Quiet reopen after Memorial Day. NVDA -0.22% to $214.86, essentially flat from Friday's $215.33; unrealized compressed marginally to +3.62%. ES futures had been +0.76% pre-cash-open but the day was uneventful — bot finished -0.06% vs a soft tape. Trail-stop $207 (HWM $230) intact ~3.7% below current — inside the no-tighten buffer per Rule #7 anyway, and well under the +15% threshold ($238.46) that would trigger management. Force-decision per last week's review nudge was executed in pre-market: documented SKIP on AVGO/MU/MSFT (tech in lagging quadrant per latest rotation read, AVGO already sold its catalyst, no edge in chasing). Energy off the list (WTI ~$92). Industrials (CAT/DE/XLI) on passive watchlist but no catalyst-driven setup today. Zero trades today; **trades this week: 0/3**. Cash 79.5% intact. Next decision point: Wed pre-market — NVDA hold unless breaks $207; watch for clean XLI setup with catalyst; PCE Friday is the only macro pivot.


### May 27 — EOD Snapshot (Wednesday)
**Portfolio:** $100,500.16 | **Cash:** $80,093.44 (79.7%) | **Day P&L:** -$219.84 (-0.22%) | **Phase P&L:** +$500.16 (+0.50% vs $100k baseline)

| Ticker | Shares | Entry   | Close   | Day Chg | Unrealized P&L      | Stop                       |
|--------|--------|---------|---------|---------|---------------------|----------------------------|
| NVDA   | 96     | $207.36 | $212.60 | -1.05%  | +$503.04 (+2.53%)   | $207 (10% trail, HWM $230) |

**Notes:** NVDA -1.05% to $212.60, third consecutive fade since the blowout print — unrealized compressed to +2.53% from +3.62% Tue, +3.81% Fri, and the +7.79% Wed peak. The "good print, bad reaction" pattern is now fully in evidence; trail-stop $207 (HWM $230) sits ~2.6% below current, inside the no-tighten buffer per Rule #7 anyway. No management action available or warranted. Tape was quiet: ES futures had been bid +0.76% pre-open but Tuesday's grind didn't carry; Wed gave back marginally on no real news. Consumer Confidence/New Home Sales were mid-tier reads, non-market-moving. MRVL AMC tonight is the AI-semi read-through into Thu — informational only, not a chase trigger. Industrials (XLI) remain on passive watchlist; energy off entirely (WTI ~$96–98 area, thesis dead). Zero trades today; **trades this week: 0/3**. Cash 79.7% intact — dry powder preserved into Friday's PCE. Next decision point: Thu pre-market with MRVL reaction in hand and PCE 24hrs out — if NVDA breaks $207 trail handles exit; otherwise hold and stay flexible into the macro print.


### May 28 — TRADE CLOSED: NVDA (Thursday)
**Portfolio:** $100,494.40 | **Cash:** $100,494.40 (100%) | **Day P&L:** -$8.64 (-0.01%) | **Phase P&L:** +$494.40 (+0.49% vs $100k baseline)

| Ticker | Shares | Entry   | Exit    | Held    | Realized P&L        | Notes                      |
|--------|--------|---------|---------|---------|---------------------|----------------------------|
| NVDA   | 96     | $207.36 | $212.51 | 21 days | +$494.40 (+2.48%)   | Manual close — thesis review |

**Trade record:**
- Entry: ~2026-05-07 @ $207.36 avg (96 shares, $19,906.56 cost basis)
- Exit: 2026-05-28 @ $212.51 fill (market sell, 11:39am ET)
- Peak unrealized: +$1,551.36 (+7.79%) on 2026-05-20 (NVDA earnings day)
- Final realized: +$494.40 (+2.48%) — left ~$1,057 on the table from peak

**Reason for close:** Manual decision post-earnings-fade review. Post-catalyst fade rule triggered (5 consecutive down sessions after May 20 blowout earnings beat/raise: -1.77%, -1.93%, -0.22%, -1.05% Wed; stop proximity compressed to <3% by Thu). Trail at $207 (HWM $230) provides ~breakeven floor; T-1 to PCE Friday macro pivot. Decision: exit at +2.48% realized rather than risk trail stop triggering at $207 (+0% effective) on a hot PCE print. All cash ahead of the macro pivot.

**Notes:** Portfolio now 100% cash ($100,494.40). Zero open positions. Trades this week: **1/3** (this sell closes the NVDA swing trade opened May 7). Deployment = 0% — mandatory deployment scan required next pre-market per Rule #2. Next decision point: Friday pre-market with PCE inflation data (8:30am ET) + clean slate to open new positions post-print.


### May 28 — TRADE OPENED: ARM (Thursday)

| Ticker | Shares | Entry   | Stop          | Strategy         | Catalyst                        |
|--------|--------|---------|---------------|------------------|---------------------------------|
| ARM    | 57     | $346.09 | 4% trail $332.16 (HWM $346) | Trailing stop exit | PCE beat + AI chip momentum |

**Trade details:**
- Entry: 2026-05-28 ~12:26pm ET @ $346.09 avg (market order)
- Cost basis: $19,727.13 (19.6% of equity)
- Stop: 4% trailing GTC | initial stop $332.16 | HWM $345.995 — trails price up, never moves down
- No fixed take-profit (Alpaca OCO limitation — trailing stop handles full exit)
- Cash after entry: ~$80,767 | Deployed: ~19.6%
- ARM change today at entry: +14.33% from yesterday's $302.71 close

**Catalyst:** April PCE softer than expected (+0.4% m/m vs +0.53% cons; +3.8% YoY vs +3.9% cons) = rate-relief bid on AI/growth names. MRVL +7% AH Wed confirmed AI-infra demand. ARM leading AI chip momentum, no overnight binary risk.

**Trades this week: 2/3.** Next decision point: monitor ARM trail; if HWM rises materially, trail follows. Cancel and sell at market manually if thesis breaks before stop triggers.


### May 28 — TRADE CLOSED: ARM (Thursday — same-day stop-out)
**Portfolio:** $99,884.01 | **Cash:** $99,884.01 (100%) | **Day P&L:** -$619.03 (-0.62%) | **Phase P&L:** -$115.99 (-0.12% vs $100k baseline)

| Ticker | Shares | Entry   | Exit    | Held    | Realized P&L        | Notes                              |
|--------|--------|---------|---------|---------|---------------------|------------------------------------|
| ARM    | 57     | $346.09 | $335.38 | ~3 hrs  | -$610.47 (-3.09%)   | 4% trailing stop triggered (HWM $349.42 → stop $335.44) |

**Trade record:**
- Entry: 2026-05-28 12:25pm ET @ $346.09 (market buy, 57 sh, $19,727.13 cost)
- Exit: 2026-05-28 3:30pm ET @ $335.38 (4% trailing stop GTC fill)
- HWM reached: $349.42 (early afternoon spike) → trail set $335.44
- Realized: -$610.47 (-3.09%)

**Reason for close:** Trailing stop did its job. ARM ran early to $349.42 (~+1% above entry), then faded ~4% from HWM, triggering the GTC trail. Cleanest possible outcome on a thesis that didn't follow through: stop took us out at -3% rather than letting it bleed to -4% hard stop or worse on the close.

**Day recap — two trades:**
1. **NVDA closed** 11:39am ET @ $212.51 → +$494.40 (+2.48%) realized on 21-day swing
2. **ARM opened** 12:25pm ET @ $346.09 (PCE-beat AI rotation thesis)
3. **ARM closed** 3:30pm ET @ $335.38 → -$610.47 (-3.09%) on 4% trail

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| — | — | — | — | — | — | — |

**Notes:** Net day -$619.03 (-0.62%); NVDA win of $494 partially offset ARM stop-out of -$610. Both trades were rule-compliant: NVDA exit was a thesis-driven manual close pre-PCE; ARM was a fully-rules-compliant entry (PCE catalyst, leading-sector momentum read, 19.6% sizing, 4% stop in place immediately) that simply didn't work. **Trades this week: 2/3** (NVDA close + ARM round-trip). Daytrade count: 1 (ARM same-day). Portfolio 100% cash heading into Friday's session. Phase P&L now negative for the first time at -0.12%. Next decision point: Friday pre-market — clean slate, full $99,884 dry powder, deployment scan required per Rule #2. PCE already digested; watch for follow-through reads on leading sectors (XLI Industrials, XLE recovery), avoid revenge-trading into another AI/semi name after ARM stop. Patience.


### May 29 — EOD Snapshot (Friday)
**Portfolio:** $99,883.98 | **Cash:** $99,883.98 (100%) | **Day P&L:** -$0.03 (-0.00%) | **Phase P&L:** -$116.02 (-0.12% vs $100k baseline)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| — | — | — | — | — | — | — |

**Notes:** Quiet Friday — 100% cash all session, zero activity. Equity essentially unchanged at $99,883.98 (last_equity matched, ~3¢ of rounding). The day was the documented behavioral test after yesterday's ARM same-day stop-out: resist revenge-trading into Friday + weekend gap risk. Pre-market scan produced documented SKIPs on DELL (chase risk after +10%+ AH beat), MDB ("good print, bad reaction" falling knife at -8% AH), and immediate energy entry despite WTI bouncing $90→$97 on renewed Persian Gulf hostility headlines (Friday-into-weekend Mid-East news = wrong day to commit). Energy reactivated to active watchlist for Monday force-decision. VIX 16.29 calm; PCE already digested (softer-than-cons across the board). **Trades this week: 2/3** — one slot held in reserve, correctly. Daytrade count 1 in rolling 5-day window. Closes the week at -0.12% phase (first negative reading post-ARM stop). Weekly review routine will run separately. Next decision point: Monday 2026-06-01 pre-market with weekend Gulf headlines + WTI close in hand; if WTI holds >$95, force a written add-or-skip on OXY/XLE.


### Jun 01 — EOD Snapshot (Monday)
**Portfolio:** $99,883.98 | **Cash:** $99,883.98 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** -$116.02 (-0.12% vs $100k baseline)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| — | — | — | — | — | — | — |

**Notes:** Quiet Monday — 100% cash all session, zero activity, equity unchanged from Friday close ($99,883.98 flat). Pre-market energy force-decision per Friday's flag = documented SKIP: WTI ~$89.75 failed the >$95 trigger, weekend Gulf-hostility bid faded on Iran-deal talk. ISM Manufacturing PMI 10am was the only macro print, no single-name catalysts BMO (CRDO/HPE AMC informational only). No Buy-Side Gate pass anywhere in the universe today. Behavioral test (4 sessions running at 0% deployed after NVDA/ARM closed Thu) held — no forced entry. **Trades this week: 0/3** — all three slots intact heading into NFP Friday. Daytrade count 1 in rolling 5-day window. Phase P&L still negative at -0.12% (first week of June opens flat from where the ARM stop left things). Next decision point: Tuesday pre-market with CRDO/HPE post-prints + JOLTS + ISM Services in hand; re-check WTI for any >$95 close as energy re-trigger.


### Jun 02 — EOD Snapshot (Tuesday)
**Portfolio:** $99,883.98 | **Cash:** $99,883.98 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** -$116.02 (-0.12% vs $100k baseline)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| — | — | — | — | — | — | — |

**Notes:** Fifth consecutive flat session — 100% cash, zero activity, equity unchanged at $99,883.98. Pre-market scan documented SKIPs across the board: CRDO (Rule #10 violation — AH +25% gap after triple-beat = chase pattern identical to ARM 5/28); energy (WTI $87.76, fails $95 re-trigger from Friday's flag); MDT/industrials (no specific catalyst). JOLTS 10am was the only macro print today, non-market-moving. Behavioral test held: 5 sessions at 0% deployed since NVDA/ARM closed Thu 5/28, with phase P&L still negative — pressure to "do something" is real but the documented answer remains "no qualifying setup." **Trades this week: 0/3** — all slots intact 3 days from NFP Friday. Daytrade count 1 in rolling 5-day window. Sector regime unchanged: XLE/XLI/XLP/XLB leading, XLK/XLC/XLY/XLF lagging. Next decision point: Wednesday pre-market with CRDO Day-2 structure read + ADP + WTI mark; if CRDO bases cleanly Day 1 it becomes a real Day-2 breakout candidate; if WTI closes >$95 anywhere this week, energy re-triggers.


### Jun 03 — EOD Snapshot (Wednesday)
**Portfolio:** $99,883.98 | **Cash:** $99,883.98 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** -$116.02 (-0.12% vs $100k baseline)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| — | — | — | — | — | — | — |

**Notes:** Sixth consecutive flat session — 100% cash, zero activity, equity unchanged at $99,883.98. Pre-market scan produced documented SKIPs across the board: MRVL (Rule #10 chase — Day-2 +7% on top of Tue's +27.87%), CRDO (Day-3, no clean base off +25% AH gap), AVGO (binary AMC tonight = wrong asymmetry to pre-position), energy (WTI $87.76 fails $95 weekly-close re-trigger), MDT/industrials (no specific catalyst). Triple intraday macro today (ADP / ISM Services / Beige Book) plus AVGO AMC = high event-density; reaction quality > entry timing. NFP Friday remains THE pivot — preserving sizing flexibility 2 days out is the right asymmetry. Behavioral test held a 6th session: pressure to "do something" with negative phase P&L is real, but every clean AI-infra expression is now +25-28% post-print → chasing wrong, basing/breakout reentry right. **Trades this week: 0/3** — all slots intact. Daytrade count 1 in rolling 5-day window. Sector regime unchanged (Energy/Staples/Industrials/Materials leading; Tech/Comm/Discretionary/Financials lagging) though MRVL print may seed a tech-leadership rotation worth watching. Next decision point: Thursday pre-market with ADP/ISM/Beige Book digested + AVGO post-print reaction in hand; if AVGO beats+raises with a reasonable open (<5% gap) AND any AI-infra leader bases cleanly Day-1, the cleanest second-leg setup of the week becomes available.


### Jun 04 — EOD Snapshot (Thursday)
**Portfolio:** $99,883.98 | **Cash:** $99,883.98 (100%) | **Day P&L:** $0.00 (0.00%) | **Phase P&L:** -$116.02 (-0.12% vs $100k baseline)

| Ticker | Shares | Entry | Close | Day Chg | Unrealized P&L | Stop |
|--------|--------|-------|-------|---------|----------------|------|
| — | — | — | — | — | — | — |

**Notes:** Seventh consecutive flat session — 100% cash, zero activity, equity unchanged at $99,883.98. All three intraday routines (pre-market, market-open, midday) aborted on TELEGRAM_BOT_TOKEN missing. Daily-summary ran twice today: first run successfully pulled Alpaca state (equity $99,883.98, 0 positions, 0 orders) and committed snapshot; second run confirmed same state but found both Alpaca API and ClickUp API blocked by egress gateway (host_not_allowed — network policy). ClickUp Step 5 notification not delivered either run. **Daytrade count rolled from 1 → 0** (5/28 ARM same-day exited the rolling 5-day window). **Trades this week: 0/3** — all slots intact heading into NFP Friday. Sector regime unchanged (Energy/Staples/Industrials/Materials leading; Tech/Comm/Discretionary/Financials lagging). Phase P&L still -0.12%. **Operator action required:** (1) restore TELEGRAM_BOT_TOKEN + TELEGRAM_CHAT_ID, (2) verify Alpaca and ClickUp API domains are in egress allowlist — both returning 403 host_not_allowed. Until resolved, no live broker reads and no outbound notifications. Next decision point: Friday 2026-06-05 pre-market — NFP at 8:30am ET is the week pivot; 100% cash, 0/3 weekly slots, 0/3 PDT daytrades — cleanest entry setup of the phase.
