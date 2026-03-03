# 作品集部署到 GitHub Pages 指南

## 第一步：注册 GitHub 账号

1. 访问 https://github.com/signup
2. 输入你的邮箱：`420518240@qq.com`
3. 设置密码和用户名（建议用 `jingyazhe` 或 `jack-jing`）
4. 完成邮箱验证

## 第二步：创建仓库

1. 登录 GitHub 后，点击右上角 `+` → `New repository`
2. 仓库名填写：`jingyazhe-portfolio`（或你喜欢的名字）
3. 选择 `Public`（公开）
4. 不要勾选 "Add a README file"
5. 点击 `Create repository`

## 第三步：推送代码

创建仓库后，在仓库页面会看到一个快速设置页面，复制以下命令在终端执行：

```bash
# 进入项目目录
cd /Users/zengningzhi/portfolio-site

# 添加远程仓库（注意：把 YOUR_USERNAME 换成你的 GitHub 用户名）
git remote add origin https://github.com/YOUR_USERNAME/jingyazhe-portfolio.git

# 推送代码
git branch -M main
git push -u origin main
```

## 第四步：开启 GitHub Pages

1. 在仓库页面，点击 `Settings`（设置）
2. 左侧菜单找到 `Pages`
3. 在 "Build and deployment" 部分：
   - Source 选择 `Deploy from a branch`
   - Branch 选择 `main`，文件夹选择 `/ (root)`
4. 点击 `Save`

## 第五步：访问你的网站

等待 2-5 分钟后，你的作品集将可以通过以下链接访问：

```
https://YOUR_USERNAME.github.io/jingyazhe-portfolio
```

例如：`https://jack-jing.github.io/jingyazhe-portfolio`

---

## 简化方法：使用 GitHub Desktop（推荐新手）

如果你不熟悉命令行，可以使用 GitHub Desktop：

1. 下载安装 GitHub Desktop：https://desktop.github.com/
2. 登录你的 GitHub 账号
3. 选择 `File` → `Add Local Repository`
4. 选择 `/Users/zengningzhi/portfolio-site` 文件夹
5. 点击 `Publish repository`
6. 完成后在 GitHub 网页开启 Pages（见第四步）

---

## 常见问题

### Q: 图片无法显示？
确保所有图片都提交到了 GitHub：
```bash
git add works/
git commit -m "Add work images"
git push
```

### Q: 如何更新网站？
修改文件后执行：
```bash
git add .
git commit -m "Update content"
git push
```
GitHub Pages 会自动更新。

### Q: 想使用自定义域名？
在仓库的 `Settings` → `Pages` 中找到 "Custom domain" 设置。

---

## 需要帮助？

如果遇到问题，可以随时问我！
