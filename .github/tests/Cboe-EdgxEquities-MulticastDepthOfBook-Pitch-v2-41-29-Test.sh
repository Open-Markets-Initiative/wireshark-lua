set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/AddOrderExpandedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderExpandedMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.symbolextended" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.participantid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.customerindicator" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderExpandedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderLongMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderLongMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/OrderExecutedAtPriceSizeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedAtPriceSizeMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.executedquantity" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.remainingquantity" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/OrderExecutedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.executedquantity" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/ReduceSizeShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ReduceSizeShortMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.canceledquantityshort" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.time" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/TradeLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeLongMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/TradeShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeShortMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgxEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json 2> Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json.stderr; exit 1; }

grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.symbolextended" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.tradingstatus" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.regshoaction" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.edgxequities.multicastdepthofbook.pitch.v2.41.29.padding" Cboe.EdgxEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
