#!/bin/sh
echo "Downloading latest Xray core..."

# دانلود آخرین نسخه (که xhttp رو کامل پشتیبانی می‌کنه)
wget -q -O core.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip

unzip -q core.zip
chmod +x xray
mv xray /usr/local/bin/core

# پاک کردن فایل‌های اضافی
rm -f core.zip *.dat geosite.dat geoip.dat
echo "✅ Latest Xray core installed successfully."
