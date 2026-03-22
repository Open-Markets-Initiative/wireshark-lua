set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/Heartbeat.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["eurex.derivatives.eobi.t7.v3.0.lua"]' \
  > Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json

grep "eurex.derivatives.eobi.t7.v3.0.lastmsgseqnumprocessed" Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json
grep "eurex.derivatives.eobi.t7.v3.0.pad4" Eurex.Derivatives.Eobi.T7.v3.0.Heartbeat.json
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/OrderAdd.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["eurex.derivatives.eobi.t7.v3.0.lua"]' \
  > Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json

grep "eurex.derivatives.eobi.t7.v3.0.trdregtstimein" Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json
grep "eurex.derivatives.eobi.t7.v3.0.securityid" Eurex.Derivatives.Eobi.T7.v3.0.OrderAdd.json
tshark \
  -r "omi-data-packets/Eurex/Eobi.T7.v3.0/SnapshotOrder.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eobi_T7_v3_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["eurex.derivatives.eobi.t7.v3.0.lua"]' \
  > Eurex.Derivatives.Eobi.T7.v3.0.SnapshotOrder.json

