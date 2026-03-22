set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderDeleteMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.marketdataapi.sbe.v1.2.lua"]' \
  > Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json

grep "coinbase.derivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderPutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.marketdataapi.sbe.v1.2.lua"]' \
  > Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json

grep "coinbase.derivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.price" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.quantity" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderPutMessage.json
tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/OrderSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.marketdataapi.sbe.v1.2.lua"]' \
  > Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json

grep "coinbase.derivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.quantity" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.transacttime" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.price" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderSnapshotMessage.json
tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfOutrightInstrumentSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.marketdataapi.sbe.v1.2.lua"]' \
  > Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json

grep "coinbase.derivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.lastinstrseqnum" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.symbol" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.productcode" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.description" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.priceincrement" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.cficode" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.currency" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.productid" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.contractsize" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.ordercount" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.firsttradingsessiondate" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.lasttradingsessiondate" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.tradingsessiondate" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.productgroup" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.tradingstatus" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfOutrightInstrumentSnapshotMessage.json
tshark \
  -r "omi-data-packets/Coinbase/MarketDataApi.v1.2/StartOfSpreadInstrumentSnapshotMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.marketdataapi.sbe.v1.2.lua"]' \
  > Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json

grep "coinbase.derivatives.marketdataapi.sbe.v1.2.snapshotseqnum" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.lastinstrseqnum" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.symbol" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.productcode" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.description" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.priceincrement" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.cficode" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.currency" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.productid" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.contractsize" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.ordercount" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.firsttradingsessiondate" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.lasttradingsessiondate" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.tradingsessiondate" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.productgroup" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.tradingstatus" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.leg1instrumentid" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.leg2instrumentid" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
grep "coinbase.derivatives.marketdataapi.sbe.v1.2.spreadbuyconvention" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.StartOfSpreadInstrumentSnapshotMessage.json
