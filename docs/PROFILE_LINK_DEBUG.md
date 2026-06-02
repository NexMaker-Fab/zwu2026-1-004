# 陈梓琦个人主页 - 调试指南

## 问题诊断步骤

### 1. 清除浏览器缓存（最重要！）

**Chrome/Edge:**
- 按 `Ctrl + Shift + Delete`
- 选择"缓存的图片和文件"
- 点击"清除数据"
- 或者按 `Ctrl + F5` 强制刷新页面

**Firefox:**
- 按 `Ctrl + Shift + R` 强制刷新

### 2. 检查文件是否存在

在浏览器中直接访问以下URL，确认文件可以访问：
```
https://nexmaker-fab.github.io/zwu2026-1-004/profile-chen.html
```

如果能看到页面，说明文件存在且部署成功。

### 3. 打开开发者工具检查

1. 按 `F12` 打开开发者工具
2. 切换到 "Console"（控制台）标签
3. 点击陈梓琦的卡片
4. 查看控制台输出：
   - 如果看到 "跳转到 profile-chen.html" → 点击事件触发成功
   - 如果看到 "文件存在，正在跳转..." → 文件检查通过
   - 如果看到错误信息 → 说明有问题

### 4. 检查网络请求

1. 在开发者工具中切换到 "Network"（网络）标签
2. 点击陈梓琦的卡片
3. 查看是否有对 `profile-chen.html` 的请求
4. 检查请求状态码（应该是 200）

## 可能的原因和解决方案

### 原因1: 浏览器缓存（最常见）
**症状**: 点击后没有反应或跳转到旧页面
**解决**: 
- 强制刷新: `Ctrl + F5` (Windows) 或 `Cmd + Shift + R` (Mac)
- 清除缓存后重新加载
- 使用无痕/隐私模式测试

### 原因2: GitHub Pages 未部署完成
**症状**: 访问 team.html 显示最新内容，但 profile-chen.html 404
**解决**:
- 等待 2-5 分钟让 GitHub Pages 完成部署
- 访问 https://github.com/NexMaker-Fab/zwu2026-1-004/actions 查看部署状态

### 原因3: CSS 阻止点击
**症状**: 鼠标悬停没有手型光标
**解决**: 
- 已在代码中添加 `cursor: pointer`
- 检查是否有其他CSS覆盖

### 原因4: JavaScript 错误
**症状**: 控制台有红色错误信息
**解决**:
- 查看控制台具体错误
- 可能是其他脚本冲突

## 快速测试方法

### 方法1: 直接在地址栏输入
```
https://nexmaker-fab.github.io/zwu2026-1-004/profile-chen.html
```
如果能打开，说明文件没问题。

### 方法2: 使用无痕模式
1. 打开浏览器的无痕/隐私窗口
2. 访问 team.html
3. 点击陈梓琦卡片
4. 如果能跳转，说明是缓存问题

### 方法3: 添加时间戳参数
在团队页面的JavaScript中，临时改为：
```javascript
window.location.href = 'profile-chen.html?' + Date.now();
```
这样可以绕过缓存。

## 当前实现方式

team.html 中的陈梓琦卡片：
```html
<div class="card member-card" onclick="goToProfile()" style="cursor: pointer;">
    ...
</div>
```

JavaScript 函数：
```javascript
function goToProfile() {
    console.log('跳转到 profile-chen.html');
    fetch('profile-chen.html')
        .then(response => {
            if (response.ok) {
                window.location.href = 'profile-chen.html';
            } else {
                alert('个人主页文件未找到');
            }
        });
}
```

## 如果还是不行

请提供以下信息：
1. 使用的浏览器和版本
2. 是否清除了缓存
3. 开发者控制台的输出截图
4. Network 标签中的请求记录截图
5. 点击后的具体表现（无反应？跳转错误？）

## 备选方案

如果上述方法都不行，可以改用传统的 `<a>` 标签包裹整个卡片：

```html
<a href="profile-chen.html" style="text-decoration: none; color: inherit; display: block;">
    <div class="card member-card">
        <!-- 卡片内容 -->
    </div>
</a>
```

但这需要移除内部的社交链接图标，或者将它们也改为非链接元素。
