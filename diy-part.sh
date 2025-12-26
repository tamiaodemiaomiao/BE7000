#!/bin/bash

# 修改默认 IP 为 192.168.31.1 (小米默认网段)
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# 添加第三方插件源
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
