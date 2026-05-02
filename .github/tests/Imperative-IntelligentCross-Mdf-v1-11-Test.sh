set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Imperative/IntelligentCross.Mdf.v1.11/OrderExecutedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Imperative/IntelligentCross.Mdf.v1.11/OrderExecutedMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,imperative.intelligentcross.mdf.v1.11.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,imperative.intelligentcross.mdf.v1.11.lua"; else echo "could not detect transport port for OrderExecutedMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Imperative/IntelligentCross.Mdf.v1.11/OrderExecutedMessage.pcap" \
  -X "lua_script:Imperative/Imperative_IntelligentCross_Mdf_v1_11_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json 2> Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutedMessage) ---"
echo "json bytes: $(wc -c < Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json | sort -u | head -n 40

grep "imperative.intelligentcross.mdf.v1.11.symbolid" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.timestamp" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.orderid" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.shares" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.executionid" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.reserved1" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
grep "imperative.intelligentcross.mdf.v1.11.price" Imperative.IntelligentCross.Mdf.v1.11.OrderExecutedMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Imperative/IntelligentCross.Mdf.v1.11/TradeMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Imperative/IntelligentCross.Mdf.v1.11/TradeMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,imperative.intelligentcross.mdf.v1.11.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,imperative.intelligentcross.mdf.v1.11.lua"; else echo "could not detect transport port for TradeMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Imperative/IntelligentCross.Mdf.v1.11/TradeMessage.pcap" \
  -X "lua_script:Imperative/Imperative_IntelligentCross_Mdf_v1_11_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json 2> Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json.stderr; exit 1; }
if [ -s Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json.stderr ]; then echo "--- tshark stderr (TradeMessage) ---"; cat Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json.stderr; fi
echo "--- tshark diagnostic (TradeMessage) ---"
echo "json bytes: $(wc -c < Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json | sort -u | head -n 40

grep "imperative.intelligentcross.mdf.v1.11.symbolid" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.timestamp" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.reserved8" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.reserved1" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.shares" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.symbol" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.price" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
grep "imperative.intelligentcross.mdf.v1.11.executionid" Imperative.IntelligentCross.Mdf.v1.11.TradeMessage.json
