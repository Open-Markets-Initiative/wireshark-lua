set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Tmx/Tmx.TsxTsxvLevel2.Xmt.v2.1/AssignCopOrdersMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Tmx/Tmx.TsxTsxvLevel2.Xmt.v2.1/AssignCopOrdersMessage.pcap" \
  -X "lua_script:Tmx/Tmx_QuantumFeed_TsxTsxvLevel2_Xmt_v2_1_Dissector.lua" \
  -d "udp.port==${PORT},tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.lua" \
  -T json \
  > Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json 2> Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr \
  || { echo "--- tshark FAILED (AssignCopOrdersMessage) ---"; cat Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr; exit 1; }
if [ -s Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr ]; then echo "--- tshark stderr (AssignCopOrdersMessage) ---"; cat Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json.stderr; fi

grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.symbol" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.calculatedopeningprice" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.orderside" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.tradingsystemtimestamp" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
