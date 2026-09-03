set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/EnterOrderMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (EnterOrderMessage) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.EnterOrderMessage.json.stderr; exit 1; }

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
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/LoginAcceptedPacket.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json.stderr \
  || { echo "--- tshark FAILED (LoginAcceptedPacket) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.ouch.v1.11.session" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json
grep "jnx.jnxequities.pts.ouch.v1.11.sequencenumber" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginAcceptedPacket.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/LoginRequestPacket.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json.stderr \
  || { echo "--- tshark FAILED (LoginRequestPacket) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.ouch.v1.11.username" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json
grep "jnx.jnxequities.pts.ouch.v1.11.password" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json
grep "jnx.jnxequities.pts.ouch.v1.11.requestedsession" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json
grep "jnx.jnxequities.pts.ouch.v1.11.requestedsequencenumber" Jnx.JnxEquities.Pts.Ouch.v1.11.LoginRequestPacket.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/OrderAcceptedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAcceptedMessage) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.OrderAcceptedMessage.json.stderr; exit 1; }

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
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Ouch.v1.11/ReplaceOrderMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json 2> Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.ouch.v1.11.existingordertoken" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.replacementordertoken" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.quantity" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.price" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.timeinforce" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.display" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.jnxequities.pts.ouch.v1.11.minimumquantity" Jnx.JnxEquities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
