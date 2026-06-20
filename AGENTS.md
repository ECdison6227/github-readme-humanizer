# AGENTS.md

This file is a quick guide for AI Agents working on this repository.

## Project Purpose

`github-readme-humanizer` is a skill that helps projects write human-sounding, open-source-ready GitHub READMEs.

## Repository Layout

```
github-readme-humanizer/
├── README.md              # Chinese README (main entry)
├── README.en.md           # English README
├── SKILL.md               # Skill definition and rules
├── LICENSE
├── .gitignore
├── install.sh             # One-command install to agent skill dirs
├── scripts/
│   └── validate.sh        # README structure and tone checker
├── .github/
│   ├── workflows/
│   │   └── validate.yml   # CI gate
│   └── ISSUE_TEMPLATE/
├── CODE_OF_CONDUCT.md
├── AGENTS.md
├── CONTRIBUTING.md
├── SECURITY.md
├── CHANGELOG.md
├── assets/
│   ├── banner.svg         # draw.io-style banner
│   └── banner.drawio      # Editable source
└── examples/
    ├── input/             # AI-style README sample
    ├── output/            # Human-style README sample
    └── before-after-snippet.md
```

## Rules for AI Agents

1. Any README change must pass the 12-point human-tone checklist in `SKILL.md`.
2. Banners must be draw.io-style SVG; keep `banner.drawio` in sync with `banner.svg`.
3. Do not use placeholder images, network images, or abstract AI-generated art.
4. **Never invent the maintainer's backstory.** Before writing the "Why I built this" / "为什么要做这个" section, ask the user for their real pain point. If they don't provide one, use a clearly marked placeholder like `[你的真实故事：...]` instead of making up "my wife / my friend / my boss" stories.
5. Contact email is `2014184720@qq.com`; do not use the GitHub noreply address in SECURITY.md.
6. Commit messages should not contain internal jargon like "去 AI 味".
7. Privacy check before every push: no real names, phone numbers, addresses, keys, or local absolute paths.

## Common Commands

```bash
# Install the skill locally
./install.sh

# Validate README structure, language switch, forbidden words, etc.
./scripts/validate.sh

# Check git identity before committing
git config user.name && git config user.email
```
