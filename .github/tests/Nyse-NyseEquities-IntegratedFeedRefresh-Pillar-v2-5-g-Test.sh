set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g/AddOrderRefreshMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json 2> Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderRefreshMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.side" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.firmid" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json 2> Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.referenceprice" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.pairedqty" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.totalimbalanceqty" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.marketimbalanceqty" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.auctiontime" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.auctiontype" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.imbalanceside" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.continuousbookclearingprice" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.auctioninterestclearingprice" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.ssrfilingprice" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.indicativematchprice" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.uppercollar" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.lowercollar" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.auctionstatus" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.freezestatus" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.numextensions" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.unpairedqty" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.unpairedside" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g/RefreshHeaderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json 2> Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshHeaderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.currentrefreshpkt" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.totalrefreshpkts" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.lastseqnum" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.lastsymbolseqnum" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.securitystatus" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.haltcondition" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.reserved4" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.price1" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.price2" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringvolume" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.time" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.ssrstate" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.marketstate" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.sessionstate" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json 2> Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.symbol" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.marketid" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.systemid" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.exchangecode" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.pricescalecode" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.securitytype" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.lotsize" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.prevcloseprice" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.prevclosevolume" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.priceresolution" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.roundlot" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.mpv" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.unitoftrade" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.latecloseeligible" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedrefresh.pillar.v2.5.g.etheligible" Nyse.NyseEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
