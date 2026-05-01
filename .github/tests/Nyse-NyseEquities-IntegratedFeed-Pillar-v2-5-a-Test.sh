set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json.stderr; fi

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.side" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.firmid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json.stderr ]; then echo "--- tshark stderr (CrossTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json.stderr; fi

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.crossid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.crosstype" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json.stderr ]; then echo "--- tshark stderr (DeleteOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json.stderr; fi

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json.stderr ]; then echo "--- tshark stderr (ImbalanceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json.stderr; fi

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.referenceprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.pairedqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.totalimbalanceqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.marketimbalanceqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctiontime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctiontype" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.imbalanceside" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.continuousbookclearingprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctioninterestclearingprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrfilingprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.indicativematchprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.uppercollar" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.lowercollar" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctionstatus" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.freezestatus" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.numextensions" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.unpairedqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.unpairedside" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.significantimbalance" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutionMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json.stderr; fi

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradeid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.printableflag" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond2" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond3" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond4" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json.stderr ]; then echo "--- tshark stderr (ReplaceOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json.stderr; fi

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.neworderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.prevpriceparitysplits" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.newpriceparitysplits" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json.stderr ]; then echo "--- tshark stderr (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json.stderr; fi

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.securitystatus" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.haltcondition" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved4" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price2" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrtriggeringexchangeid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrtriggeringvolume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.time" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrstate" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.marketstate" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sessionstate" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json.stderr ]; then echo "--- tshark stderr (SourceTimeReferenceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json.stderr; fi

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.id" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/StockSummaryMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (StockSummaryMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json.stderr ]; then echo "--- tshark stderr (StockSummaryMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json.stderr; fi

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.highprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.lowprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.open" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.close" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.totalvolume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
