#!/bin/bash

# HIG Compliance Auditor - Manual Installation Script
# By Omraj Kumar (https://github.com/omrajguru05)

set -e

SKILL_DIR="$HOME/.claude/skills/hig-compliance-auditor"

echo "Installing HIG Compliance Auditor skill..."

mkdir -p "$SKILL_DIR/references"

curl -sfL "https://raw.githubusercontent.com/omrajguru05/hig-compliance-auditor/main/skills/hig-compliance-auditor/SKILL.md" \
  -o "$SKILL_DIR/SKILL.md"

curl -sfL "https://raw.githubusercontent.com/omrajguru05/hig-compliance-auditor/main/skills/hig-compliance-auditor/references/hig-foundations.md" \
  -o "$SKILL_DIR/references/hig-foundations.md"

curl -sfL "https://raw.githubusercontent.com/omrajguru05/hig-compliance-auditor/main/skills/hig-compliance-auditor/references/platform-paradigms.md" \
  -o "$SKILL_DIR/references/platform-paradigms.md"

curl -sfL "https://raw.githubusercontent.com/omrajguru05/hig-compliance-auditor/main/skills/hig-compliance-auditor/references/web-pwa-adaptation.md" \
  -o "$SKILL_DIR/references/web-pwa-adaptation.md"

curl -sfL "https://raw.githubusercontent.com/omrajguru05/hig-compliance-auditor/main/skills/hig-compliance-auditor/references/compliance-checklists.md" \
  -o "$SKILL_DIR/references/compliance-checklists.md"

echo "HIG Compliance Auditor installed to $SKILL_DIR"
echo "Restart Claude Code or start a new conversation to activate."
