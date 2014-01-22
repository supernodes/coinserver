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
make -f ${SRC}/src-coins/6coin/makefile.unix USE_UPNP=- USE_IPV6=1

#alphacoin
make -f ${SRC}/src-coins/alphacoin/clean makefile.unix 
make -f ${SRC}/src-coins/alphacoin/makefile.unix USE_UPNP=- USE_IPV6=1

#AmericanCoin
make -f ${SRC}/src-coins/AmericanCoin/clean makefile.unix 
make -f ${SRC}/src-coins/AmericanCoin/makefile.unix USE_UPNP=- USE_IPV6=1

#BBQCoin
make -f ${SRC}/src-coins/BBQCoin/clean makefile.unix 
make -f ${SRC}/src-coins/BBQCoin/makefile.unix USE_UPNP=- USE_IPV6=1

#CGB
make -f ${SRC}/src-coins/CGB/clean makefile.unix 
make -f ${SRC}/src-coins/CGB/makefile.unix USE_UPNP=- USE_IPV6=1

#CHNCoin
make -f ${SRC}/src-coins/CHNCoin/clean makefile.unix 
make -f ${SRC}/src-coins/CHNCoin/makefile.unix USE_UPNP=- USE_IPV6=1

#digitalcoin
make -f ${SRC}/src-coins/digitalcoin/clean makefile.unix 
make -f ${SRC}/src-coins/digitalcoin/makefile.unix USE_UPNP=- USE_IPV6=1

#dogecoin
make -f ${SRC}/src-coins/dogecoin/clean makefile.unix 
make -f ${SRC}/src-coins/dogecoin/makefile.unix USE_UPNP=- USE_IPV6=1

#feathercoin
make -f ${SRC}/src-coins/feathercoin/clean makefile.unix 
make -f ${SRC}/src-coins/feathercoin/makefile.unix USE_UPNP=- USE_IPV6=1

#freicoin
make -f ${SRC}/src-coins/freicoin/clean makefile.unix 
make -f ${SRC}/src-coins/freicoin/makefile.unix USE_UPNP=- USE_IPV6=1

#hashcoin
make -f ${SRC}/src-coins/hashcoin/clean makefile.unix 
make -f ${SRC}/src-coins/hashcoin/makefile.unix USE_UPNP=- USE_IPV6=1

#litecoin
make -f ${SRC}/src-coins/litecoin/clean makefile.unix 
make -f ${SRC}/src-coins/litecoin/makefile.unix USE_UPNP=- USE_IPV6=1

#royalcoin
make -f ${SRC}/src-coins/royalcoin/clean makefile.unix 
make -f ${SRC}/src-coins/royalcoin/makefile.unix USE_UPNP=- USE_IPV6=1

#bitcoin
cd ${SRC}/bitcoin
./autogen.sh
./configure
make
cd ..

#done for now.
#wanna help mail me
#wapradio.jdr@gmail.com
