#!/bin/bash

echo "Uploading from pi to github..." 

echo "Moving files"
cp -v  ~/printer.cfg ~/cr10_klipper/printer.cfg
cp -v ~/print_macros.cfg ~/cr10_klipper/print_macros.cfg

echo "Adding to git"
git add printer.cfg
git add print_macros.cfg
git commit -m "uploaded from pi" 

echo "Pushing..." 
git push origin master

