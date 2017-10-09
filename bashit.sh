#!/bin/bash -e
 git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
 ~/.bash_it/install.sh
 eval $(echo 'BASH_IT_THEME="powerline-naked"' >> ~/.bashrc)
sed -i 's/bobby/powerline/g' ~/.bashrc
sudo apt install powerline
