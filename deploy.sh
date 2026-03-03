#!/bin/bash

echo "=========================================="
echo "  作品集 GitHub Pages 部署脚本"
echo "=========================================="
echo ""

# 检查是否有远程仓库
if git remote -v > /dev/null 2>&1; then
    echo "✓ 远程仓库已配置"
else
    echo "⚠️  远程仓库未配置"
    echo ""
    echo "请先完成以下步骤："
    echo "1. 访问 https://github.com/new 创建仓库"
    echo "2. 仓库名建议：jingyazhe-portfolio"
    echo "3. 设置为 Public"
    echo ""
    read -p "请输入你的 GitHub 用户名: " username
    read -p "请输入仓库名 (默认: jingyazhe-portfolio): " repo
    repo=${repo:-jingyazhe-portfolio}
    
    git remote add origin "https://github.com/$username/$repo.git"
    echo "✓ 已添加远程仓库: https://github.com/$username/$repo.git"
fi

echo ""
echo "正在推送代码到 GitHub..."
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "=========================================="
    echo "  ✅ 推送成功！"
    echo "=========================================="
    echo ""
    echo "下一步："
    echo "1. 访问你的 GitHub 仓库"
    echo "2. 点击 Settings → Pages"
    echo "3. Source 选择 main 分支"
    echo "4. 等待几分钟后访问："
    echo "   https://你的用户名.github.io/仓库名"
else
    echo ""
    echo "❌ 推送失败，请检查："
    echo "   - 是否已登录 GitHub"
    echo "   - 仓库是否已创建"
    echo "   - 网络连接是否正常"
fi
