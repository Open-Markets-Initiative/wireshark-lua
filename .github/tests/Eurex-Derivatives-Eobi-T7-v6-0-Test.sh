set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ExecutionSummary.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ExecutionSummary.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,eurex.derivatives.eobi.t7.v6.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,eurex.derivatives.eobi.t7.v6.0.lua"; else echo "could not detect transport port for ExecutionSummary"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ExecutionSummary.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json 2> Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json.stderr \
  || { echo "--- tshark FAILED (ExecutionSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json.stderr ]; then echo "--- tshark stderr (ExecutionSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json.stderr; fi
echo "--- tshark diagnostic (ExecutionSummary) ---"
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v6.0.ExecutionSummary.json | sort -u | head -n 40

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
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/FullOrderExecution.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/FullOrderExecution.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,eurex.derivatives.eobi.t7.v6.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,eurex.derivatives.eobi.t7.v6.0.lua"; else echo "could not detect transport port for FullOrderExecution"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/FullOrderExecution.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json 2> Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json.stderr \
  || { echo "--- tshark FAILED (FullOrderExecution) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json.stderr ]; then echo "--- tshark stderr (FullOrderExecution) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json.stderr; fi
echo "--- tshark diagnostic (FullOrderExecution) ---"
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v6.0.FullOrderExecution.json | sort -u | head -n 40

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
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/Heartbeat.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/Heartbeat.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,eurex.derivatives.eobi.t7.v6.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,eurex.derivatives.eobi.t7.v6.0.lua"; else echo "could not detect transport port for Heartbeat"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/Heartbeat.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json 2> Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json.stderr ]; then echo "--- tshark stderr (Heartbeat) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json.stderr; fi
echo "--- tshark diagnostic (Heartbeat) ---"
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json | sort -u | head -n 40

grep "eurex.derivatives.eobi.t7.v6.0.lastmsgseqnumprocessed" Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json
grep "eurex.derivatives.eobi.t7.v6.0.pad4" Eurex.Derivatives.Eobi.T7.v6.0.Heartbeat.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/InstrumentSummary.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/InstrumentSummary.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,eurex.derivatives.eobi.t7.v6.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,eurex.derivatives.eobi.t7.v6.0.lua"; else echo "could not detect transport port for InstrumentSummary"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/InstrumentSummary.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json 2> Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json.stderr \
  || { echo "--- tshark FAILED (InstrumentSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json.stderr ]; then echo "--- tshark stderr (InstrumentSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json.stderr; fi
echo "--- tshark diagnostic (InstrumentSummary) ---"
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v6.0.InstrumentSummary.json | sort -u | head -n 40

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
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderAdd.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderAdd.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,eurex.derivatives.eobi.t7.v6.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,eurex.derivatives.eobi.t7.v6.0.lua"; else echo "could not detect transport port for OrderAdd"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderAdd.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json 2> Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json.stderr \
  || { echo "--- tshark FAILED (OrderAdd) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json.stderr ]; then echo "--- tshark stderr (OrderAdd) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json.stderr; fi
echo "--- tshark diagnostic (OrderAdd) ---"
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json | sort -u | head -n 40

grep "eurex.derivatives.eobi.t7.v6.0.trdregtstimein" Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json
grep "eurex.derivatives.eobi.t7.v6.0.securityid" Eurex.Derivatives.Eobi.T7.v6.0.OrderAdd.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderModify.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderModify.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,eurex.derivatives.eobi.t7.v6.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,eurex.derivatives.eobi.t7.v6.0.lua"; else echo "could not detect transport port for OrderModify"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/OrderModify.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json 2> Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json.stderr \
  || { echo "--- tshark FAILED (OrderModify) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json.stderr ]; then echo "--- tshark stderr (OrderModify) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json.stderr; fi
echo "--- tshark diagnostic (OrderModify) ---"
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json | sort -u | head -n 40

grep "eurex.derivatives.eobi.t7.v6.0.trdregtstimein" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.trdregtsprevtimepriority" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.prevprice" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.prevdisplayqty" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.pad4" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
grep "eurex.derivatives.eobi.t7.v6.0.securityid" Eurex.Derivatives.Eobi.T7.v6.0.OrderModify.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/PartialOrderExecution.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/PartialOrderExecution.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,eurex.derivatives.eobi.t7.v6.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,eurex.derivatives.eobi.t7.v6.0.lua"; else echo "could not detect transport port for PartialOrderExecution"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/PartialOrderExecution.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json 2> Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json.stderr \
  || { echo "--- tshark FAILED (PartialOrderExecution) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json.stderr ]; then echo "--- tshark stderr (PartialOrderExecution) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json.stderr; fi
echo "--- tshark diagnostic (PartialOrderExecution) ---"
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v6.0.PartialOrderExecution.json | sort -u | head -n 40

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
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ProductSummary.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ProductSummary.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,eurex.derivatives.eobi.t7.v6.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,eurex.derivatives.eobi.t7.v6.0.lua"; else echo "could not detect transport port for ProductSummary"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/ProductSummary.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json 2> Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json.stderr \
  || { echo "--- tshark FAILED (ProductSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json.stderr ]; then echo "--- tshark stderr (ProductSummary) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json.stderr; fi
echo "--- tshark diagnostic (ProductSummary) ---"
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json | sort -u | head -n 40

grep "eurex.derivatives.eobi.t7.v6.0.lastmsgseqnumprocessed" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.tradingsessionid" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.tradingsessionsubid" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.tradsesstatus" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.marketcondition" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.fastmarketindicator" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
grep "eurex.derivatives.eobi.t7.v6.0.pad7" Eurex.Derivatives.Eobi.T7.v6.0.ProductSummary.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/SnapshotOrder.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eobi.T7.v6.0/SnapshotOrder.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,eurex.derivatives.eobi.t7.v6.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,eurex.derivatives.eobi.t7.v6.0.lua"; else echo "could not detect transport port for SnapshotOrder"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v6.0/SnapshotOrder.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v6_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json 2> Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json.stderr \
  || { echo "--- tshark FAILED (SnapshotOrder) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json.stderr ]; then echo "--- tshark stderr (SnapshotOrder) ---"; cat Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json.stderr; fi
echo "--- tshark diagnostic (SnapshotOrder) ---"
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v6.0.SnapshotOrder.json | sort -u | head -n 40

