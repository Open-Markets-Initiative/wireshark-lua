set -o errexit
set -o pipefail

tshark \
  -r "Data/Nyse/Amex.OpenBook.Ultra.2.1.b/FullUpdateMessage.230.pcap" \
  -X "lua_script:Nyse/Nyse_Amex_Equities_OpenBook_Ultra_v2_1_b_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.amex.equities.openbook.ultra.v2.1.b.lua"]' \
  > Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json

grep "nyse.amex.equities.openbook.ultra.v2.1.b.updatesize" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.symbolindex" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.sourcetime" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.sourcetimemicrosecs" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.symbolseqnum" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.sourcesessionid" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.symbol" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.pricescalecode" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.quotecondition" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.tradingstatus" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.reserved1" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
grep "nyse.amex.equities.openbook.ultra.v2.1.b.mpv" Nyse.Amex.Equities.OpenBook.Ultra.v2.1.b.FullUpdateMessage.json
