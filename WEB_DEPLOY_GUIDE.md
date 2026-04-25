# 🌐 Vercel 网页界面部署指南

由于 npm 缓存权限问题，我们推荐使用 **Vercel 网页界面** 进行部署，这种方法更简单且不需要命令行工具。

---

## 📋 部署准备清单

### ✅ 文件准备
确保您有以下文件：
```
sbti_clone_archive/
├── sbti_app.html        (主应用文件)
├── vercel.json          (配置文件)
├── images/              (27张图片)
│   ├── CTRL.png
│   ├── BOSS.png
│   └── ...
└── README.md
```

### ✅ GitHub 仓库
- 仓库地址：`https://github.com/mo0407/test`
- 确保文件已推送到 GitHub

---

## 🚀 开始部署（网页界面版）

### 步骤 1: 登录 Vercel
1. 访问：https://vercel.com/login
2. 使用 GitHub 账号登录（推荐）
3. 授权 Vercel 访问您的 GitHub

### 步骤 2: 创建新项目
1. 登录后，点击 **"Add New..."** → **"Project"**
2. 您会看到 GitHub 仓库列表
3. 找到并选择 `test` 仓库
4. 点击 **"Import"**

### 步骤 3: 配置项目设置
在项目配置页面：

**基础设置：**
- **Project Name**: `sbiti-personality-test`
- **Framework Preset**: 选择 **"Other"** 或 **"Static"**
- **Root Directory**: 留空或设置为 `sbti_clone_archive`
- **Build Command**: 留空（静态文件不需要构建）
- **Output Directory**: 留空或设置为 `./`

**环境变量（如需要）：**
- 暂时不需要添加环境变量

### 步骤 4: 开始部署
1. 检查配置无误
2. 点击 **"Deploy"** 按钮
3. 等待部署完成（通常需要1-2分钟）

### 步骤 5: 获取访问链接
部署成功后，您会看到：
- **Congratulations!** 消息
- **部署链接**：`https://sbiti-personality-test.vercel.app`
- 可以点击 **"Visit"** 按钮访问您的应用

---

## 🔧 高级配置（可选）

### 自定义域名
1. 在项目页面，点击 **"Settings"** → **"Domains"**
2. 点击 **"Add Domain"**
3. 输入您的域名并按提示配置 DNS

### 环境变量
1. 在项目页面，点击 **"Settings"** → **"Environment Variables"**
2. 添加需要的环境变量

### 重新部署
当您更新代码后：
1. 推送新代码到 GitHub
2. Vercel 会自动检测并重新部署
3. 或手动点击 **"Redeploy"** 按钮

---

## 🎯 验证部署

部署完成后，检查以下内容：

### 功能测试
- [ ] 首页正常显示
- [ ] "开始测试"按钮可点击
- [ ] 30道题目正常显示和选择
- [ ] 提交后显示正确的结果页面
- [ ] 27张结果图片正常加载

### 性能检查
- [ ] 页面加载速度正常
- [ ] 移动端显示正常
- [ ] 图片加载正常

---

## 🐛 常见问题解决

### 1. 图片无法显示
**问题**: 结果页面图片显示为"图片加载失败"

**解决方案**:
- 检查 `images/` 文件夹是否已上传
- 确认 `sbti_app.html` 中的图片路径正确
- 检查文件名大小写是否匹配

### 2. 404 错误
**问题**: 访问链接显示 404 Not Found

**解决方案**:
- 检查 `vercel.json` 配置
- 确认文件结构正确
- 尝试清除浏览器缓存

### 3. 样式错乱
**问题**: 页面显示但没有样式

**解决方案**:
- 检查 `sbti_app.html` 中 CSS 代码是否完整
- 确认没有语法错误

---

## 🔄 更新部署

当您修改代码后：

### 方式一：Git 集成（推荐）
1. 修改文件
2. 提交到 Git：`git add . && git commit -m "update"`
3. 推送到 GitHub：`git push`
4. Vercel 自动重新部署

### 方式二：手动部署
1. 访问 Vercel 项目页面
2. 点击 **"Deployments"** 标签
3. 点击最新的部署记录右侧的 **"..."** 菜单
4. 选择 **"Redeploy"**

---

## 📊 部署成功标志

✅ **部署成功的表现**：
- Vercel 显示绿色对勾
- 可以通过链接访问应用
- 所有功能正常工作
- 移动端和桌面端都显示正常

---

## 🎉 完成！

如果您看到这里，恭喜您完成了 SBTI 人格测试的部署！

**您的应用现在应该可以通过以下链接访问：**
```
https://sbiti-personality-test.vercel.app
```

**分享给朋友们，让他们也来测测自己的人格类型吧！** 🎭

---

**需要帮助？**
- 查看 [Vercel 官方文档](https://vercel.com/docs)
- 检查项目 GitHub Issues
- 联系技术支持
