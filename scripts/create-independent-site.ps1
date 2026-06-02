# 自动创建独立个人网站脚本
# 在 PowerShell 中运行: .\create-independent-site.ps1

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  创建陈梓琦独立个人网站" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 配置
$sourceFile = "profile-chen.html"
$newFolder = "..\chenziqi-portfolio"
$newFileName = "index.html"

# 检查源文件是否存在
if (-not (Test-Path $sourceFile)) {
    Write-Host "❌ 错误: 找不到 $sourceFile" -ForegroundColor Red
    exit 1
}

Write-Host "📁 创建新目录..." -ForegroundColor Yellow
if (Test-Path $newFolder) {
    Write-Host "⚠️  目录已存在，将覆盖" -ForegroundColor Yellow
    Remove-Item -Recurse -Force $newFolder
}
New-Item -ItemType Directory -Path $newFolder | Out-Null

Write-Host "📄 复制文件..." -ForegroundColor Yellow
Copy-Item $sourceFile "$newFolder\$newFileName"

# 创建目录结构
Write-Host "📂 创建目录结构..." -ForegroundColor Yellow
New-Item -ItemType Directory -Path "$newFolder\images" | Out-Null
New-Item -ItemType Directory -Path "$newFolder\images\projects" | Out-Null
New-Item -ItemType Directory -Path "$newFolder\css" | Out-Null
New-Item -ItemType Directory -Path "$newFolder\js" | Out-Null

# 创建 README
Write-Host "📝 创建 README..." -ForegroundColor Yellow
$readmeContent = @"
# Chen Ziqi - Personal Portfolio

An independent premium portfolio website showcasing creative technology work.

## 🌐 Live Site

Visit: https://你的用户名.github.io/chenziqi-portfolio/

## 🚀 Deployment

This site is deployed on GitHub Pages.

## 📧 Contact

- Email: chenziqi@example.com
- GitHub: github.com/chenziqi

---

© 2026 Chen Ziqi. All rights reserved.
"@
Set-Content "$newFolder\README.md" $readmeContent -Encoding UTF8

# 创建 .gitignore
Write-Host "📋 创建 .gitignore..." -ForegroundColor Yellow
$gitignoreContent = @"
# OS files
.DS_Store
Thumbs.db

# Editor
.vscode/
.idea/
*.swp
*.swo

# Logs
*.log
npm-debug.log*
"@
Set-Content "$newFolder\.gitignore" $gitignoreContent -Encoding UTF8

# 创建 GitHub Actions 部署配置
Write-Host "⚙️  创建部署配置..." -ForegroundColor Yellow
New-Item -ItemType Directory -Path "$newFolder\.github\workflows" -Force | Out-Null

$workflowContent = @"
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

concurrency:
  group: "pages"
  cancel-in-progress: false

jobs:
  deploy:
    environment:
      name: github-pages
      url: `${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Pages
        uses: actions/configure-pages@v4

      - name: Upload artifact
        uses: actions/upload-pages-artifact@v3
        with:
          path: '.'

      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
"@
Set-Content "$newFolder\.github\workflows\deploy.yml" $workflowContent -Encoding UTF8

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  ✅ 独立网站创建成功！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "📂 位置: $newFolder" -ForegroundColor Cyan
Write-Host ""
Write-Host "📋 下一步操作:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1️⃣  进入新目录:" -ForegroundColor White
Write-Host "   cd $newFolder" -ForegroundColor Gray
Write-Host ""
Write-Host "2️⃣  初始化 Git:" -ForegroundColor White
Write-Host "   git init" -ForegroundColor Gray
Write-Host "   git add ." -ForegroundColor Gray
Write-Host '   git commit -m "Initial commit"' -ForegroundColor Gray
Write-Host ""
Write-Host "3️⃣  在 GitHub 创建新仓库:" -ForegroundColor White
Write-Host "   - 访问: https://github.com/new" -ForegroundColor Gray
Write-Host "   - 仓库名: chenziqi-portfolio" -ForegroundColor Gray
Write-Host "   - 设为 Public" -ForegroundColor Gray
Write-Host ""
Write-Host "4️⃣  推送代码:" -ForegroundColor White
Write-Host "   git remote add origin https://github.com/你的用户名/chenziqi-portfolio.git" -ForegroundColor Gray
Write-Host "   git branch -M main" -ForegroundColor Gray
Write-Host "   git push -u origin main" -ForegroundColor Gray
Write-Host ""
Write-Host "5️⃣  启用 GitHub Pages:" -ForegroundColor White
Write-Host "   - 进入仓库 Settings → Pages" -ForegroundColor Gray
Write-Host "   - Source: Deploy from a branch" -ForegroundColor Gray
Write-Host "   - Branch: main / root" -ForegroundColor Gray
Write-Host ""
Write-Host "6️⃣  访问网站:" -ForegroundColor White
Write-Host "   https://你的用户名.github.io/chenziqi-portfolio/" -ForegroundColor Gray
Write-Host ""
Write-Host "💡 提示: 详细说明请查看 INDEPENDENT_SITE_GUIDE.md" -ForegroundColor Cyan
Write-Host ""
