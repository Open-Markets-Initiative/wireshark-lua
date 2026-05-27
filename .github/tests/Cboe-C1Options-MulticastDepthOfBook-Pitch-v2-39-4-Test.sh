set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MulticastDepthOfBook.Pitch.v2.39.4/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MulticastDepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json 2> Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderLongMessage) ---"; cat Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr; exit 1; }

grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.nanoseconds" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.sideindicator" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.longquantity" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.symbol" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.longprice" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.addflags" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MulticastDepthOfBook.Pitch.v2.39.4/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MulticastDepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json 2> Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr; exit 1; }

grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.nanoseconds" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MulticastDepthOfBook.Pitch.v2.39.4/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MulticastDepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json 2> Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderLongMessage) ---"; cat Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr; exit 1; }

grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.nanoseconds" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.longquantity" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.longprice" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.multicastdepthofbook.pitch.v2.39.4.modifyflags" Cboe.C1Options.MulticastDepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
