set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/Heartbeat.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json 2> Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json.stderr; exit 1; }

grep "eurex.derivatives.eobi.t7.v3.0.lastmsgseqnumprocessed" Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json
grep "eurex.derivatives.eobi.t7.v3.0.pad4" Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/OrderAdd.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json 2> Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json.stderr \
  || { echo "--- tshark FAILED (OrderAdd) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json.stderr; exit 1; }

grep "eurex.derivatives.eobi.t7.v3.0.trdregtstimein" Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json
grep "eurex.derivatives.eobi.t7.v3.0.securityid" Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/SnapshotOrder.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  -T json \
  > Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json 2> Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json.stderr \
  || { echo "--- tshark FAILED (SnapshotOrder) ---"; cat Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json.stderr; exit 1; }

