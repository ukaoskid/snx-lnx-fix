#!/bin/bash
# Adding Oracle Java.
# sudo add-apt-repository -y ppa:webupd8team/java
# echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
# sudo apt-get install oracle-java8-installer libstdc++5:i386 libpam0g:i386 libx11-6:i386 -y

# Adding i386 architecture. Needed for some packages.
sudo dpkg --add-architecture i386 
sudo apt-get update

sudo apt-get install libc6-i386 libaudit1 libxcb1 libgcc1 libc6 lib32tinfo5 libaudit1 libx11-6:i386 libstdc++5:i386 libpam0g:i386 -y
sudo apt -f install -y

# Installing snx.
cd ../snx
sudo chmod +x ./snx_install_linux30

sudo ./snx_install_linux30
snx