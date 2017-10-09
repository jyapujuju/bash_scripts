#!/bin/bash -e
# https://www.postgresql.org/download/linux/ubuntu/
# sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ zesty-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
sudo apt-get update
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ zesty-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
# eval $(echo 'deb http://apt.postgresql.org/pub/repos/apt/ zesty-pgdg main' > /etc/apt/sources.list.d/pgdg.list) 
echo "validity"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt install postgresql-common
sudo apt install postgresql-9.5 libpq-dev
sudo -u postgres createuser postgres -s
#sudo -u postgres psql
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'password';"
