#!/usr/bin/env bash
set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v stow &>/dev/null; then
  echo "stow not found. Install with: brew install stow"
  exit 1
fi

cd "$DOTFILES_DIR"

packages=()
for dir in */; do
  dir="${dir%/}"
  [[ "$dir" == ".git" ]] && continue
  packages+=("$dir")
done

echo "Stowing: ${packages[*]}"
stow "${packages[@]}"
echo "Done."
