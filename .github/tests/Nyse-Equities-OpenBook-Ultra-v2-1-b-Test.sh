set -o errexit
set -o pipefail

tshark \
  -r "Data/Nyse/Nyse.Equities.OpenBook.Ultra.2.1.b/FullUpdateMessage.230.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.equities.openbook.ultra.v2.1.b.lua"]' \
  > Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json

grep "nyse.equities.openbook.ultra.v2.1.b.updatesize" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.symbolindex" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.sourcetime" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.sourcetimemicrosecs" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.symbolseqnum" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.sourcesessionid" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.symbol" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.pricescalecode" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.quotecondition" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.tradingstatus" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.reserved1" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.equities.openbook.ultra.v2.1.b.mpv" Nyse.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
