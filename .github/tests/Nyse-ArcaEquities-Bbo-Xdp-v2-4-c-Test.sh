set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/QuoteMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/QuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaEquities_Bbo_Xdp_v2_4_c_Dissector.lua" \
  --enable-heuristic "nyse.arcaequities.bbo.xdp.v2.4.c.lua_udp" \
  -d "udp.port==${PORT},nyse.arcaequities.bbo.xdp.v2.4.c.lua" \
  -T json \
  > Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json 2> Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json.stderr; exit 1; }
if [ -s Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json.stderr ]; then echo "--- tshark stderr (QuoteMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.QuoteMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SequenceNumberResetMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaEquities_Bbo_Xdp_v2_4_c_Dissector.lua" \
  --enable-heuristic "nyse.arcaequities.bbo.xdp.v2.4.c.lua_udp" \
  -d "udp.port==${PORT},nyse.arcaequities.bbo.xdp.v2.4.c.lua" \
  -T json \
  > Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json 2> Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json.stderr; exit 1; }
if [ -s Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json.stderr ]; then echo "--- tshark stderr (SequenceNumberResetMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json.stderr; fi

grep "nyse.arcaequities.bbo.xdp.v2.4.c.sourcetime" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.sourcetimens" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.productid" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arcaequities.bbo.xdp.v2.4.c.channelid" Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
PORT=$(tshark -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SymbolIndexMappingMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaEquities_Bbo_Xdp_v2_4_c_Dissector.lua" \
  --enable-heuristic "nyse.arcaequities.bbo.xdp.v2.4.c.lua_udp" \
  -d "udp.port==${PORT},nyse.arcaequities.bbo.xdp.v2.4.c.lua" \
  -T json \
  > Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json 2> Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json.stderr; exit 1; }
if [ -s Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json.stderr ]; then echo "--- tshark stderr (SymbolIndexMappingMessage) ---"; cat Nyse.ArcaEquities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json.stderr; fi

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
