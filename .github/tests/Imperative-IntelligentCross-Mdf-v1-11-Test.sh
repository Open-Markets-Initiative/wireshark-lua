set -o errexit
set -o pipefail

tshark \
  -r "Data/Imperative/IntelligentCross.Mdf.v1.11/TradeMessage.K.pcap" \
  -X "lua_script:Imperative/Imperative_IntelligentCross_Mdf_v1_11_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["imperative.intelligentcross.mdf.v1.11.lua"]' \
  > Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json

grep "imperative.intelligentcross.mdf.v1.11.symbolid" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.timestamp" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.reserved8" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.reserved1" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.shares" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.symbol" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.price" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.executionid" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
