set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.orderid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.price" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.volume" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.side" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.firmid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json

grep "nyse.equities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.crossid" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.price" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.volume" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.equities.integratedfeed.pillar.v2.5.a.crosstype" Nyse.Equities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
