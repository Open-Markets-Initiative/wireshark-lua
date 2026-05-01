set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/AddOrderShortMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_ByxEquities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -d "udp.port==${PORT},cboe.byxequities.depthofbook.pitch.v2.41.29.lua" \
  -T json \
  > Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json 2> Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderShortMessage) ---"; cat Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; fi

grep "cboe.byxequities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.sideindicator" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.symbol" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.addorderflags" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/ModifyOrderShortMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_ByxEquities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -d "udp.port==${PORT},cboe.byxequities.depthofbook.pitch.v2.41.29.lua" \
  -T json \
  > Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json 2> Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderShortMessage) ---"; cat Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; fi

grep "cboe.byxequities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.modifyorderflags" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
