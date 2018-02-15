#!/bin/bash

# upgrade ruby version
sudo apt-get update
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install -y ruby2.4 ruby2.4-dev

# upgrade npm
npm cache clean -f
npm -g install npm@latest-2

echo "ruby check"
ruby --version

# Wraith
# apt-get install ruby-full
# apt-get install imagemagick
# gem install wraith -v 3.2.0

# Versions
# which ruby
# # sudo apt update
# # sudo apt-get install ruby2.3 ruby2.3-dev
#
# apt-get libicu-dev
# apt-get install imagemagick
# gem install rake
#
# gem install wraith -v 3.2.0
# echo "ruby > " && ruby -v
# echo "wraith > " && wraith -v
echo "node version > " && node -v
which node

# sudo npm cache clean -f
# sudo npm install -g n
# sudo n 6.10.3
# sudo n use 6.10.3

# Install nvm

# curl https://raw.githubusercontent.com/creationix/nvm/v0.11.1/install.sh | bash
# source ~/.profile
# nvm install v6.10.3
#
# echo "node version > " && node -v
#
# #Install latest NPM
# echo "npm version > " && npm -v
#
# npm install npm@latest
#
# echo "npm version > " && npm -v
# #
# # echo "npm version > " && npm -v
# #
# npm install -g pa11y
