set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/EnterOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/EnterOrderMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.ouch.v1.11.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (EnterOrderMessage) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json.stderr ]; then echo "--- tshark stderr (EnterOrderMessage) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (EnterOrderMessage) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.ouch.v1.11.ordertoken" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.clientreference" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.buysellindicator" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.quantity" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.orderbookid" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.group" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.price" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.timeinforce" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.firmid" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.display" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.capacity" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.minimumquantity" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.orderclassification" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.cashmargintype" Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/LoginAcceptedPacket.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/LoginAcceptedPacket.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.ouch.v1.11.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json.stderr \
  || { echo "--- tshark FAILED (LoginAcceptedPacket) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json.stderr ]; then echo "--- tshark stderr (LoginAcceptedPacket) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json.stderr; fi
echo "--- tshark diagnostic (LoginAcceptedPacket) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.ouch.v1.11.session" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json
grep "jnx.jnxequities.pts.ouch.v1.11.sequencenumber" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/LoginRequestPacket.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/LoginRequestPacket.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.ouch.v1.11.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json.stderr \
  || { echo "--- tshark FAILED (LoginRequestPacket) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json.stderr ]; then echo "--- tshark stderr (LoginRequestPacket) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json.stderr; fi
echo "--- tshark diagnostic (LoginRequestPacket) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.ouch.v1.11.username" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json
grep "jnx.jnxequities.pts.ouch.v1.11.password" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json
grep "jnx.jnxequities.pts.ouch.v1.11.requestedsession" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json
grep "jnx.jnxequities.pts.ouch.v1.11.requestedsequencenumber" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/OrderAcceptedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/OrderAcceptedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.ouch.v1.11.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAcceptedMessage) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json.stderr ]; then echo "--- tshark stderr (OrderAcceptedMessage) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderAcceptedMessage) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.ouch.v1.11.timestamp" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.ordertoken" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.clientreference" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.buysellindicator" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.quantity" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.orderbookid" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.group" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.price" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.timeinforce" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.firmid" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.display" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.capacity" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.ordernumber" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.minimumquantity" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.orderstate" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.orderclassification" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.cashmargintype" Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/ReplaceOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/ReplaceOrderMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.ouch.v1.11.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json.stderr ]; then echo "--- tshark stderr (ReplaceOrderMessage) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (ReplaceOrderMessage) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.ouch.v1.11.existingordertoken" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.replacementordertoken" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.quantity" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.price" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.timeinforce" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.display" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.minimumquantity" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
