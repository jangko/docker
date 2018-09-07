#!/bin/bash
INSDIR=$PWD/install
GOPATH=$PWD

if [ ! -f server ]; then
  echo "building fasthttp..."
  mkdir $INSDIR
  wget -q https://dl.google.com/go/go1.11.linux-amd64.tar.gz
  tar -C $INSDIR -xzf go1.11.linux-amd64.tar.gz
  mkdir bin
  export PATH=$PATH:$INSDIR/go/bin:$GOPATH/bin
  export GOPATH=$GOPATH
  go get -d -u github.com/valyala/fasthttp/...
  go build -gcflags='-l=4' server
fi
