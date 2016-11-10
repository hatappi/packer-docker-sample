#!/bin/bash -ex

echo '-- Start setup --'

apt-get update -y
apt-get install wget -y
wget https://github.com/k0kubun/mitamae/releases/download/v0.6.0/mitamae-x86_64-linux -P /infra/mitamae
chmod +x /infra/mitamae/mitamae-x86_64-linux

echo '-- Finish setup --'
