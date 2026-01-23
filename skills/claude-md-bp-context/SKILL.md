---
name: claude-md-bp-context
description: Audit CLAUDE.md for best practices. 18-point checklist.
---

# Claude.md Best Practices Audit

Audit the current project's CLAUDE.md against best practices.

Sources:
- https://www.claude.com/blog/using-claude-md-files
- https://github.blog/ai-and-ml/github-copilot/how-to-write-a-great-agents-md-lessons-from-over-2500-repositories/

---

## Instructions

**Pre-check:** Verify CLAUDE.md exists. If not: offer to run `/init` or create empty file. Do not proceed until file exists.

**Mode selection:** Ask user:
> "This is a 18-point checklist. How would you like to proceed?"
> 1. **One-by-one** - Address each point together, wait for your approval before changes
> 2. **Summary** - Review all points, show recommendations at the end
> 3. **File output** - Full analysis written to `docs/claude-md-audit.md`

**Run checkpoints:** Read CLAUDE.md, then evaluate each checkpoint based on mode:

**Mode 1 (One-by-one):**
- Create todo list with all 18 items
- For each: mark in_progress, report findings, propose changes
- When user approves the change, that IS confirmation - auto-advance to next item
- Only pause if user rejects or wants to discuss

**Mode 2 (Summary):**
- First, display the full checklist (all 18 items) so user knows what will be evaluated
- Scan project and best-guess answers to inline questions (only ask user if truly unclear)
- Silently evaluate all checkpoints
- Present single summary: what's present, what's missing, what needs improvement
- Ask which items user wants to address

**Mode 3 (File output):**
- First, display the full checklist (all 18 items) so user knows what will be evaluated
- Scan project and best-guess answers to inline questions (only ask user if truly unclear)
- Silently evaluate all checkpoints
- Write full audit report to `docs/claude-md-audit.md`
- Report: "Audit complete. See docs/claude-md-audit.md"

**Finish:** Read full file, count lines, identify overlaps/redundancy, propose trims. Show summary of all changes made.

---

## Checkpoints

1. **Directory structure** - Map showing important directories and their purposes. Always run `tree -L 4` first (check if tree is installed, use OS package manager to install if not) use tree to understand the project layout before evaluating. Compare against existing section if present, propose updates if outdated
2. **Concrete not Abstract** - Verify: code examples over explanation, no hypotheticals, links to external docs instead of duplicating
3. **Project overview** - Purpose, main dependencies, exact versions (Rails 7.1 with Hotwire, Postgres, Solid Cache - not just "Rails app"). Include "What this isn't" if helpful to clarify scope
4. **Roadmap & Goals** - If section missing, - ASk: "Does project have Roadmap? Want me to help create `docs/roadmap.md` with high-level goals and priorities?" If yes, discuss with user and generate doc, link from CLAUDE.md
5. **Domain model** - Internal data structure: key entities, relationships, what models represent. If missing: search for existing doc or offer to analyze schema and create `docs/domain-model.md`, link from CLAUDE.md
6. **Architecture** - High-level system view: how apps/services connect, external dependencies (DB, cache, queues, search), data flow. If missing: search for existing doc or offer to create `docs/architecture.md` with ASCII diagram, link from CLAUDE.md
7. **Coding standards** - Scan for linters (rubocop, eslint, prettier). Ask what key patterns Claude should know. Save inline: tool references + good/bad examples
8. **Testing instructions** - Ask: Do you want Claude to: tests-first, after, or not at all? Save: test commands, framework, fixtures, philosophy
9. **Commands with workflows** - Project commands grouped by workflow
10. **Infrastructure** - Hosting, DNS, CI/CD, secrets management. Table format: Component | Service | Notes
11. **Environment setup** - If missing: Check for setup instructions (dev/prod). Ask: "Is setup documented anywhere?" If yes, link it. If no, offer to help write `docs/setup.md`
12. **MCP server configs** - If section missing: Check `.claude/settings.local.json` for mcpServers. Save inline: table of server names and purposes
13. **Git workflow** - Branch name conventions, PR rules, deploy process
14. **Claude's Role** - Ask user: "What role should Claude play? For example: You are a backend Rails expert creating performant JSON API responses with careful consideration of database query performance and caching"
15. **Claude's Permissions** - What things should Claude not do - for example git operations. What should Claude always do. What should Claude ask permission to do.
16. **External dependencies** - SaaS accounts, third-party services used (e.g., Gmail, Stripe, AWS). Table format: Service | Account | Purpose. Note password manager reference if applicable (e.g., "Credentials in 1Pass under 'project-name'")
17. **Validation scan** - Check for: sensitive data (secrets, keys, tokens), security details (vulnerabilities, procedures), generic content (vague guidance), excessive length. Flag any issues found
18. **Evaluate and trim** - Read full file, count lines, identify redundancy/overlap, suggest removals
