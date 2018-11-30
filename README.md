# Generate the crypto
cryptogen generate --config=crypto-config.yaml --output=crypto-config

# Generate the genesis
configtxgen -profile OrdererGenesis -channelID ordererchannel -outputBlock ./orderer/orderer-genesis.block
cd orderer
configtxgen -inspectBlock ./orderer-genesis.block

# Generate the channel tx
configtxgen -outputCreateChannelTx ./org1peer1/channel.tx  -profile Channel -channelID mainhannel

# Run orderer
cd orderer
orderer

# Run org1peer1
cd org1peer1
./env.sh

Launch Peer
==========
> peer node start -o localhost:8050

Create the channel using the channel transaction created earlier
================================================================
> peer channel create -o localhost:8050 -c mainhannel -f ./channel.tx

Join the channel
================
> peer channel join -o localhost:8050 -b ./mainhannel.block

List the channels
=================
> peer channel list

fetch
=====
 peer channel fetch 0 mainhannel.block -c mainhannel -o localhost:8050