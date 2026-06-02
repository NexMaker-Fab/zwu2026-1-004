# 加载原始图片
$imagePath = "c:\Users\陈梓琦\Documents\GitHub\zwu2026-1-004\image\logo.png"
$outputPath = "c:\Users\陈梓琦\Documents\GitHub\zwu2026-1-004\image\favicon-optimized.png"

Add-Type -AssemblyName System.Drawing
Add-Type -AssemblyName System.Windows.Forms

# 加载图片
$bitmap = [System.Drawing.Bitmap]::FromFile($imagePath)
Write-Host "原始尺寸: $($bitmap.Width)x$($bitmap.Height)"

# 查找内容边界（裁剪空白）
$minX = $bitmap.Width
$minY = $bitmap.Height
$maxX = 0
$maxY = 0

# 扫描所有像素，找到非白色区域的边界
for ($x = 0; $x -lt $bitmap.Width; $x++) {
    for ($y = 0; $y -lt $bitmap.Height; $y++) {
        $pixel = $bitmap.GetPixel($x, $y)
        # 如果不是白色或接近白色
        if ($pixel.R -lt 250 -or $pixel.G -lt 250 -or $pixel.B -lt 250) {
            if ($x -lt $minX) { $minX = $x }
            if ($y -lt $minY) { $minY = $y }
            if ($x -gt $maxX) { $maxX = $x }
            if ($y -gt $maxY) { $maxY = $y }
        }
    }
}

$width = $maxX - $minX
$height = $maxY - $minY

Write-Host "内容边界: ($minX, $minY) to ($maxX, $maxY)"
Write-Host "内容尺寸: ${width}x${height}"

# 裁剪图片
$croppedBitmap = New-Object System.Drawing.Bitmap($width, $height)
$graphics = [System.Drawing.Graphics]::FromImage($croppedBitmap)
$graphics.DrawImage($bitmap, 0, 0, 
    (New-Object System.Drawing.Rectangle($minX, $minY, $width, $height)),
    [System.Drawing.GraphicsUnit]::Pixel)
$graphics.Dispose()

# 创建正方形版本（256x256），让图案居中
$finalSize = 256
$squareBitmap = New-Object System.Drawing.Bitmap($finalSize, $finalSize)
$graphics = [System.Drawing.Graphics]::FromImage($squareBitmap)
$graphics.Clear([System.Drawing.Color]::White)

# 计算缩放比例和位置
$scale = [math]::Min($finalSize / $width, $finalSize / $height) * 0.85  # 留15%边距
$newWidth = [int]($width * $scale)
$newHeight = [int]($height * $scale)
$x = ($finalSize - $newWidth) / 2
$y = ($finalSize - $newHeight) / 2

$graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$graphics.DrawImage($croppedBitmap, $x, $y, $newWidth, $newHeight)
$graphics.Dispose()

# 保存优化后的 favicon
$squareBitmap.Save($outputPath, [System.Drawing.Imaging.ImageFormat]::Png)
Write-Host "已保存优化后的 favicon: $outputPath"
Write-Host "新尺寸: ${finalSize}x${finalSize}"

# 清理
$bitmap.Dispose()
$croppedBitmap.Dispose()
$squareBitmap.Dispose()

Write-Host "`n完成！请用这个新文件替换 logo.png"
