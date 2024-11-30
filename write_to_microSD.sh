function write_to_pi_zero {
echo -e "\nType the full path of the image you want to flash.\n"
read image
echo -e "Type the full path of the device path to write to:\n"

read dev

sudo umount -F $dev || diskutil unmountdisk $dev

sudo dd if=$image of=$dev bs=4000000 && sync && echo -e "\nSUCCESS\n"

}

