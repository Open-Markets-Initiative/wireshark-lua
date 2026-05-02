set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AddOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AddOrderMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrderMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderbookpriority" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.price" Asx.AsxSecurities.Ntp.Itch.v1.05.AddOrderMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AnomalousOrderThresholdPublishMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AnomalousOrderThresholdPublishMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json.stderr \
  || { echo "--- tshark FAILED (AnomalousOrderThresholdPublishMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json.stderr ]; then echo "--- tshark stderr (AnomalousOrderThresholdPublishMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json.stderr; fi
echo "--- tshark diagnostic (AnomalousOrderThresholdPublishMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.aotprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.aotupperprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.aotlowerprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.etrprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.etrupperprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.etrlowerprice" Asx.AsxSecurities.Ntp.Itch.v1.05.AnomalousOrderThresholdPublishMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AuctionOrderExecutedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/AuctionOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionOrderExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (AuctionOrderExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (AuctionOrderExecutedMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.AuctionOrderExecutedMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationOrderExecutedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationOrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (CombinationOrderExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (CombinationOrderExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (CombinationOrderExecutedMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationOrderExecutedMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationSymbolDirectoryMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (CombinationSymbolDirectoryMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (CombinationSymbolDirectoryMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json.stderr; fi
echo "--- tshark diagnostic (CombinationSymbolDirectoryMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationSymbolDirectoryMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationTradeExecutedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/CombinationTradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (CombinationTradeExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json.stderr ]; then echo "--- tshark stderr (CombinationTradeExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (CombinationTradeExecutedMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.CombinationTradeExecutedMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/EquilibriumPriceMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/EquilibriumPriceMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (EquilibriumPriceMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json.stderr ]; then echo "--- tshark stderr (EquilibriumPriceMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json.stderr; fi
echo "--- tshark diagnostic (EquilibriumPriceMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.equilibriumprice" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.matchedquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.bidquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.askquantity" Asx.AsxSecurities.Ntp.Itch.v1.05.EquilibriumPriceMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/FutureSymbolDirectoryMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/FutureSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (FutureSymbolDirectoryMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (FutureSymbolDirectoryMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json.stderr; fi
echo "--- tshark diagnostic (FutureSymbolDirectoryMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.FutureSymbolDirectoryMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderAddedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderAddedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json.stderr \
  || { echo "--- tshark FAILED (ImpliedOrderAddedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json.stderr ]; then echo "--- tshark stderr (ImpliedOrderAddedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json.stderr; fi
echo "--- tshark diagnostic (ImpliedOrderAddedMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderbookpriority" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.price" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderAddedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderDeletedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (ImpliedOrderDeletedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (ImpliedOrderDeletedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json.stderr; fi
echo "--- tshark diagnostic (ImpliedOrderDeletedMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderDeletedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderReplacedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/ImpliedOrderReplacedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (ImpliedOrderReplacedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json.stderr ]; then echo "--- tshark stderr (ImpliedOrderReplacedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json.stderr; fi
echo "--- tshark diagnostic (ImpliedOrderReplacedMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderbookpriority" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.price" Asx.AsxSecurities.Ntp.Itch.v1.05.ImpliedOrderReplacedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OpenHighLowLastTradeAdjustmentMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OpenHighLowLastTradeAdjustmentMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json.stderr \
  || { echo "--- tshark FAILED (OpenHighLowLastTradeAdjustmentMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json.stderr ]; then echo "--- tshark stderr (OpenHighLowLastTradeAdjustmentMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json.stderr; fi
echo "--- tshark diagnostic (OpenHighLowLastTradeAdjustmentMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.openingtrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.highesttrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lowesttrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lasttrade" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.lastvolume" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.totaltradedvolume" Asx.AsxSecurities.Ntp.Itch.v1.05.OpenHighLowLastTradeAdjustmentMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OptionsSymbolDirectoryMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OptionsSymbolDirectoryMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsSymbolDirectoryMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (OptionsSymbolDirectoryMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json.stderr; fi
echo "--- tshark diagnostic (OptionsSymbolDirectoryMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.OptionsSymbolDirectoryMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderBookStateMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderBookStateMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderBookStateMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json.stderr ]; then echo "--- tshark stderr (OrderBookStateMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderBookStateMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sessionstate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderBookStateMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderDeletedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderDeletedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeletedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderDeletedMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderDeletedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderExecutedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutedMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderExecutedMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderVolumeCancelledMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/OrderVolumeCancelledMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderVolumeCancelledMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json.stderr ]; then echo "--- tshark stderr (OrderVolumeCancelledMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderVolumeCancelledMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradeableinstrumentid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.side" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.orderid" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.quantity" Asx.AsxSecurities.Ntp.Itch.v1.05.OrderVolumeCancelledMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TextMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TextMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json.stderr \
  || { echo "--- tshark FAILED (TextMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json.stderr ]; then echo "--- tshark stderr (TextMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json.stderr; fi
echo "--- tshark diagnostic (TextMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json | sort -u | head -n 40

grep "asx.asxsecurities.ntp.itch.v1.05.nanoseconds" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.tradedate" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.sourceid" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
grep "asx.asxsecurities.ntp.itch.v1.05.text" Asx.AsxSecurities.Ntp.Itch.v1.05.TextMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TradeExecutedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Asx/Ntp.Itch.v1.05/TradeExecutedMessage.pcap" \
  -X "lua_script:Asx/Asx_AsxSecurities_Ntp_Itch_v1_05_Dissector.lua" \
  -d "udp.port==$port,asx.asxsecurities.ntp.itch.v1.05.lua" \
  -T json \
  > Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json 2> Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json.stderr; exit 1; }
if [ -s Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json.stderr ]; then echo "--- tshark stderr (TradeExecutedMessage) ---"; cat Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (TradeExecutedMessage) ---"
echo "json bytes: $(wc -c < Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Asx.AsxSecurities.Ntp.Itch.v1.05.TradeExecutedMessage.json | sort -u | head -n 40

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
