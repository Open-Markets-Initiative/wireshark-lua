set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.8/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json

grep "cme.cmefutures.mdp3.sbe.v1.8.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.8.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.8.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
