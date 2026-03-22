set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/CancelOrderRequest.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json

grep "miax.pearlequities.expressorders.meo.v2.6.reserved8" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.mpid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.clientorderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.originalclientorderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.symbolid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved10" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderRequest.json
tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/CancelOrderResponse.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json

grep "miax.pearlequities.expressorders.meo.v2.6.matchingenginetime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.mpid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.clientorderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.originalclientorderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.symbolid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.orderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.leavesqty" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.cancelstatus" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved10" Miax.PearlEquities.ExpressOrders.Meo.v2.6.CancelOrderResponse.json
tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/LoginRequest.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json

grep "miax.pearlequities.expressorders.meo.v2.6.esesmversion" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.username" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.computerid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.applicationprotocol" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.requestedtradingsessionid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
grep "miax.pearlequities.expressorders.meo.v2.6.requestedsequencenumber" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginRequest.json
tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/LoginResponse.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json

grep "miax.pearlequities.expressorders.meo.v2.6.numberofmatchingengines" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.loginstatus" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.tradingsessionid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json
grep "miax.pearlequities.expressorders.meo.v2.6.highestsequencenumber" Miax.PearlEquities.ExpressOrders.Meo.v2.6.LoginResponse.json
tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/NewOrderNotification.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.NewOrderNotification.json

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
tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/OrderPriceUpdateNotification.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json

grep "miax.pearlequities.expressorders.meo.v2.6.matchingenginetime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.symbolid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.orderid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.workingprice" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.nbboindicator" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved9" Miax.PearlEquities.ExpressOrders.Meo.v2.6.OrderPriceUpdateNotification.json
tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/SymbolUpdate.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.SymbolUpdate.json

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
tshark \
  -r "omi-data-packets/Miax/PearlEquities.Meo.v2.6/SystemStateNotification.pcap" \
  -X "lua_script:Miax/Miax_PearlEquities_ExpressOrders_Meo_v2_6_Dissector.lua" \
  -T json \
  > Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json

grep "miax.pearlequities.expressorders.meo.v2.6.matchingenginetime" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.meoversion" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.sessionid" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.systemstatus" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
grep "miax.pearlequities.expressorders.meo.v2.6.reserved8" Miax.PearlEquities.ExpressOrders.Meo.v2.6.SystemStateNotification.json
