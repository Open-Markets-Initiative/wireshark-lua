set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.price" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.volume" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.side" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.firmid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/AddOrderRefreshMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderRefreshMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.price" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.volume" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.side" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.firmid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.crossid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.price" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.volume" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.crosstype" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.referenceprice" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.pairedqty" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.totalimbalanceqty" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.marketimbalanceqty" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.auctiontime" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.auctiontype" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.imbalanceside" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.continuousbookclearingprice" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.auctioninterestclearingprice" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.ssrfilingprice" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.indicativematchprice" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.uppercollar" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.lowercollar" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.auctionstatus" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.freezestatus" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.numextensions" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.unpairedqty" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.unpairedside" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/ModifyOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.price" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.volume" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.positionchange" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.side" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/NonDisplayedTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonDisplayedTradeMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.price" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.volume" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.price" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.volume" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.neworderid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.price" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.volume" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.side" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.securitystatus" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.haltcondition" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.reserved4" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.price1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.price2" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.ssrtriggeringvolume" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.time" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.ssrstate" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.marketstate" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sessionstate" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.id" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeed.Pillar.v2.5/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.symbol" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.marketid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.systemid" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.exchangecode" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.pricescalecode" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.securitytype" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.lotsize" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.prevcloseprice" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.prevclosevolume" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.priceresolution" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.roundlot" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.mpv" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.unitoftrade" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.latecloseeligible" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.pillar.v2.5.g.etheligible" Nyse.AmexEquities.IntegratedFeed.Pillar.v2.5.g.SymbolIndexMappingMessage.json
