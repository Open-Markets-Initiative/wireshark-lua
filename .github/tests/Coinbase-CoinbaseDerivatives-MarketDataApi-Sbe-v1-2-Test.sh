set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderDeleteMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderDeleteMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  --enable-heuristic "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua_udp" \
  -d "udp.port==${PORT},coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json.stderr
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeleteMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json.stderr; fi

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
PORT=$(tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderPutMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderPutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  --enable-heuristic "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua_udp" \
  -d "udp.port==${PORT},coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json.stderr
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json.stderr ]; then echo "--- tshark stderr (OrderPutMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json.stderr; fi

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.price" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.quantity" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
PORT=$(tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderSnapshotMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  --enable-heuristic "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua_udp" \
  -d "udp.port==${PORT},coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json.stderr
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json.stderr ]; then echo "--- tshark stderr (OrderSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json.stderr; fi

grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.quantity" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.transacttime" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.price" Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
PORT=$(tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfOutrightInstrumentSnapshotMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfOutrightInstrumentSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  --enable-heuristic "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua_udp" \
  -d "udp.port==${PORT},coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json.stderr
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json.stderr ]; then echo "--- tshark stderr (StartOfOutrightInstrumentSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfSpreadInstrumentSnapshotMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfSpreadInstrumentSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  --enable-heuristic "coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua_udp" \
  -d "udp.port==${PORT},coinbase.coinbasederivatives.marketdataapi.sbe.v1.2.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json 2> Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json.stderr
if [ -s Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json.stderr ]; then echo "--- tshark stderr (StartOfSpreadInstrumentSnapshotMessage) ---"; cat Coinbase.CoinbaseDerivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json.stderr; fi

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
