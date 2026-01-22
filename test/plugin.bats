#!/usr/bin/env bats

@test "SKILL.md exists" {
  [ -f skills/claude-md-bp-context/SKILL.md ]
}
