set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Futures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.Futures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json

grep "cboe.futures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.orderid" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.sideindicator" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.symbol" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.shortprice" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Futures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.Futures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json

grep "cboe.futures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.orderid" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.shortprice" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Futures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.Futures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json

grep "cboe.futures.depthofbook.pitch.v1.1.6.time" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.epoch" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Futures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.Futures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json

grep "cboe.futures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.symbol" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.reserved2" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.tradingstatus" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.futures.depthofbook.pitch.v1.1.6.reserved3" Cboe.Futures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
