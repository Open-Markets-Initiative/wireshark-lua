set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v1.0/AskDeleteMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskDeleteMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (AskDeleteMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskDeleteMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v1.0.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskDeleteMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v1.0/AskPutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskPutMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskPutMessage.json.stderr \
  || { echo "--- tshark FAILED (AskPutMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskPutMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v1.0.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.quantitymantissa" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.price" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskPutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v1.0/AskQtyReducedMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskQtyReducedMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskQtyReducedMessage.json.stderr \
  || { echo "--- tshark FAILED (AskQtyReducedMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskQtyReducedMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v1.0.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskQtyReducedMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskQtyReducedMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.quantitymantissa" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.AskQtyReducedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v1.0/BidDeleteMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidDeleteMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (BidDeleteMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidDeleteMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v1.0.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidDeleteMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v1.0/BidPutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidPutMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidPutMessage.json.stderr \
  || { echo "--- tshark FAILED (BidPutMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidPutMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v1.0.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.quantitymantissa" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidPutMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.price" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidPutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v1.0/BidQtyReducedMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidQtyReducedMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidQtyReducedMessage.json.stderr \
  || { echo "--- tshark FAILED (BidQtyReducedMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidQtyReducedMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v1.0.orderid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidQtyReducedMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidQtyReducedMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.quantitymantissa" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.BidQtyReducedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v1.0/EndOfCycleMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v1.0.EndOfCycleMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v1.0.EndOfCycleMessage.json.stderr \
  || { echo "--- tshark FAILED (EndOfCycleMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v1.0.EndOfCycleMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v1.0.activeinstrumentcount" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.EndOfCycleMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v1.0/InstrumentMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.symbol" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.name" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.basecurrency" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.quotecurrency" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.baseincrement" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.ticksize" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.strikeprice" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.largeticksize0" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.largetickthreshold0" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.largeticksize1" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.largetickthreshold1" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.creationtime" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.expirytime" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.flags" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.type" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.status" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.quantityexponent" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.InstrumentMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.MarketDataApi.v1.0/SnapshotTrailerMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_MarketDataApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.MarketDataApi.Sbe.v1.0.SnapshotTrailerMessage.json 2> Coinbase.Deribit.MarketDataApi.Sbe.v1.0.SnapshotTrailerMessage.json.stderr \
  || { echo "--- tshark FAILED (SnapshotTrailerMessage) ---"; cat Coinbase.Deribit.MarketDataApi.Sbe.v1.0.SnapshotTrailerMessage.json.stderr; exit 1; }

grep "coinbase.deribit.marketdataapi.sbe.v1.0.instrumentid" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.SnapshotTrailerMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.timestamp" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.SnapshotTrailerMessage.json
grep "coinbase.deribit.marketdataapi.sbe.v1.0.incrementseqnum" Coinbase.Deribit.MarketDataApi.Sbe.v1.0.SnapshotTrailerMessage.json
