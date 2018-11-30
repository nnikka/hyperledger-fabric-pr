
export CONFIG_DIRECTORY=$HOME/Desktop/hy21/fabric-samples/testnet

export FABRIC_CFG_PATH=$PWD

export CORE_LOGGING_LEVEL=INFO

export CORE_PEER_LISTENADDRESS=localhost:8053
export CORE_PEER_ADDRESS=localhost:8053

export CORE_PEER_FILESYSTEMPATH=$HOME/Desktop/hy21/fabric-samples/testnet/org3peer3/ledger

export CORE_PEER_MSPCONFIGPATH=$CONFIG_DIRECTORY/org3peer3/crypto-config/peerOrganizations/org3.com/users/Admin@org3.com/msp

CORE_LEDGER_STATE_STATEDATABASE=goleveldb
CORE_LEDGER_STATE_COUCHDBCONFIG_COUCHDBADDRESS=localhost:5984

if [[ $0 = *"env.sh" ]]
then
    echo "STOP: Looks like you forgot the . before ./env.sh? "
else
    echo "Done."
fi
