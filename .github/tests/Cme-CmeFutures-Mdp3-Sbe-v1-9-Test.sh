set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshBook.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshBook.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,cme.cmefutures.mdp3.sbe.v1.9.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,cme.cmefutures.mdp3.sbe.v1.9.lua"; else echo "could not detect transport port for MdIncrementalRefreshBook"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshBook.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshBook) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json | sort -u | head -n 40

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshBook.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshOrderBook.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshOrderBook.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,cme.cmefutures.mdp3.sbe.v1.9.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,cme.cmefutures.mdp3.sbe.v1.9.lua"; else echo "could not detect transport port for MdIncrementalRefreshOrderBook"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshOrderBook.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshOrderBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshOrderBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshOrderBook) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json | sort -u | head -n 40

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshOrderBook.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshTradeSummary.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshTradeSummary.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,cme.cmefutures.mdp3.sbe.v1.9.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,cme.cmefutures.mdp3.sbe.v1.9.lua"; else echo "could not detect transport port for MdIncrementalRefreshTradeSummary"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshTradeSummary) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json | sort -u | head -n 40

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshTradeSummary.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshVolume.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshVolume.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,cme.cmefutures.mdp3.sbe.v1.9.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,cme.cmefutures.mdp3.sbe.v1.9.lua"; else echo "could not detect transport port for MdIncrementalRefreshVolume"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.9/MdIncrementalRefreshVolume.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_9_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshVolume) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshVolume) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshVolume) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json | sort -u | head -n 40

grep "cme.cmefutures.mdp3.sbe.v1.9.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.9.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.9.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.9.MdIncrementalRefreshVolume.json
