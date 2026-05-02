set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/DeltaUpdateMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/DeltaUpdateMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,nyse.nyseequities.openbook.ultra.v2.1.b.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,nyse.nyseequities.openbook.ultra.v2.1.b.lua"; else echo "could not detect transport port for DeltaUpdateMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/DeltaUpdateMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (DeltaUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr ]; then echo "--- tshark stderr (DeltaUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (DeltaUpdateMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.openbook.ultra.v2.1.b.deltasize" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.symbolindex" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetime" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetimemicrosecs" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourceseqnum" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcesessionid" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.quotecondition" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.tradingstatus" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.pricescalecode" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/FullUpdateMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/FullUpdateMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,nyse.nyseequities.openbook.ultra.v2.1.b.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,nyse.nyseequities.openbook.ultra.v2.1.b.lua"; else echo "could not detect transport port for FullUpdateMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/FullUpdateMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (FullUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr ]; then echo "--- tshark stderr (FullUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (FullUpdateMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.openbook.ultra.v2.1.b.updatesize" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.symbolindex" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetime" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetimemicrosecs" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.symbolseqnum" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcesessionid" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.symbol" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.pricescalecode" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.quotecondition" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.tradingstatus" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.reserved1" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.mpv" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/HeartbeatMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/HeartbeatMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,nyse.nyseequities.openbook.ultra.v2.1.b.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,nyse.nyseequities.openbook.ultra.v2.1.b.lua"; else echo "could not detect transport port for HeartbeatMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/HeartbeatMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (HeartbeatMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr ]; then echo "--- tshark stderr (HeartbeatMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr; fi
echo "--- tshark diagnostic (HeartbeatMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json | sort -u | head -n 40

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/SequenceNumberResetMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/SequenceNumberResetMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,nyse.nyseequities.openbook.ultra.v2.1.b.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,nyse.nyseequities.openbook.ultra.v2.1.b.lua"; else echo "could not detect transport port for SequenceNumberResetMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr ]; then echo "--- tshark stderr (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr; fi
echo "--- tshark diagnostic (SequenceNumberResetMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.openbook.ultra.v2.1.b.nextsequencenumber" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json
