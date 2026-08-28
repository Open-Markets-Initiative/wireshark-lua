set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.Mdp3.Sbe.v1.12/MdIncrementalRefreshBookLongQty.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json 2> Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshBookLongQty) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.transacttime" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.padding2" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.Mdp3.Sbe.v1.12/MdIncrementalRefreshTradeSummaryLongQty.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json 2> Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummaryLongQty) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.transacttime" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.padding2" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json
