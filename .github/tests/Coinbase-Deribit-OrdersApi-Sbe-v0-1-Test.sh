set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/AmendOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (AmendOrderRejectMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.execid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.orderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.reasonorderrejectreason" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/AmendOrderRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRequestMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (AmendOrderRequestMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRequestMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.price" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.flagsreplaceorderflags" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/AmendOrderResponseMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (AmendOrderResponseMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.execid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.orderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.price" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.receivetime" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.status" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.cancelreason" Coinbase.Deribit.OrdersApi.Sbe.v0.1.AmendOrderResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/CancelOrderRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderRequestMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderRequestMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderRequestMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/CancelOrderResponseMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderResponseMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.execid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.orderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.receivetime" Coinbase.Deribit.OrdersApi.Sbe.v0.1.CancelOrderResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/MassQuoteRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRejectMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (MassQuoteRejectMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRejectMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.execid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.quoteid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.mmpgroupid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.reasonmassquoterejectreason" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/MassQuoteRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRequestMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (MassQuoteRequestMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRequestMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.quoteid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.mmpgroupid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.selfmatchpreventionid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.flagsmassquoteflags" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/MassQuoteResponseMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteResponseMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (MassQuoteResponseMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteResponseMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.execid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.quoteid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.mmpgroupid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.receivetime" Coinbase.Deribit.OrdersApi.Sbe.v0.1.MassQuoteResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/NewOrderRejectMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderRejectMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.execid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.orderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.reasonorderrejectreason" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/NewOrderRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderRequestMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.price" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.selfmatchpreventionid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.side" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.timeinforce" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.flagsorderflags" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.selftradingmode" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderRequestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/NewOrderResponseMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderResponseMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.execid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.clientorderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.correlationid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.orderid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.instrumentid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.price" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.receivetime" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.side" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.status" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.cancelreason" Coinbase.Deribit.OrdersApi.Sbe.v0.1.NewOrderResponseMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Coinbase/Deribit.OrdersApi.v0.1/OrderFilledMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Deribit_OrdersApi_Sbe_v0_1_Dissector.lua" \
  -T json \
  > Coinbase.Deribit.OrdersApi.Sbe.v0.1.OrderFilledMessage.json 2> Coinbase.Deribit.OrdersApi.Sbe.v0.1.OrderFilledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderFilledMessage) ---"; cat Coinbase.Deribit.OrdersApi.Sbe.v0.1.OrderFilledMessage.json.stderr; exit 1; }

grep "coinbase.deribit.ordersapi.sbe.v0.1.timestamp" Coinbase.Deribit.OrdersApi.Sbe.v0.1.OrderFilledMessage.json
grep "coinbase.deribit.ordersapi.sbe.v0.1.execid" Coinbase.Deribit.OrdersApi.Sbe.v0.1.OrderFilledMessage.json
