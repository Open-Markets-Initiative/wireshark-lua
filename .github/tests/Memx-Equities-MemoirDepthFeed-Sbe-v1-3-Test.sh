set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderAddedMessage.pcap" \
  -X "lua_script:Memx/Memx_Equities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["memx.equities.memoirdepthfeed.sbe.v1.3.lua"]' \
  > Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json

grep "memx.equities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.securityid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.orderid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.side" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.quantity" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.price" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderDeletedMessage.pcap" \
  -X "lua_script:Memx/Memx_Equities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["memx.equities.memoirdepthfeed.sbe.v1.3.lua"]' \
  > Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json

grep "memx.equities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.securityid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.orderid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderExecutedMessage.pcap" \
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
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderReducedMessage.pcap" \
  -X "lua_script:Memx/Memx_Equities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["memx.equities.memoirdepthfeed.sbe.v1.3.lua"]' \
  > Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json

grep "memx.equities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.securityid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.orderid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.quantity" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/SecurityTradingStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_Equities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["memx.equities.memoirdepthfeed.sbe.v1.3.lua"]' \
  > Memx.Equities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json

grep "memx.equities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.securityid" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.securitytradingstatus" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.securitytradingstatusreason" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/TradingSessionStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_Equities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["memx.equities.memoirdepthfeed.sbe.v1.3.lua"]' \
  > Memx.Equities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json

grep "memx.equities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
grep "memx.equities.memoirdepthfeed.sbe.v1.3.tradingsession" Memx.Equities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
