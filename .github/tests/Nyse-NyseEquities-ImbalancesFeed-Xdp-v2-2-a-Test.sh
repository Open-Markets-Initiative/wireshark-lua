set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.ImbalancesFeed.Xdp.v2.2.a/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_ImbalancesFeed_Xdp_v2_2_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json 2> Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.sourcetime" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.sourcetimens" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.symbolindex" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.symbolseqnum" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.referenceprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.pairedqty" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.totalimbalanceqty" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.marketimbalanceqty" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.auctiontime" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.auctiontype" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.imbalanceside" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.continuousbookclearingprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.closingonlyclearingprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.ssrfilingprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.indicativematchprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.uppercollar" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.lowercollar" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.auctionstatus" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.freezestatus" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.numextensions" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.unpairedqty" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.unpairedside" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.significantimbalance" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.ImbalancesFeed.Xdp.v2.2.a/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_ImbalancesFeed_Xdp_v2_2_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json 2> Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.sourcetime" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.sourcetimens" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.symbolindex" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.symbolseqnum" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.securitystatus" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.haltcondition" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.reserved4" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.price1" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.price2" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.ssrtriggeringexchangeid" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.ssrtriggeringvolume" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.time" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.ssrstate" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.marketstate" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.sessionstate" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.ImbalancesFeed.Xdp.v2.2.a/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_ImbalancesFeed_Xdp_v2_2_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json 2> Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.symbolindex" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.symbol" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.reserved1" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.marketid" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.systemid" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.exchangecode" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.pricescalecode" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.securitytype" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.lotsize" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.prevcloseprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.prevclosevolume" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.priceresolution" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.roundlot" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.mpv" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.unitoftrade" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.2.a.reserved2" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.2.a.SymbolIndexMappingMessage.json
