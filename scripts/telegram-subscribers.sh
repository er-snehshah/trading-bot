#!/usr/bin/env bash
# Fetches all unique chat IDs that have ever messaged the bot.
# Usage:
#   source scripts/telegram-subscribers.sh   → exports TELEGRAM_CHAT_ID
#   bash scripts/telegram-subscribers.sh     → prints comma-separated IDs
#
# Call this at the top of any routine before sending notifications.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

if [[ -z "${TELEGRAM_BOT_TOKEN:-}" ]]; then
  echo "ERROR: TELEGRAM_BOT_TOKEN not set" >&2
  exit 1
fi

# Detect python — works on Linux (python3) and Windows Git Bash (py)
_python() {
  if python3 -c "import sys" 2>/dev/null; then
    python3 "$@"
  elif py -3 -c "import sys" 2>/dev/null; then
    py -3 "$@"
  else
    echo "ERROR: no working python found" >&2; exit 1
  fi
}

# Fetch updates and extract unique chat IDs
CHAT_IDS="$(curl -fsS "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/getUpdates?limit=100" \
  | _python -c "
import json, sys
data = json.load(sys.stdin)
seen = {}
ids = []
for u in data.get('result', []):
    for key in ('message', 'callback_query'):
        msg = u.get(key, {})
        chat = msg.get('chat', msg.get('from', {}))
        cid = chat.get('id')
        name = chat.get('first_name', '') + ' ' + chat.get('last_name', '')
        if cid and cid not in seen:
            seen[cid] = name.strip()
            ids.append(str(cid))
print(','.join(ids))
")"

if [[ -z "$CHAT_IDS" ]]; then
  echo "WARNING: No subscribers found (no one has messaged the bot yet)" >&2
  exit 0
fi

# Export for use by telegram.sh when sourced
export TELEGRAM_CHAT_ID="$CHAT_IDS"

# Print when run directly
echo "$CHAT_IDS"
