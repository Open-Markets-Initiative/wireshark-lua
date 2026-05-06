set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/AmendOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (AmendOrderRejectMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.execid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.orderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.reasonorderrejectreason" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/AmendOrderRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRequestMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (AmendOrderRequestMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRequestMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.price" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.flagsreplaceorderflags" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/AmendOrderResponseMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (AmendOrderResponseMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.execid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.orderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.price" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.receivetime" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.status" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.cancelreason" Coinbase.Deribit.OrdersApi.Sbe.v1.0.AmendOrderResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/CancelOrderRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderRequestMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderRequestMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderRequestMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/CancelOrderResponseMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderResponseMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.execid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.orderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.receivetime" Coinbase.Deribit.OrdersApi.Sbe.v1.0.CancelOrderResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/MassQuoteRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRejectMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (MassQuoteRejectMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRejectMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.execid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.quoteid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.mmpgroupid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.reasonmassquoterejectreason" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/MassQuoteRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRequestMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (MassQuoteRequestMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRequestMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.quoteid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.mmpgroupid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.selfmatchpreventionid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.flagsmassquoteflags" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/MassQuoteResponseMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteResponseMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (MassQuoteResponseMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteResponseMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.execid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.quoteid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.mmpgroupid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.receivetime" Coinbase.Deribit.OrdersApi.Sbe.v1.0.MassQuoteResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/NewOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderRejectMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.execid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.orderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.reasonorderrejectreason" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/NewOrderRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderRequestMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.price" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.selfmatchpreventionid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.side" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.timeinforce" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.flagsorderflags" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.selftradingmode" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/NewOrderResponseMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderResponseMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.execid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.orderid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.price" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.receivetime" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.side" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.status" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.cancelreason" Coinbase.Deribit.OrdersApi.Sbe.v1.0.NewOrderResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v1.0/OrderFilledMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v1_0_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v1.0.OrderFilledMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v1.0.OrderFilledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderFilledMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v1.0.OrderFilledMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v1.0.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v1.0.OrderFilledMessage.json
grep "coinbase.deribit.ordersapi.sbe.v1.0.execid" Coinbase.Deribit.OrdersApi.Sbe.v1.0.OrderFilledMessage.json
