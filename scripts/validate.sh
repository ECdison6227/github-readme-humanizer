#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

fail() {
  echo "FAIL: $1" >&2
  exit 1
}

pass() {
  echo "PASS: $1"
}

# Required files
for f in README.md README.en.md LICENSE .gitignore SKILL.md assets/banner.svg assets/banner.drawio SECURITY.md CONTRIBUTING.md CHANGELOG.md AGENTS.md; do
  [[ -f "$f" ]] || fail "missing required file: $f"
done
pass "required files exist"

# Language switch at top of READMEs
head -n 5 README.md | grep -q "English" || fail "README.md missing English language switch"
head -n 5 README.en.md | grep -q "中文" || fail "README.en.md missing 中文 language switch"
pass "language switches present"

# One-click prompt block
grep -q "一键使用" README.md || fail "README.md missing 一键使用 section"
grep -q "One-click Setup" README.en.md || fail "README.en.md missing One-click Setup section"
pass "one-click prompt blocks present"

# Forbidden words in READMEs (exclude sections marked as AI-style examples and SKILL.md which documents the list)
strip_ai_examples() {
  awk '/<!-- ai-style-example-begin -->/{flag=1; next} /<!-- ai-style-example-end -->/{flag=0; next} !flag'
}
forbidden=("强大的" "高效的" "智能的" "优雅的" "轻量级的" "一站式" "革命性" "突破性" "极致" "旨在" "致力于" "赋能" "助力" "打造" "丰富的" "灵活的" "完善的" "卓越的" "极易" "powerful" "efficient" "intelligent" "elegant" "lightweight" "one-stop" "revolutionary" "breakthrough" "ultimate")
for word in "${forbidden[@]}"; do
  if strip_ai_examples < README.md | grep -ni "$word"; then
    fail "forbidden word found in README.md: $word"
  fi
  if strip_ai_examples < README.en.md | grep -ni "$word"; then
    fail "forbidden word found in README.en.md: $word"
  fi
done
pass "no forbidden words in READMEs"

# Real pain point rule: must ask user, not invent
if ! grep -q "严禁 AI 编造" SKILL.md; then
  fail "SKILL.md missing '严禁 AI 编造' rule"
fi
if ! grep -q "ask you for the real pain point" README.en.md; then
  fail "README.en.md missing real pain point note"
fi
pass "real pain point rule present"

# Contact email consistency
if ! grep -q "2014184720@qq.com" SECURITY.md README.md README.en.md; then
  fail "contact email inconsistent or missing"
fi
pass "contact email consistent"

# Example files marked as fictional if needed
if grep -q "我老婆" examples/output/human-style-readme.md examples/before-after-snippet.md; then
  fail "examples contain invented '我老婆' story without marking"
fi
pass "examples do not contain unmarked invented stories"

echo ""
echo "Validation complete."
