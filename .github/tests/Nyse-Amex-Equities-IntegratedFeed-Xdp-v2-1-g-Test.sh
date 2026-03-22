set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Amex_Equities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json

grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.orderid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.price" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.volume" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.side" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.firmid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.numparitysplits" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Amex_Equities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json

grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.referenceprice" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.pairedqty" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.totalimbalanceqty" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.marketimbalanceqty" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.auctiontime" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.auctiontype" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.imbalanceside" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.continuousbookclearingprice" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.closingonlyclearingprice" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.ssrfilingprice" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.indicativematchprice" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.uppercollar" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.lowercollar" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.auctionstatus" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.freezestatus" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.numextensions" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Amex_Equities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json

grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.orderid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.tradeid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.price" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.volume" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.printableflag" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.numparitysplits" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.dbexecid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Amex_Equities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json

grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.orderid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.neworderid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.price" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.volume" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.prevpriceparitysplits" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.newpriceparitysplits" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Amex_Equities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json

grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.securitystatus" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.haltcondition" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.reserved4" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.price1" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.price2" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.ssrtriggeringexchangeid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.ssrtriggeringvolume" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.time" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.ssrstate" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.marketstate" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.sessionstate" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Amex_Equities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json

grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.id" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Amex_Equities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json

grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.symbol" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.reserved1" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.marketid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.systemid" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.exchangecode" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.pricescalecode" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.securitytype" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.lotsize" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.prevcloseprice" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.prevclosevolume" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.priceresolution" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.roundlot" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.mpv" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.unitoftrade" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amex.equities.integratedfeed.xdp.v2.1.g.reserved2" Nyse.Amex.Equities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
