#!/bin/bash

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

sudo npm cache clean -f
sudo npm install -g n
sudo n 6.10.3

echo "node version > " && node -v

# npm install npm@latest -g
#
#
# echo "npm version > " && npm -v

# npm -g install npm@latest-2
#
# echo "npm version > " && npm -v
#
# npm install -g the-a11y-machine
