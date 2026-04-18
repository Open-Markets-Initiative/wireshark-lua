set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.sideindicator" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longquantity" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.symbol" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longprice" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.addflags" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longquantity" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longprice" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.modifyflags" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
