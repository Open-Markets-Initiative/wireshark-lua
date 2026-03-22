set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/QuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Arca_Equities_Bbo_Xdp_v2_4_c_Dissector.lua" \
  -T json \
  > Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json

grep "nyse.arca.equities.bbo.xdp.v2.4.c.sourcetimens" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.symbolindex" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.symbolseqnum" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.askprice" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.askvolume" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.bidprice" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.bidvolume" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.quotecondition" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.rpiindicator" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.reserved4" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.QuoteMessage.json
tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Arca_Equities_Bbo_Xdp_v2_4_c_Dissector.lua" \
  -T json \
  > Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json

grep "nyse.arca.equities.bbo.xdp.v2.4.c.sourcetime" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.sourcetimens" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.productid" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.channelid" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SequenceNumberResetMessage.json
tshark \
  -r "omi-data-packets/Nyse/Bbo.Xdp.v2.3a/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Arca_Equities_Bbo_Xdp_v2_4_c_Dissector.lua" \
  -T json \
  > Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json

grep "nyse.arca.equities.bbo.xdp.v2.4.c.symbolindex" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.symbol" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.reserved1" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.marketid" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.systemid" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.exchangecode" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.pricescalecode" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.securitytype" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.lotsize" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.prevcloseprice" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.prevclosevolume" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.priceresolution" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.roundlot" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.mpv" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.unitoftrade" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
grep "nyse.arca.equities.bbo.xdp.v2.4.c.reserved2" Nyse.Arca.Equities.Bbo.Xdp.v2.4.c.SymbolIndexMappingMessage.json
