set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelBuyUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json

grep "iex.iexequities.deep.iextp.v1.0.6.eventflags" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.timestamp" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.symbol" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.size" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.price" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelSellUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json

grep "iex.iexequities.deep.iextp.v1.0.6.eventflags" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.timestamp" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.symbol" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.size" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.price" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
