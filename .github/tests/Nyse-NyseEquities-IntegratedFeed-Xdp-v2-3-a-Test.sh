set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.3.a/AddOrderRefreshMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_3_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderRefreshMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.orderid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.price" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.volume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.side" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.firmid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.numparitysplits" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.AddOrderRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.3.a/RefreshHeaderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_3_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.RefreshHeaderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.RefreshHeaderMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshHeaderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.RefreshHeaderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.currentrefreshpkt" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.RefreshHeaderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.totalrefreshpkts" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.RefreshHeaderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.lastseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.RefreshHeaderMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.lastsymbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.RefreshHeaderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.3.a/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_3_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.securitystatus" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.haltcondition" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.reserved4" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.price1" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.price2" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.ssrtriggeringexchangeid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.ssrtriggeringvolume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.time" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.ssrstate" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.marketstate" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.sessionstate" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeed.Xdp.v2.3.a/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Xdp_v2_3_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.symbol" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.reserved1" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.marketid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.systemid" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.exchangecode" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.pricescalecode" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.securitytype" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.lotsize" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.prevcloseprice" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.prevclosevolume" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.priceresolution" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.roundlot" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.mpv" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.unitoftrade" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeed.xdp.v2.3.a.reserved2" Nyse.NyseEquities.IntegratedFeed.Xdp.v2.3.a.SymbolIndexMappingMessage.json
