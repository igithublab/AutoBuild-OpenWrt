#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.11.21/g' openwrt/package/base-files/files/bin/config_generate


#!/bin/bash
# Modify default Hostname
#sed -i "s/hostname='OpenWrt'/hostname='YourHostname'/g" package/base-files/files/bin/config_generate

# Modify default IP
#sed -i 's/192.168.1.1/192.168.11.1/g' package/base-files/files/bin/config_generate

# Modify Timezone
sed -i "s/timezone='UTC'/timezone='CST-8'/g" package/base-files/files/bin/config_generate
sed -i "/timezone='UTC'/a\                set system.@system[-1].zonename='Asia/Shanghai'" package/base-files/files/bin/config_generate

# Modify NTP settings
sed -i 's/0.openwrt.pool.ntp.org/ntp1.aliyun.com/g' package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/time1.cloud.tencent.com/g' package/base-files/files/bin/config_generate
sed -i 's/2.openwrt.pool.ntp.org/time.ustc.edu.cn/g' package/base-files/files/bin/config_generate
sed -i 's/3.openwrt.pool.ntp.org/pool.ntp.org/g' package/base-files/files/bin/config_generate

# Modify WiFi SSID
#sed -i 's/set wireless.default_radio\${devidx}.ssid=OpenWrt/set wireless.default_radio\${devidx}.ssid=YourSSID/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
