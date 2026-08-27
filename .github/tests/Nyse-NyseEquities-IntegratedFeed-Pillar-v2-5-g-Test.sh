set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.side" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.firmid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/AddOrderRefreshMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderRefreshMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.side" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.firmid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.crossid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.crosstype" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.referenceprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.pairedqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.totalimbalanceqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.marketimbalanceqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.auctiontime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.auctiontype" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.imbalanceside" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.continuousbookclearingprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.auctioninterestclearingprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.ssrfilingprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.indicativematchprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.uppercollar" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.lowercollar" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.auctionstatus" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.freezestatus" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.numextensions" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.unpairedqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.unpairedside" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/ModifyOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.positionchange" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.side" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/NonDisplayedTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonDisplayedTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.neworderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.side" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/RetailPriceImprovementMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailPriceImprovementMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.rpiindicator" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.RetailPriceImprovementMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.securitystatus" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.haltcondition" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.reserved4" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.price1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.price2" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.ssrtriggeringvolume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.time" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.ssrstate" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.marketstate" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sessionstate" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SequenceNumberResetMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.productid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.channelid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.id" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/SymbolClearMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolClearMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolClearMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolClearMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolClearMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolClearMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolClearMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolClearMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.nextsourceseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolClearMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.v2.5.g/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.symbol" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.marketid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.systemid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.exchangecode" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.pricescalecode" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.securitytype" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.lotsize" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.prevcloseprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.prevclosevolume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.priceresolution" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.roundlot" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.mpv" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.unitoftrade" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.latecloseeligible" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.g.etheligible" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
