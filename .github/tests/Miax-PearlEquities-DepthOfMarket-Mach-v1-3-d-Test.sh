set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.DepthOfMarket.Mach.v1.3/AddOrderMessage.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_DepthOfMarket_Mach_v1_3_d_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json 2> Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json.stderr; exit 1; }

grep "miax.pearlequities.depthofmarket.mach.v1.3.d.nanoseconds" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.orderid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.orderside" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.price" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.size" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.attributableid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.DepthOfMarket.Mach.v1.3/DeleteOrderMessage.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_DepthOfMarket_Mach_v1_3_d_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.DeleteOrderMessage.json 2> Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.DeleteOrderMessage.json.stderr; exit 1; }

grep "miax.pearlequities.depthofmarket.mach.v1.3.d.nanoseconds" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.DeleteOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.DeleteOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.orderid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.DepthOfMarket.Mach.v1.3/ModifyOrderMessage.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_DepthOfMarket_Mach_v1_3_d_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.ModifyOrderMessage.json 2> Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.ModifyOrderMessage.json.stderr; exit 1; }

grep "miax.pearlequities.depthofmarket.mach.v1.3.d.nanoseconds" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.ModifyOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.ModifyOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.orderid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.ModifyOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.price" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.ModifyOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.size" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.ModifyOrderMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.modifyorderflags" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.DepthOfMarket.Mach.v1.3/OrderExecutionMessage.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_DepthOfMarket_Mach_v1_3_d_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json 2> Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json.stderr; exit 1; }

grep "miax.pearlequities.depthofmarket.mach.v1.3.d.nanoseconds" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.orderid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.tradeid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.price" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.size" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.orderexecutionflags" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.DepthOfMarket.Mach.v1.3/SecurityTradingStatusNotificationMessage.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_DepthOfMarket_Mach_v1_3_d_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SecurityTradingStatusNotificationMessage.json 2> Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SecurityTradingStatusNotificationMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityTradingStatusNotificationMessage) ---"; cat Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SecurityTradingStatusNotificationMessage.json.stderr; exit 1; }

grep "miax.pearlequities.depthofmarket.mach.v1.3.d.nanoseconds" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SecurityTradingStatusNotificationMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SecurityTradingStatusNotificationMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.tradingstatus" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SecurityTradingStatusNotificationMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.marketstate" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SecurityTradingStatusNotificationMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.shortsalerestriction" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SecurityTradingStatusNotificationMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.DepthOfMarket.Mach.v1.3/SystemTimeMessage.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_DepthOfMarket_Mach_v1_3_d_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SystemTimeMessage.json 2> Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SystemTimeMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemTimeMessage) ---"; cat Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SystemTimeMessage.json.stderr; exit 1; }

grep "miax.pearlequities.depthofmarket.mach.v1.3.d.seconds" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.SystemTimeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.DepthOfMarket.Mach.v1.3/TradeMessage.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_DepthOfMarket_Mach_v1_3_d_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json 2> Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json.stderr; exit 1; }

grep "miax.pearlequities.depthofmarket.mach.v1.3.d.nanoseconds" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.tradeid" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.correctionnumber" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.price" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.size" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json
grep "miax.pearlequities.depthofmarket.mach.v1.3.d.tradeflags" Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d.TradeMessage.json
