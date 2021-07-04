#!/bin/bash
# JUST A SMALL SCRIPT TO ONE CLICK UBUNTU BUILDING OF RETROSHARE.ORG for ubuntu 19.10 20.04

if [ ! -d "./retroshare" ]; then
  sudo apt install git
#  sudo apt install ibglib2.0-dev
  sudo apt install libupnp-dev
  sudo apt install doxygen
  sudo apt install qt5-default
  sudo apt install libxss-dev 
  sudo apt install libspeex-dev
  sudo apt install libssl-dev
  sudo apt install libspeexdsp-dev libxslt1-dev cmake libcurl4-openssl-dev libopencv-dev tcl8.6 libsqlcipher-dev libmicrohttpd-dev
  sudo apt install libavcodec-dev qtmultimedia5-dev qttools5-dev libqt5x11extras5-dev qt5-default libqt5x11extras5-dev qtmultimedia5-dev qttools5-dev
  sudo apt install libxss-dev
  sudo apt install libxapian-dev
  sudo apt install libbz2-dev
  sudo apt libupnp-dev
  sudo apt install rapidjson-dev
  
  mkdir ./retroshare
  cd ./retroshare
 git clone https://github.com/RetroShare/RetroShare.git master
 # git clone https://github.com/felisucoibi/RetroShare.git master
  rm -r ./master/supportlibs/restbed
  cd ..
fi

cd ./retroshare/master
git pull https://github.com/RetroShare/RetroShare.git master
#git pull https://github.com/felisucoibi/RetroShare.git master
# git push origin master
qmake CONFIG+=rs_jsonapi CONFIG+=rs_webui
make
sudo make install
cd ..
# install the webui
git clone https://github.com/retroshare/RSNewWebUI
cd RSNewWebUI
qmake
