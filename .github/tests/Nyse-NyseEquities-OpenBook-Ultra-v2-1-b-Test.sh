set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/Nyse.NyseEquities.OpenBook.Ultra.2.1.b/DeltaUpdateMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.DeltaUpdateMessage.json

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
  -r "omi-data-packets/Nyse/Nyse.NyseEquities.OpenBook.Ultra.2.1.b/FullUpdateMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json

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
  -r "omi-data-packets/Nyse/Nyse.NyseEquities.OpenBook.Ultra.2.1.b/HeartbeatMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.HeartbeatMessage.json

tshark \
  -r "omi-data-packets/Nyse/Nyse.NyseEquities.OpenBook.Ultra.2.1.b/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json

grep "nyse.nyseequities.openbook.ultra.v2.1.b.nextsequencenumber" Nyse.NyseEquities.OpenBook.Ultra.v2.1.b.SequenceNumberResetMessage.json
