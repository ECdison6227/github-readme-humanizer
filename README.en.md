<p align="center">
  <a href="README.md">中文</a> | <a href="README.en.md">English</a>
</p>

<p align="center">
  <img src="assets/banner.svg" alt="github-readme-humanizer banner" width="100%">
</p>

<h1 align="center">github-readme-humanizer</h1>

<p align="center">Make your GitHub README sound like it was written by a real person.</p>

## One-click Setup

If you don't want to install manually, paste this prompt into your Coding Agent (Trae / Codex / Claude Code). It will clone the repo, install the skill, and walk you through usage:

```text
Please install and configure the github-readme-humanizer skill from https://github.com/ECdison6227/github-readme-humanizer:

1. Clone it into my local skills directory (e.g. ~/.claude/skills/github-readme-humanizer)
2. Read SKILL.md and tell me when to trigger it and what the core flow is
3. Use it to rewrite one of my projects into a human-style GitHub README
4. Generate a draw.io-style banner and prepare bilingual README files
```

## Why I Built This

I had a few personal skills I wanted to share on GitHub. The first draft of the README came out like this:

> This project is a powerful and efficient README de-AI-fication tool designed to help users automatically generate more natural and human-like GitHub project documentation.

I cringed reading it. It listed a bunch of features, but no one could tell who it was for, what problem it solved, or when to actually use it. It was a specification sheet, not a project page.

So I wrote this skill. It doesn't generate longer READMEs. It rewrites them so they sound human.

## What It Does / What It Doesn't Do

| What it does | What it doesn't do |
|--------------|--------------------|
| Rewrite AI-sounding READMEs into plain human language | Invent a real backstory you don't actually have |
| Generate draw.io-style flowchart banners | Generate photorealistic art banners (too fake) |
| Check repo structure and privacy issues | Create GitHub repos or push code for you |
| Produce bilingual Chinese / English READMEs | Translate Chinese word-for-word into English |
| Provide a 12-point checklist and forbidden-word list | Guarantee your repo will trend |

## Quick Start

### Install as a Trae / Codex / Claude Code Skill

```bash
# Trae
git clone https://github.com/ECdison6227/github-readme-humanizer.git \
  ~/.trae-cn/skills/github-readme-humanizer

# Claude Code
git clone https://github.com/ECdison6227/github-readme-humanizer.git \
  ~/.claude/skills/github-readme-humanizer
```

Then tell your agent:

> "Use github-readme-humanizer to turn this project into an open-source-ready README."

### Use It as a Writing Guide

If you don't want to install the skill, just read [SKILL.md](SKILL.md). The 12-point checklist and forbidden-word list work as a manual style guide too.

## Full Example: From AI-style to Human-style README

Input: [examples/input/ai-style-readme.md](examples/input/ai-style-readme.md) — a typical AI-flavored README:

```markdown
# PDF Processor

This project is a powerful and efficient PDF processing tool
...
```

Output: [examples/output/human-style-readme.md](examples/output/human-style-readme.md):

```markdown
# 作业帮错题本裁剪器

A middle-school math teacher I know used to screenshot every problem
from her homework PDF to make handouts. A 15-problem worksheet took her half an hour.
...
```

Side-by-side comparison: [examples/before-after-snippet.md](examples/before-after-snippet.md).

## How It Works

1. **Read the project**: List files, read the main code and existing docs, confirm inputs and outputs.
2. **Generate a banner**: Prefer a draw.io-style SVG flowchart; keep the `.drawio` source file.
3. **Prepare examples**: Find a real input, run the program, pick the 2-4 most representative outputs.
4. **Write the Chinese README**: Start with a real story, list both capabilities and limitations, include pitfall notes.
5. **Write the English README**: Rewrite for English-speaking readers, not translate literally.
6. **Final review**: Run through 20+ checklist items to catch privacy leaks and AI-sounding phrases.
7. **Push prep**: Check `.gitignore`, LICENSE, git config, then push to GitHub.

## Key Configuration

The skill itself has no heavy config. The rules live in [SKILL.md](SKILL.md):

| Setting | Default | Note |
|---------|---------|------|
| Banner style | draw.io SVG | Prefer flowcharts over AI-generated images |
| README languages | Bilingual | `README.md` for Chinese, `README.en.md` for English |
| Contact email | User-provided | Defaults to `2014184720@qq.com` |
| License | MIT | Recommended for tooling projects |

## Pitfalls We Hit

### First draft: README read like a product spec

**Symptom**: Listed 12 features, but readers couldn't tell who the project was for.
**Cause**: Wrote only what it can do, not why it exists or what it can't do.
**Fix**: Force a real-story opening and require a limitations section.

### Second draft: Used an AI-generated abstract image as the banner

**Symptom**: Looked cool, but had nothing to do with the actual project logic.
**Cause**: AI image generation produces generic "tech" visuals that don't match real code.
**Fix**: Banners must be draw.io flowcharts showing input → skill → output → push.

### Third draft: Contact info said "contact the author"

**Symptom**: Users who wanted to give feedback couldn't find an email.
**Cause**: Contact details were hidden in small text at the bottom.
**Fix**: Put a standalone email line in the feedback section.

## Limitations and Roadmap

- This skill won't run your program to generate real screenshots; you need to provide the input files.
- It won't create GitHub repositories for you; remotes and repos must be confirmed by you.
- For complex projects, let the skill produce a first draft and then polish it yourself.

PRs and issues welcome, especially if you spot new AI-sounding sentence patterns.

## Thanks

- Friends who gave real feedback and test cases.
- PyMuPDF, draw.io, and the broader open-source community.

## Contact

📮 Email: **2014184720@qq.com**

GitHub Issues: [https://github.com/ECdison6227/github-readme-humanizer/issues](https://github.com/ECdison6227/github-readme-humanizer/issues)

## License

MIT
