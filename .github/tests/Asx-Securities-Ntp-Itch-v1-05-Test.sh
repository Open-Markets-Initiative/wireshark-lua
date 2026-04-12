set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AddOrderMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.AddOrderMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.securities.ntp.itch.v1.05.side" Asx.Securities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.securities.ntp.itch.v1.05.orderid" Asx.Securities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.securities.ntp.itch.v1.05.orderbookpriority" Asx.Securities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.securities.ntp.itch.v1.05.quantity" Asx.Securities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.securities.ntp.itch.v1.05.price" Asx.Securities.Ntp.Itch.v1.05.AddOrderMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AnomalousOrderThresholdPublishMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.securities.ntp.itch.v1.05.aotprice" Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.securities.ntp.itch.v1.05.aotupperprice" Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.securities.ntp.itch.v1.05.aotlowerprice" Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.securities.ntp.itch.v1.05.etrprice" Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.securities.ntp.itch.v1.05.etrupperprice" Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.securities.ntp.itch.v1.05.etrlowerprice" Asx.Securities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AuctionOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.side" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.orderid" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.quantityremaining" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradetype" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeid" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.executedquantity" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeprice" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.oppositeorderid" Asx.Securities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.side" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.orderid" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.quantityremaining" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradetype" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeid" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.executedquantity" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeprice" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.oppositetradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.oppositeside" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.oppositeorderid" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.combinationtradeid" Asx.Securities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.symbolname" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.longname" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.cficode" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.pricemethod" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.pricedisplaydecimals" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.pricefractionaldenominator" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.priceminimumtick" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.legs" Asx.Securities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationTradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradetype" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.executedquantity" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeprice" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.buyertradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.buyerside" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.buyerorderid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.buyercombinationtradeid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.buyerparticipantid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.sellertradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.sellerside" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.sellerorderid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.sellercombinationtradeid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.sellerparticipantid" Asx.Securities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/EquilibriumPriceMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.securities.ntp.itch.v1.05.equilibriumprice" Asx.Securities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.securities.ntp.itch.v1.05.matchedquantity" Asx.Securities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.securities.ntp.itch.v1.05.bidquantity" Asx.Securities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.securities.ntp.itch.v1.05.askquantity" Asx.Securities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/FutureSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.symbolname" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.longname" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.isin" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.exchange" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.instrument" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.cficode" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.expiryyear" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.expirymonth" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.pricedisplaydecimals" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.pricefractionaldenominator" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.priceminimumtick" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.lasttradingdate" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.priordaysettlement" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.currency" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.lotsizeorfacevalue" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.maturityvalue" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.couponrate" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.paymentsperyear" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.blocklotsize" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.expirydate" Asx.Securities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderAddedMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.securities.ntp.itch.v1.05.side" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.securities.ntp.itch.v1.05.orderid" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.securities.ntp.itch.v1.05.orderbookpriority" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.securities.ntp.itch.v1.05.quantity" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.securities.ntp.itch.v1.05.price" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.securities.ntp.itch.v1.05.side" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.securities.ntp.itch.v1.05.orderid" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderReplacedMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.securities.ntp.itch.v1.05.side" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.securities.ntp.itch.v1.05.orderid" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.securities.ntp.itch.v1.05.orderbookpriority" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.securities.ntp.itch.v1.05.quantity" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.securities.ntp.itch.v1.05.price" Asx.Securities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OpenHighLowLastTradeAdjustmentMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.securities.ntp.itch.v1.05.openingtrade" Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.securities.ntp.itch.v1.05.highesttrade" Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.securities.ntp.itch.v1.05.lowesttrade" Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.securities.ntp.itch.v1.05.lasttrade" Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.securities.ntp.itch.v1.05.lastvolume" Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.securities.ntp.itch.v1.05.totaltradedvolume" Asx.Securities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OptionsSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.symbolname" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.longname" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.isin" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.exchange" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.instrument" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.cficode" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.expiryyear" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.expirymonth" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.optiontype" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.strike" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.underlyingtradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.pricedisplaydecimals" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.pricefractionaldenominator" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.priceminimumtick" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.strikepricedecimalposition" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.strikepricefractionaldenominator" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.strikepriceminimumtick" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.lasttradingdate" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.priordaysettlement" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.volatility" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.currency" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.lotsizeorfacevalue" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.maturityvalue" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.couponrate" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.paymentsperyear" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.blocklotsize" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.expirydate" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.securities.ntp.itch.v1.05.basisofquotation" Asx.Securities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderBookStateMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.OrderBookStateMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.securities.ntp.itch.v1.05.sessionstate" Asx.Securities.Ntp.Itch.v1.05.OrderBookStateMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.OrderDeletedMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.securities.ntp.itch.v1.05.side" Asx.Securities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.securities.ntp.itch.v1.05.orderid" Asx.Securities.Ntp.Itch.v1.05.OrderDeletedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.side" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.orderid" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.quantityremaining" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradetype" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeid" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.executedquantity" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeprice" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.combinationtradeid" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.counterpartyid" Asx.Securities.Ntp.Itch.v1.05.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderVolumeCancelledMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.securities.ntp.itch.v1.05.side" Asx.Securities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.securities.ntp.itch.v1.05.orderid" Asx.Securities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.securities.ntp.itch.v1.05.quantity" Asx.Securities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TextMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.TextMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.securities.ntp.itch.v1.05.sourceid" Asx.Securities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.securities.ntp.itch.v1.05.text" Asx.Securities.Ntp.Itch.v1.05.TextMessage.json
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_Securities_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json

grep "asx.securities.ntp.itch.v1.05.nanoseconds" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradedate" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeableinstrumentid" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradetype" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeid" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.executedquantity" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.tradeprice" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.combinationtradeid" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.participantidbuyer" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.securities.ntp.itch.v1.05.participantidseller" Asx.Securities.Ntp.Itch.v1.05.TradeExecutedMessage.json
