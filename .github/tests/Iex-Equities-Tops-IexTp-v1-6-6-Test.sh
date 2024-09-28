set -o errexit
set -o pipefail

tshark \
  -r "Data/Iex/Tops.IexTp.v1.6/QuoteUpdateMessage.Q.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_6_6_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["iex.equities.tops.iextp.v1.6.6.lua"]' \
  > Iex.Equities.Tops.IexTp.v1.6.6.QuoteUpdateMessage.json

grep "iex.equities.tops.iextp.v1.6.6.quoteupdateflags" Iex.Equities.Tops.IexTp.v1.6.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.6.timestamp" Iex.Equities.Tops.IexTp.v1.6.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.6.symbol" Iex.Equities.Tops.IexTp.v1.6.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.6.bidsize" Iex.Equities.Tops.IexTp.v1.6.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.6.bidprice" Iex.Equities.Tops.IexTp.v1.6.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.6.askprice" Iex.Equities.Tops.IexTp.v1.6.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.6.asksize" Iex.Equities.Tops.IexTp.v1.6.6.QuoteUpdateMessage.json
