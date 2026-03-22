set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/Equities.BinaryGateway.Pillar.v5.8/NewOrderSingleAndCancelReplaceRequestMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_BinaryGateway_Pillar_v5_17_Dissector.lua" \
  -T json \
  > Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json

grep "nyse.equities.binarygateway.pillar.v5.17.symbolid" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.mpid" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.mmid" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.mpsubidchar1" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.clordid" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.origclordid" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.bitfieldorderinstructions" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.price" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.orderqty" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.minqty" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.equities.binarygateway.pillar.v5.17.userdata" Nyse.Equities.BinaryGateway.Pillar.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
