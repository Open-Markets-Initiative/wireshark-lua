set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Tmx/Tmx.TsxTsxvLevel2.Xmt.v2.1/AssignCopOrdersMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Tmx.TsxTsxvLevel2.Xmt.v2.1/AssignCopOrdersMessage.pcap" \
  -X "lua_script:Tmx/Tmx_QuantumFeed_TsxTsxvLevel2_Xmt_v2_1_Dissector.lua" \
  -d "udp.port==$port,tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.lua" \
  -T json \
  > Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json 2> Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr \
  || { echo "--- tshark FAILED (AssignCopOrdersMessage) ---"; cat Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr; exit 1; }
if [ -s Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr ]; then echo "--- tshark stderr (AssignCopOrdersMessage) ---"; cat Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr; fi
echo "--- tshark diagnostic (AssignCopOrdersMessage) ---"
echo "json bytes: $(wc -c < Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json | sort -u | head -n 40

grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.symbol" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.calculatedopeningprice" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.orderside" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.tradingsystemtimestamp" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
