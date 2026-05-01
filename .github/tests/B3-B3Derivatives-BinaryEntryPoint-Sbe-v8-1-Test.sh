set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/EstablishMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr ]; then echo "--- tshark stderr (EstablishMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr; fi

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.keepaliveinterval" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.cancelondisconnecttype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset33padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.codtimeoutwindow" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/ExecutionReportNewMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportNewMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr ]; then echo "--- tshark stderr (ExecutionReportNewMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr; fi

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
tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/ExecutionReportTradeMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportTradeMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr ]; then echo "--- tshark stderr (ExecutionReportTradeMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr; fi

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
tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/NegotiateMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr \
  || { echo "--- tshark FAILED (NegotiateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr ]; then echo "--- tshark stderr (NegotiateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr; fi

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringfirm" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.onbehalffirm" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/SimpleModifyOrderMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (SimpleModifyOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr ]; then echo "--- tshark stderr (SimpleModifyOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr; fi

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
tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/SimpleNewOrderMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (SimpleNewOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr ]; then echo "--- tshark stderr (SimpleNewOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr; fi

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
