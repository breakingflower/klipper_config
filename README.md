# Klipper configs for CR10 / CR10s / Voron 2.4 (coming soon)
## CR10 / CR10s klipper profile 
This repo now holds two configs for two printers.

## Hostname

Set the hostname of your printers' pi in `sudo raspi-config`. This hostname will be used to hardlink the correct files.
Your current hostname can be seen by `echo ${HOSTNAME}`. 

## Installing 

Starting from a clean rpi image, issue the following: 
```
git clone git@github.com:fl0r1s/klipper_config.git
cd klipper_config 

# optionally checkout a branch
git checkout complete_revamp

# hardlink the files. 
./install.sh
```

## Uploading calibration settings etc

You'll have to log in to your github. 

```
cd ~/klipper_config
./upload.sh
```

## Klipper / dwc2 updates 
The easiest way to update klipper is by using [kiauh](https://github.com/th33xitus/KIAUH)
