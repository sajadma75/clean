#!/bin/sh
echo "Downloading latest Xray core..."

# دانلود نسخه جدیدتر که xhttp رو خوب پشتیبانی کنه
wget -q -O core.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip

unzip -q core.zip
chmod +x xray
mv xray /usr/local/bin/core

rm -f core.zip *.dat geosite.dat geoip.dat
echo "Core installed successfully."
