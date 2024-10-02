#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# rm -rf feeds.conf.default
# touch feeds.conf.default

echo "src-git iwrt_packages https://github.com/immortalwrt/packages.git;openwrt-23.05#chinadns-ng" >> feeds.conf.default
echo "src-git iwrt_luci https://github.com/immortalwrt/luci.git;openwrt-23.05#luci-app-homeproxy" >> feeds.conf.default
#
echo "src-git kiddin9 https://github.com/kiddin9/openwrt-packages#internet-detector luci-app-internet-detector luci-i18n-internet-detector-ru luci-app-log luci-i18n-log-ru" >> feeds.conf.default
echo "src-git youtubeUnblock https://github.com/Waujito/youtubeUnblock.git;openwrt#youtubeUnblock" >> feeds.conf.default
