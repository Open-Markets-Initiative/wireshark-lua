set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.Mdp3.v1.8/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json 2> Cme.Globex.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummary) ---"; cat Cme.Globex.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.8.transacttime" Cme.Globex.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.globex.mdp3.sbe.v1.8.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.globex.mdp3.sbe.v1.8.padding2" Cme.Globex.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
