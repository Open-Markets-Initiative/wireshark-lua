set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.Bbo.Xdp.v2.4.g/QuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Xdp_v2_4_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json 2> Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteMessage) ---"; cat Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.bbo.xdp.v2.4.g.sourcetimens" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.symbolindex" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.symbolseqnum" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.askprice" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.askvolume" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.bidprice" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.bidvolume" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.quotecondition" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.rpiindicator" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.QuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.Bbo.Xdp.v2.4.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Xdp_v2_4_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json 2> Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.bbo.xdp.v2.4.g.sourcetime" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.sourcetimens" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.symbolindex" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.symbolseqnum" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.securitystatus" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.haltcondition" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.reserved4" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.price1" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.price2" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.ssrtriggeringexchangeid" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.ssrtriggeringvolume" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.time" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.ssrstate" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.marketstate" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.sessionstate" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.Bbo.Xdp.v2.4.g/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Xdp_v2_4_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SequenceNumberResetMessage.json 2> Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.bbo.xdp.v2.4.g.sourcetime" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.sourcetimens" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.productid" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.channelid" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.Bbo.Xdp.v2.4.g/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Xdp_v2_4_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json 2> Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.bbo.xdp.v2.4.g.symbolindex" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.symbol" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.reserved1" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.marketid" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.systemid" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.exchangecode" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.pricescalecode" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.securitytype" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.lotsize" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.prevcloseprice" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.prevclosevolume" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.priceresolution" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.roundlot" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.mpv" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.unitoftrade" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.reserved2" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.SymbolIndexMappingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.Bbo.Xdp.v2.4.g/TradingSessionChangeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Xdp_v2_4_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Xdp.v2.4.g.TradingSessionChangeMessage.json 2> Nyse.NyseEquities.Bbo.Xdp.v2.4.g.TradingSessionChangeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingSessionChangeMessage) ---"; cat Nyse.NyseEquities.Bbo.Xdp.v2.4.g.TradingSessionChangeMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.bbo.xdp.v2.4.g.sourcetime" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.TradingSessionChangeMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.sourcetimens" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.TradingSessionChangeMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.symbolindex" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.TradingSessionChangeMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.symbolseqnum" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.TradingSessionChangeMessage.json
grep "nyse.nyseequities.bbo.xdp.v2.4.g.tradingsession" Nyse.NyseEquities.Bbo.Xdp.v2.4.g.TradingSessionChangeMessage.json
