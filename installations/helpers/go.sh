#!/bin/bash
echo "installing go"
cd /tmp
apt install wget
wget https://golang.org/doc/install?download=go1.16.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.16.4.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
echo "export GOPATH=~/.go" >> ~/.profile
source ~/.profile
echo "$(go version)"
echo "successfully installed go"