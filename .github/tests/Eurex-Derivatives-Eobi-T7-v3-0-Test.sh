set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/Heartbeat.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json 2> Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json.stderr ]; then echo "--- tshark stderr (Heartbeat) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json.stderr; fi
echo "--- tshark diagnostic (Heartbeat) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json; echo

grep "eurex.derivatives.eobi.t7.v3.0.lastmsgseqnumprocessed" Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json
grep "eurex.derivatives.eobi.t7.v3.0.pad4" Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/OrderAdd.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json 2> Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json.stderr \
  || { echo "--- tshark FAILED (OrderAdd) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json.stderr ]; then echo "--- tshark stderr (OrderAdd) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json.stderr; fi
echo "--- tshark diagnostic (OrderAdd) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json; echo

grep "eurex.derivatives.eobi.t7.v3.0.trdregtstimein" Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json
grep "eurex.derivatives.eobi.t7.v3.0.securityid" Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/SnapshotOrder.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json 2> Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json.stderr \
  || { echo "--- tshark FAILED (SnapshotOrder) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json.stderr; exit 1; }
if [ -s Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json.stderr ]; then echo "--- tshark stderr (SnapshotOrder) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json.stderr; fi
echo "--- tshark diagnostic (SnapshotOrder) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json; echo

