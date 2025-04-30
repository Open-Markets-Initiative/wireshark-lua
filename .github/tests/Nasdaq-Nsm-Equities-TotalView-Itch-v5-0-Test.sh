set -o errexit
set -o pipefail

tshark \
  -r "Data/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/AddOrderNoMpidAttributionMessage.A.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_Nsm_Equities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.nsm.equities.totalview.itch.v5.0.lua"]' \
  > Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json

grep "nasdaq.nsm.equities.totalview.itch.v5.0.stocklocate" Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsm.equities.totalview.itch.v5.0.trackingnumber" Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsm.equities.totalview.itch.v5.0.timestamp" Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsm.equities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsm.equities.totalview.itch.v5.0.buysellindicator" Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsm.equities.totalview.itch.v5.0.shares" Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsm.equities.totalview.itch.v5.0.stock" Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsm.equities.totalview.itch.v5.0.price" Nasdaq.Nsm.Equities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
