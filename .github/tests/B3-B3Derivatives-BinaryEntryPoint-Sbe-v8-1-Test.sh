set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/EstablishMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/EstablishMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -d "udp.port==$port,b3.b3derivatives.binaryentrypoint.sbe.v8.1.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr ]; then echo "--- tshark stderr (EstablishMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json.stderr; fi
echo "--- tshark diagnostic (EstablishMessage) ---"
echo "json bytes: $(wc -c < B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json)"
echo "frame count: $(grep -c '\"_index\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json | sort -u | head -n 40

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.keepaliveinterval" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.cancelondisconnecttype" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.offset33padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.codtimeoutwindow" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.EstablishMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/ExecutionReportNewMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/ExecutionReportNewMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -d "udp.port==$port,b3.b3derivatives.binaryentrypoint.sbe.v8.1.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportNewMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr ]; then echo "--- tshark stderr (ExecutionReportNewMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json.stderr; fi
echo "--- tshark diagnostic (ExecutionReportNewMessage) ---"
echo "json bytes: $(wc -c < B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json)"
echo "frame count: $(grep -c '\"_index\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportNewMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/ExecutionReportTradeMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/ExecutionReportTradeMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -d "udp.port==$port,b3.b3derivatives.binaryentrypoint.sbe.v8.1.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportTradeMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr ]; then echo "--- tshark stderr (ExecutionReportTradeMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json.stderr; fi
echo "--- tshark diagnostic (ExecutionReportTradeMessage) ---"
echo "json bytes: $(wc -c < B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.ExecutionReportTradeMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/NegotiateMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/NegotiateMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -d "udp.port==$port,b3.b3derivatives.binaryentrypoint.sbe.v8.1.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr \
  || { echo "--- tshark FAILED (NegotiateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr ]; then echo "--- tshark stderr (NegotiateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json.stderr; fi
echo "--- tshark diagnostic (NegotiateMessage) ---"
echo "json bytes: $(wc -c < B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json | sort -u | head -n 40

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.timestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.enteringfirm" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.1.onbehalffirm" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.NegotiateMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/SimpleModifyOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/SimpleModifyOrderMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -d "udp.port==$port,b3.b3derivatives.binaryentrypoint.sbe.v8.1.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (SimpleModifyOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr ]; then echo "--- tshark stderr (SimpleModifyOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (SimpleModifyOrderMessage) ---"
echo "json bytes: $(wc -c < B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleModifyOrderMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/SimpleNewOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.1/SimpleNewOrderMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_1_Dissector.lua" \
  -d "udp.port==$port,b3.b3derivatives.binaryentrypoint.sbe.v8.1.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (SimpleNewOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr ]; then echo "--- tshark stderr (SimpleNewOrderMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (SimpleNewOrderMessage) ---"
echo "json bytes: $(wc -c < B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.1.SimpleNewOrderMessage.json | sort -u | head -n 40

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
