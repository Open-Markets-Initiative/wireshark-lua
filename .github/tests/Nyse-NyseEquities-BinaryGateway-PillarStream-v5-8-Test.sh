set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.BinaryGateway.v5.8/NewOrderSingleAndCancelReplaceRequestMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_BinaryGateway_PillarStream_v5_8_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json 2> Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderSingleAndCancelReplaceRequestMessage) ---"; cat Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.symbolid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.mpid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.mmid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.mpsubid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.clordid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.origclordid" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.bitfieldorderinstructionsu12816" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.price" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.orderqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.minqty" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
grep "nyse.nyseequities.binarygateway.pillarstream.v5.8.userdata" Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8.NewOrderSingleAndCancelReplaceRequestMessage.json
