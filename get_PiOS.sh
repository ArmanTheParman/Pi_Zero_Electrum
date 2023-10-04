function get_piOS {
echo "getting zip file"
#curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2022-04-07/2022-04-04-raspios-buster-armhf.img.xz
curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2021-12-02/2021-12-02-raspios-buster-armhf.zip && export zip_download=success

echo "getting sha256 file"
#curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2022-04-07/2022-04-04-raspios-buster-armhf.img.xz.sha256
curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2021-12-02/2021-12-02-raspios-buster-armhf.zip.sha256 && sha256_download=success

echo "getting signature of hash file"
#curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2022-04-07/2022-04-04-raspios-buster-armhf.img.xz.sig
curl -LO https://downloads.raspberrypi.org/raspios_oldstable_armhf/images/raspios_oldstable_armhf-2021-12-02/2021-12-02-raspios-buster-armhf.zip.sig && signature_download=success


echo "hashing..."

if shasum -a 256 --ignore-missing --verify *.256 2>&1 | grep Good ; then export hashes=match ; else export hashes="don't match" ; fi 

echo "fetching public key"
gpg --import Raspberry_Pi.pubkey

echo "verifying signature"
gpg --verify *.sig && export verification=success

echo "unzipping"
xz -vkd $zip_path && unzip=success


echo "

zip download : $zip_download
sha256_download : $sha256_download
signature_download: $signature_download
hashes: $hashes
verification: $verification
unzip: $unzip

}
