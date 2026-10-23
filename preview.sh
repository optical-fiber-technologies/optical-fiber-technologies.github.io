#!/bin/sh
set -eu

cd "$(dirname "$0")"
port="${1:-8000}"
printf 'Preview: http://127.0.0.1:%s/\nPress Ctrl+C to stop.\n' "$port"
exec python3 -m http.server "$port" --bind 127.0.0.1
