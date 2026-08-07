set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AddOrderMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.side" Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderbookpriority" Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.quantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.price" Asx.AsxDerivatives.Ntp.Itch.v1.05.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AnomalousOrderThresholdPublishMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json.stderr \
  || { echo "--- tshark FAILED (AnomalousOrderThresholdPublishMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.aotprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.aotupperprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.aotlowerprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.etrprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.etrupperprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.etrlowerprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AuctionOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionOrderExecutedMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.side" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.quantityremaining" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradetype" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.executedquantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.oppositeorderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (CombinationOrderExecutedMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.side" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.quantityremaining" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradetype" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.executedquantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.oppositetradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.oppositeside" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.oppositeorderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.combinationtradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (CombinationSymbolDirectoryMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.symbolname" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.longname" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.cficode" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.pricemethod" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.pricedisplaydecimals" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.pricefractionaldenominator" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.priceminimumtick" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.legs" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationTradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (CombinationTradeExecutedMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradetype" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.executedquantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.buyertradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.buyerside" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.buyerorderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.buyercombinationtradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.buyerparticipantid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.sellertradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.sellerside" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.sellerorderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.sellercombinationtradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.sellerparticipantid" Asx.AsxDerivatives.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/EquilibriumPriceMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (EquilibriumPriceMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.equilibriumprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.matchedquantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.bidquantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.askquantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/FutureSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (FutureSymbolDirectoryMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.symbolname" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.longname" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.isin" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.exchange" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.instrument" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.cficode" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.expiryyear" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.expirymonth" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.pricedisplaydecimals" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.pricefractionaldenominator" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.priceminimumtick" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.lasttradingdate" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.priordaysettlement" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.currency" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.lotsizeorfacevalue" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.maturityvalue" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.couponrate" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.paymentsperyear" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.blocklotsize" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.expirydate" Asx.AsxDerivatives.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderAddedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json.stderr \
  || { echo "--- tshark FAILED (ImpliedOrderAddedMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.side" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderbookpriority" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.quantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.price" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (ImpliedOrderDeletedMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.side" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderReplacedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (ImpliedOrderReplacedMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.side" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderbookpriority" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.quantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.price" Asx.AsxDerivatives.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OpenHighLowLastTradeAdjustmentMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json.stderr \
  || { echo "--- tshark FAILED (OpenHighLowLastTradeAdjustmentMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.openingtrade" Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.highesttrade" Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.lowesttrade" Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.lasttrade" Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.lastvolume" Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.totaltradedvolume" Asx.AsxDerivatives.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OptionsSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsSymbolDirectoryMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.symbolname" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.longname" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.isin" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.exchange" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.instrument" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.cficode" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.expiryyear" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.expirymonth" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.optiontype" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.strike" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.underlyingtradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.pricedisplaydecimals" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.pricefractionaldenominator" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.priceminimumtick" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.strikepricedecimalposition" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.strikepricefractionaldenominator" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.strikepriceminimumtick" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.lasttradingdate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.priordaysettlement" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.volatility" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.currency" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.lotsizeorfacevalue" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.maturityvalue" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.couponrate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.paymentsperyear" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.blocklotsize" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.expirydate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.basisofquotation" Asx.AsxDerivatives.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderBookStateMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderBookStateMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderBookStateMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderBookStateMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderBookStateMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.sessionstate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderBookStateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderDeletedMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderDeletedMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.side" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderDeletedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.side" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.quantityremaining" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradetype" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.executedquantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.combinationtradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.counterpartyid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderVolumeCancelledMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderVolumeCancelledMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.side" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.orderid" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.quantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TextMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.TextMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.TextMessage.json.stderr \
  || { echo "--- tshark FAILED (TextMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.TextMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.sourceid" Asx.AsxDerivatives.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.text" Asx.AsxDerivatives.Ntp.Itch.v1.05.TextMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxDerivatives_Ntp_Itch_v1_05_Dissector.lua" \
  -T json \
  > Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json 2> Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeExecutedMessage) ---"; cat Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json.stderr; exit 1; }

grep "asx.asxderivatives.ntp.itch.v1.05.nanoseconds" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradedate" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradetype" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.executedquantity" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.tradeprice" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.combinationtradeid" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.participantidbuyer" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
grep "asx.asxderivatives.ntp.itch.v1.05.participantidseller" Asx.AsxDerivatives.Ntp.Itch.v1.05.TradeExecutedMessage.json
