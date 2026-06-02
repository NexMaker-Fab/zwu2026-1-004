# 项目目录结构说明

## 📁 目录概览

```
zwu2026-1-004/
├── .github/              # GitHub 配置（Actions、Pages等）
├── .lingma/              # Lingma AI 助手配置
├── docs/                 # 项目文档
├── homeworks/            # 作业文件说明（HTML文件仍在根目录）
├── image/                # 图片资源
│   ├── homework1/        # 作业1相关图片
│   ├── homework2/        # 作业2相关图片
│   ├── logo.png          # 主Logo（彩色）
│   └── logo-white.png    # 白色Logo（深色主题用）
├── videos/               # 视频资源
│   └── homework2/        # 作业2相关视频
├── *.html                # 网页文件（必须在根目录供GitHub Pages访问）
├── style.css             # 主样式表
├── upload.js             # 上传功能脚本
├── README.md             # 项目说明
├── LICENSE               # 开源许可证
└── .gitignore            # Git忽略配置
```

## 📄 根目录文件说明

### 主要页面
- `index.html` - 网站首页
- `about.html` - 关于我们
- `homework.html` - 作业列表页
- `final.html` - 最终作品展示
- `team.html` - 团队介绍
- `process.html` - 制作过程
- `daily.html` - 日常作业
- `homework-detail.html` - 作业详情页

### 个人主页
- `chen.html` - 陈梓琦个人主页
- `he.html` - 何昱璇个人主页
- `li.html` - 李XX个人主页
- `wang.html` - 王琦琦个人主页
- `xu.html` - 徐思瑜个人主页
- `zhang.html` - 章悦个人主页
- `zhu.html` - 朱诗瑶个人主页
- `profile-chen.html` - 陈梓琦作品集（独立版本）

### 作业页面（共12个文件）
由于 GitHub Pages 限制，所有作业 HTML 文件必须在根目录：

**作业列表和详情：**
- `homework.html` - 作业总列表页
- `homework-detail.html` - 作业详情模板页
- `daily.html` - 日常作业页

**具体作业展示（9次作业）：**
- `homework1.html` - 作业1：Git基础操作
- `homework2.html` - 作业2：Arduino流水灯
- `homework3.html` - 作业3
- `homework4.html` - 作业4
- `homework5.html` - 作业5
- `homework6.html` - 作业6
- `homework7.html` - 作业7
- `homework8.html` - 作业8
- `homework9.html` - 作业9

**模板文件：**
- `homework1-template.html` - 作业HTML模板（供参考）

### 核心资源
- `style.css` - 全局样式表
- `upload.js` - 文件上传功能

## 📂 子目录说明

### docs/ - 文档目录
项目相关文档和指南：
- `DIRECTORY_STRUCTURE.md` - 目录结构说明（本文档）

### homeworks/ - 作业文件说明
**注意：此目录仅包含说明文档，所有作业 HTML 文件仍在根目录。**
- `README.md` - 作业文件组织和访问说明

由于 GitHub Pages 限制，作业 HTML 文件（homework1.html ~ homework9.html）必须保持在根目录。

### image/ - 图片资源
- `logo.png` - 主Logo（用于浅色主题）
- `logo-white.png` - 白色Logo（用于深色主题和favicon）
- `homework1/` - 作业1相关截图
- `homework2/` - 作业2相关截图和照片

### videos/ - 视频资源
- `homework2/flow-lamp-demo.mp4` - 流水灯演示视频

## ⚠️ 重要说明

### GitHub Pages 要求
由于使用 GitHub Pages 托管，**所有 HTML 文件必须保持在根目录**，不能移动到子文件夹中，以确保正确的 URL 路径访问。

**为什么作业 HTML 文件不能在子目录？**
- GitHub Pages 直接映射根目录的文件到网站 URL
- 如果将 `homework1.html` 移到 `homeworks/` 文件夹
- 访问地址会从 `yourdomain.com/homework1.html` 变成 `yourdomain.com/homeworks/homework1.html`
- 这会破坏现有的链接和导航结构
- 需要修改所有引用这些文件的链接

**当前的组织方式：**
- ✅ 所有 HTML 页面 → 根目录（保持可访问性）
- ✅ 相关资源（图片、视频）→ 对应的子目录
- ✅ 文档和脚本 → 分类到 `docs/` 和 `scripts/`

### 为什么这样组织？
1. **根目录保持简洁**：只保留必须的文件（HTML、CSS、JS）
2. **文档集中管理**：所有 .md 文档放入 `docs/`，便于查找
3. **作业说明清晰**：`homeworks/` 目录提供作业文件的组织和访问说明
4. **资源分类**：图片和视频分别存放在 `image/` 和 `videos/`

## 🔧 维护建议

### 添加新文件时
- 新页面 → 放在根目录
- 新文档 → 放在 `docs/`
- 新图片 → 放在 `image/` 或相应子目录
- 新视频 → 放在 `videos/` 或相应子目录
- 作业说明 → 放在 `homeworks/`

---

最后更新：2026-06-02
