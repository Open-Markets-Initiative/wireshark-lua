set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v6.0/ExecutionSummary.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v6_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json 2> Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json.stderr \
  || { echo "--- tshark FAILED (ExecutionSummary) ---"; cat Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v6.0.securityid" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.aggressortime" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.requesttime" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.execid" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.lastqty" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.aggressorside" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.tradecondition" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.pad2" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.lastpx" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.restinghiddenqty" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v6.0.restingcxlqty" Eurex.T7.Eobi.Fbe.v6.0.ExecutionSummary.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v6.0/FullOrderExecution.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v6_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json 2> Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json.stderr \
  || { echo "--- tshark FAILED (FullOrderExecution) ---"; cat Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v6.0.side" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.ordtype" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.algorithmictradeindicator" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.pad1" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.price" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.trdregtstimepriority" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.securityid" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.trdmatchid" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.lastqty" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.lastpx" Eurex.T7.Eobi.Fbe.v6.0.FullOrderExecution.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v6.0/Heartbeat.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v6_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v6.0.Heartbeat.json 2> Eurex.T7.Eobi.Fbe.v6.0.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Eurex.T7.Eobi.Fbe.v6.0.Heartbeat.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v6.0.lastmsgseqnumprocessed" Eurex.T7.Eobi.Fbe.v6.0.Heartbeat.json
grep "eurex.t7.eobi.fbe.v6.0.pad4" Eurex.T7.Eobi.Fbe.v6.0.Heartbeat.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v6.0/InstrumentSummary.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v6_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json 2> Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json.stderr \
  || { echo "--- tshark FAILED (InstrumentSummary) ---"; cat Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v6.0.securityid" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v6.0.lastupdatetime" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v6.0.trdregtsexecutiontime" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v6.0.totnoorders" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v6.0.securitystatus" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v6.0.securitytradingstatus" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v6.0.marketcondition" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v6.0.fastmarketindicator" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v6.0.securitytradingevent" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v6.0.nomdentries" Eurex.T7.Eobi.Fbe.v6.0.InstrumentSummary.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v6.0/OrderAdd.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v6_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v6.0.OrderAdd.json 2> Eurex.T7.Eobi.Fbe.v6.0.OrderAdd.json.stderr \
  || { echo "--- tshark FAILED (OrderAdd) ---"; cat Eurex.T7.Eobi.Fbe.v6.0.OrderAdd.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v6.0.trdregtstimein" Eurex.T7.Eobi.Fbe.v6.0.OrderAdd.json
grep "eurex.t7.eobi.fbe.v6.0.securityid" Eurex.T7.Eobi.Fbe.v6.0.OrderAdd.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v6.0/OrderModify.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v6_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v6.0.OrderModify.json 2> Eurex.T7.Eobi.Fbe.v6.0.OrderModify.json.stderr \
  || { echo "--- tshark FAILED (OrderModify) ---"; cat Eurex.T7.Eobi.Fbe.v6.0.OrderModify.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v6.0.trdregtstimein" Eurex.T7.Eobi.Fbe.v6.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v6.0.trdregtsprevtimepriority" Eurex.T7.Eobi.Fbe.v6.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v6.0.prevprice" Eurex.T7.Eobi.Fbe.v6.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v6.0.prevdisplayqty" Eurex.T7.Eobi.Fbe.v6.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v6.0.pad4" Eurex.T7.Eobi.Fbe.v6.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v6.0.securityid" Eurex.T7.Eobi.Fbe.v6.0.OrderModify.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v6.0/PartialOrderExecution.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v6_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json 2> Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json.stderr \
  || { echo "--- tshark FAILED (PartialOrderExecution) ---"; cat Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v6.0.side" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.ordtype" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.algorithmictradeindicator" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.pad1" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.price" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.trdregtstimepriority" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.securityid" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.trdmatchid" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.lastqty" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v6.0.lastpx" Eurex.T7.Eobi.Fbe.v6.0.PartialOrderExecution.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v6.0/ProductSummary.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v6_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json 2> Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json.stderr \
  || { echo "--- tshark FAILED (ProductSummary) ---"; cat Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v6.0.lastmsgseqnumprocessed" Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v6.0.tradingsessionid" Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v6.0.tradingsessionsubid" Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v6.0.tradsesstatus" Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v6.0.marketcondition" Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v6.0.fastmarketindicator" Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v6.0.pad7" Eurex.T7.Eobi.Fbe.v6.0.ProductSummary.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v6.0/SnapshotOrder.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v6_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v6.0.SnapshotOrder.json 2> Eurex.T7.Eobi.Fbe.v6.0.SnapshotOrder.json.stderr \
  || { echo "--- tshark FAILED (SnapshotOrder) ---"; cat Eurex.T7.Eobi.Fbe.v6.0.SnapshotOrder.json.stderr; exit 1; }

