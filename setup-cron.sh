#!/usr/bin/env bash
# Install cron jobs for the trading bot.
# Run once on your server: bash setup-cron.sh
# All times are America/Chicago (CT). Market hours: 8:30 AM – 3:00 PM CT.
# Adjust REPO and PYTHON to match your server paths.

set -euo pipefail

REPO="$(cd "$(dirname "$0")" && pwd)"
PYTHON="${PYTHON:-python3}"
LOG_DIR="$REPO/logs"
mkdir -p "$LOG_DIR"

# Verify python + anthropic
if ! "$PYTHON" -c "import anthropic" 2>/dev/null; then
  echo "ERROR: anthropic package not found. Run: pip install anthropic"
  exit 1
fi

RUNNER="$REPO/run-routine.sh"
cat > "$RUNNER" <<'SCRIPT'
#!/usr/bin/env bash
# Wrapper called by cron — sources .env if present, then runs agent.py
set -euo pipefail
REPO="$(cd "$(dirname "$0")" && pwd)"
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

# Build crontab lines (America/Chicago = UTC-5/UTC-6)
# We store CRON_TZ in the crontab for clarity.
CRON_BLOCK="# --- Trading Bot ---
CRON_TZ=America/Chicago
# Pre-market research: 6:00 AM CT Mon-Fri
0 6 * * 1-5 $PULL_RUNNER pre-market
# Market-open execution: 8:30 AM CT Mon-Fri
30 8 * * 1-5 $PULL_RUNNER market-open
# Midday scan: 12:00 PM CT Mon-Fri
0 12 * * 1-5 $PULL_RUNNER midday
# Weekly review: 3:45 PM CT Fridays only
45 15 * * 5 $PULL_RUNNER weekly-review
# --- End Trading Bot ---"

# Merge into existing crontab (idempotent)
TMPFILE=$(mktemp)
(crontab -l 2>/dev/null | grep -v "Trading Bot" | grep -v "run-routine" | grep -v "CRON_TZ=America/Chicago" || true) > "$TMPFILE"
printf "\n%s\n" "$CRON_BLOCK" >> "$TMPFILE"
crontab "$TMPFILE"
rm "$TMPFILE"

echo "Cron jobs installed:"
crontab -l | grep -A20 "Trading Bot"
