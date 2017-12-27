#!/bin/bash

# Wraith
apt-get install ruby-full
apt-get install imagemagick
gem install wraith -v 3.2.0

# Versions
echo "wraith > " && wraith -v
echo "ruby > " && ruby -v
