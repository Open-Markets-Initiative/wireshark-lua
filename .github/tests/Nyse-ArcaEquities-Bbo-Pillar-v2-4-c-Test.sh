set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/QuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaEquities_Bbo_Pillar_v2_4_c_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json

grep "nyse.arcaequities.bbo.pillar.v2.4.c.sourcetimens" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.symbolindex" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.symbolseqnum" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.askprice" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.askvolume" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.bidprice" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.bidvolume" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.quotecondition" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.rpiindicator" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.reserved4" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.QuoteMessage.json
tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaEquities_Bbo_Pillar_v2_4_c_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SequenceNumberResetMessage.json

grep "nyse.arcaequities.bbo.pillar.v2.4.c.sourcetime" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.sourcetimens" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.productid" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.channelid" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SequenceNumberResetMessage.json
tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaEquities_Bbo_Pillar_v2_4_c_Dissector.lua" \
  -T json \
  > Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json

grep "nyse.arcaequities.bbo.pillar.v2.4.c.symbolindex" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.symbol" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.reserved1" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.marketid" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.systemid" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.exchangecode" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.pricescalecode" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.securitytype" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.lotsize" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.prevcloseprice" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.prevclosevolume" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.priceresolution" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.roundlot" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.mpv" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.unitoftrade" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arcaequities.bbo.pillar.v2.4.c.reserved2" Nyse.ArcaEquities.Bbo.Pillar.v2.4.c.SymbolIndexMappingMessage.json
