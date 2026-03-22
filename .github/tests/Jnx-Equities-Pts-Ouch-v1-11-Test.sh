set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Ouch.v1.11/EnterOrderMessage.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["jnx.equities.pts.ouch.v1.11.lua"]' \
  > Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json

grep "jnx.equities.pts.ouch.v1.11.ordertoken" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.clientreference" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.buysellindicator" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.quantity" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.orderbookid" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.group" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.price" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.timeinforce" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.firmid" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.display" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.capacity" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.minimumquantity" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.orderclassification" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.cashmargintype" Jnx.Equities.Pts.Ouch.v1.11.EnterOrderMessage.json
tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Ouch.v1.11/LoginAcceptedPacket.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["jnx.equities.pts.ouch.v1.11.lua"]' \
  > Jnx.Equities.Pts.Ouch.v1.11.LoginAcceptedPacket.json

grep "jnx.equities.pts.ouch.v1.11.session" Jnx.Equities.Pts.Ouch.v1.11.LoginAcceptedPacket.json
grep "jnx.equities.pts.ouch.v1.11.sequencenumber" Jnx.Equities.Pts.Ouch.v1.11.LoginAcceptedPacket.json
tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Ouch.v1.11/LoginRequestPacket.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["jnx.equities.pts.ouch.v1.11.lua"]' \
  > Jnx.Equities.Pts.Ouch.v1.11.LoginRequestPacket.json

grep "jnx.equities.pts.ouch.v1.11.username" Jnx.Equities.Pts.Ouch.v1.11.LoginRequestPacket.json
grep "jnx.equities.pts.ouch.v1.11.password" Jnx.Equities.Pts.Ouch.v1.11.LoginRequestPacket.json
grep "jnx.equities.pts.ouch.v1.11.requestedsession" Jnx.Equities.Pts.Ouch.v1.11.LoginRequestPacket.json
grep "jnx.equities.pts.ouch.v1.11.requestedsequencenumber" Jnx.Equities.Pts.Ouch.v1.11.LoginRequestPacket.json
tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Ouch.v1.11/OrderAcceptedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["jnx.equities.pts.ouch.v1.11.lua"]' \
  > Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json

grep "jnx.equities.pts.ouch.v1.11.timestamp" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.ordertoken" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.clientreference" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.buysellindicator" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.quantity" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.orderbookid" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.group" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.price" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.timeinforce" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.firmid" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.display" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.capacity" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.ordernumber" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.minimumquantity" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.orderstate" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.orderclassification" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
grep "jnx.equities.pts.ouch.v1.11.cashmargintype" Jnx.Equities.Pts.Ouch.v1.11.OrderAcceptedMessage.json
tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Ouch.v1.11/ReplaceOrderMessage.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Ouch_v1_11_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["jnx.equities.pts.ouch.v1.11.lua"]' \
  > Jnx.Equities.Pts.Ouch.v1.11.ReplaceOrderMessage.json

grep "jnx.equities.pts.ouch.v1.11.existingordertoken" Jnx.Equities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.replacementordertoken" Jnx.Equities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.quantity" Jnx.Equities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.price" Jnx.Equities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.timeinforce" Jnx.Equities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.display" Jnx.Equities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
grep "jnx.equities.pts.ouch.v1.11.minimumquantity" Jnx.Equities.Pts.Ouch.v1.11.ReplaceOrderMessage.json
