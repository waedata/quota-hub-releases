#!/usr/bin/env bash
# 构建并部署官网到 10.200.200.1 (quotahub.waedata.com)
set -euo pipefail
cd "$(dirname "$0")/.."

npm run build
rsync -az --delete dist/ root@10.200.200.1:/var/www/quotahub/
echo "✔ 已部署: https://quotahub.waedata.com"
