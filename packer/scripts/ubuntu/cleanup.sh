echo '-- Start cleanup --'

apt-get -y autoremove
apt-get -y clean

rm -rf /tmp/*
rm -rf /ops

echo '-- Finish cleanup --'
