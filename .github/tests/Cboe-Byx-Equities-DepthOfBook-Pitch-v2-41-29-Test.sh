set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Byx_Equities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json

grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.orderid" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.sideindicator" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.quantityshort" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.symbol" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.priceshort" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.addorderflags" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Byx_Equities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json

grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.orderid" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Byx_Equities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json

grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.orderid" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.quantityshort" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.priceshort" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.modifyorderflags" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/RetailPriceImprovementMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Byx_Equities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json

grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.symbolextended" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json
grep "cboe.byx.equities.depthofbook.pitch.v2.41.29.retailpriceimprovement" Cboe.Byx.Equities.DepthOfBook.Pitch.v2.41.29.RetailPriceImprovementMessage.json
