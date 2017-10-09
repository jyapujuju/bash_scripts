#!/bin/bash -e
sudo apt-get install xclip
echo "enter username"
read username
echo "enter email"
read email
git config --global color.ui true
git config --global user.name "$username"
git config --global user.email "$email"
git config --list
ssh-keygen -t rsa -b 4096 -C "$email"
echo "your rsa key generated paste it to your github"
xclip -sel clip < ~/.ssh/id_rsa.pub

