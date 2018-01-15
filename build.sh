#!/bin/bash

# Wraith
# apt-get install ruby-full
# apt-get install imagemagick
# gem install wraith -v 3.2.0

# Versions
which ruby
# sudo apt update
# sudo apt-get install ruby2.3 ruby2.3-dev

apt-get install imagemagick
gem install wraith -v 3.2.0
echo "ruby > " && ruby -v
echo "wraith > " && wraith -v
