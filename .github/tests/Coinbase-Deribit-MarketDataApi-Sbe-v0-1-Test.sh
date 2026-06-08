set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v0.1/AskDeleteMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskDeleteMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (AskDeleteMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskDeleteMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v0.1.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskDeleteMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v0.1/AskPutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskPutMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskPutMessage.json.stderr \
  || { echo "--- tshark FAILED (AskPutMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskPutMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v0.1.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.quantitymantissa" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.price" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskPutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v0.1/AskQtyReducedMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskQtyReducedMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskQtyReducedMessage.json.stderr \
  || { echo "--- tshark FAILED (AskQtyReducedMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskQtyReducedMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v0.1.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskQtyReducedMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskQtyReducedMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.quantitymantissa" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.AskQtyReducedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v0.1/BidDeleteMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidDeleteMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (BidDeleteMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidDeleteMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v0.1.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidDeleteMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v0.1/BidPutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidPutMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidPutMessage.json.stderr \
  || { echo "--- tshark FAILED (BidPutMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidPutMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v0.1.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.quantitymantissa" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.price" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidPutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v0.1/BidQtyReducedMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidQtyReducedMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidQtyReducedMessage.json.stderr \
  || { echo "--- tshark FAILED (BidQtyReducedMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidQtyReducedMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v0.1.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidQtyReducedMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidQtyReducedMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.quantitymantissa" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.BidQtyReducedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v0.1/EndOfCycleMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v0.1.EndOfCycleMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v0.1.EndOfCycleMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfCycleMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v0.1.EndOfCycleMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v0.1.activeinstrumentcount" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.EndOfCycleMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v0.1/InstrumentMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v0.1.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.symbol" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.name" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.basecurrency" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.quotecurrency" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.baseincrement" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.ticksize" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.strikeprice" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.largeticksize0" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.largetickthreshold0" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.largeticksize1" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.largetickthreshold1" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.creationtime" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.expirytime" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.flags" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.type" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.status" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.quantityexponent" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.InstrumentMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v0.1/SnapshotTrailerMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v0.1.SnapshotTrailerMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v0.1.SnapshotTrailerMessage.json.stderr \
  || { echo "--- tshark FAILED (SnapshotTrailerMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v0.1.SnapshotTrailerMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v0.1.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.SnapshotTrailerMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.timestamp" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.SnapshotTrailerMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v0.1.incrementseqnum" Coinbase.Deribit.MarketDataApi.Sbe.v0.1.SnapshotTrailerMessage.json
