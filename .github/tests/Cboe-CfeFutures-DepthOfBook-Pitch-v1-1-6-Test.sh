set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/AddOrderShortMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -d "udp.port==$port,cboe.cfefutures.depthofbook.pitch.v1.1.6.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrderShortMessage) ---"
echo "json bytes: $(wc -c < Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json | sort -u | head -n 40

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.sideindicator" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.AddOrderShortMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/ModifyOrderShortMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -d "udp.port==$port,cboe.cfefutures.depthofbook.pitch.v1.1.6.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderShortMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json.stderr; fi
echo "--- tshark diagnostic (ModifyOrderShortMessage) ---"
echo "json bytes: $(wc -c < Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json | sort -u | head -n 40

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.orderid" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortquantity" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.shortprice" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.ModifyOrderShortMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TimeMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -d "udp.port==$port,cboe.cfefutures.depthofbook.pitch.v1.1.6.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr; exit 1; }
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr ]; then echo "--- tshark stderr (TimeMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json.stderr; fi
echo "--- tshark diagnostic (TimeMessage) ---"
echo "json bytes: $(wc -c < Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json | sort -u | head -n 40

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.time" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.epoch" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TimeMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TradingStatusMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Futures.DepthOfBook.Pitch.v1.1.6/TradingStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_DepthOfBook_Pitch_v1_1_6_Dissector.lua" \
  -d "udp.port==$port,cboe.cfefutures.depthofbook.pitch.v1.1.6.lua" \
  -T json \
  > Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json 2> Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr; exit 1; }
if [ -s Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingStatusMessage) ---"; cat Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (TradingStatusMessage) ---"
echo "json bytes: $(wc -c < Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json | sort -u | head -n 40

grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.timeoffset" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.symbol" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved2" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.tradingstatus" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
grep "cboe.cfefutures.depthofbook.pitch.v1.1.6.reserved3" Cboe.CfeFutures.DepthOfBook.Pitch.v1.1.6.TradingStatusMessage.json
