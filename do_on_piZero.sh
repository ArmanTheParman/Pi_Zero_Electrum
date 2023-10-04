#!/bin/bash

echo "HISTSIZE=0
HISTFILESIZE=0
" >> ~/.bashrc 


clear
echo " Have you done this?

1. copy deb directroy to desktop
2. copy Electrum tar file to desktop
3. copy Mnemonic Code file to desktop

Hit <enter> to continue
"
read

cd ~/Desktop
tar -xvf *.gz
rm -rf *.gz

mv Ele* Electrum

cd deb_files
sudo dpkg -i *.deb

cd ..
rm -rf deb_files

cat << EOF >./RUN_ELECTRUM
#!/bin/bash
echo "Please wait..."
cd ~/Desktop/Electrum
./run_electrum
EOF

sudo chmod +x ~/Desktop/Electrum/run_electrum

sudo systemctl disable bluetooth.service




