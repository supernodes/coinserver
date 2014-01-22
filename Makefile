# this wil be the starting point of it all
#
#
# make src
# make deamons
# make configs
# make start
# make stop
# make generate-cash
# make generate-nocash
# make getinfo
# make getmininginfo
# make wallets
#
# (c) 2014 - Euro-Hash.eu
#
# V1.0
#

1COIND=coins/bitcoin/src/bitcoind
2COIND=coins/litecoin/src/litecoind
3COIND=coins/dogecoin/src/dogecoind
4COIND=coins/feathercoin/src/feathercoind
5COIND=coins/royalcoin/src/royalcoind
6COIND=coins/hashcoin/src/hashcoind

B1_FLAGS=
B2_FLAGS=
B3_FLAGS=
B4_FLAGS=
B5_FLAGS=
B6_FLAGS=

B1=$(1COIND) -port=8333 -rpcport=8332 -conf=config/coin1.conf -pidfile=coin1.pid -datadir=data/coin1 $(B1_FLAGS)
B2=$(2COIND) -port=9333 -rpcport=9332 -conf=config/coin2.conf -pidfile=coin2.pid -datadir=data/coin2 $(B2_FLAGS)
B3=$(3COIND) -port=22556 -rpcport=22555 -conf=config/coin3.conf -pidfile=coin3.pid -datadir=data/coin3 $(B3_FLAGS)
B4=$(4COIND) -port=9193 -rpcport=9192 -conf=config/coin4.conf -pidfile=coin4.pid -datadir=data/coin4 $(B4_FLAGS)
B5=$(5COIND) -port=9556 -rpcport=9557 -conf=config/coin5.conf -pidfile=coin5.pid -datadir=data/coin5 $(B5_FLAGS)
B6=$(6COIND) -port=9393 -rpcport=9392 -conf=config/coin6.conf -pidfile=coin6.pid -datadir=data/coin6 $(B6_FLAGS)

start:
	$(B1) &
	$(B2) &
        $(B3) &
        $(B4) &
        $(B5) &
        $(B6) &

generate-cash
	$(B1) setgenerate true 16
	$(B2) setgenerate true 16
        $(B3) setgenerate true 16
        $(B4) setgenerate true 16
        $(B5) setgenerate true 16
        $(B6) setgenerate true 16

getmininginfo:
	$(B1) getmininginfo
	$(B2) getmininginfo
        $(B3) getmininginfo
        $(B4) getmininginfo
        $(B5) getmininginfo
        $(B6) getmininginfo

generate-nocash:
	$(B1) setgenerate false
        $(B2) setgenerate false
        $(B3) setgenerate false
        $(B4) setgenerate false
        $(B5) setgenerate false
        $(B5) setgenerate false

getinfo:
	$(B1) getinfo
	$(B2) getinfo
        $(B3) getinfo
        $(B4) getinfo
        $(B5) getinfo
        $(B6) getinfo	
stop:
	$(B1) stop
	$(B2) stop
        $(B3) stop
        $(B4) stop
        $(B5) stop
        $(B6) stop

custombuild:
wget -O custombuild.tar.gz http://files.directadmin.com/services/custombuild/2.0/custombuild.tar.gz
tar xvzf custombuild.tar.gz
rm *.gz
cd custombuild
./build

