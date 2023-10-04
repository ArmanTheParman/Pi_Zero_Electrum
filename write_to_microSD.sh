function write_to_pi_zero {
echo "Export the full path of the image you want to write to the variable, 'image'"

echo "Type the full path of the device path but without the partion values:
"

read dev

sudo umount -F $dev

dcfldd if=$image of=$dev ds=4000000

}

