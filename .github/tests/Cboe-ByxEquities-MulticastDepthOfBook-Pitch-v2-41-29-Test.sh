set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.MulticastDepthOfBook.Pitch.v2.41/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.MulticastDepthOfBook.Pitch.v2.41/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_ByxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json 2> Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; exit 1; }

grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.ByxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
