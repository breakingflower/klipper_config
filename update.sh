#!/bin/bash


# pull latest
echo "Pulling..." 
git pull https://github.com/fl0r1s/cr10_klipper/
# copy all files that end with cfg to 1 up
echo "Copying..." 
cp -v *.cfg ..
