#!/usr/bin/env bash
#
# sync-skills.sh — Update skills/ and templates/ in a target project.
#
# Syncs ONLY skills/ and templates/. Never touches the target's CLAUDE.md,
# so your project-specific operating instructions are preserved.
#
# Usage:
#   ./scripts/sync-skills.sh /path/to/your/project
#
set -euo pipefail

# --- resolve paths ---------------------------------------------------------
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
KIT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# --- args ------------------------------------------------------------------
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 /path/to/your/project" >&2
  exit 1
fi

TARGET="$1"

if [ ! -d "$TARGET" ]; then
  echo "Target directory does not exist: $TARGET" >&2
  echo "Run install.sh first, or create the directory." >&2
  exit 1
fi
TARGET="$(cd "$TARGET" && pwd)"

echo "Syncing skills + templates"
echo "  from: $KIT_ROOT"
echo "  into: $TARGET"
echo "  (CLAUDE.md will NOT be touched)"
echo

COPIED=0
for dir in skills templates; do
  if [ -d "$KIT_ROOT/$dir" ]; then
    mkdir -p "$TARGET/$dir"
    cp -R "$KIT_ROOT/$dir/." "$TARGET/$dir/"
    COUNT="$(find "$KIT_ROOT/$dir" -type f | wc -l | tr -d ' ')"
    echo "  synced $dir/  ($COUNT files)  ->  $TARGET/$dir/"
    COPIED=$((COPIED + 1))
  else
    echo "  warning: $KIT_ROOT/$dir not found, skipping" >&2
  fi
done

echo
if [ "$COPIED" -gt 0 ]; then
  echo "Done. Review CHANGELOG.md for what changed in this version."
else
  echo "Nothing synced — no skills/ or templates/ found in the kit." >&2
  exit 1
fi
