set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/CancelOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  --enable-heuristic "cboe.bzxoptions.orderentry.boe.v2.10.lua_udp" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr ]; then echo "--- tshark stderr (CancelOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr; fi

grep "cboe.bzxoptions.orderentry.boe.v2.10.origclordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginRequestMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  --enable-heuristic "cboe.bzxoptions.orderentry.boe.v2.10.lua_udp" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr ]; then echo "--- tshark stderr (LoginRequestMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr; fi

grep "cboe.bzxoptions.orderentry.boe.v2.10.sessionsubid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.username" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.password" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofparamgroups" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginResponseMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  --enable-heuristic "cboe.bzxoptions.orderentry.boe.v2.10.lua_udp" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr ]; then echo "--- tshark stderr (LoginResponseMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr; fi

grep "cboe.bzxoptions.orderentry.boe.v2.10.loginresponsestatus" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.loginresponsetext" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.nounspecifiedunitreplay" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.lastreceivedsequencenumber" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofunits" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofparamgroups" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/ModifyOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  --enable-heuristic "cboe.bzxoptions.orderentry.boe.v2.10.lua_udp" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr; fi

grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.origclordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/NewOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  --enable-heuristic "cboe.bzxoptions.orderentry.boe.v2.10.lua_udp" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr ]; then echo "--- tshark stderr (NewOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr; fi

grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.side" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderqty" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderCancelledMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  --enable-heuristic "cboe.bzxoptions.orderentry.boe.v2.10.lua_udp" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr ]; then echo "--- tshark stderr (OrderCancelledMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr; fi

grep "cboe.bzxoptions.orderentry.boe.v2.10.transacttime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.cancelreason" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderModifiedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  --enable-heuristic "cboe.bzxoptions.orderentry.boe.v2.10.lua_udp" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr ]; then echo "--- tshark stderr (OrderModifiedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr; fi

grep "cboe.bzxoptions.orderentry.boe.v2.10.transactiontime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderRejectedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  --enable-heuristic "cboe.bzxoptions.orderentry.boe.v2.10.lua_udp" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr ]; then echo "--- tshark stderr (OrderRejectedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr; fi

grep "cboe.bzxoptions.orderentry.boe.v2.10.transactiontime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderrejectreason" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.text" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
