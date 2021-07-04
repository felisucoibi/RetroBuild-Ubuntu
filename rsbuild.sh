#!/bin/bash
# JUST A SMALL SCRIPT TO ONE CLICK UBUNTU BUILDING OF RETROSHARE.ORG for ubuntu 19.10 20.04

if [ ! -d "./retroshare" ]; then
  sudo apt install git
#  sudo apt install ibglib2.0-dev
  
  # QT
  sudo apt install qt5-qmake
  sudo apt install qtbase5-dev
  sudo apt install qtbase5-dev-tools
  sudo apt install qtchooser
  sudo apt install qtmultimedia5-dev
  sudo apt install qttools5-dev
  sudo apt install libqt5x11extras5-dev

  # LIBS  

  sudo apt install libbz2-dev
  sudo apt install libupnp-dev
  sudo apt install rapidjson-dev
  sudo apt install doxygen
  sudo apt install libssl-dev
  sudo apt install libspeex-dev  
  sudo apt install libspeexdsp-dev
  sudo apt install libxslt1-dev
  sudo apt install cmake
  sudo apt install libcurl4-openssl-dev
  sudo apt install libopencv-dev
  sudo apt install tcl8.6
  sudo apt install libsqlcipher-dev
  sudo apt install libmicrohttpd-dev
  sudo apt install libavcodec-dev 
  sudo apt install libxss-dev
  sudo apt install libxapian-dev
    
  mkdir ./retroshare
  cd ./retroshare
 git clone https://github.com/RetroShare/RetroShare.git master
 # git clone https://github.com/felisucoibi/RetroShare.git master

  #retroshare/master/supportlibs/restbed
  cd ..
  sudo rm -r ./retroshare/master/supportlibs/restbed
  
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
