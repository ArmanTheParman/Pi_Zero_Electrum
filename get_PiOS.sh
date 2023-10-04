#!/bin/bash

echo "getting zip file"
curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2022-04-07/2022-04-04-raspios-buster-armhf.img.xz
curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2022-09-26/2022-09-22-raspios-buster-armhf.img.xz

echo "getting sha256 file"
curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2022-04-07/2022-04-04-raspios-buster-armhf.img.xz.sha256

echo "getting signature of hash file"
curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2022-04-07/2022-04-04-raspios-buster-armhf.img.xz.sig

echo "hashing"

shasum -a 256 --ignore-missing --verify *.sig

echo "fetching public key"
gpg --import Raspberry_Pi.pubkey

echo "verifying signature"
gpg --verify *.sig
