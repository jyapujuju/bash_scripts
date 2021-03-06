#!/bin/bash -e
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt remove cmdtest
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev nodejs yarn
cd $HOME
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
eval $(echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc)
eval $(echo 'eval "$(rbenv init -)"' >> ~/.bashrc)
echo "before shell"
. ~/.bashrc

echo "after shell"
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
eval $(echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc)
. ~/.bashrc

exec $SHELL

rbenv install 2.5.0
rbenv global 2.5.0
ruby -v
gem install bundler
rbenv rehash
