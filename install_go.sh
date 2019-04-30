#!/bin/sh
Install_Path=~/goenv
GoPath=$Install_Path/gopath
GoRoot=$Install_Path/go
mkdir -p $Install_Path
mkdir -p $GoPath
wget -nc https://studygolang.com/dl/golang/go1.12.4.linux-amd64.tar.gz
tar -C $Install_Path -zxvf go1.12.4.linux-amd64.tar.gz
echo "export GOPATH=$GoPath" >> ~/.bashrc
echo "export GOROOT=$GoRoot" >> ~/.bashrc
echo "export PATH=$GoRoot/bin:\$PATH" >> ~/.bashrc
source  ~/.bashrc
which go
go env
