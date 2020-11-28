# Klipper configs for CR10 / CR10s / Voron 2.4 (coming soon)
## CR10 / CR10s klipper profile 
This repo now holds two configs for two printers.

## Environment variable 
The update script uses an environment variable to determine which printer it is. This is set by an environment variable PRINTER_NAME, which needs to be one of the folders in the repo, for this repo the printer name has to be either:
- cr10
- cr10s 

Adding an evironment variable is as easy as ssh'ing into your pi, opening your bashrc file `nano ~/.bashrc`, scrolling to the bottom and adding the environment variable (for example `export PRINTER_NAME=cr10`). After you have saved the bashrc file, source it `source ~/.bashrc` and issuing `echo $PRINTER_NAME` should return the name you've entered.

## Klipper / dwc2 updates 
The easiest way to update klipper is by using [kiauh](https://github.com/th33xitus/KIAUH)
