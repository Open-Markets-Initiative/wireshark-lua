set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/InstrumentInfoMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.securitytype" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.instrumentstatus" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.islastmessage" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.reservedbyte" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.symbol" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/InstrumentInfoRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/MassCancelOrderAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.execid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.canceledcount" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.onlycurrentsession" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.tradinglockapplied" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/MassCancelOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.limitprice" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.side" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.currentsessiononly" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.requesttradinglock" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/NewOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.limitprice" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.quantity" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.side" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/OrderFilledMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.execid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.matchid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.orderid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.filledvwap" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.totalfilled" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.availableqty" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.fillprice" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.fillqty" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.isaggressor" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/OrderReplacedMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.execid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.orderid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.receivetime" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.totalfilled" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.availableqty" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/ReplaceOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.newlimitprice" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.newquantity" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/SetAccountMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.account" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/SetAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/SetTraderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_Derivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["coinbase.derivatives.ordersapi.sbe.v1.4.lua"]' \
  > Coinbase.Derivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json

grep "coinbase.derivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json
grep "coinbase.derivatives.ordersapi.sbe.v1.4.trader" Coinbase.Derivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json
