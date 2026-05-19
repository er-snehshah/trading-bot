#!/usr/bin/env bash
# Install cron jobs for the trading bot.
# Run once on your server: bash setup-cron.sh
# All times are America/Chicago (CT). Market hours: 8:30 AM – 3:00 PM CT.
# Adjust REPO and PYTHON to match your server paths.

set -euo pipefail

REPO="$(cd "$(dirname "$0")" && pwd)"
# Use venv python if available, otherwise fall back to system python3
if [[ -f "$REPO/.venv/bin/python" ]]; then
  PYTHON="$REPO/.venv/bin/python"
else
  PYTHON="${PYTHON:-python3}"
fi
LOG_DIR="$REPO/logs"
mkdir -p "$LOG_DIR"

# Verify python + anthropic
if ! "$PYTHON" -c "import anthropic" 2>/dev/null; then
  echo "ERROR: anthropic not found. Run: python3 -m venv .venv && .venv/bin/pip install anthropic"
  exit 1
fi
echo "Using Python: $PYTHON"

RUNNER="$REPO/run-routine.sh"
cat > "$RUNNER" <<'SCRIPT'
#!/usr/bin/env bash
# Wrapper called by cron — activates venv if present, sources .env if present, then runs agent.py
set -euo pipefail
REPO="$(cd "$(dirname "$0")" && pwd)"
# Activate venv if it exists
VENV="$REPO/.venv/bin/activate"
[[ -f "$VENV" ]] && source "$VENV"
# Load .env if present
ENV_FILE="$REPO/.env"
[[ -f "$ENV_FILE" ]] && { set -a; source "$ENV_FILE"; set +a; }
ROUTINE="$1"
LOG="$REPO/logs/${ROUTINE}-$(date +%Y-%m-%d).log"
exec >> "$LOG" 2>&1
echo "=== $(date) ==="
cd "$REPO"
python3 agent.py --routine "$ROUTINE"
SCRIPT
chmod +x "$RUNNER"

# Pull latest before each run
PULL_RUNNER="$REPO/run-routine-with-pull.sh"
cat > "$PULL_RUNNER" <<'SCRIPT'
#!/usr/bin/env bash
set -euo pipefail
REPO="$(cd "$(dirname "$0")" && pwd)"
ENV_FILE="$REPO/.env"
[[ -f "$ENV_FILE" ]] && { set -a; source "$ENV_FILE"; set +a; }
cd "$REPO"
git pull --rebase origin main 2>&1 || true
exec "$REPO/run-routine.sh" "$@"
SCRIPT
chmod +x "$PULL_RUNNER"

# Build crontab lines — all times UTC (server timezone)
# EDT (Mar-Nov): ET = UTC-4  |  EST (Nov-Mar): ET = UTC-5
# Using EDT offsets (summer). In winter, each job fires 1h later ET — adjust if needed.
#   Pre-market  6:00 AM CT  = 11:00 UTC (CDT) / 12:00 UTC (CST)
#   Market-open 8:30 AM CT  = 13:30 UTC (CDT) / 14:30 UTC (CST)
#   Midday     12:00 PM CT  = 17:00 UTC (CDT) / 18:00 UTC (CST)
#   EOD         3:00 PM CT  = 20:00 UTC (CDT) / 21:00 UTC (CST)
#   Weekly-rev  4:00 PM CT  = 21:00 UTC (CDT) / 22:00 UTC (CST)
CRON_BLOCK="# --- Trading Bot (UTC) ---
# Pre-market research: 11:00 UTC Mon-Fri (6:00 AM CT / 7:00 AM ET)
0 11 * * 1-5 $PULL_RUNNER pre-market
# Market-open execution: 13:30 UTC Mon-Fri (8:30 AM CT / 9:30 AM ET)
30 13 * * 1-5 $PULL_RUNNER market-open
# Midday scan: 17:00 UTC Mon-Fri (12:00 PM CT / 1:00 PM ET)
0 17 * * 1-5 $PULL_RUNNER midday
# Daily summary (EOD): 20:00 UTC Mon-Fri (3:00 PM CT / 4:00 PM ET)
0 20 * * 1-5 $PULL_RUNNER daily-summary
# Weekly review: 21:00 UTC Fridays only (4:00 PM CT / 5:00 PM ET)
0 21 * * 5 $PULL_RUNNER weekly-review
# --- End Trading Bot ---"

# Merge into existing crontab (idempotent)
TMPFILE=$(mktemp)
(crontab -l 2>/dev/null | grep -v "Trading Bot" | grep -v "run-routine" || true) > "$TMPFILE"
printf "\n%s\n" "$CRON_BLOCK" >> "$TMPFILE"
crontab "$TMPFILE"
rm "$TMPFILE"

echo "Cron jobs installed:"
crontab -l | grep -A20 "Trading Bot"
