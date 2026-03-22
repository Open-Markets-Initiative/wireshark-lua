set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.integratedfeed.pillar.v2.5.a.lua"]' \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.orderid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.price" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.volume" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.side" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.firmid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.integratedfeed.pillar.v2.5.a.lua"]' \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.crossid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.price" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.volume" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.crosstype" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.integratedfeed.pillar.v2.5.a.lua"]' \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.orderid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.integratedfeed.pillar.v2.5.a.lua"]' \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.referenceprice" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.pairedqty" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.totalimbalanceqty" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.marketimbalanceqty" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.auctiontime" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.auctiontype" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.imbalanceside" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.continuousbookclearingprice" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.auctioninterestclearingprice" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.ssrfilingprice" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.indicativematchprice" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.uppercollar" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.lowercollar" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.auctionstatus" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.freezestatus" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.numextensions" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.unpairedqty" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.unpairedside" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.significantimbalance" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.integratedfeed.pillar.v2.5.a.lua"]' \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.orderid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.tradeid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.price" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.volume" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.printableflag" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.tradecond1" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.tradecond2" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.tradecond3" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.tradecond4" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.integratedfeed.pillar.v2.5.a.lua"]' \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.orderid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.neworderid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.price" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.volume" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.prevpriceparitysplits" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.newpriceparitysplits" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.integratedfeed.pillar.v2.5.a.lua"]' \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.securitystatus" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.haltcondition" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.reserved4" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.price1" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.price2" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.ssrtriggeringexchangeid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.ssrtriggeringvolume" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.time" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.ssrstate" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.marketstate" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.sessionstate" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.integratedfeed.pillar.v2.5.a.lua"]' \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.id" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/StockSummaryMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.integratedfeed.pillar.v2.5.a.lua"]' \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.highprice" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.lowprice" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.open" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.close" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.totalvolume" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
