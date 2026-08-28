set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/CancelOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelOrderMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelOrderMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.origclordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofcancelorderbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/CancelRejectedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelRejectedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelRejectedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelRejectedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelrejectreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.text" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.CancelRejectedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/ClientHeartbeatMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ClientHeartbeatMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ClientHeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (ClientHeartbeatMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ClientHeartbeatMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/LoginRequestMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginRequestMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginRequestMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginRequestMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.sessionsubid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginRequestMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.username" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginRequestMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.password" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginRequestMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofparamgroups" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/LoginResponseMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginResponseMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.loginresponsestatus" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.loginresponsetext" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.nounspecifiedunitreplay" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.lastreceivedsequencenumber" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofunits" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.unitsequence" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofparamgroups" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LoginResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/LogoutMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutMessage.json.stderr \
  || { echo "--- tshark FAILED (LogoutMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.logoutreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.logoutreasontext" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.lastreceivedsequencenumber" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofunits" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.unitsequence" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/LogoutRequestMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutRequestMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (LogoutRequestMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.LogoutRequestMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/ModifyOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ModifyOrderMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ModifyOrderMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ModifyOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.origclordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ModifyOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofmodifyorderbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/NewOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.NewOrderMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.NewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.NewOrderMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.NewOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.side" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.NewOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.orderqty" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.NewOrderMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofneworderbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.NewOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderCancelledMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderCancelledMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderCancelledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelledMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderCancelledMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.transacttime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderCancelledMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderCancelledMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderCancelledMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderCancelledMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderCancelledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderExecutionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.execid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.lastshares" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.lastpx" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.leavesqty" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.baseliquidityindicator" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.subliquidityindicator" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.contrabroker" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderModifiedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderModifiedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderModifiedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderModifiedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderModifiedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderModifiedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderModifiedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.orderid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderModifiedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderModifiedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderModifiedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderRejectedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRejectedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderRejectedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRejectedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.orderrejectreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.text" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRejectedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/OrderRestatedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRestatedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRestatedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderRestatedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRestatedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRestatedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRestatedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.orderid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRestatedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.restatementreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRestatedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRestatedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.OrderRestatedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/PurgeRejectedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.PurgeRejectedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.PurgeRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (PurgeRejectedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.PurgeRejectedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.PurgeRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.purgerejectreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.PurgeRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.text" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.PurgeRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.PurgeRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.PurgeRejectedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/ReplayCompleteMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ReplayCompleteMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ReplayCompleteMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplayCompleteMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ReplayCompleteMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/ServerHeartbeatMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ServerHeartbeatMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ServerHeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (ServerHeartbeatMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.ServerHeartbeatMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/TradeCancelOrCorrectMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeCancelOrCorrectMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.orderid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.execrefid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.side" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.baseliquidityindicator" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clearingfirm" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clearingaccount" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.lastshares" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.lastpx" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.correctedprice" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.origtime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.TradeCancelOrCorrectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/BzxEquities.BinaryOrderEntry.Boe.v2.4.55/UserModifyRejectedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxEquities_BinaryOrderEntry_Boe_v2_3_Dissector.lua" \
  -T json \
  > Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.UserModifyRejectedMessage.json 2> Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.UserModifyRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (UserModifyRejectedMessage) ---"; cat Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.UserModifyRejectedMessage.json.stderr; exit 1; }

grep "cboe.bzxequities.binaryorderentry.boe.v2.3.transactiontime" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.UserModifyRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.UserModifyRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyrejectreason" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.UserModifyRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.text" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.UserModifyRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.UserModifyRejectedMessage.json
grep "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields" Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3.UserModifyRejectedMessage.json
