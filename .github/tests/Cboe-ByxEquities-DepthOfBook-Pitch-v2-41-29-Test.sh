set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_ByxEquities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json

grep "cboe.byxequities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.sideindicator" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.symbol" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.addorderflags" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_ByxEquities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json

grep "cboe.byxequities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.modifyorderflags" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
