#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
skill_name="github-readme-humanizer"

install_to() {
  local target="$1"
  mkdir -p "$(dirname "$target")"
  if [[ -d "$target" ]]; then
    rm -rf "$target"
  fi
  cp -R "$repo_root" "$target"
  echo "Installed to $target"
}

# Try common skill directories
candidates=()
[[ -d "${HOME}/.claude" ]] && candidates+=("${HOME}/.claude/skills/${skill_name}")
[[ -d "${HOME}/.codex" ]] && candidates+=("${HOME}/.codex/skills/${skill_name}")
[[ -d "${HOME}/.trae" ]] && candidates+=("${HOME}/.trae/skills/${skill_name}")
[[ -d "${HOME}/.trae-cn" ]] && candidates+=("${HOME}/.trae-cn/skills/${skill_name}")

if [[ ${#candidates[@]} -eq 0 ]]; then
  echo "No known skill directory found. Install manually by copying this repo to one of:"
  echo "  ~/.claude/skills/${skill_name}"
  echo "  ~/.codex/skills/${skill_name}"
  echo "  ~/.trae/skills/${skill_name}"
  echo "  ~/.trae-cn/skills/${skill_name}"
  exit 1
fi

for target in "${candidates[@]}"; do
  install_to "$target"
done

echo ""
echo "Done. Restart your Coding Agent or run the one-click prompt from README.md."
