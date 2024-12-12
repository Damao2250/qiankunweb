#!/bin/bash

# 项目名
projName="$1"
echo "第一个参数：$1"
# 环境命令
projEnv="$2"
echo "第二个参数：$2"
# 标识名字
tagName=''

if [ x"${projName}" == x"main" ];then
        tagName='main'
fi

echo "tagName：${tagName}"
echo "projEnv: ${projEnv}"

npm run install:${tagName}
npm run build:${projEnv}:${tagName}
