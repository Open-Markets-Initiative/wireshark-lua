set -o errexit
set -o pipefail

tshark \
  -r "Data/Iex/Deep.IexTp.v1.0/PriceLevelBuyUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Deep_IexTp_v1_0_8_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["iex.equities.deep.iextp.v1.0.8.lua"]' \
  > Iex.Equities.Deep.IexTp.v1.0.8.PriceLevelBuyUpdateMessage.json

grep "iex.equities.deep.iextp.v1.0.8.eventflags" Iex.Equities.Deep.IexTp.v1.0.8.PriceLevelBuyUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.8.timestamp" Iex.Equities.Deep.IexTp.v1.0.8.PriceLevelBuyUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.8.symbol" Iex.Equities.Deep.IexTp.v1.0.8.PriceLevelBuyUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.8.size" Iex.Equities.Deep.IexTp.v1.0.8.PriceLevelBuyUpdateMessage.json
grep "iex.equities.deep.iextp.v1.0.8.price" Iex.Equities.Deep.IexTp.v1.0.8.PriceLevelBuyUpdateMessage.json
