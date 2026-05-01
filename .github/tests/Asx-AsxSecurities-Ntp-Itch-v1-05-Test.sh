set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AddOrderMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AddOrderMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderbookpriority" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.price" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AnomalousOrderThresholdPublishMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AnomalousOrderThresholdPublishMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json.stderr ]; then echo "--- tshark stderr (AnomalousOrderThresholdPublishMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.aotprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.aotupperprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.aotlowerprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.etrprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.etrupperprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.etrlowerprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AuctionOrderExecutedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AuctionOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (AuctionOrderExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationOrderExecutedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (CombinationOrderExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationSymbolDirectoryMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (CombinationSymbolDirectoryMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationTradeExecutedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationTradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json.stderr ]; then echo "--- tshark stderr (CombinationTradeExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/EquilibriumPriceMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/EquilibriumPriceMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json.stderr ]; then echo "--- tshark stderr (EquilibriumPriceMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.equilibriumprice" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.matchedquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.bidquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.askquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/FutureSymbolDirectoryMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/FutureSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (FutureSymbolDirectoryMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderAddedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderAddedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json.stderr ]; then echo "--- tshark stderr (ImpliedOrderAddedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderbookpriority" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.price" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderDeletedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (ImpliedOrderDeletedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderReplacedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderReplacedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json.stderr ]; then echo "--- tshark stderr (ImpliedOrderReplacedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderbookpriority" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.price" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OpenHighLowLastTradeAdjustmentMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OpenHighLowLastTradeAdjustmentMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json.stderr ]; then echo "--- tshark stderr (OpenHighLowLastTradeAdjustmentMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.openingtrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.highesttrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lowesttrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lasttrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lastvolume" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.totaltradedvolume" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OptionsSymbolDirectoryMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OptionsSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (OptionsSymbolDirectoryMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderBookStateMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderBookStateMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json.stderr ]; then echo "--- tshark stderr (OrderBookStateMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sessionstate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderDeletedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeletedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderExecutedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderVolumeCancelledMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderVolumeCancelledMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json.stderr ]; then echo "--- tshark stderr (OrderVolumeCancelledMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TextMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TextMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json.stderr ]; then echo "--- tshark stderr (TextMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json.stderr; fi

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sourceid" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.text" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
PORT=$(tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TradeExecutedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  --enable-heuristic "asx.asxsecurities.ntp.itch.v1.05.lua_udp" \
  -d "udp.port==${PORT},asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json.stderr
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json.stderr ]; then echo "--- tshark stderr (TradeExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json.stderr; fi

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
