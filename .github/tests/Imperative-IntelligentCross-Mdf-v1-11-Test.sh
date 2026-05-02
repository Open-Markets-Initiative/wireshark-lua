set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Imperative/IntelligentCross.Mdf.v1.11/OrderExecutedMessage.pcap" \
  -X "lua_script:Imperative/Imperative_IntelligentCross_Mdf_v1_11_Dissector.lua" \
  -T json \
  > Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json 2> Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json.stderr; exit 1; }

grep "imperative.intelligentcross.mdf.v1.11.symbolid" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.timestamp" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.orderid" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.shares" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.executionid" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.reserved1" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.price" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Imperative/IntelligentCross.Mdf.v1.11/TradeMessage.pcap" \
  -X "lua_script:Imperative/Imperative_IntelligentCross_Mdf_v1_11_Dissector.lua" \
  -T json \
  > Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json 2> Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json.stderr; exit 1; }

grep "imperative.intelligentcross.mdf.v1.11.symbolid" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.timestamp" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.reserved8" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.reserved1" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.shares" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.symbol" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.price" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.executionid" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
