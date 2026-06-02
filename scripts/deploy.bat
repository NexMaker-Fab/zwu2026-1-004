@echo off
chcp 65001 >nul
echo ========================================
echo   Aether Studio - GitHub 部署脚本
echo ========================================
echo.

REM 检查是否在 Git 仓库中
git status >nul 2>&1
if errorlevel 1 (
    echo [错误] 当前目录不是 Git 仓库！
    pause
    exit /b 1
)

echo [1/5] 检查 Git 状态...
git status
echo.

echo [2/5] 添加所有更改...
git add .
echo ✓ 文件已暂存
echo.

echo [3/5] 提交更改...
set /p commit_msg="请输入提交信息 (默认: Update course assignment showcase): "
if "%commit_msg%"=="" set commit_msg=Update course assignment showcase
git commit -m "%commit_msg%"
if errorlevel 1 (
    echo [提示] 没有需要提交的更改，或提交失败
    echo.
)

echo [4/5] 推送到 GitHub...
git push origin main
if errorlevel 1 (
    echo [错误] 推送失败！请检查网络连接和分支名称
    pause
    exit /b 1
)
echo ✓ 推送成功
echo.

echo [5/5] 部署状态检查...
echo.
echo ========================================
echo   部署已启动！
echo ========================================
echo.
echo 请访问以下地址查看部署进度：
echo https://github.com/%USERNAME%/zwu2026-1-004/actions
echo.
echo 部署完成后，访问：
echo - 主网站: https://%USERNAME%.github.io/zwu2026-1-004/aether-brand.html
echo - Fab Academy: https://%USERNAME%.github.io/zwu2026-1-004/
echo.
echo 提示：部署通常需要 1-3 分钟
echo.
pause
