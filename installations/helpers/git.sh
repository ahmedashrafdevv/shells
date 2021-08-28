#!/bin/bash
echo "installing git"
username="ahmedashrafdevv"
sudo apt install git
git config --global user.name "ahmed ashraf"
git config --global user.username $username
git config --global user.email "ahmed.ashraf.devv@gmail.com"
ssh-keygen -p 
key=$(xclip -selection clipboard < ~/.ssh/id_rsa.pub)
current_user=$(whoami)
mkdir /home/$current_user/$username
cd /home/$current_user/$username
$SHELLS_PATH/github/clone.sh "shells" "esolveeg" $1
echo key

echo "successfully installed git"
