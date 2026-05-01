set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/AddOrderLongMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -d "udp.port==${PORT},cboe.c1options.depthofbook.pitch.v2.39.4.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json 2> Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr; fi

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.sideindicator" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longquantity" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.symbol" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longprice" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.addflags" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/DeleteOrderMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -d "udp.port==${PORT},cboe.c1options.depthofbook.pitch.v2.39.4.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json 2> Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr ]; then echo "--- tshark stderr (DeleteOrderMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr; fi

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/ModifyOrderLongMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -d "udp.port==${PORT},cboe.c1options.depthofbook.pitch.v2.39.4.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json 2> Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr; fi

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longquantity" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longprice" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.modifyflags" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
