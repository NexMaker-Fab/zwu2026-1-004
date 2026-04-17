# Aether Studio - 创意技术课程展示

这是一个圣罗兰风格的高端课程作业展示网站，采用深色背景、极简设计、流畅动画和视频背景，完美展示嵌入式开发、物联网和老年人情感机器人项目。

## 📁 项目结构

```
zwu2026-1-004/
├── aether-brand.html     # 主网站 - 课程作业展示（圣罗兰风格）
├── index.html            # Fab Academy 主页
├── daily.html            # 日常作业页面
├── final.html            # 最终项目页面
├── team.html             # 团队介绍页面
├── process.html          # 网站制作过程页面
├── style.css             # 样式文件
├── 26effea5eebe759563d88b21ca812014_raw.mp4  # Hero视频背景
└── .github/
    └── workflows/
        └── deploy.yml    # GitHub Actions 部署配置
```

## 🌐 在线访问

- **主网站（课程展示）**: `https://你的用户名.github.io/zwu2026-1-004/aether-brand.html`
- **Fab Academy 网站**: `https://你的用户名.github.io/zwu2026-1-004/`

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
3. 部署成功后，访问：
   - 主网站：`https://你的用户名.github.io/zwu2026-1-004/aether-brand.html`
   - Fab Academy：`https://你的用户名.github.io/zwu2026-1-004/`

### 手动触发部署

如果需要手动触发部署：
1. 进入 **Actions** → **Deploy to GitHub Pages**
2. 点击 **Run workflow** → **Run workflow**

## 🎨 设计特色

### 主网站（aether-brand.html）
- 🖤 **圣罗兰风格**：深色背景 (#000000)，极简主义美学
- 🎬 **动态视频背景**：Hero区域全屏视频，营造沉浸感
- ✨ **鼠标光晕效果**：跟随鼠标的紫色光效
- 🎯 **交互式模拟**：流水灯、LED调光、环境监测等真实交互
- 📱 **完全响应式**：移动端汉堡菜单，自适应布局
- 🌊 **流畅动画**：滚动淡入、悬停效果、平滑过渡

### Fab Academy 网站
- 💎 **玻璃态设计**：现代化的毛玻璃效果
- 🌈 **渐变配色**：清新明亮的色彩方案
- 🎭 **艺术装饰**：浮动几何图形、流动线条
- 📸 **照片画廊**：hover放大和overlay效果

## 📚 课程内容（主网站）

### 板块1：首页
- Hero视频背景 + 课程概览
- 三列卡片：基础学习、设备控制、综合应用

### 板块2：作业一 - Arduino基础
- Arduino UNO介绍
- 流水灯动画模拟（8个LED循环点亮）
- 硬件清单标签

### 板块3：作业二 - 输出设备
- LED调光滑块控制
- 电机正反转控制
- OLED屏幕显示模拟

### 板块4：作业三 - 输入设备
- 环境监测仪表盘（温度/湿度/光照）
- 按键控制LED亮灭
- 传感器类型说明

### 板块5：作业四 - IoT物联网
- NodeMCU + 阿里云IoT介绍
- 云端数据实时监控
- MQTT协议数据上报模拟

### 板块6：大作业 - 老年人情感机器人
- 四大功能模块展示
- 硬件配置清单
- 系统架构图
- 设计理念阐述

## 🛠️ 技术栈

### 主网站
- HTML5 (单文件)
- CSS3 (Flexbox & Grid, 自定义动画)
- Vanilla JavaScript (无框架依赖)
- Font Awesome 图标库
- Google Fonts (Inter字体)

### Fab Academy 网站
- HTML5 语义化结构
- CSS3 (Variables, Animations, Transitions)
- 响应式设计
- GitHub Actions CI/CD

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
