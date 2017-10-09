#!/bin/bash -e
sudo apt-get update
sudo apt-get install python-pip python-dev build-essential 
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv 
pip install mkvirtualenvwrapper
eval $(echo 'export WORKON_HOME=$HOME/virtenvs' >>~/.bashrc)
eval $(echo '. /$home/local/bin/virtualenvwrapper.sh' >>~/.bashrc)
source ~/.bashrc
mkvirtualenv cv
workon cv
pip install opencv-python \
pip install numpy \
pip install matplotlib \
pip install scipy \
pip install opencv-contrib-python \
