#!/bin/bash

marco() {
   export MARRO=$(pwd)  # 保存当前工作目录到 MARRO 变量
   echo "Save pwd $MARRO"
}

polo() {
    cd "$MARRO"  # 切换到保存的目录
    echo "Goto MARRO: $MARRO"
}
 
#
#polo () {
#    path_=$(find . -name "marco.sh" -type f -exec dirname {} \;)
#    if[ -n "path_" ]; then
#	cd "$path_"
#	echo "cd to $path_"
#    else
#	echo "marco.sh NOT FIND"
#    fi
#}

