set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.6/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_6_4_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json.stderr ]; then echo "--- tshark stderr (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (QuoteUpdateMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json | sort -u | head -n 40

grep "iex.iexequities.tops.iextp.v1.6.4.quoteupdateflags" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.timestamp" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.symbol" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.bidsize" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.bidprice" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.askprice" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.6.4.asksize" Iex.IexEquities.Tops.IexTp.v1.6.4.QuoteUpdateMessage.json
