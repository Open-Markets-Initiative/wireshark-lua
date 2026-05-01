set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.8/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshTradeSummary) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json; echo

grep "cme.cmefutures.mdp3.sbe.v1.8.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.8.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.8.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
