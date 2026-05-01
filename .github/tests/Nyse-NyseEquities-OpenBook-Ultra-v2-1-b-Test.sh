set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/DeltaUpdateMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (DeltaUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr ]; then echo "--- tshark stderr (DeltaUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (DeltaUpdateMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json; echo

grep "nyse.nyseequities.openbook.ultra.v2.1.b.deltasize" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.symbolindex" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetime" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcetimemicrosecs" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourceseqnum" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.sourcesessionid" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.quotecondition" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.tradingstatus" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
grep "nyse.nyseequities.openbook.ultra.v2.1.b.pricescalecode" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json
tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/FullUpdateMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (FullUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr ]; then echo "--- tshark stderr (FullUpdateMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (FullUpdateMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json; echo

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
tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/HeartbeatMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (HeartbeatMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr ]; then echo "--- tshark stderr (HeartbeatMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json.stderr; fi
echo "--- tshark diagnostic (HeartbeatMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json; echo

tshark \
  -r "omi-data-packets/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json 2> Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr ]; then echo "--- tshark stderr (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json.stderr; fi
echo "--- tshark diagnostic (SequenceNumberResetMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json; echo

grep "nyse.nyseequities.openbook.ultra.v2.1.b.nextsequencenumber" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json
