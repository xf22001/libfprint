#!/bin/bash

#================================================================
#   Copyright (C) 2018年05月06日 肖飞 All rights reserved
#   
#   文件名称：compile.sh
#   创 建 者：肖飞
#   创建日期：2018年05月06日 星期日 21时20分19秒
#   修改日期：2018年08月01日 星期三 11时56分23秒
#   描    述：
#
#================================================================
function main() {
	export PKG_CONFIG_PATH=$(pwd)/../../usb/libusb/.install/lib/pkgconfig
	bash autogen.sh
	./configure --prefix=$(pwd)/.install --enable-debug-log
	make install
}

main $@
