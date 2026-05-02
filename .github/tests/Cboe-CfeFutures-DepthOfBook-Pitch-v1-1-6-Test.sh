set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.sideindicator" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.time" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.epoch" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr; exit 1; }

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved2" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradingstatus" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved3" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
