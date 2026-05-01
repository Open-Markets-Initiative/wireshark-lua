set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.6/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_6_4_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json.stderr ]; then echo "--- tshark stderr (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json.stderr; fi

grep "iex.iexequities.tops.iextp.v1.6.4.quoteupdateflags" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.timestamp" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.symbol" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.bidsize" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.bidprice" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.askprice" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.asksize" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
