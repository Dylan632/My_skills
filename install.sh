#!/bin/bash
# OpenCode Skills Installer for Linux/macOS

set -e

REPO_URL="https://raw.githubusercontent.com/Dylan632/My_skills/main"
SKILL_DIR="$HOME/.config/opencode/skills"

echo "🚀 Installing OpenCode Skills..."

# Create skills directory
mkdir -p "$SKILL_DIR"

# Download skills
echo "📥 Downloading review-java.md..."
curl -fsSL "$REPO_URL/skills/review-java.md" -o "$SKILL_DIR/review-java.md"

echo ""
echo "✅ Installation complete!"
echo "📁 Skills installed to: $SKILL_DIR"
echo ""
echo "Available skills:"
echo "  - /review-java  : Java 代码审查"
echo ""
echo "Restart OpenCode to use the new skills."
