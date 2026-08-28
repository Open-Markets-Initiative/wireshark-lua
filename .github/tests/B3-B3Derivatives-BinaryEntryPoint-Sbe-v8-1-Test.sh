set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/EstablishAckMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishAckMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishAckMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishAckMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishAckMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.keepaliveinterval" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.lastincomingseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/EstablishMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.keepaliveinterval" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.cancelondisconnecttype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset33padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.codtimeoutwindow" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/EstablishRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.establishmentrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset21padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.lastincomingseqnooptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/ExecutionReportCancelMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportCancelMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.secondaryorderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.cumqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.marketsegmentreceivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.tradedate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.workingindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.execrestatementreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset100padding4" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.massactionreportidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.receivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset164padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.actionrequestedfromsessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportCancelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/ExecutionReportModifyMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportModifyMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.secondaryorderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.leavesqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.cumqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.marketsegmentreceivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.protectionprice" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.tradedate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.workingindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.multilegreportingtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.receivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset168padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.mmprotectionresetbooleanoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset179padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportModifyMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/ExecutionReportNewMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportNewMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.secondaryorderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.marketsegmentreceivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.protectionprice" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.tradedate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.workingindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.multilegreportingtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.receivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset152padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crosstype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossprioritization" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.mmprotectionresetbooleanoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset165padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/ExecutionReportRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.cxlrejresponseto" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.secondaryorderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordrejreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossedindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.receivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset146padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/ExecutionReportTradeMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportTradeMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.secondaryorderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.lastqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.lastpx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.leavesqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.cumqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.aggressorindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.exectype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordercategory" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.multilegreportingtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.tradeid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.contrabroker" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.tradedate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.totnorelatedsym" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset119padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.secondaryexecid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.execrefid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossedindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.tradingsessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.tradingsessionsubid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securitytradingstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crosstype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossprioritization" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset159padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/NegotiateMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr \
  || { echo "--- tshark FAILED (NegotiateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringfirm" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.onbehalffirm" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/NegotiateRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (NegotiateRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringfirmoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.negotiationrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset25padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.currentsessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/NewOrderCrossMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderCrossMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset18padding2" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.executingtraderoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.price" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossedindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crosstype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.crossprioritization" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.maxsweepqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderCrossMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/NewOrderSingleMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderSingleMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.mmprotectionresetboolean" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.selftradepreventioninstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.routinginstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.executingtraderoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NewOrderSingleMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/OrderCancelReplaceRequestMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelReplaceRequestMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.mmprotectionresetboolean" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.selftradepreventioninstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timeinforceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.routinginstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.executingtraderoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.accounttype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelReplaceRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/OrderCancelRequestMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelRequestMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset18padding2" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.singlecancelrestatementreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset54padding2" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.executingtraderoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderCancelRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/OrderMassActionReportMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderMassActionReportMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.massactiontype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.massactionscope" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.massactionreportid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.massactionresponse" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.massactionrejectreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.masscancelrestatementreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sideoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset49padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.asset" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/OrderMassActionRequestMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderMassActionRequestMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.massactiontype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.massactionscope" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.masscancelrestatementreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sideoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset31padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.asset" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.OrderMassActionRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/RetransmissionMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmissionMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmissionMessage.json.stderr \
  || { echo "--- tshark FAILED (RetransmissionMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmissionMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmissionMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmissionMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmissionMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.count" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmissionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/RetransmitRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (RetransmitRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.retransmitrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/RetransmitRequestMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRequestMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (RetransmitRequestMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRequestMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.fromseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.count" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.RetransmitRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/SequenceMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SequenceMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SequenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SequenceMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SequenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/SimpleModifyOrderMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (SimpleModifyOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.mmprotectionresetboolean" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.selftradepreventioninstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.simpleordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timeinforcesimple" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.routinginstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/SimpleNewOrderMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (SimpleNewOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.mmprotectionresetboolean" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.selftradepreventioninstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.simpleordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timeinforcesimple" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.routinginstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.v8.1/TerminateMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.TerminateMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.TerminateMessage.json.stderr \
  || { echo "--- tshark FAILED (TerminateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.TerminateMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.terminationcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.TerminateMessage.json
