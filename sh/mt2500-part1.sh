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

#echo "src-git iwrt_packages https://github.com/immortalwrt/packages.git;openwrt-23.05#chinadns-ng" >> feeds.conf.default
# пакет luci-app-homeproxy находится внутри директории applications в двух ветках — master и openwrt-23.05.
# Ветку openwrt-23.05 можно указать для совместимости с конкретной версией OpenWrt
# а #luci-app-homeproxy в конце команды не имеет смысла, так как он используется для обозначения веток или тегов, а не директорий внутри ветки
echo "src-git iwrt_packages https://github.com/immortalwrt/packages.git;openwrt-23.05" >> feeds.conf.default
echo "src-git iwrt_luci https://github.com/immortalwrt/luci.git;openwrt-23.05" >> feeds.conf.default
#
#echo "src-git kiddin9 https://github.com/kiddin9/openwrt-packages#internet-detector luci-app-internet-detector luci-i18n-internet-detector-ru luci-app-log luci-i18n-log-ru" >> feeds.conf.default
# internet-detector — это папка (директория) внутри основной ветки master, а не отдельная ветка или тег в репозитории.
# В данном случае, нужно просто указать репозиторий без хэштега, так как хэштег используется для обозначения веток или тегов в репозиториях.
echo "src-git kiddin9 https://github.com/kiddin9/openwrt-packages" >> feeds.conf.default
echo "src-git youtubeUnblock https://github.com/Waujito/youtubeUnblock.git;openwrt" >> feeds.conf.default
