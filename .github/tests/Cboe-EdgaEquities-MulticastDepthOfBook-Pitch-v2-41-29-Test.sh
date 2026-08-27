set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/AddOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderLongMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.addorderflags" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/ModifyOrderLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderLongMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.modifyorderflags" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/OrderExecutedAtPriceSizeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedAtPriceSizeMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.executedquantity" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.remainingquantity" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedAtPriceSizeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/OrderExecutedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.executedquantity" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/ReduceSizeShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ReduceSizeShortMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.canceledquantityshort" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.ReduceSizeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.time" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/TradeLongMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeLongMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.quantity" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.price" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeLongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/TradeShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeShortMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.orderid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.sideindicator" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.quantityshort" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.symbol" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.priceshort" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.executionid" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradeShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/EdgaEquities.MulticastDepthOfBook.v2.41.29/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_EdgaEquities_MulticastDepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json 2> Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json.stderr; exit 1; }

grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.timeoffset" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.symbolextended" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.tradingstatus" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.regshoaction" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
grep "cboe.edgaequities.multicastdepthofbook.pitch.v2.41.29.padding" Cboe.EdgaEquities.MulticastDepthOfBook.Pitch.v2.41.29.TradingStatusMessage.json
