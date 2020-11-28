# Klipper configs

## CR10 / CR10s klipper profile

This repo holds two sets of config files for two printers. The configs are selected based on the `hostname`variable, and structured to work with [Mainsail ](https://github.com/meteyou/mainsail)or [Fluidd](https://github.com/cadriel/fluidd).

## Hostname

Set the hostname of your printers' pi in `sudo raspi-config`. This hostname will be used to hardlink the correct files. Your current hostname can be seen by `echo ${HOSTNAME}`.

## Installing

Starting from a clean rpi image, issue the following:

```text
git clone git@github.com:fl0r1s/klipper_config.git
cd klipper_config 

# optionally checkout a branch
git checkout complete_revamp

# hardlink the files. 
./install.sh
```

## Uploading calibration settings etc

You'll have to log in to your github.

```text
cd ~/klipper_config
./upload.sh
```

## Klipper / Frontend

Easiest way to install is using [kiauh](https://github.com/th33xitus/KIAUH)

