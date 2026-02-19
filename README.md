# TzQuant Fund Subscription Guide

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen)](https://tzquantfundsp1-art.github.io/fund-guide/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

> 一个优雅、交互式的基金申购指南网站，支持中英文双语切换。

🔗 **在线预览**: https://tzquantfundsp1-art.github.io/fund-guide/

## ✨ 功能特性

- 🌍 **双语支持** - 中文/English 一键切换，带有国旗图标和流畅动画
- 📱 **响应式设计** - 完美适配桌面、平板和移动设备
- 🎨 **现代UI设计** - Apple风格设计语言，毛玻璃效果、渐变背景
- 🖼️ **图片懒加载** - 智能预加载策略，优化加载速度
- ✅ **进度追踪** - 实时显示完成进度，完成所有步骤后解锁申购按钮
- 🎉 **交互动画** - 彩花庆祝效果、悬浮特效、3D卡片倾斜
- 🖱️ **自定义光标** - 精美的跟随光标效果（桌面端）
- 🔗 **一键跳转** - 完成所有步骤后自动跳转到币安申购页面

## 🚀 技术栈

- **纯前端**: HTML5 + CSS3 + Vanilla JavaScript
- **样式**: CSS Variables, Flexbox, Grid, Backdrop Filter
- **动画**: CSS Animations + requestAnimationFrame
- **部署**: GitHub Actions + GitHub Pages
- **图片优化**: Intersection Observer API, Lazy Loading

## 📁 项目结构

```
fund-guide/
├── index.html          # 主页面
├── deploy.sh           # 一键部署脚本
├── .github/
│   └── workflows/
│       └── deploy.yml  # GitHub Actions 自动部署
├── binance_fund_account.png  # 步骤截图
├── image1.png ~ image6.png   # 步骤截图
└── README.md           # 项目说明
```

## 🛠️ 本地开发

```bash
# 克隆项目
git clone https://github.com/tzquantfundsp1-art/fund-guide.git
cd fund-guide

# 本地预览（使用任意静态服务器）
# Python 3
python -m http.server 8000

# Node.js
npx serve .

# 或直接在浏览器中打开 index.html
```

访问 http://localhost:8000 查看效果。

## 🚀 部署方式

### 方式1：一键部署（推荐）

```bash
./deploy.sh "更新说明"
```

### 方式2：手动部署

```bash
git add .
git commit -m "更新说明"
git push origin main
```

推送到 `main` 分支后，GitHub Actions 会自动部署到 GitHub Pages。

## 📝 更新日志

### 2025-02-19
- ✨ 添加币安申购页面自动跳转功能
- 🎨 优化语言切换器UI，添加国旗图标和动画效果
- ⚡ 优化图片加载速度，实现智能预加载策略
- 🚀 添加 GitHub Actions 自动部署工作流

### 2025-02-18
- 🐛 修复基金ID复制按钮bug
- 📝 更新步骤说明：币安Earn改为子账户

## 🤝 贡献指南

1. Fork 本仓库
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 打开 Pull Request

## 📄 许可证

本项目采用 [MIT](LICENSE) 许可证。

## 🙏 致谢

- 设计灵感来源于 Apple 官网
- 图标使用 Emoji 和 SVG
- 部署托管于 GitHub Pages

---

**注意**: 本项目仅供学习交流使用，投资有风险，入市需谨慎。
