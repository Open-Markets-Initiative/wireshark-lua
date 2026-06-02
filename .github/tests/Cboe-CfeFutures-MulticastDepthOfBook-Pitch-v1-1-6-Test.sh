set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_MulticastDepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json 2> Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.timestamp" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.sideindicator" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_MulticastDepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json 2> Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.timestamp" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_MulticastDepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TimeMessage.json 2> Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.timereference" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TimeMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.epoch" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_MulticastDepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json 2> Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.timestamp" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.reserved2" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.tradingstatus" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.multicastdepthofbook.pitch.v1.1.6.reserved3" Cboe.CfeFutures.MulticastDepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
