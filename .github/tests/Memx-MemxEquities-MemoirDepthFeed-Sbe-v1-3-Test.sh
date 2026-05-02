set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderAddedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAddedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr; exit 1; }

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.side" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.price" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderDeletedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr; exit 1; }

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderExecutedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr; exit 1; }

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.tradeid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.price" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderReducedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReducedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr; exit 1; }

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/SecurityTradingStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityTradingStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr; exit 1; }

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securitytradingstatus" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securitytradingstatusreason" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/TradingSessionStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingSessionStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr; exit 1; }

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.tradingsession" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
