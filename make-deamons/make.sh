##########################
# makefile for all src's #
#                        #
# work in progress       #
#                        #
# (c)2014 Euro-Hash      #
##########################

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
make -f ../src-coins/6coin/clean makefile.unix 
make -f ../src-coins/6coin/makefile.unix USE_UPNP=- USE_IPV6=1

#alphacoin
make -f ../src-coins/alphacoin/clean makefile.unix 
make -f ../src-coins/alphacoin/makefile.unix USE_UPNP=- USE_IPV6=1

#AmericanCoin
make -f ../src-coins/AmericanCoin/clean makefile.unix 
make -f ../src-coins/AmericanCoin/makefile.unix USE_UPNP=- USE_IPV6=1

#BBQCoin
make -f ../src-coins/BBQCoin/clean makefile.unix 
make -f ../src-coins/BBQCoin/makefile.unix USE_UPNP=- USE_IPV6=1

#CGB
make -f ../src-coins/CGB/clean makefile.unix 
make -f ../src-coins/CGB/makefile.unix USE_UPNP=- USE_IPV6=1

#CHNCoin
make -f ../src-coins/CHNCoin/clean makefile.unix 
make -f ../src-coins/CHNCoin/makefile.unix USE_UPNP=- USE_IPV6=1

#digitalcoin
make -f ../src-coins/digitalcoin/clean makefile.unix 
make -f ../src-coins/digitalcoin/makefile.unix USE_UPNP=- USE_IPV6=1

#dogecoin
make -f ../src-coins/dogecoin/clean makefile.unix 
make -f ../src-coins/dogecoin/makefile.unix USE_UPNP=- USE_IPV6=1

#feathercoin
make -f ../src-coins/feathercoin/clean makefile.unix 
make -f ../src-coins/feathercoin/makefile.unix USE_UPNP=- USE_IPV6=1

#freicoin
make -f ../src-coins/freicoin/clean makefile.unix 
make -f ../src-coins/freicoin/makefile.unix USE_UPNP=- USE_IPV6=1

#hashcoin
make -f ../src-coins/hashcoin/clean makefile.unix 
make -f ../src-coins/hashcoin/makefile.unix USE_UPNP=- USE_IPV6=1

#litecoin
make -f ../src-coins/litecoin/clean makefile.unix 
make -f ../src-coins/litecoin/makefile.unix USE_UPNP=- USE_IPV6=1

#royalcoin
make -f ../src-coins/royalcoin/clean makefile.unix 
make -f ../src-coins/royalcoin/makefile.unix USE_UPNP=- USE_IPV6=1

#bitcoin
cd /src-coins/bitcoin
./autogen.sh
./configure
make
cd ..

#done for now.