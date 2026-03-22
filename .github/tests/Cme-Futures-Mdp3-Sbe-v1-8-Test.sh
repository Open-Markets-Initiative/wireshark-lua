set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.8/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Cme.Futures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json

grep "cme.futures.mdp3.sbe.v1.8.transacttime" Cme.Futures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.futures.mdp3.sbe.v1.8.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.futures.mdp3.sbe.v1.8.padding2" Cme.Futures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
