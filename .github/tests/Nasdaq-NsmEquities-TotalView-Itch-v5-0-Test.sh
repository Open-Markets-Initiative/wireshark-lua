set -o errexit
set -o pipefail

tshark \
  -r "Data/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.nsmequities.totalview.itch.v5.0.lua"]' \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
