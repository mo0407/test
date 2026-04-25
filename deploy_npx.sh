#!/bin/bash

# SBTI 人格测试 - Vercel 部署脚本 (使用 npx)
# 使用方法: ./deploy_npx.sh

set -e

echo "🚀 SBTI 人格测试 - Vercel 部署"
echo "=========================================="

# 配置信息
VERCEL_TOKEN="vcp_7bBuf2s8bU2SGm48oCcyi6JbK7W737uhZiXjQkYNrLk93EuCBd0TNYQH"
PROJECT_NAME="sbiti-personality-test"

# 检查是否在正确的目录
if [ ! -f "sbti_app.html" ]; then
    echo "❌ 错误: 请在 sbti_clone_archive 目录下运行此脚本"
    exit 1
fi

echo "📁 当前目录: $(pwd)"
echo "🔧 使用 npx vercel 进行部署..."
echo ""

# 使用 npx vercel 进行部署
export VERCEL_TOKEN="$VERCEL_TOKEN"

# 创建临时 vercel 配置
cat > vercel.project.json << EOF
{
  "framework": null,
  "projectId": "$PROJECT_NAME"
}
EOF

echo "📤 正在部署到 Vercel..."
npx vercel --prod --token="$VERCEL_TOKEN" --yes

echo ""
echo "✅ 部署完成！"
echo ""
echo "🌐 您的应用现在可以通过以下链接访问："
echo "https://$PROJECT_NAME.vercel.app"
echo ""
echo "或者查看您的 Vercel 控制台获取最新链接"
