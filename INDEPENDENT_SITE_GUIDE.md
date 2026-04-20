# 🚀 将个人主页部署为独立网站

## 方案选择

### 方案1: 创建独立的 GitHub 仓库（推荐）⭐

这是最专业的方式，拥有完全独立的域名和品牌。

#### 步骤：

1. **在 GitHub 创建新仓库**
   - 访问: https://github.com/new
   - 仓库名: `chenziqi-portfolio` 或 `chenziqi.github.io`
   - 设为 Public
   - 点击 "Create repository"

2. **复制文件到新仓库**
   ```bash
   # 在当前项目目录
   cd c:\Users\陈梓琦\Documents\GitHub
   
   # 创建新文件夹
   mkdir chenziqi-portfolio
   cd chenziqi-portfolio
   
   # 复制 profile-chen.html 并重命名为 index.html
   copy ..\zwu2026-1-004\profile-chen.html index.html
   
   # 初始化 Git
   git init
   git add .
   git commit -m "Initial commit - Personal portfolio website"
   
   # 关联远程仓库（替换为你的仓库地址）
   git remote add origin https://github.com/你的用户名/chenziqi-portfolio.git
   git branch -M main
   git push -u origin main
   ```

3. **启用 GitHub Pages**
   - 进入仓库 → Settings → Pages
   - Source: Deploy from a branch
   - Branch: main / root
   - 点击 Save

4. **等待部署**（约1-2分钟）

5. **访问网站**
   ```
   https://你的用户名.github.io/chenziqi-portfolio/
   ```
   或（如果使用用户名仓库）
   ```
   https://你的用户名.github.io/
   ```

---

### 方案2: 使用 Vercel（最简单）⚡

Vercel 提供一键部署，自动 HTTPS，全球 CDN。

#### 步骤：

1. **注册 Vercel**
   - 访问: https://vercel.com
   - 用 GitHub 账号登录

2. **导入项目**
   - 点击 "New Project"
   - 导入 `zwu2026-1-004` 仓库
   - Root Directory 设置为空（根目录）

3. **配置部署**
   - Framework Preset: Other
   - Build Command: 留空
   - Output Directory: 留空
   - 点击 "Deploy"

4. **获取独立域名**
   ```
   https://chenziqi-portfolio.vercel.app
   ```

5. **（可选）绑定自定义域名**
   - 在项目 Settings → Domains
   - 添加你的域名（如 chen-ziqi.com）
   - 按提示配置 DNS

---

### 方案3: 使用 Netlify（同样简单）🌐

#### 步骤：

1. **注册 Netlify**
   - 访问: https://netlify.com
   - 用 GitHub 账号登录

2. **拖拽部署**
   - 将 `profile-chen.html` 拖拽到 Netlify 界面
   - 或连接 GitHub 仓库

3. **获取域名**
   ```
   https://chenziqi-portfolio.netlify.app
   ```

---

### 方案4: 保留在当前仓库但独立访问

如果不想创建新仓库，可以配置子域名。

#### 步骤：

1. **购买域名**（如 chen-ziqi.com）

2. **配置 DNS**
   ```
   类型: CNAME
   名称: www (或 @)
   值: NexMaker-Fab.github.io
   ```

3. **在当前仓库添加 CNAME 文件**
   - 创建文件: `CNAME`
   - 内容: `chen-ziqi.com`

4. **在 GitHub Pages Settings 中配置自定义域名**

---

## 🎯 推荐方案对比

| 方案 | 难度 | 成本 | 独立性 | 推荐度 |
|------|------|------|--------|--------|
| 独立 GitHub 仓库 | ⭐⭐ | 免费 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| Vercel | ⭐ | 免费 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐⭐ |
| Netlify | ⭐ | 免费 | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ |
| 子域名 | ⭐⭐⭐ | 域名费用 | ⭐⭐⭐ | ⭐⭐⭐ |

---

## 📝 完整操作指南（以方案1为例）

### 第一步：准备文件

```powershell
# 在 PowerShell 中执行
cd c:\Users\陈梓琦\Documents\GitHub

# 创建新目录
mkdir chenziqi-portfolio
cd chenziqi-portfolio

# 复制个人主页文件
Copy-Item ..\zwu2026-1-004\profile-chen.html .\index.html

# 创建 images 文件夹
mkdir images
mkdir images\projects

# 创建 README
New-Item README.md -Value "# Chen Ziqi Portfolio"
```

### 第二步：初始化 Git

```powershell
git init
git add .
git commit -m "Initial commit - Personal portfolio"
```

### 第三步：创建 GitHub 仓库

1. 访问 https://github.com/new
2. Repository name: `chenziqi-portfolio`
3. 点击 "Create repository"
4. 复制显示的命令

### 第四步：推送代码

```powershell
# 替换为你的仓库地址
git remote add origin https://github.com/你的用户名/chenziqi-portfolio.git
git branch -M main
git push -u origin main
```

### 第五步：启用 GitHub Pages

1. 进入仓库页面
2. 点击 Settings
3. 左侧菜单找到 Pages
4. Source 选择 "Deploy from a branch"
5. Branch 选择 "main"，folder 选择 "/ (root)"
6. 点击 Save

### 第六步：等待部署

大约 1-2 分钟后，访问：
```
https://你的用户名.github.io/chenziqi-portfolio/
```

---

## 🎨 后续优化建议

### 1. 添加自定义域名
```
购买域名 → 配置 DNS → 添加 CNAME 文件 → GitHub Settings 配置
```

### 2. 添加分析工具
在 `<head>` 中添加：
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=YOUR_ID"></script>
```

### 3. 优化 SEO
添加 meta 标签：
```html
<meta name="description" content="Chen Ziqi - Creative Technologist Portfolio">
<meta name="keywords" content="Chen Ziqi, Portfolio, IoT, Embedded Systems">
```

### 4. 添加博客功能
创建 `/blog` 目录，添加文章页面

### 5. 多语言支持
添加英文版 `/en/index.html`

---

## ❓ 常见问题

**Q: 为什么不能直接在当前仓库作为独立网站？**  
A: GitHub Pages 一个仓库只能有一个站点，当前仓库已经用于团队网站。

**Q: 可以两个网站共用图片资源吗？**  
A: 不建议，会导致依赖问题。应该各自独立管理资源。

**Q: 如何同步更新两个网站？**  
A: 手动复制文件，或使用 Git submodule。

**Q: 自定义域名需要多少钱？**  
A: 域名约 ¥50-100/年，GitHub Pages/Vercel/Netlify 都免费。

---

## 📞 需要帮助？

如果在部署过程中遇到问题，可以：
1. 检查 GitHub Actions 日志
2. 查看浏览器控制台错误
3. 确认文件路径正确
4. 清除浏览器缓存后重试

祝部署顺利！🎉
