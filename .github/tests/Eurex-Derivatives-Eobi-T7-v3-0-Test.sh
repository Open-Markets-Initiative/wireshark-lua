set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v3.0/Heartbeat.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/Heartbeat.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  --enable-heuristic "eurex.derivatives.eobi.t7.v3.0.lua_udp" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v3.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json 2> Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json.stderr
if [ -s Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json.stderr ]; then echo "--- tshark stderr (Heartbeat) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v3.0.lastmsgseqnumprocessed" Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json
grep "eurex.derivatives.eobi.t7.v3.0.pad4" Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v3.0/OrderAdd.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/OrderAdd.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  --enable-heuristic "eurex.derivatives.eobi.t7.v3.0.lua_udp" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v3.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json 2> Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json.stderr
if [ -s Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json.stderr ]; then echo "--- tshark stderr (OrderAdd) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json.stderr; fi

grep "eurex.derivatives.eobi.t7.v3.0.trdregtstimein" Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json
grep "eurex.derivatives.eobi.t7.v3.0.securityid" Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json
PORT=$(tshark -r "omi-data-packets/Eurex/Eobi.T7.v3.0/SnapshotOrder.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/SnapshotOrder.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  --enable-heuristic "eurex.derivatives.eobi.t7.v3.0.lua_udp" \
  -d "udp.port==${PORT},eurex.derivatives.eobi.t7.v3.0.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json 2> Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json.stderr
if [ -s Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json.stderr ]; then echo "--- tshark stderr (SnapshotOrder) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json.stderr; fi

