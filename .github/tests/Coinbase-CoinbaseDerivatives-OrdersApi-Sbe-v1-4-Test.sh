set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/InstrumentInfoMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.securitytype" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentstatus" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.islastmessage" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.reservedbyte" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.symbol" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/InstrumentInfoRequestMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/MassCancelOrderAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.canceledcount" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.onlycurrentsession" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.tradinglockapplied" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/MassCancelOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.currentsessiononly" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.requesttradinglock" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/NewOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.limitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.quantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.side" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/OrderFilledMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.matchid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.filledvwap" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.availableqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.fillprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.fillqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.isaggressor" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/OrderReplacedMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.timestamp" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.execid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.orderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.receivetime" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.totalfilled" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.availableqty" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/ReplaceOrderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.newlimitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.newquantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/SetAccountMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.account" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/SetAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/SetTraderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.trader" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json
