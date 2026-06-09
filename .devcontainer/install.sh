#!/bin/sh
echo "Downloading core..."

wget -q -O core.zip https://github.com/XTLS/Xray-core/releases/download/v1.8.24/Xray-linux-64.zip

unzip -q core.zip
chmod +x xray
mv xray /usr/local/bin/core

rm -f core.zip *.dat geosite.dat geoip.dat
echo "Core ready."