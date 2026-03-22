set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelBuyUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["iex.equities.deep.iextp.v1.0.6.lua"]' \
  > Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json

grep "iex.equities.deep.iextp.v1.0.6.eventflags" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.6.timestamp" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.6.symbol" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.6.size" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.6.price" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelSellUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["iex.equities.deep.iextp.v1.0.6.lua"]' \
  > Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json

grep "iex.equities.deep.iextp.v1.0.6.eventflags" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.6.timestamp" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.6.symbol" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.6.size" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.6.price" Iex.Equities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
