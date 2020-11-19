# Klipper configs for CR10 / CR10s / Voron 2.4 (coming soon)
## cr10 / cr10s klipper profile 
This repo now holds two configs for two printers.

## Environment variable 
The update script uses an environment variable to determine which printer it is. This is set by an environment variable PRINTER_NAME, which needs to be one of the folders in the repo, for this repo the printer name has to be either:
- cr10
- cr10s 

Adding an evironment variable is as easy as ssh'ing into your pi, opening your bashrc file `nano ~/.bashrc`, scrolling to the bottom and adding the environment variable (for example `export PRINTER_NAME=cr10`). After you have saved the bashrc file, source it `source ~/.bashrc` and issuing `echo $PRINTER_NAME` should return the name you've entered.

## Updates:
- new thermistor setting
- added a bltouch --> virtual endstop 
- bed mesh level config
- estep calibration updates
- split everything into seperate files. If you want to upload calibration settings,this is saved in the printer.cfg so only this needs to be updated. 
- split everything into seperate folders. 
- added new macros 


## Klipper / dwc2 updates 
To update klipper / dwc2 use manu7irl's script which you can find @
https://github.com/manu7irl/klipper-DWC2-installer
