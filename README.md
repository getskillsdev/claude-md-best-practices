# claude-md-best-practices

[![CI](https://github.com/getskillsdev/claude-md-best-practices/actions/workflows/ci.yml/badge.svg)](https://github.com/getskillsdev/claude-md-best-practices/actions/workflows/ci.yml)

Audit CLAUDE.md for best practices. 18-point checklist.

[![18 Steps to better CLAUDE.md](https://img.youtube.com/vi/14QQQcRWrMc/maxresdefault.jpg)](https://youtu.be/14QQQcRWrMc)

Claude Code's `/init` generates a basic CLAUDE.md - but is it enough?

## Why use this?

Your CLAUDE.md file is how Claude understands your project. A well-structured file leads to better AI assistance.

- Comprehensive 18-point audit based on official Anthropic and GitHub best practices
- Three modes: interactive one-by-one, summary, or file output
- Automatically offers to create missing docs (roadmap, architecture, domain model)

## /init vs this skill

| Checkpoint | /init | skill |
|------------|-------|-------|
| Project overview | ✓ | ✓ |
| Architecture | ✓ | ✓ |
| Coding standards | ✓ | ✓ |
| Testing instructions | ✓ | ✓ |
| Commands with workflows | ✓ | ✓ |
| Infrastructure | partial | ✓ |
| Directory structure | - | ✓ |
| Concrete not Abstract | - | ✓ |
| Roadmap & Goals | - | ✓ |
| Domain model | - | ✓ |
| Environment setup | - | ✓ |
| MCP server configs | - | ✓ |
| Git workflow | - | ✓ |
| Claude's Role | - | ✓ |
| Claude's Permissions | - | ✓ |
| External dependencies | - | ✓ |
| Validation scan | - | ✓ |
| Evaluate and trim | - | ✓ |

## Features

- Directory structure mapping
- Project overview validation
- Coding standards check (linters, patterns)
- Testing philosophy documentation
- Infrastructure and environment setup
- MCP server configuration
- Security and sensitivity scan
- Redundancy detection and trimming

## Install (quit Claude first)

```bash
claude plugin marketplace add getskillsdev/claude-md-best-practices
claude plugin install gsd@claude-md-best-practices
```

## Usage (in Claude)

```
/gsd:claude-md-bp
```

## Update (quit Claude first)

```bash
claude plugin marketplace update claude-md-best-practices
claude plugin update gsd@claude-md-best-practices
```

## Uninstall (quit Claude first)

```bash
claude plugin uninstall gsd@claude-md-best-practices
claude plugin marketplace remove claude-md-best-practices
```

## Troubleshooting

**Skill not available?**

Restart Claude after installing or updating plugins.

## Inspired by

- [Anthropic: Using CLAUDE.md files](https://claude.com/blog/using-claude-md-files)
- [GitHub: How to write a great agents.md](https://github.blog/ai-and-ml/github-copilot/how-to-write-a-great-agents-md-lessons-from-over-2500-repositories/)

## License

MIT - see [LICENSE.md](./LICENSE.md)

## Disclaimer

Not affiliated with, endorsed by, or sponsored by Anthropic.
