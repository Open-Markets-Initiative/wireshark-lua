set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/MdIncrementalRefreshBookLongQty.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json

grep "cme.futures.mdp3.sbe.v1.12.transacttime" Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
grep "cme.futures.mdp3.sbe.v1.12.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
grep "cme.futures.mdp3.sbe.v1.12.padding2" Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/MdIncrementalRefreshTradeSummaryLongQty.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json

grep "cme.futures.mdp3.sbe.v1.12.transacttime" Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json
grep "cme.futures.mdp3.sbe.v1.12.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json
grep "cme.futures.mdp3.sbe.v1.12.padding2" Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json
