set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderAddedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderAddedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  --enable-heuristic "memx.memxequities.memoirdepthfeed.sbe.v1.3.lua_udp" \
  -d "udp.port==${PORT},memx.memxequities.memoirdepthfeed.sbe.v1.3.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr ]; then echo "--- tshark stderr (OrderAddedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr; fi

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.side" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.price" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
PORT=$(tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderDeletedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderDeletedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  --enable-heuristic "memx.memxequities.memoirdepthfeed.sbe.v1.3.lua_udp" \
  -d "udp.port==${PORT},memx.memxequities.memoirdepthfeed.sbe.v1.3.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeletedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr; fi

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
PORT=$(tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderExecutedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderExecutedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  --enable-heuristic "memx.memxequities.memoirdepthfeed.sbe.v1.3.lua_udp" \
  -d "udp.port==${PORT},memx.memxequities.memoirdepthfeed.sbe.v1.3.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr; fi

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.tradeid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.price" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
PORT=$(tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderReducedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderReducedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  --enable-heuristic "memx.memxequities.memoirdepthfeed.sbe.v1.3.lua_udp" \
  -d "udp.port==${PORT},memx.memxequities.memoirdepthfeed.sbe.v1.3.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr ]; then echo "--- tshark stderr (OrderReducedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr; fi

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
PORT=$(tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/SecurityTradingStatusMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/SecurityTradingStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  --enable-heuristic "memx.memxequities.memoirdepthfeed.sbe.v1.3.lua_udp" \
  -d "udp.port==${PORT},memx.memxequities.memoirdepthfeed.sbe.v1.3.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (SecurityTradingStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr; fi

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securitytradingstatus" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securitytradingstatusreason" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
PORT=$(tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/TradingSessionStatusMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/TradingSessionStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  --enable-heuristic "memx.memxequities.memoirdepthfeed.sbe.v1.3.lua_udp" \
  -d "udp.port==${PORT},memx.memxequities.memoirdepthfeed.sbe.v1.3.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingSessionStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr; fi

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.tradingsession" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
