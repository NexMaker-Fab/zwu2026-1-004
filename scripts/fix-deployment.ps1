# GitHub Pages 部署修复脚本
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  GitHub Pages 部署修复工具" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 检查是否在Git仓库中
try {
    git status | Out-Null
} catch {
    Write-Host "[错误] 当前目录不是Git仓库！" -ForegroundColor Red
    pause
    exit 1
}

Write-Host "[1/6] 检查当前状态..." -ForegroundColor Yellow
git status --short
Write-Host ""

Write-Host "[2/6] 拉取最新代码..." -ForegroundColor Yellow
git pull origin main
if ($LASTEXITCODE -ne 0) {
    Write-Host "[警告] 拉取失败，继续执行..." -ForegroundColor Yellow
}
Write-Host ""

Write-Host "[3/6] 生成时间戳用于缓存清除..." -ForegroundColor Yellow
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
Write-Host "  时间戳: $timestamp" -ForegroundColor Green
Write-Host ""

Write-Host "[4/6] 添加所有更改..." -ForegroundColor Yellow
git add .
Write-Host "  ✓ 文件已暂存" -ForegroundColor Green
Write-Host ""

Write-Host "[5/6] 提交更改..." -ForegroundColor Yellow
$commitMsg = "Deploy fix: Cache bust $timestamp"
git commit -m $commitMsg
if ($LASTEXITCODE -eq 1) {
    Write-Host "  [提示] 没有新的更改需要提交" -ForegroundColor Yellow
} else {
    Write-Host "  ✓ 提交成功" -ForegroundColor Green
}
Write-Host ""

Write-Host "[6/6] 推送到GitHub..." -ForegroundColor Yellow
git push origin main
if ($LASTEXITCODE -ne 0) {
    Write-Host "[错误] 推送失败！" -ForegroundColor Red
    Write-Host "请检查网络连接和分支名称" -ForegroundColor Red
    pause
    exit 1
}
Write-Host "  ✓ 推送成功" -ForegroundColor Green
Write-Host ""

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  部署已启动！" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "下一步操作：" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. 访问 Actions 查看部署进度：" -ForegroundColor White
Write-Host "   https://github.com/$env:USERNAME/zwu2026-1-004/actions" -ForegroundColor Cyan
Write-Host ""
Write-Host "2. 等待 5-10 分钟后访问网站：" -ForegroundColor White
Write-Host "   https://$env:USERNAME.github.io/zwu2026-1-004/aether-brand.html" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. 强制刷新浏览器：" -ForegroundColor White
Write-Host "   Windows: Ctrl + F5" -ForegroundColor Gray
Write-Host "   Mac: Cmd + Shift + R" -ForegroundColor Gray
Write-Host ""
Write-Host "4. 如果还是旧版本，清除浏览器缓存：" -ForegroundColor White
Write-Host "   Ctrl + Shift + Delete → 清除缓存的图片和文件" -ForegroundColor Gray
Write-Host ""
Write-Host "提示：GitHub Pages CDN通常需要5-10分钟完全刷新" -ForegroundColor Yellow
Write-Host ""

pause
