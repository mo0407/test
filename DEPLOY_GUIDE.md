# SBTI 人格测试 - Vercel 部署指南

## 📦 部署准备

### 文件清单
确保您的项目包含以下文件：
```
sbti_clone_archive/
├── sbti_app.html        (主应用文件)
├── vercel.json          (Vercel配置文件)
├── images/              (图片文件夹，27张图片)
├── deploy.sh            (自动化部署脚本)
└── DEPLOY_GUIDE.md      (本文件)
```

---

## 🚀 方式一：自动化部署（推荐）

### 前置要求
- 已安装 Node.js 和 npm
- 已安装 Git

### 部署步骤

#### 1. 安装 Vercel CLI
```bash
npm install -g vercel
```

#### 2. 执行部署脚本
```bash
cd sbti_clone_archive
./deploy.sh
```

#### 3. 等待部署完成
- 脚本会自动完成所有配置
- 部署完成后会显示访问链接

---

## 🔧 方式二：手动部署

### 步骤1：初始化 Git 仓库
```bash
cd sbti_clone_archive
git init
git add .
git commit -m "Initial commit: SBTI Personality Test"
```

### 步骤2：推送到 GitHub
```bash
git remote add origin https://github.com/mo0407/test
git branch -M main
git push -u origin main
```

### 步骤3：连接到 Vercel
```bash
# 安装 Vercel CLI（如果还没安装）
npm install -g vercel

# 登录 Vercel
vercel login
```

### 步骤4：部署项目
```bash
# 在项目根目录执行
vercel --prod
```

### 步骤5：确认配置
按照提示回答配置问题：
- **Set up and deploy**: `Y`
- **Which scope**: 选择您的账号
- **Link to existing project**: `N`
- **Project name**: `sbiti-personality-test` (或自定义)
- **In which directory**: `./` (当前目录)
- **Want to override settings**: `N`

---

## 🌐 访问您的应用

部署成功后，您可以通过以下方式访问：

1. **Vercel 提供的链接**
   - 格式：`https://sbiti-personality-test.vercel.app`
   - 或：`https://your-project-name.vercel.app`

2. **自定义域名**（可选）
   - 在 Vercel 控制台设置
   - Settings → Domains → Add Domain

---

## 🔄 更新部署

当您修改了代码后，重新部署：

```bash
# 方式1：使用脚本
./deploy.sh

# 方式2：手动命令
vercel --prod
```

---

## 🛠️ 环境变量（如需要）

如果需要配置环境变量：

```bash
vercel env add
```

或通过 Vercel 控制台：
Settings → Environment Variables

---

## 📊 部署检查清单

- [ ] 文件结构完整（html + images + vercel.json）
- [ ] Git 仓库已推送到 GitHub
- [ ] Vercel CLI 已安装
- [ ] 已登录 Vercel 账号
- [ ] 部署脚本可执行权限已设置

---

## 🐛 常见问题

### 1. 图片无法显示
- **原因**：图片路径错误
- **解决**：确保 `images/` 目录与 `sbti_app.html` 在同一级

### 2. 部署失败
- **检查**：Vercel Token 是否有效
- **解决**：重新生成 Token 并更新

### 3. 页面样式错乱
- **原因**：CSS未正确加载
- **解决**：检查 `vercel.json` 配置是否正确

---

## 📞 技术支持

- **Vercel 文档**: https://vercel.com/docs
- **GitHub Issues**: https://github.com/mo0407/test/issues

---

**祝您部署顺利！🎉**
