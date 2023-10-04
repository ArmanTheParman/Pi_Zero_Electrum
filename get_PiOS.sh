function get_piOS {

# Need version from mid 2021 ; Version in late 2021 and beyond bloated the browser and it doesn't work on Pi Zeros.

#Hash of desired OS image published here... 

#        -       https://web.archive.org/web/20211028120855/https://www.raspberrypi.com/software/operating-systems/
#        -       https://armantheparman.com/how-to-set-up-a-raspberry-pi-zero-air-gapped-with-electrum-desktop-wallet/
#        -       https://web.archive.org/web/20211028120855/https://www.raspberrypi.com/software/operating-systems/ 
#        -       https://ytyaru.hatenablog.com/entry/2023/02/25/000000
#        -       https://github.com/treehouses/builder/blob/master/builder
#        -       http://debian.rutgers.edu/raspios_images/raspios/raspios_armhf-2021-05-28/

hashvalue=b6c04b34d231f522278fc822d913fed3828d0849e1e7d786db72f52c28036c62

# Get the image...
mkdir -p ~/parman_programs/ParmaZero
cd ~/parman_programs/ParmaZero
echo "getting zip file"
curl -LO http://debian.rutgers.edu/raspios_images/raspios/raspios_armhf-2021-05-28/2021-05-07-raspios-buster-armhf.zip 

# Hash the zip
echo "
hashing..."

if shasum -a 256 raspios*zip | grep -q $hasvalue ; then
echo "
hash successful
" 
fi

echo "unzipping"
echo "unzipping, please wait... "
unzip 2021*zip 

}
