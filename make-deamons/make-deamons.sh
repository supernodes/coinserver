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
make -f ${SRC}/6coin/clean makefile.unix 
make -f ${SRC}/6coin/makefile.unix USE_UPNP=- USE_IPV6=1

#alphacoin
make -f ${SRC}/alphacoin/clean makefile.unix 
make -f ${SRC}/alphacoin/makefile.unix USE_UPNP=- USE_IPV6=1

#AmericanCoin
make -f ${SRC}/AmericanCoin/clean makefile.unix 
make -f ${SRC}/AmericanCoin/makefile.unix USE_UPNP=- USE_IPV6=1

#BBQCoin
make -f ${SRC}/BBQCoin/clean makefile.unix 
make -f ${SRC}/BBQCoin/makefile.unix USE_UPNP=- USE_IPV6=1

#CGB
make -f ${SRC}/CGB/clean makefile.unix 
make -f ${SRC}/CGB/makefile.unix USE_UPNP=- USE_IPV6=1

#CHNCoin
make -f ${SRC}/CHNCoin/clean makefile.unix 
make -f ${SRC}/CHNCoin/makefile.unix USE_UPNP=- USE_IPV6=1

#digitalcoin
make -f ${SRC}/digitalcoin/clean makefile.unix 
make -f ${SRC}/digitalcoin/makefile.unix USE_UPNP=- USE_IPV6=1

#dogecoin
make -f ${SRC}/dogecoin/clean makefile.unix 
make -f ${SRC}/dogecoin/makefile.unix USE_UPNP=- USE_IPV6=1

#feathercoin
make -f ${SRC}/feathercoin/clean makefile.unix 
make -f ${SRC}/feathercoin/makefile.unix USE_UPNP=- USE_IPV6=1

#freicoin
make -f ${SRC}/freicoin/clean makefile.unix 
make -f ${SRC}/freicoin/makefile.unix USE_UPNP=- USE_IPV6=1

#hashcoin
make -f ${SRC}/hashcoin/clean makefile.unix 
make -f ${SRC}/hashcoin/makefile.unix USE_UPNP=- USE_IPV6=1

#litecoin
make -f ${SRC}/litecoin/clean makefile.unix 
make -f ${SRC}/litecoin/makefile.unix USE_UPNP=- USE_IPV6=1

#royalcoin
make -f ${SRC}/royalcoin/clean makefile.unix 
make -f ${SRC}/royalcoin/makefile.unix USE_UPNP=- USE_IPV6=1

#bitcoin
cd ${SRC}/bitcoin
sh autogen.sh
sh configure
make
cd ..

#done for now.
#wanna help mail me
#wapradio.jdr@gmail.com
