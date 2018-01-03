#!/bin/bash

# Wraith
# apt-get install ruby-full
# apt-get install imagemagick
# gem install wraith -v 3.2.0

# Versions
which ruby
apt-get -qq update
apt-get install imagemagick
gem install wraith -v 3.2.0
echo "ruby > " && ruby -v
echo "wraith > " && wraith -v
