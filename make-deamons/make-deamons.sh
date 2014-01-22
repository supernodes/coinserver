##########################
# makefile for all src's #
#                        #
# work in progress       #
#                        #
# (c)2014 Euro-Hash      #
##########################

BUILDSCRIPT_VER=1.0.0-RC1
NAME=coinserver

OS=`uname`
WORKDIR=/root/${NAME}
CONFIG=${WORKDIR}/config
DATA=${WORKDIR}/data
SRC=${WORKDIR}/src-coins
B64=0
CPU_CORES=1
LANG=C


#basic updates
#
sudo apt-get update
sudo apt-get dist-upgrade

#needed for updates
#
sudo apt-get install git

#needed for coinbase
#
sudo apt-get install build-essential libboost-all-dev libcurl4-openssl-dev libdb5.1-dev libdb5.1++-dev

#needed for freicoin
#
sudo apt-get install libgmp3-dev libmpfr-dev

#6coind
cd ${SRC}/6coin
make -f makefile.unix 
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#alphacoin
cd ${SRC}/alphacoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#AmericanCoin
cd ${SRC}/AmericanCoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#BBQCoin
cd ${SRC}/BBCCoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#CGB
cd ${SRC}/CGB/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#CHNCoin
cd ${SRC}/CHNCoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#digitalcoin
cd ${SRC}/digitalcoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#dogecoin
cd ${SRC}/dogecoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#feathercoin
cd ${SRC}/feathercoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#freicoin
cd ${SRC}/freicoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#hashcoin
cd ${SRC}/hashcoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#litecoin
cd ${SRC}/litecoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#royalcoin
cd ${SRC}/royalcoin/src
make -f makefile.unix
make -f makefile.unix USE_UPNP=- USE_IPV6=1

#bitcoin
cd ${SRC}/bitcoin
sh autogen.sh
sh configure
make
cd ..

#done for now.
#wanna help mail me
#wapradio.jdr@gmail.com
