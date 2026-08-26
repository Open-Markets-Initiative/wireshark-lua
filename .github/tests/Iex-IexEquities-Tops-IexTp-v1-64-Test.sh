set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Tops.v1.6/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_64_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.64.quoteupdateflags" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.timestamp" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.symbol" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.bidsize" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.bidprice" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.askprice" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.64.asksize" Iex.IexEquities.Tops.IexTp.v1.64.QuoteUpdateMessage.json
