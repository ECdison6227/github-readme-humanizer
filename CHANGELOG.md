# Changelog

## v1.0.0

### Added

- Initial release of `github-readme-humanizer` skill.
- 12-point human-tone checklist and forbidden-word list.
- draw.io-style banner generation workflow.
- Bilingual README template with top language switch and one-click prompt block.
- Privacy check guide and push-preparation checklist.
- Example AI-style vs human-style README comparison.

### Added

- `install.sh` for one-command installation into `.claude`, `.codex`, `.trae`, `.trae-cn` skill directories.
- `scripts/validate.sh` to check README structure, language switches, forbidden words, and pain-point rules.
- GitHub Actions workflow `.github/workflows/validate.yml` for CI gating.
- `.github/ISSUE_TEMPLATE/` for bug reports and feature requests.
- `CODE_OF_CONDUCT.md`.
- Badges and table of contents in both READMEs.

### Fixed

- Removed invented personal stories from examples; replaced with clearly fictional friend scenarios.
- Added a mandatory "collect real pain point" step: AI must ask the user before writing the "Why I built this" section, and cannot make up "my wife / my friend / my boss" stories.
