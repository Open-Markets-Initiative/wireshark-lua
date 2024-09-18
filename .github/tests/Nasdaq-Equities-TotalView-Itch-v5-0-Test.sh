set -o errexit
set -o pipefail

tshark \
  -r "Data/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/AddOrderNoMpidAttributionMessage.A.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_Equities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.equities.totalview.itch.v5.0.lua"]' \
  > Nasdaq.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json

grep "nasdaq.equities.totalview.itch.v5.0.stocklocate" Nasdaq.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.equities.totalview.itch.v5.0.trackingnumber" Nasdaq.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.equities.totalview.itch.v5.0.timestamp" Nasdaq.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.equities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.equities.totalview.itch.v5.0.buysellindicator" Nasdaq.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.equities.totalview.itch.v5.0.shares" Nasdaq.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.equities.totalview.itch.v5.0.stock" Nasdaq.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.equities.totalview.itch.v5.0.price" Nasdaq.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
