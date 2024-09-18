set -o errexit
set -o pipefail

tshark \
  -r "Data/Cme/Mdp3.Sbe.v1.12/MdIncrementalRefreshBookLongQty.64.Tcp.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cme.futures.mdp3.sbe.v1.12.lua"]' \
  > Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json

grep "cme.futures.mdp3.sbe.v1.12.transacttime" Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
grep "cme.futures.mdp3.sbe.v1.12.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
grep "cme.futures.mdp3.sbe.v1.12.padding2" Cme.Futures.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
