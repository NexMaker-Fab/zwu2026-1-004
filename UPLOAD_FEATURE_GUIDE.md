# 作业上传功能添加指南

## ✅ 已完成的功能

1. ✅ **CSS样式** - 已添加完整的上传区域样式
2. ✅ **JavaScript** - 已创建 `upload.js` 处理所有上传逻辑
3. ✅ **作业一上传区** - 已在作业一板块添加上传功能
4. ✅ **团队介绍** - 已添加7位团队成员展示
5. ✅ **制作过程** - 已添加6个开发阶段时间线
6. ✅ **导航链接** - 已添加"团队"和"制作过程"菜单项

---

## 📝 需要手动添加的上传区域

由于文件太大，请按照以下步骤为作业二到大作业添加上传区域：

### 步骤1：找到每个作业的结束位置

在 `index.html` 中搜索以下标记，在每个 `</section>` 前添加上传代码：

- 作业二：搜索 `id="assignment2"`，找到对应的 `</section>`
- 作业三：搜索 `id="assignment3"`
- 作业四：搜索 `id="assignment4"`
- 大作业：搜索 `id="final"`

### 步骤2：添加上传区域代码

在每个作业的 `</section>` 标签**之前**添加以下代码：

```html
        
        <!-- Upload Area for Assignment X -->
        <div class="upload-area" id="uploadAreaX">
            <i class="fas fa-cloud-upload-alt upload-icon"></i>
            <p class="upload-text">拖拽文件到此处或点击上传</p>
            <p class="upload-hint">支持代码文件、图片、文档（最大10MB）</p>
            <input type="file" id="fileInputX" multiple style="display: none;">
            <div class="file-list" id="fileListX"></div>
            <div class="upload-progress" id="progressX">
                <div class="progress-bar" id="progressBarX"></div>
            </div>
        </div>
    </section>
```

**注意：** 将 `X` 替换为对应的作业编号：
- 作业二：X = 2
- 作业三：X = 3
- 作业四：X = 4
- 大作业：X = 5（或6，根据你的需求）

---

## 🎯 上传功能特性

### 已实现的功能

✅ **拖拽上传** - 支持拖拽文件到上传区域  
✅ **点击上传** - 点击上传区域选择文件  
✅ **多文件上传** - 支持一次选择多个文件  
✅ **文件大小限制** - 最大10MB  
✅ **文件类型识别** - 自动显示对应图标  
✅ **上传进度条** - 模拟上传进度动画  
✅ **文件列表管理** - 显示已上传文件，可删除  
✅ **响应式设计** - 移动端友好  

### 支持的文件类型

- 📄 代码文件 (.ino, .cpp, .py, .js, .html, .css等)
- 🖼️ 图片文件 (.jpg, .png, .gif, .svg等)
- 📑 文档文件 (.pdf, .doc, .docx, .txt等)
- 📊 表格文件 (.xls, .xlsx, .csv等)
- 📦 压缩文件 (.zip, .rar, .7z等)

---

## 🔧 使用示例

### 作业一上传区（已添加）

位置：作业一板块底部

功能：
- 上传Arduino代码文件
- 上传实验照片
- 上传实验报告文档

### 其他作业上传区（需手动添加）

按照相同模式添加到：
- 作业二：LED/电机/OLED项目文件
- 作业三：传感器数据、按键测试文件
- 作业四：IoT项目代码、云端截图
- 大作业：机器人设计文档、演示视频等

---

## 💡 高级功能（可选）

如果需要真正的文件上传到服务器，需要：

### 方案1：使用GitHub API
```javascript
// 将文件上传到GitHub仓库
async function uploadToGitHub(file, path) {
    const reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onloadend = async () => {
        const base64data = reader.result.split(',')[1];
        // 调用GitHub API上传
    };
}
```

### 方案2：使用云存储
- AWS S3
- Google Cloud Storage
- 阿里云OSS
- 七牛云

### 方案3：后端服务器
- Node.js + Express
- Python + Flask/Django
- PHP

---

## 📊 当前网站结构

```
index.html (主网站)
├── Hero区域（视频背景）
├── 课程概览（3卡片）
├── 作业一 - Arduino基础 ✅ 有上传区
├── 作业二 - 输出设备 ⚠️ 需添加上传区
├── 作业三 - 输入设备 ⚠️ 需添加上传区
├── 作业四 - IoT物联网 ⚠️ 需添加上传区
├── 大作业 - 情感机器人 ⚠️ 需添加上传区
├── 团队介绍 ✅ 7位成员
├── 制作过程 ✅ 6个阶段
└── Footer

upload.js (上传功能脚本)
└── FileUploadManager类
    ├── 初始化所有上传区
    ├── 处理文件拖拽
    ├── 处理文件选择
    ├── 显示文件列表
    ├── 模拟上传进度
    └── 文件删除功能
```

---

## 🚀 快速添加脚本

如果你想自动化添加，可以运行这个PowerShell脚本：

```powershell
# add-upload-areas.ps1

$file = "index.html"
$content = Get-Content $file -Raw

$assignments = @(
    @{id="assignment2"; num=2},
    @{id="assignment3"; num=3},
    @{id="assignment4"; num=4},
    @{id="final"; num=5}
)

foreach ($assign in $assignments) {
    $uploadArea = @"
        
        <!-- Upload Area for Assignment $($assign.num) -->
        <div class="upload-area" id="uploadArea$($assign.num)">
            <i class="fas fa-cloud-upload-alt upload-icon"></i>
            <p class="upload-text">拖拽文件到此处或点击上传</p>
            <p class="upload-hint">支持代码文件、图片、文档（最大10MB）</p>
            <input type="file" id="fileInput$($assign.num)" multiple style="display: none;">
            <div class="file-list" id="fileList$($assign.num)"></div>
            <div class="upload-progress" id="progress$($assign.num)">
                <div class="progress-bar" id="progressBar$($assign.num)"></div>
            </div>
        </div>
    </section>
"@
    
    # Find the section end and replace
    $pattern = "(</section>\s*<!-- Assignment $($assign.num + 1)|</section>\s*<!-- Footer)"
    $content = $content -replace $pattern, "$uploadArea`n`n`$1"
}

$content | Set-Content $file
Write-Host "Upload areas added successfully!" -ForegroundColor Green
```

---

## ✅ 验证清单

添加完所有上传区后，检查：

- [ ] 作业一有上传区（已完成）
- [ ] 作业二有上传区
- [ ] 作业三有上传区
- [ ] 作业四有上传区
- [ ] 大作业有上传区
- [ ] 上传功能正常工作
- [ ] 文件列表显示正常
- [ ] 删除功能正常
- [ ] 进度条动画流畅
- [ ] 移动端显示正常

---

## 🎨 样式自定义

如需修改上传区样式，在 `index.html` 的 `<style>` 标签中查找：

```css
.upload-area { ... }           /* 上传区域容器 */
.upload-icon { ... }           /* 上传图标 */
.file-item { ... }             /* 文件列表项 */
.progress-bar { ... }          /* 进度条 */
```

常用修改：
- 改变边框颜色：修改 `border-color`
- 改变背景色：修改 `background`
- 改变大小：修改 `padding`
- 改变圆角：修改 `border-radius`

---

## 📞 需要帮助？

如果遇到问题：
1. 检查浏览器控制台是否有错误（F12）
2. 确认 `upload.js` 文件已正确引用
3. 确认HTML ID与JavaScript中的ID匹配
4. 查看 `DEPLOY_FIX_GUIDE.md` 获取部署帮助

---

**祝你顺利完成！** 🎉
