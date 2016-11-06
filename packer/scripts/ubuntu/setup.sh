#!/bin/bash -ex

echo '-- Start setup --'

echo 'Prepare the itamae execution environment'
apt-get update -y
apt-get install -y software-properties-common python-software-properties
apt-add-repository ppa:brightbox/ruby-ng
apt-get update -y
apt-get install -y ruby2.3
gem install bundler

echo '-- Finish setup --'

