#!/bin/bash
# ==============================================================================
# File name: scripts/diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Purpose: Add third-party package feeds (linkease NAS & LuCI packages, etc.)
# ==============================================================================

set -e

echo "Running diy-part1.sh (Pre-feeds customization)..."

# 1. Add LinkEase NAS packages & LuCI applications (ddnsto, linkease, istore, quickstart, etc.)
echo >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default

# 2. Optional: Add kenzok8 / small third-party feeds if used in your local .config
# echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
# echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default

