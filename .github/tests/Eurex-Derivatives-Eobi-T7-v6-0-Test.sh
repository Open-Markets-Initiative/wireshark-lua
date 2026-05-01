set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ExecutionSummary.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ExecutionSummary.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v6.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json 2> Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json.stderr \
  || { echo "--- tshark FAILED (ExecutionSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json.stderr ]; then echo "--- tshark stderr (ExecutionSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v6.0.securityid" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.aggressortime" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.requesttime" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.execid" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.lastqty" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.aggressorside" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.tradecondition" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.pad2" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.lastpx" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.restinghiddenqty" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.restingcxlqty" Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/FullOrderExecution.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/FullOrderExecution.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v6.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json 2> Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json.stderr \
  || { echo "--- tshark FAILED (FullOrderExecution) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json.stderr ]; then echo "--- tshark stderr (FullOrderExecution) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v6.0.side" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.ordtype" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.algorithmictradeindicator" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.pad5" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.price" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.trdregtstimepriority" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.securityid" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.trdmatchid" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.lastqty" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.lastpx" Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/Heartbeat.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/Heartbeat.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v6.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json 2> Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json.stderr ]; then echo "--- tshark stderr (Heartbeat) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v6.0.lastmsgseqnumprocessed" Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json
grep "eurex.derivatives.eobi.t7.v6.0.pad4" Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/InstrumentSummary.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/InstrumentSummary.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v6.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json 2> Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json.stderr \
  || { echo "--- tshark FAILED (InstrumentSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json.stderr ]; then echo "--- tshark stderr (InstrumentSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v6.0.securityid" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.lastupdatetime" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.trdregtsexecutiontime" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.totnoorders" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.securitystatus" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.securitytradingstatus" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.marketcondition" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.fastmarketindicator" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.securitytradingevent" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.nomdentries" Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderAdd.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderAdd.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v6.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json 2> Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json.stderr \
  || { echo "--- tshark FAILED (OrderAdd) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json.stderr ]; then echo "--- tshark stderr (OrderAdd) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v6.0.trdregtstimein" Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json
grep "eurex.derivatives.eobi.t7.v6.0.securityid" Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderModify.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderModify.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v6.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json 2> Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json.stderr \
  || { echo "--- tshark FAILED (OrderModify) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json.stderr ]; then echo "--- tshark stderr (OrderModify) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v6.0.trdregtstimein" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.trdregtsprevtimepriority" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.prevprice" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.prevdisplayqty" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.pad4" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.securityid" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/PartialOrderExecution.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/PartialOrderExecution.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v6.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json 2> Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json.stderr \
  || { echo "--- tshark FAILED (PartialOrderExecution) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json.stderr ]; then echo "--- tshark stderr (PartialOrderExecution) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v6.0.side" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.ordtype" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.algorithmictradeindicator" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.pad5" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.price" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.trdregtstimepriority" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.securityid" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.trdmatchid" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.lastqty" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
grep "eurex.derivatives.eobi.t7.v6.0.lastpx" Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ProductSummary.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ProductSummary.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v6.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json 2> Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json.stderr \
  || { echo "--- tshark FAILED (ProductSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json.stderr ]; then echo "--- tshark stderr (ProductSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v6.0.lastmsgseqnumprocessed" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.tradingsessionid" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.tradingsessionsubid" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.tradsesstatus" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.marketcondition" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.fastmarketindicator" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.pad7" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/SnapshotOrder.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/SnapshotOrder.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v6.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json 2> Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json.stderr \
  || { echo "--- tshark FAILED (SnapshotOrder) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json.stderr ]; then echo "--- tshark stderr (SnapshotOrder) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json.stderr; fi

