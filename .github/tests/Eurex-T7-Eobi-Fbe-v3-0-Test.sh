set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v3.0/Heartbeat.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v3_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v3.0.Heartbeat.json 2> Eurex.T7.Eobi.Fbe.v3.0.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Eurex.T7.Eobi.Fbe.v3.0.Heartbeat.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v3.0.lastmsgseqnumprocessed" Eurex.T7.Eobi.Fbe.v3.0.Heartbeat.json
grep "eurex.t7.eobi.fbe.v3.0.pad4" Eurex.T7.Eobi.Fbe.v3.0.Heartbeat.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v3.0/OrderAdd.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v3_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v3.0.OrderAdd.json 2> Eurex.T7.Eobi.Fbe.v3.0.OrderAdd.json.stderr \
  || { echo "--- tshark FAILED (OrderAdd) ---"; cat Eurex.T7.Eobi.Fbe.v3.0.OrderAdd.json.stderr; exit 1; }

grep "eurex.t7.eobi.fbe.v3.0.trdregtstimein" Eurex.T7.Eobi.Fbe.v3.0.OrderAdd.json
grep "eurex.t7.eobi.fbe.v3.0.securityid" Eurex.T7.Eobi.Fbe.v3.0.OrderAdd.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eobi.Fbe.v3.0/SnapshotOrder.pcap" \
  --disable-protocol eobi \
  -X "lua_script:Eurex/Eurex_T7_Eobi_Fbe_v3_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Eobi.Fbe.v3.0.SnapshotOrder.json 2> Eurex.T7.Eobi.Fbe.v3.0.SnapshotOrder.json.stderr \
  || { echo "--- tshark FAILED (SnapshotOrder) ---"; cat Eurex.T7.Eobi.Fbe.v3.0.SnapshotOrder.json.stderr; exit 1; }

