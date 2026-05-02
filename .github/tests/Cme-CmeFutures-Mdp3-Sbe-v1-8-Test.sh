set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.8/MdIncrementalRefreshTradeSummary.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.8/MdIncrementalRefreshTradeSummary.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,cme.cmefutures.mdp3.sbe.v1.8.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,cme.cmefutures.mdp3.sbe.v1.8.lua"; else echo "could not detect transport port for MdIncrementalRefreshTradeSummary"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.8/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_8_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshTradeSummary) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json | sort -u | head -n 40

grep "cme.cmefutures.mdp3.sbe.v1.8.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.8.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.8.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.8.MdIncrementalRefreshTradeSummary.json
