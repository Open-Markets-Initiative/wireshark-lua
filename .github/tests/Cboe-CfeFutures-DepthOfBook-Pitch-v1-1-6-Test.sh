set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrderShortMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json; echo

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.sideindicator" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr; fi
echo "--- tshark diagnostic (ModifyOrderShortMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json; echo

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr; exit 1; }
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr ]; then echo "--- tshark stderr (TimeMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr; fi
echo "--- tshark diagnostic (TimeMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json; echo

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.time" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.epoch" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr; exit 1; }
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingStatusMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (TradingStatusMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json; echo

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved2" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradingstatus" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved3" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
