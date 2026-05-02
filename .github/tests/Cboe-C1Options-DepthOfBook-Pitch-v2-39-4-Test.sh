set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/AddOrderLongMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -d "udp.port==$port,cboe.c1options.depthofbook.pitch.v2.39.4.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json 2> Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrderLongMessage) ---"
echo "json bytes: $(wc -c < Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json | sort -u | head -n 40

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.sideindicator" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longquantity" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.symbol" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longprice" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.addflags" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.AddOrderLongMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/DeleteOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -d "udp.port==$port,cboe.c1options.depthofbook.pitch.v2.39.4.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json 2> Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr ]; then echo "--- tshark stderr (DeleteOrderMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (DeleteOrderMessage) ---"
echo "json bytes: $(wc -c < Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json | sort -u | head -n 40

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.DeleteOrderMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/ModifyOrderLongMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.DepthOfBook.Pitch.v2.39.4/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_DepthOfBook_Pitch_v2_39_4_Dissector.lua" \
  -d "udp.port==$port,cboe.c1options.depthofbook.pitch.v2.39.4.lua" \
  -T json \
  > Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json 2> Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderLongMessage) ---"; cat Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json.stderr; fi
echo "--- tshark diagnostic (ModifyOrderLongMessage) ---"
echo "json bytes: $(wc -c < Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json | sort -u | head -n 40

grep "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.orderid" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longquantity" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.longprice" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
grep "cboe.c1options.depthofbook.pitch.v2.39.4.modifyflags" Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.ModifyOrderLongMessage.json
