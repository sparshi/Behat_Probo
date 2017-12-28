#!/bin/bash

# Wraith
# apt-get install ruby-full
# apt-get install imagemagick
# gem install wraith -v 3.2.0

\curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby-2.0

# Versions

echo "ruby > " && ruby -v
echo "wraith > " && wraith -v
