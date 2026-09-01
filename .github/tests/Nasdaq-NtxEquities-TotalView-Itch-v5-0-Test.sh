set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.buysellindicator" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.shares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.stock" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.price" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0/OrderReplaceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplaceMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.originalorderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.neworderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.shares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.price" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
