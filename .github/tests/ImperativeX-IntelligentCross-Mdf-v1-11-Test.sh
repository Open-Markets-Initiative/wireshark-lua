set -o errexit
set -o pipefail

tshark \
  -r "Data/ImperativeX/IntelligentCross.Mdf.v1.11/TradeMessage.K.pcap" \
  -X "lua_script:ImperativeX/ImperativeX_IntelligentCross_Mdf_v1_11_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["imperativex.intelligentcross.mdf.v1.11.lua"]' \
  > ImperativeX.IntelligentCross.Mdf.v1.11.TradeMessage.json

grep "imperativex.intelligentcross.mdf.v1.11.symbolid" ImperativeX.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperativex.intelligentcross.mdf.v1.11.timestamp" ImperativeX.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperativex.intelligentcross.mdf.v1.11.reserved8" ImperativeX.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperativex.intelligentcross.mdf.v1.11.reserved1" ImperativeX.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperativex.intelligentcross.mdf.v1.11.shares" ImperativeX.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperativex.intelligentcross.mdf.v1.11.symbol" ImperativeX.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperativex.intelligentcross.mdf.v1.11.price" ImperativeX.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperativex.intelligentcross.mdf.v1.11.executionid" ImperativeX.IntelligentCross.Mdf.v1.11.TradeMessage.json
