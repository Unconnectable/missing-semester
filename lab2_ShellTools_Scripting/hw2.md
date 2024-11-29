# hw2

1.

```sh
man ls
ls -a
ls -l -h
ls -t
ls --color
```

2.

```sh
#marco.sh
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


```

3.

```sh
#这是一个叫做script.sh的文件
#!/usr/bin/env bash

 n=$(( RANDOM % 100 ))

 if [[ n -eq 42 ]]; then
    echo "Something went wrong"
    >&2 echo "The error was using magic numbers"
    exit 1
 fi

 echo "Everything went according to plan"
```

以下是答案

```sh
#ehcek_script.sh
#!/usr/bin/env bash
cnt=0
echo > out.log
while true
do

    ./script.sh &>> out.log
     if [ $? -ne 0 ]; then
     cat out.log
     echo "FAILED $cnt TIMES "
     break
 fi
 ((cnt++))

done

```

4.

```sh
#现在在/home/usr_name/missing-semster目录下面创建一些文件
mkdir html_root
cd html_root
touch {1..10}.html
mkdir html_dir
cd html_dir
touch ht_ex.html
#执行命令
find . -type f -name "*.html" | xargs zip html_file.zip
#会创建html_file.zip文件

#这是答案
find . -type f -name "*.html" | xargs -d '\n'  tar -cvzf html.zip
#会创建html.zip文件
```

5.

```sh
find . -atime -1#1是天数
#这是答案
find . -type f -mmin -60 -print0 | xargs -0 ls -lt | head -10
```

