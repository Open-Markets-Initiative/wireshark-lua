set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderAddedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderAddedMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; else echo "could not detect transport port for OrderAddedMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderAddedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAddedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr ]; then echo "--- tshark stderr (OrderAddedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderAddedMessage) ---"
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json | sort -u | head -n 40

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.side" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.price" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderDeletedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderDeletedMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; else echo "could not detect transport port for OrderDeletedMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderDeletedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeletedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderDeletedMessage) ---"
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json | sort -u | head -n 40

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderExecutedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderExecutedMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; else echo "could not detect transport port for OrderExecutedMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderExecutedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutedMessage) ---"
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json | sort -u | head -n 40

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.tradeid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.price" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderReducedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderReducedMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; else echo "could not detect transport port for OrderReducedMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/OrderReducedMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReducedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr ]; then echo "--- tshark stderr (OrderReducedMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderReducedMessage) ---"
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json | sort -u | head -n 40

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.orderid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.quantity" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/SecurityTradingStatusMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/SecurityTradingStatusMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; else echo "could not detect transport port for SecurityTradingStatusMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/SecurityTradingStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityTradingStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (SecurityTradingStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (SecurityTradingStatusMessage) ---"
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json | sort -u | head -n 40

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securityid" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securitytradingstatus" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.securitytradingstatusreason" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.SecurityTradingStatusMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/TradingSessionStatusMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/TradingSessionStatusMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,memx.memxequities.memoirdepthfeed.sbe.v1.3.lua"; else echo "could not detect transport port for TradingSessionStatusMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Memx/Equities.MemiorDepth.v1.3/TradingSessionStatusMessage.pcap" \
  -X "lua_script:Memx/Memx_MemxEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json 2> Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingSessionStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr; exit 1; }
if [ -s Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingSessionStatusMessage) ---"; cat Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (TradingSessionStatusMessage) ---"
echo "json bytes: $(wc -c < Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json | sort -u | head -n 40

grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.timestamp" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
grep "memx.memxequities.memoirdepthfeed.sbe.v1.3.tradingsession" Memx.MemxEquities.MemoirDepthFeed.Sbe.v1.3.TradingSessionStatusMessage.json
