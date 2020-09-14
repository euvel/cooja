#!/bin/bash


# Installing OpenJDK
sudo apt-get install openjdk-8-jdk
# sudo update-alternatives --config java // set in to jdk 8 if need


# Installing Apache Ant
export VER="1.10.8"
wget https://www-eu.apache.org/dist//ant/binaries/apache-ant-${VER}-bin.tar.gz  
sudo tar -xvf apache-ant-${VER}-bin.tar.gz -C /usr/local
sudo ln -s /usr/local/apache-ant-${VER}/ /usr/local/ant
sudo vim /etc/profile.d/ant.sh
source /etc/profile.d/ant.sh
ant -version

# Installing Dep.
wget http://ftp.us.debian.org/debian/pool/main/m/mpfr4/libmpfr4_3.1.2-2_amd64.deb
sudo dpkg -i libmpfr4_3.1.2-2_amd64.deb
wget http://old.kali.org/kali/pool/main/m/msp430mcu/msp430mcu_20120406-2_all.deb
sudo dpkg -i msp430mcu_20120406-2_all.deb
wget http://old.kali.org/kali/pool/main/m/msp430-libc/msp430-libc_20120224-1_amd64.deb
sudo dpkg -i msp430-libc_20120224-1_amd64.deb
wget http://old.kali.org/kali/pool/main/g/gcc-msp430/gcc-msp430_4.6.3~mspgcc-20120406-7_amd64.deb
sudo dpkg -i gcc-msp430_4.6.3~mspgcc-20120406-7_amd64.deb

# Downloading Cooja
wget http://downloads.sourceforge.net/project/contiki/Contiki/Contiki%202.7/contiki-2.7.zip
unzip contiki-2.7.zip

# Running Cooja
cd ~/contiki/tools/cooja
ant run