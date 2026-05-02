set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/CancelOrderRequest.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/CancelOrderRequest.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; else echo "could not detect transport port for CancelOrderRequest"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/CancelOrderRequest.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json 2> Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderRequest) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json.stderr; exit 1; }
if [ -s Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json.stderr ]; then echo "--- tshark stderr (CancelOrderRequest) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json.stderr; fi
echo "--- tshark diagnostic (CancelOrderRequest) ---"
echo "json bytes: $(wc -c < Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json | sort -u | head -n 40

grep "miax.pearlequities.expressorders.meo.v2.6.reserved8" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.mpid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.clientorderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.originalclientorderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.symbolid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved10" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/CancelOrderResponse.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/CancelOrderResponse.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; else echo "could not detect transport port for CancelOrderResponse"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/CancelOrderResponse.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json 2> Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderResponse) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json.stderr; exit 1; }
if [ -s Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json.stderr ]; then echo "--- tshark stderr (CancelOrderResponse) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json.stderr; fi
echo "--- tshark diagnostic (CancelOrderResponse) ---"
echo "json bytes: $(wc -c < Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json | sort -u | head -n 40

grep "miax.pearlequities.expressorders.meo.v2.6.matchingenginetime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.mpid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.clientorderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.originalclientorderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.symbolid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.orderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.leavesqty" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.cancelstatus" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved10" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/LoginRequest.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/LoginRequest.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; else echo "could not detect transport port for LoginRequest"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/LoginRequest.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json 2> Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json.stderr \
  || { echo "--- tshark FAILED (LoginRequest) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json.stderr; exit 1; }
if [ -s Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json.stderr ]; then echo "--- tshark stderr (LoginRequest) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json.stderr; fi
echo "--- tshark diagnostic (LoginRequest) ---"
echo "json bytes: $(wc -c < Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json | sort -u | head -n 40

grep "miax.pearlequities.expressorders.meo.v2.6.esesmversion" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.username" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.computerid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.applicationprotocol" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.requestedtradingsessionid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.requestedsequencenumber" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/LoginResponse.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/LoginResponse.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; else echo "could not detect transport port for LoginResponse"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/LoginResponse.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json 2> Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json.stderr \
  || { echo "--- tshark FAILED (LoginResponse) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json.stderr; exit 1; }
if [ -s Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json.stderr ]; then echo "--- tshark stderr (LoginResponse) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json.stderr; fi
echo "--- tshark diagnostic (LoginResponse) ---"
echo "json bytes: $(wc -c < Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json | sort -u | head -n 40

grep "miax.pearlequities.expressorders.meo.v2.6.numberofmatchingengines" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.loginstatus" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.tradingsessionid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.highestsequencenumber" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/NewOrderNotification.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/NewOrderNotification.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; else echo "could not detect transport port for NewOrderNotification"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/NewOrderNotification.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json 2> Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json.stderr \
  || { echo "--- tshark FAILED (NewOrderNotification) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json.stderr; exit 1; }
if [ -s Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json.stderr ]; then echo "--- tshark stderr (NewOrderNotification) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json.stderr; fi
echo "--- tshark diagnostic (NewOrderNotification) ---"
echo "json bytes: $(wc -c < Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json | sort -u | head -n 40

grep "miax.pearlequities.expressorders.meo.v2.6.matchingenginetime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.mpid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.orderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.clientorderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.symbolid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.price" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.size" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.neworderinstructions" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.timeinforce" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.ordertype" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.priceslidingandrepricefrequency" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.selftradeprotection" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.selftradeprotectiongroup" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.routing" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.tradingcollardollarvalue" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.capacity" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.account" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.clearingaccount" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.minqty" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.maxfloorqty" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.displayrangeqty" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.pegoffset" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.locateaccount" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.purgegroup" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.originalordercapacity" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved18" Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/OrderPriceUpdateNotification.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/OrderPriceUpdateNotification.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; else echo "could not detect transport port for OrderPriceUpdateNotification"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/OrderPriceUpdateNotification.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json 2> Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json.stderr \
  || { echo "--- tshark FAILED (OrderPriceUpdateNotification) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json.stderr; exit 1; }
if [ -s Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json.stderr ]; then echo "--- tshark stderr (OrderPriceUpdateNotification) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json.stderr; fi
echo "--- tshark diagnostic (OrderPriceUpdateNotification) ---"
echo "json bytes: $(wc -c < Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json | sort -u | head -n 40

grep "miax.pearlequities.expressorders.meo.v2.6.matchingenginetime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.symbolid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.orderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.workingprice" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.nbboindicator" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved9" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/SymbolUpdate.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/SymbolUpdate.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; else echo "could not detect transport port for SymbolUpdate"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/SymbolUpdate.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json 2> Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json.stderr \
  || { echo "--- tshark FAILED (SymbolUpdate) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json.stderr; exit 1; }
if [ -s Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json.stderr ]; then echo "--- tshark stderr (SymbolUpdate) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json.stderr; fi
echo "--- tshark diagnostic (SymbolUpdate) ---"
echo "json bytes: $(wc -c < Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json | sort -u | head -n 40

grep "miax.pearlequities.expressorders.meo.v2.6.matchingenginetime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.symbolid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.tickersymbol" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved1" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.testsecurityindicator" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.future" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.lotsize" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.openingtime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.closingtime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.primarymarketcode" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved12" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/SystemStateNotification.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/SystemStateNotification.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.pearlequities.expressorders.meo.v2.6.lua"; else echo "could not detect transport port for SystemStateNotification"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/SystemStateNotification.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json 2> Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json.stderr \
  || { echo "--- tshark FAILED (SystemStateNotification) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json.stderr; exit 1; }
if [ -s Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json.stderr ]; then echo "--- tshark stderr (SystemStateNotification) ---"; cat Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json.stderr; fi
echo "--- tshark diagnostic (SystemStateNotification) ---"
echo "json bytes: $(wc -c < Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json | sort -u | head -n 40

grep "miax.pearlequities.expressorders.meo.v2.6.matchingenginetime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.meoversion" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.sessionid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.systemstatus" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved8" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
