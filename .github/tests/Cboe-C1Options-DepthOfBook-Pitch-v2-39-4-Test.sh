set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json 2> Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrderLongMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json; echo

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
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json 2> Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr ]; then echo "--- tshark stderr (DeleteOrderMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (DeleteOrderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json; echo

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json 2> Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr; fi
echo "--- tshark diagnostic (ModifyOrderLongMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json; echo

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longquantity" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longprice" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.modifyflags" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
