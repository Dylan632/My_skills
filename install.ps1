# OpenCode Skills Installer for Windows

$ErrorActionPreference = "Stop"

$RepoUrl = "https://raw.githubusercontent.com/Dylan632/My_skills/main"
$SkillDir = "$env:USERPROFILE\.config\opencode\skills"

Write-Host "🚀 Installing OpenCode Skills..." -ForegroundColor Cyan

# Create skills directory
if (!(Test-Path $SkillDir)) {
    New-Item -ItemType Directory -Force -Path $SkillDir | Out-Null
}

# Download skills
Write-Host "📥 Downloading review-java.md..." -ForegroundColor Yellow
Invoke-WebRequest -Uri "$RepoUrl/skills/review-java.md" -OutFile "$SkillDir\review-java.md"

Write-Host ""
Write-Host "✅ Installation complete!" -ForegroundColor Green
Write-Host "📁 Skills installed to: $SkillDir" -ForegroundColor Gray
Write-Host ""
Write-Host "Available skills:" -ForegroundColor Cyan
Write-Host "  - /review-java  : Java 代码审查"
Write-Host ""
Write-Host "Restart OpenCode to use the new skills." -ForegroundColor Yellow
