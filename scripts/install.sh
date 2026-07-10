#!/usr/bin/env bash
#
# install.sh — Install the AI Operating Kit into a target project.
#
# Copies skills/ and templates/ into the target directory, and installs
# CLAUDE.md (backing up any existing one). Dependency-free: just Bash + cp.
#
# Usage:
#   ./scripts/install.sh /path/to/your/project
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

# --- create target ---------------------------------------------------------
if [ ! -d "$TARGET" ]; then
  echo "Target directory does not exist. Creating: $TARGET"
  mkdir -p "$TARGET"
fi
TARGET="$(cd "$TARGET" && pwd)"

if [ "$TARGET" = "$KIT_ROOT" ]; then
  echo "Refusing to install the kit into itself." >&2
  exit 1
fi

echo "Installing AI Operating Kit"
echo "  from: $KIT_ROOT"
echo "  into: $TARGET"
echo

# --- copy skills/ and templates/ ------------------------------------------
for dir in skills templates; do
  if [ -d "$KIT_ROOT/$dir" ]; then
    mkdir -p "$TARGET/$dir"
    cp -R "$KIT_ROOT/$dir/." "$TARGET/$dir/"
    echo "  copied $dir/  ->  $TARGET/$dir/"
  else
    echo "  warning: $KIT_ROOT/$dir not found, skipping" >&2
  fi
done

# --- install CLAUDE.md (never clobber silently) ---------------------------
SRC_CLAUDE="$KIT_ROOT/CLAUDE.md"
DEST_CLAUDE="$TARGET/CLAUDE.md"

if [ -f "$SRC_CLAUDE" ]; then
  if [ -f "$DEST_CLAUDE" ]; then
    BACKUP="$DEST_CLAUDE.bak.$$"
    cp "$DEST_CLAUDE" "$BACKUP"
    echo "  existing CLAUDE.md found — backed up to: $BACKUP"
    echo "  (left your CLAUDE.md in place; review $BACKUP vs. the kit's version)"
  else
    cp "$SRC_CLAUDE" "$DEST_CLAUDE"
    echo "  installed CLAUDE.md -> $DEST_CLAUDE"
  fi
else
  echo "  warning: $SRC_CLAUDE not found, skipping CLAUDE.md" >&2
fi

# --- next steps ------------------------------------------------------------
cat <<EOF

Done.

Next steps:
  1. Open your project in your AI assistant so it loads CLAUDE.md.
  2. Start with /wrapup       ($TARGET/skills/wrapup.md)
  3. Run /spec-first          on one real project
  4. Run /roi-check           before building anything meaningful
  5. Run /cleanroom           before pasting any sensitive/client data

To update skills + templates later without touching CLAUDE.md:
  $SCRIPT_DIR/sync-skills.sh "$TARGET"
EOF
