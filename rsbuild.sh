if [ ! -d "./retroshare" ]; then
  sudo apt-get install git
  sudo apt-get install ibglib2.0-dev libupnp-dev libssl-dev libxss-dev libgnome-keyring-dev libbz2-dev libspeex-dev libspeexdsp-dev libxslt1-dev cmake libcurl4-openssl-dev libopencv-dev tcl8.6 libsqlcipher-dev libmicrohttpd-dev libavcodec-dev qtmultimedia5-dev qttools5-dev libqt5x11extras5-dev qt5-default
  mkdir ./retroshare
  cd ./retroshare
  git clone https://github.com/felisucoibi/RetroGhibli.git master
  cd ..
fi
cd ./retroshare/master
git pull https://github.com/felisucoibi/RetroGhibli.git master
# git push origin master
qmake CONFIG+=debug
make
sudo make install
