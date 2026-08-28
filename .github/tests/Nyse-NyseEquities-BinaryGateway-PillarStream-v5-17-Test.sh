set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.v5.17/NewOrderSingleAndCancelReplaceRequestMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_BinaryGateway_PillarStream_v5_17_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderSingleAndCancelReplaceRequestMessage) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.symbolid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.mpid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.mmid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.mpsubid1" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.clordid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.origclordid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.bitfieldorderinstructions" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.price" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.orderqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.minqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.17.userdata" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.17.NewOrderSingleAndCancelReplaceRequestMessage.json
