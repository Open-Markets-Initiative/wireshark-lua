set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/BusinessMessageRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (BusinessMessageRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.eventindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.refmsgtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset19padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.refseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.businessrejectrefid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.businessrejectreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.BusinessMessageRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/EstablishAckMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishAckMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishAckMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishAckMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishAckMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.keepaliveinterval" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.lastincomingseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/EstablishMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.keepaliveinterval" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.cancelondisconnecttype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset33padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.codtimeoutwindow" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/EstablishRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.establishmentrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset21padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.lastincomingseqnooptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.EstablishRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/ExecutionReportCancelMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportCancelMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.eventindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.secondaryorderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.cumqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentreceivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradedate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.workingindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.execrestatementreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset100padding4" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.massactionreportidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.receivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset164padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.actionrequestedfromsessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportCancelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/ExecutionReportModifyMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportModifyMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.eventindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.secondaryorderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.leavesqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.cumqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentreceivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.protectionprice" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradedate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.workingindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.multilegreportingtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.receivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset168padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.mmprotectionresetbooleanoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset179padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradingsubaccount" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportModifyMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/ExecutionReportNewMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportNewMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.eventindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.secondaryorderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentreceivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.protectionprice" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradedate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.workingindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.multilegreportingtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.receivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset152padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crosstype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossprioritization" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.mmprotectionresetbooleanoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset165padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradingsubaccount" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportNewMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/ExecutionReportRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.eventindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.cxlrejresponseto" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.secondaryorderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordrejreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqtyoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossedindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.receivedtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset146padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradingsubaccount" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/ExecutionReportTradeMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportTradeMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.eventindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.secondaryorderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.lastqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.lastpx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.execid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.leavesqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.cumqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.aggressorindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.exectype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordercategory" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.multilegreportingtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradeid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.contrabroker" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradedate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.totnorelatedsym" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset119padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.secondaryexecid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.execrefid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossedindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradingsessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradingsessionsubid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securitytradingstatus" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crosstype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossprioritization" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset159padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.eventid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.norelatedtrades" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradingsubaccount" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.ExecutionReportTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/NegotiateMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateMessage.json.stderr \
  || { echo "--- tshark FAILED (NegotiateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.enteringfirm" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.onbehalffirm" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/NegotiateRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (NegotiateRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.enteringfirmoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.negotiationrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset25padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.currentsessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NegotiateRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/NewOrderCrossMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderCrossMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.padding" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset18padding2" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.executingtraderoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.price" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossedindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crosstype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.crossprioritization" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.maxsweepqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.blocklength" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.numingroup" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderCrossMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/NewOrderSingleMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderSingleMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.padding" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.mmprotectionresetboolean" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.selftradepreventioninstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timeinforce" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.routinginstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.executingtraderoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.custodian" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.custodyaccount" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.custodyallocationtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradingsubaccount" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.NewOrderSingleMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/OrderCancelReplaceRequestMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelReplaceRequestMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.padding" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.mmprotectionresetboolean" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.selftradepreventioninstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timeinforceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.routinginstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.stoppx" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.minqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.maxfloor" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.executingtraderoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.accounttype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.expiredate" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.custodian" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.custodyaccount" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.custodyallocationtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.strategyid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.tradingsubaccount" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelReplaceRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/OrderCancelRequestMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelRequestMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.padding" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset18padding2" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.singlecancelrestatementreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset54padding2" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.executingtraderoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderCancelRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/OrderMassActionReportMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderMassActionReportMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.eventindicator" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.massactiontype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.massactionscope" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.massactionreportid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.transacttime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.massactionresponse" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.massactionrejectreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.masscancelrestatementreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sideoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset49padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.asset" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/OrderMassActionRequestMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderMassActionRequestMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.padding" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.massactiontype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.massactionscope" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.masscancelrestatementreason" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sideoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.offset31padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.asset" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.OrderMassActionRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/RetransmissionMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmissionMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmissionMessage.json.stderr \
  || { echo "--- tshark FAILED (RetransmissionMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmissionMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmissionMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmissionMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmissionMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.count" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmissionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/RetransmitRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (RetransmitRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.retransmitrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/RetransmitRequestMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRequestMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (RetransmitRequestMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRequestMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.fromseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRequestMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.count" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.RetransmitRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/SequenceMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SequenceMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SequenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SequenceMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SequenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/SimpleModifyOrderMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (SimpleModifyOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.padding" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.mmprotectionresetboolean" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.selftradepreventioninstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.simpleordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timeinforcesimple" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.routinginstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderidoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.origclordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/SimpleNewOrderMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (SimpleNewOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.msgseqnum" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sendingtime" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.marketsegmentid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.padding" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.ordtagid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.mmprotectionresetboolean" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.clordid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.account" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.senderlocation" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.enteringtrader" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.selftradepreventioninstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.securityid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.side" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.simpleordtype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.timeinforcesimple" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.routinginstruction" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.orderqty" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.priceoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.prefix" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.document" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.SimpleNewOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.3/TerminateMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_3_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.TerminateMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.TerminateMessage.json.stderr \
  || { echo "--- tshark FAILED (TerminateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.TerminateMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.3.terminationcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.3.TerminateMessage.json
