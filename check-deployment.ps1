# GitHub Pages 部署状态检查脚本

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  GitHub Pages 部署状态检查" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 检查Git状态
Write-Host "1. 检查本地Git状态..." -ForegroundColor Yellow
git log --oneline -3
Write-Host ""

# 检查远程状态
Write-Host "2. 检查远程分支状态..." -ForegroundColor Yellow
git remote -v
Write-Host ""

# 检查GitHub Pages URL
$repo = "NexMaker-Fab/zwu2026-1-004"
$pagesUrl = "https://nexmaker-fab.github.io/zwu2026-1-004/"

Write-Host "3. GitHub Pages 地址:" -ForegroundColor Yellow
Write-Host "   $pagesUrl" -ForegroundColor Green
Write-Host ""

Write-Host "4. 访问测试..." -ForegroundColor Yellow
Write-Host "   请在浏览器中打开以下链接检查：" -ForegroundColor White
Write-Host "   - 首页: $pagesUrl" -ForegroundColor Cyan
Write-Host "   - 作业列表: ${pagesUrl}homework.html" -ForegroundColor Cyan
Write-Host "   - 作业详情: ${pagesUrl}homework-detail.html?id=1" -ForegroundColor Cyan
Write-Host ""

Write-Host "5. 检查GitHub Actions状态:" -ForegroundColor Yellow
Write-Host "   访问: https://github.com/$repo/actions" -ForegroundColor Cyan
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  如果页面无法访问，请尝试：" -ForegroundColor Yellow
Write-Host "  1. 强制刷新浏览器 (Ctrl+F5)" -ForegroundColor White
Write-Host "  2. 清除浏览器缓存" -ForegroundColor White
Write-Host "  3. 检查GitHub Actions是否有错误" -ForegroundColor White
Write-Host "  4. 等待1-2分钟让部署完成" -ForegroundColor White
Write-Host "========================================" -ForegroundColor Cyan
