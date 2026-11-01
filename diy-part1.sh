#!/bin/bash
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# 1. 添加 iStore 核心应用商店源
echo 'src-git istore https://github.com/linkease/istore.git;main' >> feeds.conf.default

# 2. 添加 NAS 后台核心守护服务源
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default

# 3. 添加易有云 NAS LuCI 界面
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default

# Optional: Add kenzok8 / small third-party feeds if used in your local .config
# echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
# echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default

