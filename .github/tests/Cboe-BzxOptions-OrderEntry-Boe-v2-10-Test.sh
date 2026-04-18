set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/CancelOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json

grep "cboe.bzxoptions.orderentry.boe.v2.10.origclordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginRequestMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json

grep "cboe.bzxoptions.orderentry.boe.v2.10.sessionsubid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.username" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.password" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofparamgroups" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginResponseMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json

grep "cboe.bzxoptions.orderentry.boe.v2.10.loginresponsestatus" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.loginresponsetext" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.nounspecifiedunitreplay" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.lastreceivedsequencenumber" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofunits" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofparamgroups" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/ModifyOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json

grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.origclordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/NewOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json

grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.side" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderqty" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderCancelledMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json

grep "cboe.bzxoptions.orderentry.boe.v2.10.transacttime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.cancelreason" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderModifiedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json

grep "cboe.bzxoptions.orderentry.boe.v2.10.transactiontime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderRejectedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json

grep "cboe.bzxoptions.orderentry.boe.v2.10.transactiontime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderrejectreason" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.text" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
