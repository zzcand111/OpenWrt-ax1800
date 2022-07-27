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

# 修改openwrt登陆地址,把下面的192.168.2.22修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
sed -i '$a src/gz kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default
# Update feeds
./scripts/feeds update -a

# Install feeds
./scripts/feeds install -a
