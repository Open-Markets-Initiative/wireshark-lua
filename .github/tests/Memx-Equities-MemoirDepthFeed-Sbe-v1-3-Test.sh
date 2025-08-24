set -o errexit
set -o pipefail

tshark \
  -r "Data/Memx/Equities.MemiorDepth.v1.3/OrderExecutedMessage.pcap" \
  -X "lua_script:Memx/Memx_Equities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["memx.equities.memoirdepthfeed.sbe.v1.3.lua"]' \
  > Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json

grep "memx.equities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.securityid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.orderid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.tradeid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.quantity" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.price" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
