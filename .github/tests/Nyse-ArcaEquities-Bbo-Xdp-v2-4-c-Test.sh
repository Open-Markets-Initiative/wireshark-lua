set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/QuoteMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/QuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaEquities_Bbo_Xdp_v2_4_c_Dissector.lua" \
  -d "udp.port==$port,nyse.arcaequities.bbo.xdp.v2.4.c.lua" \
  -T json \
  > Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json 2> Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json.stderr; exit 1; }
if [ -s Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json.stderr ]; then echo "--- tshark stderr (QuoteMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json.stderr; fi
echo "--- tshark diagnostic (QuoteMessage) ---"
echo "json bytes: $(wc -c < Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json | sort -u | head -n 40

grep "nyse.arcaequities.bbo.xdp.v2.4.c.sourcetimens" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.symbolindex" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.symbolseqnum" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.askprice" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.askvolume" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.bidprice" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.bidvolume" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.quotecondition" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.rpiindicator" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.reserved4" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SequenceNumberResetMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaEquities_Bbo_Xdp_v2_4_c_Dissector.lua" \
  -d "udp.port==$port,nyse.arcaequities.bbo.xdp.v2.4.c.lua" \
  -T json \
  > Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json 2> Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json.stderr; exit 1; }
if [ -s Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json.stderr ]; then echo "--- tshark stderr (SequenceNumberResetMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json.stderr; fi
echo "--- tshark diagnostic (SequenceNumberResetMessage) ---"
echo "json bytes: $(wc -c < Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json | sort -u | head -n 40

grep "nyse.arcaequities.bbo.xdp.v2.4.c.sourcetime" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.sourcetimens" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.productid" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.channelid" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SymbolIndexMappingMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaEquities_Bbo_Xdp_v2_4_c_Dissector.lua" \
  -d "udp.port==$port,nyse.arcaequities.bbo.xdp.v2.4.c.lua" \
  -T json \
  > Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json 2> Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json.stderr; exit 1; }
if [ -s Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json.stderr ]; then echo "--- tshark stderr (SymbolIndexMappingMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json.stderr; fi
echo "--- tshark diagnostic (SymbolIndexMappingMessage) ---"
echo "json bytes: $(wc -c < Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json | sort -u | head -n 40

grep "nyse.arcaequities.bbo.xdp.v2.4.c.symbolindex" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.symbol" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.reserved1" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.marketid" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.systemid" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.exchangecode" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.pricescalecode" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.securitytype" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.lotsize" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.prevcloseprice" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.prevclosevolume" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.priceresolution" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.roundlot" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.mpv" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.unitoftrade" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.reserved2" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
