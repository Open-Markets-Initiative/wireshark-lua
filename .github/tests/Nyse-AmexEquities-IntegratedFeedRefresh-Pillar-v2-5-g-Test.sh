set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeedRefresh.v2.5/AddOrderRefreshMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json 2> Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderRefreshMessage) ---"; cat Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.orderid" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.price" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.volume" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.side" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.firmid" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeedRefresh.v2.5/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json 2> Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.referenceprice" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.pairedqty" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.totalimbalanceqty" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.marketimbalanceqty" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.auctiontime" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.auctiontype" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.imbalanceside" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.continuousbookclearingprice" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.auctioninterestclearingprice" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.ssrfilingprice" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.indicativematchprice" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.uppercollar" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.lowercollar" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.auctionstatus" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.freezestatus" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.numextensions" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.unpairedqty" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.unpairedside" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeedRefresh.v2.5/RefreshHeaderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json 2> Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshHeaderMessage) ---"; cat Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.currentrefreshpkt" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.totalrefreshpkts" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.lastseqnum" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.lastsymbolseqnum" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeedRefresh.v2.5/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.securitystatus" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.haltcondition" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.reserved4" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.price1" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.price2" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringvolume" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.time" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.ssrstate" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.marketstate" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.sessionstate" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexEquities.IntegratedFeedRefresh.v2.5/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json 2> Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.symbol" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.marketid" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.systemid" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.exchangecode" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.pricescalecode" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.securitytype" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.lotsize" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.prevcloseprice" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.prevclosevolume" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.priceresolution" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.roundlot" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.mpv" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.unitoftrade" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.latecloseeligible" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeedrefresh.pillar.v2.5.g.etheligible" Nyse.AmexEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
