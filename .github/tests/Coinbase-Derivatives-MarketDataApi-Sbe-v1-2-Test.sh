set -o errexit
set -o pipefail

tshark \
  -r "Data/Coinbase/MarketDataApi.v1.2/OrderDeleteMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_MarketDataApi_Sbe_v1_2_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.marketdataapi.sbe.v1.2.lua"]' \
  > Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json

grep "coinbase.derivatives.marketdataapi.sbe.v1.2.orderid" Coinbase.Derivatives.MarketDataApi.Sbe.v1.2.OrderDeleteMessage.json
