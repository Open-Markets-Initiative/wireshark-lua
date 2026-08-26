set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/AddOrderExpandedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderExpandedMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.symbolextended" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.participantid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.customerindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderLongMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/AuctionSummaryMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionSummaryMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.symbolextended" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.auctionopeningtype" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.sharescontracts" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionSummaryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/AuctionUpdateMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionUpdateMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.symbolextended" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.auctiontype" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.referenceprice" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.buyshares" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.sellshares" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.indicativeprice" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.auctiononlyprice" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AuctionUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderLongMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/OrderExecutedAtPriceSizeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedAtPriceSizeMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.executedquantity" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.remainingquantity" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/OrderExecutedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.executedquantity" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/ReduceSizeShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ReduceSizeShortMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.canceledquantityshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.time" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/TradeLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeLongMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/TradeShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeShortMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.MulticastDepthOfBook.v2.41.29/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json 2> Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.symbolextended" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.tradingstatus" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.regshoaction" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.bzxequities.multicastdepthofbook.pitch.v2.41.29.padding" Cboe.BzxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
