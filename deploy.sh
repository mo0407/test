#!/bin/bash

# SBTI 人格测试 - Vercel 自动化部署脚本
# 使用方法: ./deploy.sh

set -e

echo "🚀 SBTI 人格测试 - Vercel 自动化部署"
echo "=========================================="

# 配置信息
GITHUB_REPO="https://github.com/mo0407/test"
VERCEL_TOKEN="vcp_7bBuf2s8bU2SGm48oCcyi6JbK7W737uhZiXjQkYNrLk93EuCBd0TNYQH"
PROJECT_NAME="sbiti-personality-test"

# 检查是否安装了 Vercel CLI
if ! command -v vercel &> /dev/null; then
    echo "📦 正在安装 Vercel CLI..."
    npm install -g vercel
fi

# 登录 Vercel
echo "🔐 正在登录 Vercel..."
echo "$VERCEL_TOKEN" | vercel login --token "$VERCEL_TOKEN"

# 部署项目
echo "📤 正在部署到 Vercel..."
vercel --prod --token="$VERCEL_TOKEN" --yes

echo "✅ 部署完成！"
echo ""
echo "🌐 您的应用现在可以通过以下链接访问："
echo "https://$PROJECT_NAME.vercel.app"
echo ""
echo "或者查看您的 Vercel 控制台获取最新链接"
