set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/InstrumentInfoMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentInfoMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json.stderr ]; then echo "--- tshark stderr (InstrumentInfoMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json.stderr; fi
echo "--- tshark diagnostic (InstrumentInfoMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoMessage.json; echo

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
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentInfoRequestMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json.stderr ]; then echo "--- tshark stderr (InstrumentInfoRequestMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json.stderr; fi
echo "--- tshark diagnostic (InstrumentInfoRequestMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json; echo

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.InstrumentInfoRequestMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/MassCancelOrderAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json.stderr ]; then echo "--- tshark stderr (MassCancelOrderAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json.stderr; fi
echo "--- tshark diagnostic (MassCancelOrderAckMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderAckMessage.json; echo

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
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (MassCancelOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json.stderr ]; then echo "--- tshark stderr (MassCancelOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (MassCancelOrderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.MassCancelOrderMessage.json; echo

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
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json.stderr ]; then echo "--- tshark stderr (NewOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (NewOrderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.NewOrderMessage.json; echo

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
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderFilledMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json.stderr ]; then echo "--- tshark stderr (OrderFilledMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderFilledMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderFilledMessage.json; echo

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
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplacedMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json.stderr ]; then echo "--- tshark stderr (OrderReplacedMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderReplacedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.OrderReplacedMessage.json; echo

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
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json.stderr ]; then echo "--- tshark stderr (ReplaceOrderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (ReplaceOrderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json; echo

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.clientorderid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.newlimitprice" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.newquantity" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.instrumentid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.ReplaceOrderMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/SetAccountMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json.stderr \
  || { echo "--- tshark FAILED (SetAccountMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json.stderr ]; then echo "--- tshark stderr (SetAccountMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json.stderr; fi
echo "--- tshark diagnostic (SetAccountMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json; echo

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.account" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAccountMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/SetAckMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json.stderr \
  || { echo "--- tshark FAILED (SetAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json.stderr ]; then echo "--- tshark stderr (SetAckMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json.stderr; fi
echo "--- tshark diagnostic (SetAckMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json; echo

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetAckMessage.json
tshark \
  -r "omi-data-packets/Coinbase/OrderApi.v1.4/SetTraderMessage.pcap" \
  -X "lua_script:Coinbase/Coinbase_CoinbaseDerivatives_OrdersApi_Sbe_v1_4_Dissector.lua" \
  -T json \
  > Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json 2> Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json.stderr \
  || { echo "--- tshark FAILED (SetTraderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json.stderr; exit 1; }
if [ -s Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json.stderr ]; then echo "--- tshark stderr (SetTraderMessage) ---"; cat Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json.stderr; fi
echo "--- tshark diagnostic (SetTraderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json; echo

grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.correlationid" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json
grep "coinbase.coinbasederivatives.ordersapi.sbe.v1.4.trader" Coinbase.CoinbaseDerivatives.OrdersApi.Sbe.v1.4.SetTraderMessage.json
