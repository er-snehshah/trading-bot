# Weekly Review

Friday reviews are appended here by the weekly-review workflow.

---

## Week ending 2026-05-17

### Stats
| Metric             | Value                        |
|--------------------|------------------------------|
| Starting portfolio | $10,000.00                   |
| Ending portfolio   | $10,000.00                   |
| Week return        | +$0.00 (0.00%)               |
| S&P 500 week       | ~+0.4% (7th consecutive win) |
| Bot vs S&P         | ~-0.4%                       |
| Trades             | 0 (W:0 / L:0 / open:0)      |
| Win rate           | N/A                          |
| Best trade         | N/A                          |
| Worst trade        | N/A                          |
| Profit factor      | N/A                          |

### Closed Trades
| Ticker | Entry | Exit | P&L | Notes |
|--------|-------|------|-----|-------|
| —      | —     | —    | —   | No trades taken |

### Open Positions at Week End
| Ticker | Entry | Close | Unrealized | Stop |
|--------|-------|-------|------------|------|
| —      | —     | —     | —          | —    |

### What Worked
- No rule violations — hard rules preserved on launch week
- Pre-market research (2026-05-04) did identify valid trade ideas (OXY primary)
- Risk stayed at zero; no capital at risk during first live week

### What Didn't Work
- Capital never deployed; missed ~+0.4% S&P week in cash
- Trade ideas from May 4 pre-market research (OXY, XOM, LMT) were never executed
- No pre-market research entries after May 4 — workflow cadence not established
- S&P 500 ran 7 consecutive weeks while bot sat idle

### Key Lessons
- Having a trade plan means nothing without execution; the gate check is not a reason to avoid trading
- Pre-market workflow must run every trading day, not just launch day
- First week should have opened 1 position per the May 4 research decision ("TRADE — OXY as primary")

### Adjustments for Next Week
- Run pre-market workflow every morning before market open
- Execute the first position (1 trade only, ≤20% equity) if a clear catalyst exists — don't overthink it
- Energy thesis (OXY/XOM) still relevant while oil elevated; re-evaluate Monday pre-market
- Target 1-2 positions by end of week to begin working toward 75-85% deployed

### Overall Grade: D
*Rationale: No rule violations (positive), but zero execution when research said TRADE. Being in cash all week while the market gained ~0.4% is the definition of underperformance for an active bot.*

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
