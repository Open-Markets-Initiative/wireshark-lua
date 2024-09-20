set -o errexit
set -o pipefail

tshark \
  -r "Data/B3/BinaryEntryPoint.v8.0/SimpleModifyOrderMessage.101.pcap" \
  -X "lua_script:B3/B3_Equities_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["b3.equities.binaryentrypoint.sbe.v8.0.lua"]' \
  > B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json

grep "b3.equities.binaryentrypoint.sbe.v8.0.inboundbusinessheader" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.ordtagid" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.mmprotectionreset" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.clordid" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.account" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.senderlocation" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.enteringtrader" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.selftradepreventioninstruction" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.securityid" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.side" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.simpleordtype" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.timeinforcesimple" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.routinginstruction" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.orderqty" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.priceoptional" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.orderidoptional" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.origclordid" B3.Equities.BinaryEntryPoint.Sbe.v8.0.SimpleModifyOrderMessage.json
