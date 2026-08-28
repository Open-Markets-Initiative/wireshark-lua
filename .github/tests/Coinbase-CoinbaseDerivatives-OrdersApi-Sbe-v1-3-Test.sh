set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/CancelOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/CancelOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderRejectMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderRejectMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.orderidoptional" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.cancelorderrejectreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.cancelorderrejectdetails" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.CancelOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/LastExecIdMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdMessage.json.stderr \
  || { echo "--- tshark FAILED (LastExecIdMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.lastexecid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/LastExecIdRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdRequestMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (LastExecIdRequestMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdRequestMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LastExecIdRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/LoggedOutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LoggedOutMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LoggedOutMessage.json.stderr \
  || { echo "--- tshark FAILED (LoggedOutMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LoggedOutMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.reason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LoggedOutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/LogonConfMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonConfMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonConfMessage.json.stderr \
  || { echo "--- tshark FAILED (LogonConfMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonConfMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.heartbeatintervalseconds" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonConfMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/LogonMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonMessage.json.stderr \
  || { echo "--- tshark FAILED (LogonMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.username" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.password" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.resetseqnum" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogonMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/LogoutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogoutMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogoutMessage.json.stderr \
  || { echo "--- tshark FAILED (LogoutMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogoutMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.reason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.LogoutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/MassCancelOrderAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderAckMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderAckMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.canceledcount" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.onlycurrentsession" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.tradinglockapplied" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/MassCancelOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.currentsessiononly" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.requesttradinglock" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/MassCancelOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderRejectMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderRejectMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.errormessage" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.MassCancelOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/NewOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.NewOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.NewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.NewOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.quantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.NewOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/OrderCanceledMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCanceledMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.cancelreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderCanceledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/OrderEnteredMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderEnteredMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderEnteredMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderEnteredMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderEnteredMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderEnteredMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/OrderFilledMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderFilledMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.matchid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.filledvwap" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.availableqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.fillprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.fillqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.isaggressor" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderFilledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/OrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderRejectMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderRejectMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.orderidoptional" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.orderrejectreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.orderrejectdetails" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/OrderReplacedMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplacedMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.availableqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.OrderReplacedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/PingMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PingMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PingMessage.json.stderr \
  || { echo "--- tshark FAILED (PingMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PingMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PingMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.requesttime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/PongMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PongMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PongMessage.json.stderr \
  || { echo "--- tshark FAILED (PongMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PongMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PongMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.requesttime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PongMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.servertime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PongMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.tradinginstrumentstatus" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.PongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/ReplaceOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.ReplaceOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.ReplaceOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.newlimitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.newquantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/SetAccountMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetAccountMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetAccountMessage.json.stderr \
  || { echo "--- tshark FAILED (SetAccountMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetAccountMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetAccountMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.account" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetAccountMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/SetAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetAckMessage.json.stderr \
  || { echo "--- tshark FAILED (SetAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetAckMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/SetTraderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetTraderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetTraderMessage.json.stderr \
  || { echo "--- tshark FAILED (SetTraderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetTraderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetTraderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.trader" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.SetTraderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/StreamOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (StreamOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.lastprocessedfillid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.quantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.StreamOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/UnlockTradingAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingAckMessage.json.stderr \
  || { echo "--- tshark FAILED (UnlockTradingAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingAckMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.numusersaffected" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.3/UnlockTradingMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_3_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingMessage.json.stderr \
  || { echo "--- tshark FAILED (UnlockTradingMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.3.currentsessiononly" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.3.UnlockTradingMessage.json
