# Fab Academy 2026 - 数字制造创新平台

这是一个现代化、高端设计的 Fab Academy 2026 课程作业提交系统，采用玻璃态设计、渐变效果和流畅动画，提供卓越的用户体验。

## 📁 项目结构

```
zwu2026-1-004/
├── index.html          # 主页
├── daily.html          # 日常作业页面
├── final.html          # 最终项目页面
├── team.html           # 团队介绍页面
├── process.html        # 网站制作过程页面
├── style.css           # 样式文件
└── .github/
    └── workflows/
        └── deploy.yml  # GitHub Actions 部署配置
```

## 🚀 部署到 GitHub Pages

本项目已配置 GitHub Actions 自动部署到 GitHub Pages。按照以下步骤启用：

### 步骤 1: 启用 GitHub Pages

1. 进入仓库的 **Settings** → **Pages**
2. 在 **Source** 部分，选择 **GitHub Actions**
3. 保存设置

### 步骤 2: 推送到 GitHub

```bash
git add .
git commit -m "Initial commit: Fab Academy website with GitHub Actions"
git push origin main
```

### 步骤 3: 验证部署

1. 推送后，GitHub Actions 会自动运行
2. 进入 **Actions** 标签页查看部署进度
3. 部署成功后，访问 `https://你的用户名.github.io/zwu2026-1-004/`

### 手动触发部署

如果需要手动触发部署：
1. 进入 **Actions** → **Deploy to GitHub Pages**
2. 点击 **Run workflow** → **Run workflow**

## 🎨 设计特色

- ✨ **玻璃态设计**：现代化的毛玻璃效果，提升视觉层次
- 🌈 **渐变配色**：精心调配的渐变色方案，营造高端氛围
- 🎭 **流畅动画**：平滑的过渡效果和微交互，增强用户体验
- 📱 **响应式布局**：完美适配各种屏幕尺寸
- 🌙 **深色主题**：优雅的深色背景，减少视觉疲劳
- ⚡ **性能优化**：轻量级代码，快速加载

## 🎨 自定义内容

### 修改作业信息

编辑 `daily.html` 文件中的作业卡片，更新：
- 作业标题和描述
- 截止日期
- 链接地址

### 修改最终项目阶段

编辑 `final.html` 文件，调整：
- 项目要求
- 阶段划分
- 评估标准

### 修改样式

编辑 `style.css` 文件来自定义：
- 颜色方案
- 字体大小
- 布局和间距

## 🛠️ 技术栈

- HTML5
- CSS3 (Flexbox & Grid)
- GitHub Actions
- GitHub Pages

## 📄 许可证

本项目采用 MIT 许可证 - 详见 [LICENSE](LICENSE) 文件

## 👥 团队介绍

### Aether Studio

我们是一支由 7 位充满激情的成员组成的团队，汇聚不同的技能和视角，共同探索数字制造的无限可能。

**团队成员：**
- 陈梓琦
- 王琦琦
- 李琳
- 章悦
- 朱诗瑶
- 何昱璇
- 徐思瑜

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

---

**注意**: 如果你的默认分支名称不是 `main`，请修改 `.github/workflows/deploy.yml` 文件中的分支名称。
