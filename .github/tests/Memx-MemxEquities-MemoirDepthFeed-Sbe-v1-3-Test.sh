set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderAddedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAddedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr ]; then echo "--- tshark stderr (OrderAddedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderAddedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json; echo

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.side" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.price" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderDeletedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeletedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderDeletedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json; echo

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderExecutedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json; echo

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.tradeid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.price" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderReducedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReducedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr ]; then echo "--- tshark stderr (OrderReducedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderReducedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json; echo

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/SecurityTradingStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityTradingStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (SecurityTradingStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (SecurityTradingStatusMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json; echo

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securitytradingstatus" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securitytradingstatusreason" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/TradingSessionStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingSessionStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingSessionStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (TradingSessionStatusMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json; echo

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.tradingsession" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
