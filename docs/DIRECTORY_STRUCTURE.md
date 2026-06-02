# 项目目录结构说明

## 📁 目录概览

```
zwu2026-1-004/
├── .github/              # GitHub 配置（Actions、Pages等）
├── .lingma/              # Lingma AI 助手配置
├── archive/              # 归档文件（旧版本、备份等）
├── docs/                 # 项目文档
├── image/                # 图片资源
│   ├── homework1/        # 作业1相关图片
│   ├── homework2/        # 作业2相关图片
│   ├── logo.png          # 主Logo（彩色）
│   └── logo-white.png    # 白色Logo（深色主题用）
├── scripts/              # 脚本工具
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

### 作业页面
- `homework1.html` ~ `homework9.html` - 各次作业展示页
- `homework1-template.html` - 作业模板

### 核心资源
- `style.css` - 全局样式表
- `upload.js` - 文件上传功能

## 📂 子目录说明

### archive/ - 归档目录
存放旧版本文件和备份：
- `index-old.html` - 旧版首页
- `26effea5eebe759563d88b21ca812014_raw.mp4` - 原始视频文件

### docs/ - 文档目录
项目相关文档和指南：
- `DEPLOYMENT_CHECKLIST.md` - 部署检查清单
- `DEPLOYMENT_COMPLETE.md` - 部署完成说明
- `DEPLOY_FIX_GUIDE.md` - 部署问题修复指南
- `FEATURE_UPGRADE_COMPLETE.md` - 功能升级说明
- `FIX_DEPLOYMENT.md` - 部署修复文档
- `HOMEWORK1_IMAGE_GUIDE.md` - 作业1图片指南
- `INDEPENDENT_SITE_GUIDE.md` - 独立站点指南
- `MENU_OPTIMIZATION_COMPLETE.md` - 菜单优化说明
- `PROFILE_LINK_DEBUG.md` - 个人链接调试文档
- `UPLOAD_FEATURE_GUIDE.md` - 上传功能指南

### scripts/ - 脚本目录
自动化工具和脚本：
- `check-deployment.ps1` - 部署检查脚本
- `create-independent-site.ps1` - 创建独立站点脚本
- `deploy.bat` - 部署批处理文件
- `fix-deployment.ps1` - 修复部署脚本
- `optimize-favicon.ps1` - Favicon优化脚本

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

### 为什么这样组织？
1. **根目录保持简洁**：只保留必须的文件（HTML、CSS、JS）
2. **文档集中管理**：所有 .md 文档放入 `docs/`，便于查找
3. **脚本统一管理**：所有自动化脚本放入 `scripts/`
4. **归档清晰**：旧文件放入 `archive/`，避免混淆
5. **资源分类**：图片和视频分别存放在 `image/` 和 `videos/`

## 🔧 维护建议

### 添加新文件时
- 新页面 → 放在根目录
- 新文档 → 放在 `docs/`
- 新脚本 → 放在 `scripts/`
- 新图片 → 放在 `image/` 或相应子目录
- 新视频 → 放在 `videos/` 或相应子目录
- 备份文件 → 放在 `archive/`

### 清理建议
定期清理 `archive/` 目录中的过时文件，保持项目整洁。

---

最后更新：2026-06-02
