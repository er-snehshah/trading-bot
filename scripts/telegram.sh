#!/usr/bin/env bash
# Notification wrapper. Sends messages via Telegram Bot API.
# Usage: bash scripts/telegram.sh "<message>"
# If credentials are unset, appends to a local fallback file and exits 0.
#
# Setup:
#   1. Open Telegram, search @BotFather, send /newbot, follow prompts
#   2. Copy the bot token (format: 123456789:ABCdef...)
#   3. Start a chat with your new bot, then visit:
#      https://api.telegram.org/bot<TOKEN>/getUpdates
#      to get your chat_id from the response
#   4. Set TELEGRAM_BOT_TOKEN and TELEGRAM_CHAT_ID in .env or routine env vars
#
# Multiple recipients: set TELEGRAM_CHAT_ID as a comma-separated list
#   TELEGRAM_CHAT_ID=111111111,222222222,333333333

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ENV_FILE="$ROOT/.env"
FALLBACK="$ROOT/DAILY-SUMMARY.md"

if [[ -f "$ENV_FILE" ]]; then
  set -a
  # shellcheck disable=SC1090
  source "$ENV_FILE"
  set +a
fi

if [[ $# -gt 0 ]]; then
  msg="$*"
else
  msg="$(cat)"
fi

if [[ -z "${msg// /}" ]]; then
  echo "usage: bash scripts/telegram.sh \"<message>\"" >&2
  exit 1
fi

stamp="$(date '+%Y-%m-%d %H:%M %Z')"

if [[ -z "${TELEGRAM_BOT_TOKEN:-}" ]]; then
  printf "\n---\n## %s (fallback — Telegram not configured)\n%s\n" "$stamp" "$msg" >> "$FALLBACK"
  echo "[telegram fallback] appended to DAILY-SUMMARY.md"
  echo "$msg"
  exit 0
fi

# Auto-fetch subscriber IDs if not explicitly set
if [[ -z "${TELEGRAM_CHAT_ID:-}" ]]; then
  TELEGRAM_CHAT_ID="$(bash "$ROOT/scripts/telegram-subscribers.sh" 2>/dev/null || true)"
fi

if [[ -z "${TELEGRAM_CHAT_ID:-}" ]]; then
  printf "\n---\n## %s (fallback — no Telegram subscribers yet)\n%s\n" "$stamp" "$msg" >> "$FALLBACK"
  echo "[telegram fallback] no subscribers found"
  exit 0
fi

IFS=',' read -ra CHAT_IDS <<< "$TELEGRAM_CHAT_ID"

for chat_id in "${CHAT_IDS[@]}"; do
  chat_id="${chat_id// /}"  # trim whitespace
  [[ -z "$chat_id" ]] && continue

  PYTHON=python3
  if ! "$PYTHON" -c "import sys" 2>/dev/null; then
    PYTHON="py -3"
  fi

  payload="$($PYTHON -c "
import json, sys
print(json.dumps({
  'chat_id': sys.argv[1],
  'text': sys.argv[2],
  'parse_mode': 'Markdown'
}))
" "$chat_id" "$msg")"

  curl -fsS -X POST \
    "https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/sendMessage" \
    -H "Content-Type: application/json" \
    -d "$payload"
  echo
done
