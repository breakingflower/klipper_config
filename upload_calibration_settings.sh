#!/bin/bash

echo "Uploading from pi to github..." 

echo "Moving files"
cp -v  ~/printer.cfg ~/cr10_klipper/printer.cfg

echo "Adding to git"
git add printer.cfg
git commit -m "Uploaded calibration settings" 

echo "Pushing..." 
git push origin master

