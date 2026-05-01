set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/AddOrderShortMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  --enable-heuristic "cboe.cfefutures.depthofbook.pitch.v1.1.6.lua_udp" \
  -d "udp.port==${PORT},cboe.cfefutures.depthofbook.pitch.v1.1.6.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr; fi

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.sideindicator" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/ModifyOrderShortMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  --enable-heuristic "cboe.cfefutures.depthofbook.pitch.v1.1.6.lua_udp" \
  -d "udp.port==${PORT},cboe.cfefutures.depthofbook.pitch.v1.1.6.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr; fi

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TimeMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  --enable-heuristic "cboe.cfefutures.depthofbook.pitch.v1.1.6.lua_udp" \
  -d "udp.port==${PORT},cboe.cfefutures.depthofbook.pitch.v1.1.6.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr ]; then echo "--- tshark stderr (TimeMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr; fi

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.time" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.epoch" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TradingStatusMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  --enable-heuristic "cboe.cfefutures.depthofbook.pitch.v1.1.6.lua_udp" \
  -d "udp.port==${PORT},cboe.cfefutures.depthofbook.pitch.v1.1.6.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingStatusMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr; fi

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved2" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradingstatus" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved3" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
