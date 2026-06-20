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
4. Do not invent personal stories about the maintainer. Examples can be fictional, but must be marked as examples.
5. Contact email is `2014184720@qq.com`; do not use the GitHub noreply address in SECURITY.md.
6. Commit messages should not contain internal jargon like "去 AI 味".
7. Privacy check before every push: no real names, phone numbers, addresses, keys, or local absolute paths.

## Common Commands

```bash
# Validate README links and file existence
ls -la assets/ examples/

# Check git identity before committing
git config user.name && git config user.email
```
