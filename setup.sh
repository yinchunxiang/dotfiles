#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Collect all stow packages (top-level directories, excluding .git)
packages=()
for dir in "$DOTFILES_DIR"/*/; do
  pkg="$(basename "$dir")"
  [[ "$pkg" == .* ]] && continue
  packages+=("$pkg")
done

if [ ${#packages[@]} -eq 0 ]; then
  echo "No packages found in $DOTFILES_DIR"
  exit 0
fi

echo "Stowing packages: ${packages[*]}"
for pkg in "${packages[@]}"; do
  echo "  -> $pkg"
  stow -d "$DOTFILES_DIR" -t "$HOME" --restow "$pkg"
done

echo "Done."
