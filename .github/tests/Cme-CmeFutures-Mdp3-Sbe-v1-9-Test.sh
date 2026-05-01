set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshBook.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshBook) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json; echo

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshOrderBook.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshOrderBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshOrderBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshOrderBook) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json; echo

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshTradeSummary) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json; echo

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshVolume.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshVolume) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshVolume) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshVolume) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json; echo

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
