set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/CancelOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/CancelOrderMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_Orders_Ouch_v5_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.nsmequities.orders.ouch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json 2> Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json.stderr ]; then echo "--- tshark stderr (CancelOrderMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (CancelOrderMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json | sort -u | head -n 40

grep "nasdaq.nsmequities.orders.ouch.v5.0.userrefnum" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.quantity" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CancelOrderMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/CanceledMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/CanceledMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_Orders_Ouch_v5_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.nsmequities.orders.ouch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json 2> Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json.stderr \
  || { echo "--- tshark FAILED (CanceledMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json.stderr ]; then echo "--- tshark stderr (CanceledMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json.stderr; fi
echo "--- tshark diagnostic (CanceledMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json | sort -u | head -n 40

grep "nasdaq.nsmequities.orders.ouch.v5.0.timestamp" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.userrefnum" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.quantity" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json
grep "nasdaq.nsmequities.orders.ouch.v5.0.cancelorderreason" Nasdaq.NsmEquities.Orders.Ouch.v5.0.CanceledMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/EnterOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/EnterOrderMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_Orders_Ouch_v5_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.nsmequities.orders.ouch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json 2> Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (EnterOrderMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json.stderr ]; then echo "--- tshark stderr (EnterOrderMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (EnterOrderMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.Orders.Ouch.v5.0.EnterOrderMessage.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/OrderAcceptedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Nsm.Ouch.v5.0/OrderAcceptedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_Orders_Ouch_v5_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.nsmequities.orders.ouch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json 2> Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAcceptedMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json.stderr ]; then echo "--- tshark stderr (OrderAcceptedMessage) ---"; cat Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderAcceptedMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.Orders.Ouch.v5.0.OrderAcceptedMessage.json | sort -u | head -n 40

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
