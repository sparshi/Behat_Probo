#!/bin/bash

# Wraith
# apt-get install ruby-full
# apt-get install imagemagick
# gem install wraith -v 3.2.0

# rvm install 2.0.0
# apt-get -y install imagemagick
# gem install wraith -v 3.2.0

brew update
brew install rbenv
brew install ruby-build
brew install openssl
CONFIGURE_OPTS=--with-openssl-dir=`brew --prefix openssl` rbenv install 2.0.0-preview1

# Versions
# echo "wraith > " && wraith -v
echo "ruby > " && ruby -v
