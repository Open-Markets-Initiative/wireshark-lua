set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.6/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_6_4_Dissector.lua" \
  -T json \
  > Iex.Equities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json

grep "iex.equities.tops.iextp.v1.6.4.quoteupdateflags" Iex.Equities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.4.timestamp" Iex.Equities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.4.symbol" Iex.Equities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.4.bidsize" Iex.Equities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.4.bidprice" Iex.Equities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.4.askprice" Iex.Equities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.6.4.asksize" Iex.Equities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
