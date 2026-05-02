set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderDeleteMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderDeleteMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -d "udp.port==$port,coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeleteMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderDeleteMessage) ---"
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json | sort -u | head -n 40

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderPutMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderPutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -d "udp.port==$port,coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderPutMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json.stderr ]; then echo "--- tshark stderr (OrderPutMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderPutMessage) ---"
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json | sort -u | head -n 40

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.price" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.quantity" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderSnapshotMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -d "udp.port==$port,coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json.stderr ]; then echo "--- tshark stderr (OrderSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderSnapshotMessage) ---"
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json | sort -u | head -n 40

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.quantity" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.transacttime" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.price" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfOutrightInstrumentSnapshotMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfOutrightInstrumentSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -d "udp.port==$port,coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (StartOfOutrightInstrumentSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json.stderr ]; then echo "--- tshark stderr (StartOfOutrightInstrumentSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json.stderr; fi
echo "--- tshark diagnostic (StartOfOutrightInstrumentSnapshotMessage) ---"
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json | sort -u | head -n 40

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lastinstrseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.symbol" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productcode" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.description" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.priceincrement" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.cficode" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.currency" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.contractsize" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.ordercount" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.firsttradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lasttradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productgroup" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingstatus" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfSpreadInstrumentSnapshotMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfSpreadInstrumentSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -d "udp.port==$port,coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json.stderr \
  || { echo "--- tshark FAILED (StartOfSpreadInstrumentSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json.stderr ]; then echo "--- tshark stderr (StartOfSpreadInstrumentSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json.stderr; fi
echo "--- tshark diagnostic (StartOfSpreadInstrumentSnapshotMessage) ---"
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json | sort -u | head -n 40

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lastinstrseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.symbol" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productcode" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.description" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.priceincrement" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.cficode" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.currency" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.contractsize" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.ordercount" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.firsttradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lasttradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingsessiondate" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.productgroup" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.tradingstatus" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.leg1instrumentid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.leg2instrumentid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.spreadbuyconvention" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
