set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json

grep "cboe.options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.orderid" Cboe.Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.sideindicator" Cboe.Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.longquantity" Cboe.Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.symbol" Cboe.Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.longprice" Cboe.Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.addflags" Cboe.Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json

grep "cboe.options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.orderid" Cboe.Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json

grep "cboe.options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.orderid" Cboe.Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.longquantity" Cboe.Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.longprice" Cboe.Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.options.depthofbook.pitch.v2.39.4.modifyflags" Cboe.Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
