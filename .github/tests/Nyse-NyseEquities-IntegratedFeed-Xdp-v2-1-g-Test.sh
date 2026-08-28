set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.orderid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.volume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.side" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.firmid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.numparitysplits" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.crossid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.volume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.crosstype" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.DeleteOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.DeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.orderid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.numparitysplits" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.referenceprice" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.pairedqty" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.totalimbalanceqty" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.marketimbalanceqty" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.auctiontime" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.auctiontype" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.imbalanceside" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.continuousbookclearingprice" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.closingonlyclearingprice" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.ssrfilingprice" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.indicativematchprice" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.uppercollar" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.lowercollar" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.auctionstatus" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.freezestatus" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.numextensions" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/ModifyOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.orderid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.volume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.positionchange" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.prevpriceparitysplits" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.newpriceparitysplits" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/NonDisplayedTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonDisplayedTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.tradeid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.volume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.printableflag" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.dbexecid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.NonDisplayedTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.orderid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.tradeid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.volume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.printableflag" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.numparitysplits" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.dbexecid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.orderid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.neworderid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.volume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.prevpriceparitysplits" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.newpriceparitysplits" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.securitystatus" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.haltcondition" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.reserved4" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price1" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.price2" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.ssrtriggeringexchangeid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.ssrtriggeringvolume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.time" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.ssrstate" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.marketstate" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sessionstate" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SequenceNumberResetMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.productid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.channelid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.id" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.1.g/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.symbol" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.reserved1" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.marketid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.systemid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.exchangecode" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.pricescalecode" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.securitytype" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.lotsize" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.prevcloseprice" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.prevclosevolume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.priceresolution" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.roundlot" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.mpv" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.unitoftrade" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.1.g.reserved2" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
