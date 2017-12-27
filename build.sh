#!/bin/bash

# Wraith
# apt-get install ruby-full
# apt-get install imagemagick
# gem install wraith -v 3.2.0

# rvm install 2.0.0
# apt-get -y install imagemagick
# gem install wraith -v 3.2.0

sudo apt-get -y update
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
cd /tmp
wget http://cache.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p481.tar.gz
tar -xvzf ruby-2.0.0-p481.tar.gz
cd ruby-2.0.0-p481/
./configure --prefix=/usr/local
make
sudo make install

# Versions
# echo "wraith > " && wraith -v
echo "ruby > " && ruby -v
