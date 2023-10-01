The Pi Zero is a very basic air-gapped computer with low attack surface, ideal for Bitcoin private key generation.

The installation/setup of the device is explained here:

https://armantheparman.com/how-to-set-up-a-raspberry-pi-zero-air-gapped-with-electrum-desktop-wallet/

It's quite a convoluted process...

THE HARD WAY:
The hardest part is getting the correct dependency files for electrum that match the chipset for the Pi Zero (ARM). 
If you run the apt-get command as described on Electrum's download page, on a virtual Linux machine on Windows or Mac, 
the wrong file will be extracted (You'll get the Intel or AMD versions).
So you need a Raspberry Pi with an internet connection - a different device to the Pi Zero, eg a Pi 4. (A Pi 4 has an ARM chip)
Download then extract the files to a USB drive, and import that to the Pi Zero, then run the dpkg command to install the deb files.
(as described in my guide).

THE EASIER WAY:
The process is similar but you can skip the need for a Pi4.
Download the necessary dependency files directly from GitHub. I've downloaded them for your convenience. 
I've added the version of Electrum these files work for.
I can not guarantee that as newer versions of Electrum are released, the same dependency files will work.

I have also included other useful files that I usually add to my Pi Zero systems.
Ian Coleman's BIP 39 tool (you can just get this directly from his GitHub page as an alternative.

IMPORTANT ADDITION:
With new updates to the Raspian OS, The Pi Zero performs poorly (Raspberry PI is no longer supporting this device).
You should download the latest "Buster" version (not any later than Buster) of the operating system, and also, 
you can't use the latest version of Electrum either, as it requires a later Python version. 
Find the older 2021 versions of Electrum to use.
