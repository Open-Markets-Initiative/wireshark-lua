set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AddOrderMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderbookpriority" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.price" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AnomalousOrderThresholdPublishMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.aotprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.aotupperprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.aotlowerprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.etrprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.etrupperprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.etrlowerprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AuctionOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantityremaining" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradetype" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.executedquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.oppositeorderid" Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantityremaining" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradetype" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.executedquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeprice" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.oppositetradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.oppositeside" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.oppositeorderid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.combinationtradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.symbolname" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.longname" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.cficode" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.pricemethod" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.pricedisplaydecimals" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.pricefractionaldenominator" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.priceminimumtick" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.legs" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationTradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradetype" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.executedquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeprice" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.buyertradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.buyerside" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.buyerorderid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.buyercombinationtradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.buyerparticipantid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sellertradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sellerside" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sellerorderid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sellercombinationtradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sellerparticipantid" Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/EquilibriumPriceMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.equilibriumprice" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.matchedquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.bidquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.askquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/FutureSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.symbolname" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.longname" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.isin" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.exchange" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.instrument" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.cficode" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.expiryyear" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.expirymonth" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.pricedisplaydecimals" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.pricefractionaldenominator" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.priceminimumtick" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lasttradingdate" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.priordaysettlement" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.currency" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lotsizeorfacevalue" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.maturityvalue" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.couponrate" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.paymentsperyear" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.blocklotsize" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.expirydate" Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderAddedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderbookpriority" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.price" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderReplacedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderbookpriority" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.price" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OpenHighLowLastTradeAdjustmentMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.openingtrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.highesttrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lowesttrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lasttrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lastvolume" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.totaltradedvolume" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OptionsSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.symbolname" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.longname" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.isin" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.exchange" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.instrument" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.cficode" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.expiryyear" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.expirymonth" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.optiontype" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.strike" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.underlyingtradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.pricedisplaydecimals" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.pricefractionaldenominator" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.priceminimumtick" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.strikepricedecimalposition" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.strikepricefractionaldenominator" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.strikepriceminimumtick" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lasttradingdate" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.priordaysettlement" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.volatility" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.currency" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lotsizeorfacevalue" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.maturityvalue" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.couponrate" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.paymentsperyear" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.blocklotsize" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.expirydate" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.basisofquotation" Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderBookStateMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sessionstate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantityremaining" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradetype" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.executedquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeprice" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.combinationtradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.counterpartyid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderVolumeCancelledMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TextMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sourceid" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.text" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradetype" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.executedquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeprice" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.combinationtradeid" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.participantidbuyer" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.participantidseller" Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json
