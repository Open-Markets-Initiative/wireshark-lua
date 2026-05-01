set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/DeltaUpdateMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/DeltaUpdateMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -d "udp.port==${PORT},nyse.nyseequities.openbook.ultra.v2.1.b.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (DeltaUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr ]; then echo "--- tshark stderr (DeltaUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr; fi

grep "nyse.nyseequities.openbook.ultra.v2.1.b.deltasize" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.symbolindex" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetime" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetimemicrosecs" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourceseqnum" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcesessionid" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.quotecondition" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.tradingstatus" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.pricescalecode" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
PORT=$(tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/FullUpdateMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/FullUpdateMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -d "udp.port==${PORT},nyse.nyseequities.openbook.ultra.v2.1.b.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (FullUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr ]; then echo "--- tshark stderr (FullUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/HeartbeatMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/HeartbeatMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -d "udp.port==${PORT},nyse.nyseequities.openbook.ultra.v2.1.b.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (HeartbeatMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr ]; then echo "--- tshark stderr (HeartbeatMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr; fi

PORT=$(tshark -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/SequenceNumberResetMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -d "udp.port==${PORT},nyse.nyseequities.openbook.ultra.v2.1.b.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr ]; then echo "--- tshark stderr (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr; fi

grep "nyse.nyseequities.openbook.ultra.v2.1.b.nextsequencenumber" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json
