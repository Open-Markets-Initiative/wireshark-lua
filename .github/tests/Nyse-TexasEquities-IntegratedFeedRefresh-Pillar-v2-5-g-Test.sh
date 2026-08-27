set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeedRefresh.v2.5.g/AddOrderRefreshMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json 2> Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderRefreshMessage) ---"; cat Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.orderid" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.price" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.volume" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.side" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.firmid" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.AddOrderRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeedRefresh.v2.5.g/RefreshHeaderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json 2> Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshHeaderMessage) ---"; cat Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.currentrefreshpkt" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.totalrefreshpkts" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.lastseqnum" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.lastsymbolseqnum" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.RefreshHeaderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeedRefresh.v2.5.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.sourcetime" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.sourcetimens" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.securitystatus" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.haltcondition" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.reserved4" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.price1" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.price2" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.ssrtriggeringvolume" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.time" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.ssrstate" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.marketstate" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.sessionstate" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeedRefresh.v2.5.g/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeedRefresh_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json 2> Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.symbol" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.reserved1" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.marketid" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.systemid" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.exchangecode" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.pricescalecode" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.securitytype" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.lotsize" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.prevcloseprice" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.prevclosevolume" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.priceresolution" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.roundlot" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.mpv" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.unitoftrade" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.latecloseeligible" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.texasequities.integratedfeedrefresh.pillar.v2.5.g.etheligible" Nyse.TexasEquities.IntegratedFeedRefresh.Pillar.v2.5.g.SymbolIndexMappingMessage.json
