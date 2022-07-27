#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# luci-app-argon-config
#sed -i 's/system/services/g'  package/luci-app-argon-config/luasrc/controller/argon-config.lua

# 调整VPN服务到VPN菜单
#sed -i 's/status/vpn/g' feeds/luci/applications/luci-app-wireguard/luasrc/controller/wireguard.lua
#sed -i 's/92/2/g' feeds/luci/applications/luci-app-wireguard/luasrc/controller/wireguard.lua

# 调整阿里云盘到存储菜单
#sed -i 's/services/nas/g' package/luci-app-aliyundrive-webdav/luci-app-aliyundrive-webdav/luasrc/controller/*.lua
#sed -i 's/services/nas/g' package/luci-app-aliyundrive-webdav/luci-app-aliyundrive-webdav/luasrc/model/cbi/aliyundrive-webdav/*.lua
#sed -i 's/services/nas/g' package/luci-app-aliyundrive-webdav/luci-app-aliyundrive-webdav/luasrc/view/aliyundrive-webdav/*.htm

# 修改插件名字
#sed -i 's/"阿里云盘 WebDAV"/"阿里云盘"/g' package/luci-app-aliyundrive-webdav/luci-app-aliyundrive-webdav/po/zh-cn/aliyundrive-webdav.po
#sed -i 's/WireGuard 状态/WireGuard/g' feeds/luci/applications/luci-app-wireguard/po/zh-cn/wireguard.po
