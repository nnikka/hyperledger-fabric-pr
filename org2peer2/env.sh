
export CONFIG_DIRECTORY=$HOME/Desktop/hy21/fabric-samples/testnet

export FABRIC_CFG_PATH=$PWD

export CORE_LOGGING_LEVEL=INFO

export CORE_PEER_LISTENADDRESS=localhost:8052
export CORE_PEER_ADDRESS=localhost:8052

export CORE_PEER_FILESYSTEMPATH=$HOME/Desktop/hy21/fabric-samples/testnet/org2peer2/ledger

export CORE_PEER_MSPCONFIGPATH=$CONFIG_DIRECTORY/crypto-config/peerOrganizations/org2.com/users/User1@org2.com/msp

CORE_LEDGER_STATE_STATEDATABASE=goleveldb
CORE_LEDGER_STATE_COUCHDBCONFIG_COUCHDBADDRESS=localhost:5984

if [[ $0 = *"env.sh" ]]
then
    echo "STOP: Looks like you forgot the . before ./env.sh? "
else
    echo "Done."
fi
