set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Tmx/Tmx.TsxTsxvLevel2.Xmt.v2.1/AssignCopOrdersMessage.pcap" \
  -X "lua_script:Tmx/Tmx_QuantumFeed_TsxTsxvLevel2_Xmt_v2_1_Dissector.lua" \
  -T json \
  > Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json

grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.symbol" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.calculatedopeningprice" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.orderside" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
grep "tmx.quantumfeed.tsxtsxvlevel2.xmt.v2.1.tradingsystemtimestamp" Tmx.QuantumFeed.TsxTsxvLevel2.Xmt.v2.1.AssignCopOrdersMessage.json
