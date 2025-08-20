set -o errexit
set -o pipefail

tshark \
  -r "Data/B3/BinaryEntryPoint.v8.1/ExecutionReportNewMessage.pcap" \
  -X "lua_script:B3/B3_Equities_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["b3.equities.binaryentrypoint.sbe.v8.1.lua"]' \
  > B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json

grep "b3.equities.binaryentrypoint.sbe.v8.1.side" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.ordstatus" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.clordid" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.secondaryorderid" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.securityid" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.orderid" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.account" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.execid" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.transacttime" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.marketsegmentreceivedtime" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.protectionprice" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.tradedate" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.workingindicator" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.multilegreportingtype" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.ordtype" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.timeinforce" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.expiredate" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.orderqty" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.priceoptional" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.stoppx" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.minqty" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.maxfloor" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.crossidoptional" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.receivedtime" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.offset152padding3" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.ordtagidoptional" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.crosstype" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.crossprioritization" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.mmprotectionresetbooleanoptional" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.offset165padding3" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.1.strategyid" B3.Equities.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
