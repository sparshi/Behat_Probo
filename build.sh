#!/bin/bash

# Wraith
apt-get -qq update
apt-get -y install imagemagick
gem install wraith -v 3.2.0

# Versions
echo "wraith > " && wraith -v
