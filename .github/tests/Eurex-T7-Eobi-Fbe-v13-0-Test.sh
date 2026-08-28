set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/AddComplexInstrument.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json 2> Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json.stderr \
  || { echo "--- tshark FAILED (AddComplexInstrument) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.securitydesc" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.securitysubtype" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.productcomplex" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.impliedmarketindicator" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.quantityscalingfactor" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.legratiomultiplier" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.nolegs" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.pad2" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
grep "eurex.t7.eobi.fbe.v13.0.lastfragment" Eurex.T7.Eobi.Fbe.v13.0.AddComplexInstrument.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/CrossRequest.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json 2> Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json.stderr \
  || { echo "--- tshark FAILED (CrossRequest) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json
grep "eurex.t7.eobi.fbe.v13.0.lastpx" Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json
grep "eurex.t7.eobi.fbe.v13.0.lastqty" Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json
grep "eurex.t7.eobi.fbe.v13.0.side" Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json
grep "eurex.t7.eobi.fbe.v13.0.crossrequesttype" Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json
grep "eurex.t7.eobi.fbe.v13.0.inputsource" Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json
grep "eurex.t7.eobi.fbe.v13.0.pad1" Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.CrossRequest.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/ExecutionSummary.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json 2> Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json.stderr \
  || { echo "--- tshark FAILED (ExecutionSummary) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.requesttime" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.execid" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.lastqty" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.aggressorside" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.pad1" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.tradecondition" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.tradinghhiindicator" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.pad3" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.lastpx" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.restinghiddenqty" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.restingcxlqty" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
grep "eurex.t7.eobi.fbe.v13.0.aggressortime" Eurex.T7.Eobi.Fbe.v13.0.ExecutionSummary.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/FullOrderExecution.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json 2> Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json.stderr \
  || { echo "--- tshark FAILED (FullOrderExecution) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.side" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.ordtype" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.algorithmictradeindicator" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.hhiindicator" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.trdmatchid" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.price" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.trdregtstimepriority" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.lastqty" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.lastpx" Eurex.T7.Eobi.Fbe.v13.0.FullOrderExecution.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/Heartbeat.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.Heartbeat.json 2> Eurex.T7.Eobi.Fbe.v13.0.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.Heartbeat.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.lastmsgseqnumprocessed" Eurex.T7.Eobi.Fbe.v13.0.Heartbeat.json
grep "eurex.t7.eobi.fbe.v13.0.pad4" Eurex.T7.Eobi.Fbe.v13.0.Heartbeat.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/InstrumentStateChange.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json 2> Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json.stderr \
  || { echo "--- tshark FAILED (InstrumentStateChange) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.securitystatus" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.securitytradingstatus" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.marketcondition" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.fastmarketindicator" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.securitytradingevent" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.soldoutindicator" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.pad2" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.highpx" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.lowpx" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.tessecuritystatus" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.pad7" Eurex.T7.Eobi.Fbe.v13.0.InstrumentStateChange.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/InstrumentSummary.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json 2> Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json.stderr \
  || { echo "--- tshark FAILED (InstrumentSummary) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.lastupdatetime" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.trdregtsexecutiontime" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.totnoorders" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.securitystatus" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.securitytradingstatus" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.marketcondition" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.fastmarketindicator" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.securitytradingevent" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.soldoutindicator" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.highpx" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.lowpx" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.productcomplex" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.nomdentries" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.tessecuritystatus" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
grep "eurex.t7.eobi.fbe.v13.0.pad1" Eurex.T7.Eobi.Fbe.v13.0.InstrumentSummary.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/MassInstrumentStateChange.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json 2> Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json.stderr \
  || { echo "--- tshark FAILED (MassInstrumentStateChange) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.instrumentscopeproductcomplex" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.securitymassstatus" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.securitymasstradingstatus" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.massmarketcondition" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.fastmarketindicator" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.securitymasstradingevent" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.masssoldoutindicator" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.tessecuritymassstatus" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.lastfragment" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.norelatedsym" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.pad6" Eurex.T7.Eobi.Fbe.v13.0.MassInstrumentStateChange.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/OrderAdd.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.OrderAdd.json 2> Eurex.T7.Eobi.Fbe.v13.0.OrderAdd.json.stderr \
  || { echo "--- tshark FAILED (OrderAdd) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.OrderAdd.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.requesttime" Eurex.T7.Eobi.Fbe.v13.0.OrderAdd.json
grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.OrderAdd.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/OrderDelete.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.OrderDelete.json 2> Eurex.T7.Eobi.Fbe.v13.0.OrderDelete.json.stderr \
  || { echo "--- tshark FAILED (OrderDelete) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.OrderDelete.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.requesttime" Eurex.T7.Eobi.Fbe.v13.0.OrderDelete.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.OrderDelete.json
grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.OrderDelete.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/OrderModify.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json 2> Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json.stderr \
  || { echo "--- tshark FAILED (OrderModify) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.requesttime" Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v13.0.trdregtsprevtimepriority" Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v13.0.prevprice" Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v13.0.prevdisplayqty" Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v13.0.prevpricehhiindicator" Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json
grep "eurex.t7.eobi.fbe.v13.0.pad7" Eurex.T7.Eobi.Fbe.v13.0.OrderModify.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/OrderModifySamePrio.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.OrderModifySamePrio.json 2> Eurex.T7.Eobi.Fbe.v13.0.OrderModifySamePrio.json.stderr \
  || { echo "--- tshark FAILED (OrderModifySamePrio) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.OrderModifySamePrio.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.requesttime" Eurex.T7.Eobi.Fbe.v13.0.OrderModifySamePrio.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.OrderModifySamePrio.json
grep "eurex.t7.eobi.fbe.v13.0.prevdisplayqty" Eurex.T7.Eobi.Fbe.v13.0.OrderModifySamePrio.json
grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.OrderModifySamePrio.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/PartialOrderExecution.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json 2> Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json.stderr \
  || { echo "--- tshark FAILED (PartialOrderExecution) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.side" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.ordtype" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.algorithmictradeindicator" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.hhiindicator" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.trdmatchid" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.price" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.trdregtstimepriority" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.lastqty" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
grep "eurex.t7.eobi.fbe.v13.0.lastpx" Eurex.T7.Eobi.Fbe.v13.0.PartialOrderExecution.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/ProductStateChange.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json 2> Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json.stderr \
  || { echo "--- tshark FAILED (ProductStateChange) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.tradingsessionid" Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.tradingsessionsubid" Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.tradsesstatus" Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.marketcondition" Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.fastmarketindicator" Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.testradsesstatus" Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.pad2" Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.ProductStateChange.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/ProductSummary.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json 2> Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json.stderr \
  || { echo "--- tshark FAILED (ProductSummary) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.lastmsgseqnumprocessed" Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v13.0.tradingsessionid" Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v13.0.tradingsessionsubid" Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v13.0.tradsesstatus" Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v13.0.marketcondition" Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v13.0.fastmarketindicator" Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v13.0.testradsesstatus" Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json
grep "eurex.t7.eobi.fbe.v13.0.pad6" Eurex.T7.Eobi.Fbe.v13.0.ProductSummary.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/QuoteRequest.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.QuoteRequest.json 2> Eurex.T7.Eobi.Fbe.v13.0.QuoteRequest.json.stderr \
  || { echo "--- tshark FAILED (QuoteRequest) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.QuoteRequest.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.QuoteRequest.json
grep "eurex.t7.eobi.fbe.v13.0.lastqty" Eurex.T7.Eobi.Fbe.v13.0.QuoteRequest.json
grep "eurex.t7.eobi.fbe.v13.0.side" Eurex.T7.Eobi.Fbe.v13.0.QuoteRequest.json
grep "eurex.t7.eobi.fbe.v13.0.pad7" Eurex.T7.Eobi.Fbe.v13.0.QuoteRequest.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.QuoteRequest.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/SnapshotOrder.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.SnapshotOrder.json 2> Eurex.T7.Eobi.Fbe.v13.0.SnapshotOrder.json.stderr \
  || { echo "--- tshark FAILED (SnapshotOrder) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.SnapshotOrder.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/TesTradeReport.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json 2> Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json.stderr \
  || { echo "--- tshark FAILED (TesTradeReport) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.lastqty" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.lastpx" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.trdmatchid" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.trdtype" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.tradecondition" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.multilegreportingtype" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.multilegpricemodel" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.pad6" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.nondisclosedtradevolume" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.transbkdtime" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.numberofbuysides" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.numberofsellsides" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.pad4" Eurex.T7.Eobi.Fbe.v13.0.TesTradeReport.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eobi.Fbe.v13.0/TradeReport.pcap" \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v13_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json 2> Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json.stderr \
  || { echo "--- tshark FAILED (TradeReport) ---"; cat Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v13.0.securityid" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.transacttime" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.lastqty" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.lastpx" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.trdmatchid" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.matchtype" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.matchsubtype" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.algorithmictradeindicator" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.pad1" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.tradecondition" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
grep "eurex.t7.eobi.fbe.v13.0.pad6" Eurex.T7.Eobi.Fbe.v13.0.TradeReport.json
