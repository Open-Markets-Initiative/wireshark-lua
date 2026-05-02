set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshBook.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr; exit 1; }

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshOrderBook.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshOrderBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr; exit 1; }

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr; exit 1; }

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshVolume.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshVolume) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr; exit 1; }

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
