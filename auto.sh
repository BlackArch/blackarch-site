#!/bin/sh

./update-tools.sh
./generate-site.sh
./sync.sh
mv google522f29024a3304e0.html google522f29024a3304e0
mv googlea063d1e60a98555c.html googlea063d1e60a98555c
rm *.html
mv google522f29024a3304e0 google522f29024a3304e0.html
mv googlea063d1e60a98555c googlea063d1e60a98555c.html
