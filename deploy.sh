#!/bin/bash

# 一键部署脚本 - fund-guide
# 使用方法: ./deploy.sh "提交信息"

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 提交信息
COMMIT_MSG=${1:-"更新网站内容"}

echo -e "${BLUE}========================================${NC}"
echo -e "${BLUE}   Fund Guide - 一键部署${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""

# 检查是否有更改
echo -e "${YELLOW}📋 检查Git状态...${NC}"
if git diff --quiet && git diff --cached --quiet; then
    echo -e "${GREEN}✓ 没有待提交的更改${NC}"
    echo ""
else
    echo -e "${YELLOW}📝 发现更改，正在提交...${NC}"
    
    # 添加所有更改
    git add .
    echo -e "${GREEN}✓ 已添加文件${NC}"
    
    # 提交
    git commit -m "$COMMIT_MSG"
    echo -e "${GREEN}✓ 已提交: $COMMIT_MSG${NC}"
    echo ""
fi

# 推送到远程
echo -e "${YELLOW}🚀 推送到GitHub...${NC}"
git push origin main
echo -e "${GREEN}✓ 推送成功${NC}"
echo ""

# 检查部署状态
echo -e "${YELLOW}⏳ 检查GitHub Actions部署状态...${NC}"
sleep 2

# 获取最新的workflow run状态
STATUS=$(curl -s https://api.github.com/repos/tzquantfundsp1-art/fund-guide/actions/runs?per_page=1 | grep -o '"status": "[^"]*"' | head -1 | cut -d'"' -f4)

echo -e "${BLUE}========================================${NC}"
echo -e "${GREEN}   部署状态: $STATUS${NC}"
echo -e "${BLUE}========================================${NC}"
echo ""
echo -e "${YELLOW}🌐 网站地址:${NC}"
echo -e "${GREEN}   https://tzquantfundsp1-art.github.io/fund-guide/${NC}"
echo ""
echo -e "${YELLOW}📊 GitHub仓库:${NC}"
echo -e "${GREEN}   https://github.com/tzquantfundsp1-art/fund-guide${NC}"
echo ""
echo -e "${BLUE}部署完成！大约需要 30-60 秒生效${NC}"
