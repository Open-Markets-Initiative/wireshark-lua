set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/CancelOrderMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_Orders_Ouch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json 2> Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.orders.ouch.v5.0.userrefnum" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.quantity" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/CanceledMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_Orders_Ouch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json 2> Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json.stderr \
  || { echo "--- tshark FAILED (CanceledMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.orders.ouch.v5.0.timestamp" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.userrefnum" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.quantity" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.cancelorderreason" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/EnterOrderMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_Orders_Ouch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json 2> Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (EnterOrderMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.orders.ouch.v5.0.userrefnum" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.side" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.quantity" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.symbol" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.price" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.timeinforce" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.display" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.capacity" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.intermarketsweepeligibility" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.crosstype" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.clordid" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.appendagelength" Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/OrderAcceptedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_Orders_Ouch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json 2> Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAcceptedMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.orders.ouch.v5.0.timestamp" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.userrefnum" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.side" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.quantity" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.symbol" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.price" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.timeinforce" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.display" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.orderreferencenumber" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.capacity" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.intermarketsweepeligibility" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.crosstype" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.orderstate" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.clordid" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.appendagelength" Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json
