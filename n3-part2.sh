# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate

#Set temperature display
#sed -i '/<tr><td width="33%"><%:Kernel Version%></td><td><%=unameinfo.release or "?"%></td></tr> <tr><td width="33%"><%:CPU Temperature%></td><td><%=luci.sys.exec("cut -c1-2 /sys/class/thermal/thermal_zone0/temp")%></td></tr>' feeds/luci/modules/luci-mod-admin-full/luasrc/view/admin_status/index.htm

#移除无用软件包
rm -rf luci-theme-argon package/lean

#添加额外软件包
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
