set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshBook.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cme.futures.mdp3.sbe.v1.9.lua"]' \
  > Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json

grep "cme.futures.mdp3.sbe.v1.9.transacttime" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
grep "cme.futures.mdp3.sbe.v1.9.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
grep "cme.futures.mdp3.sbe.v1.9.padding2" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshOrderBook.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cme.futures.mdp3.sbe.v1.9.lua"]' \
  > Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json

grep "cme.futures.mdp3.sbe.v1.9.transacttime" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
grep "cme.futures.mdp3.sbe.v1.9.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
grep "cme.futures.mdp3.sbe.v1.9.padding2" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cme.futures.mdp3.sbe.v1.9.lua"]' \
  > Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json

grep "cme.futures.mdp3.sbe.v1.9.transacttime" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
grep "cme.futures.mdp3.sbe.v1.9.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
grep "cme.futures.mdp3.sbe.v1.9.padding2" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshVolume.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cme.futures.mdp3.sbe.v1.9.lua"]' \
  > Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json

grep "cme.futures.mdp3.sbe.v1.9.transacttime" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
grep "cme.futures.mdp3.sbe.v1.9.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
grep "cme.futures.mdp3.sbe.v1.9.padding2" Cme.Futures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
