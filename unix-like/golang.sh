#!/bin/bash
path=$(pwd)
golang="/usr/lib/GOLANG"
mkdir -p $golang && cd $golang

wget https://go.dev/dl/go1.23.2.linux-amd64.tar.gz
LIB=$(ls | head -n 1)
tar -xzvf $LIB 
rm $LIB
ln -sf /usr/lib/GOLANG/go/bin/go /usr/bin/go

cd $path