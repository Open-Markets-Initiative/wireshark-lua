set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/CancelOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/CancelOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderRejectMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderRejectMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.orderidoptional" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.cancelorderrejectreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.cancelorderrejectdetails" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.CancelOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/LastExecIdMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdMessage.json.stderr \
  || { echo "--- tshark FAILED (LastExecIdMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.lastexecid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/LastExecIdRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdRequestMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (LastExecIdRequestMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdRequestMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LastExecIdRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/LoggedOutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LoggedOutMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LoggedOutMessage.json.stderr \
  || { echo "--- tshark FAILED (LoggedOutMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LoggedOutMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.reasonstring64" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LoggedOutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/LogonConfMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonConfMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonConfMessage.json.stderr \
  || { echo "--- tshark FAILED (LogonConfMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonConfMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.heartbeatintervalseconds" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonConfMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/LogonMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonMessage.json.stderr \
  || { echo "--- tshark FAILED (LogonMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.username" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.password" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.resetseqnum" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogonMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/LogoutMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogoutMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogoutMessage.json.stderr \
  || { echo "--- tshark FAILED (LogoutMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogoutMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.reasonstring64" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.LogoutMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/MassCancelOrderAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderAckMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderAckMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.canceledcount" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.onlycurrentsession" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.tradinglockapplied" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/MassCancelOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.currentsessiononly" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.requesttradinglock" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/MassCancelOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderRejectMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderRejectMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.errormessage" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.MassCancelOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/NewOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.quantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.flags" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.goodtildate" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.NewOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/OrderCanceledMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCanceledMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.cancelreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderCanceledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/OrderEnteredMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderEnteredMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderEnteredMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderEnteredMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderEnteredMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderEnteredMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderEnteredMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/OrderFilledMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderFilledMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.matchid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.filledvwap" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.availableqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.fillprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.fillqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.isaggressor" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderFilledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/OrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderRejectMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderRejectMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.orderidoptional" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.orderrejectreason" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderRejectMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.orderrejectdetails" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/OrderReplacedMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplacedMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.availableqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.OrderReplacedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/PingMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PingMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PingMessage.json.stderr \
  || { echo "--- tshark FAILED (PingMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PingMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PingMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.requesttime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/PongMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PongMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PongMessage.json.stderr \
  || { echo "--- tshark FAILED (PongMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PongMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PongMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.requesttime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PongMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.servertime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PongMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.tradinginstrumentstatus" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.PongMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/ReplaceOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.newlimitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.newquantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.goodtildate" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timeinforce" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/SetAccountMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetAccountMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetAccountMessage.json.stderr \
  || { echo "--- tshark FAILED (SetAccountMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetAccountMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetAccountMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.account" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetAccountMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/SetAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetAckMessage.json.stderr \
  || { echo "--- tshark FAILED (SetAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetAckMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/SetTraderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetTraderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetTraderMessage.json.stderr \
  || { echo "--- tshark FAILED (SetTraderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetTraderMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetTraderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.trader" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.SetTraderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/UnlockTradingAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingAckMessage.json.stderr \
  || { echo "--- tshark FAILED (UnlockTradingAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingAckMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.numusersaffected" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/CoinbaseDerivatives.OrdersApi.Sbe.v1.8/UnlockTradingMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_8_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingMessage.json.stderr \
  || { echo "--- tshark FAILED (UnlockTradingMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingMessage.json.stderr; exit 1; }

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.8.currentsessiononly" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.8.UnlockTradingMessage.json
