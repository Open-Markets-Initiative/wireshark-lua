set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Jpx/OseDerivatives.GeniumInet.Itch.v5.0.6/AddOrderNoMpid.pcap" \
  -X "lua_script:Jpx/Jpx_OseDerivatives_GeniumInet_Itch_v5_0_6_Dissector.lua" \
  -T json \
  > Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json 2> Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json.stderr \
  || { echo "--- tshark FAILED (AddOrderNoMpid) ---"; cat Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json.stderr; exit 1; }

grep "jpx.osederivatives.geniuminet.itch.v5.0.6.nanoseconds" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderbookid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.side" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderbookposition" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.quantity" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.price" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderattributes" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.lottype" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.AddOrderNoMpid.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jpx/OseDerivatives.GeniumInet.Itch.v5.0.6/EquilibriumPriceUpdate.pcap" \
  -X "lua_script:Jpx/Jpx_OseDerivatives_GeniumInet_Itch_v5_0_6_Dissector.lua" \
  -T json \
  > Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.EquilibriumPriceUpdate.json 2> Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.EquilibriumPriceUpdate.json.stderr \
  || { echo "--- tshark FAILED (EquilibriumPriceUpdate) ---"; cat Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.EquilibriumPriceUpdate.json.stderr; exit 1; }

grep "jpx.osederivatives.geniuminet.itch.v5.0.6.nanoseconds" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.EquilibriumPriceUpdate.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderbookid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.EquilibriumPriceUpdate.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.availablebidquantityatequilibriumprice" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.EquilibriumPriceUpdate.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.availableaskquantityatequilibriumprice" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.EquilibriumPriceUpdate.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.equilibriumprice" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.EquilibriumPriceUpdate.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.reserved24" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.EquilibriumPriceUpdate.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jpx/OseDerivatives.GeniumInet.Itch.v5.0.6/OrderBookStateMessage.pcap" \
  -X "lua_script:Jpx/Jpx_OseDerivatives_GeniumInet_Itch_v5_0_6_Dissector.lua" \
  -T json \
  > Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderBookStateMessage.json 2> Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderBookStateMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderBookStateMessage) ---"; cat Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderBookStateMessage.json.stderr; exit 1; }

grep "jpx.osederivatives.geniuminet.itch.v5.0.6.nanoseconds" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderBookStateMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderbookid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderBookStateMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.statename" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderBookStateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jpx/OseDerivatives.GeniumInet.Itch.v5.0.6/OrderDeleteMessage.pcap" \
  -X "lua_script:Jpx/Jpx_OseDerivatives_GeniumInet_Itch_v5_0_6_Dissector.lua" \
  -T json \
  > Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderDeleteMessage.json 2> Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderDeleteMessage.json.stderr; exit 1; }

grep "jpx.osederivatives.geniuminet.itch.v5.0.6.nanoseconds" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderDeleteMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderDeleteMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderbookid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderDeleteMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.side" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jpx/OseDerivatives.GeniumInet.Itch.v5.0.6/OrderExecutedMessage.pcap" \
  -X "lua_script:Jpx/Jpx_OseDerivatives_GeniumInet_Itch_v5_0_6_Dissector.lua" \
  -T json \
  > Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json 2> Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json.stderr; exit 1; }

grep "jpx.osederivatives.geniuminet.itch.v5.0.6.nanoseconds" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderbookid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.side" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.executedquantity" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.matchid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.combogroupid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.participantidowner" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.participantidcounterparty" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jpx/OseDerivatives.GeniumInet.Itch.v5.0.6/OrderExecutedWithPriceMessage.pcap" \
  -X "lua_script:Jpx/Jpx_OseDerivatives_GeniumInet_Itch_v5_0_6_Dissector.lua" \
  -T json \
  > Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json 2> Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedWithPriceMessage) ---"; cat Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json.stderr; exit 1; }

grep "jpx.osederivatives.geniuminet.itch.v5.0.6.nanoseconds" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.orderbookid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.side" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.executedquantity" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.matchid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.combogroupid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.ownerparticipantid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.counterpartyparticipantid" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.tradeprice" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.occurredatcross" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
grep "jpx.osederivatives.geniuminet.itch.v5.0.6.printable" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.OrderExecutedWithPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jpx/OseDerivatives.GeniumInet.Itch.v5.0.6/SecondsMessage.pcap" \
  -X "lua_script:Jpx/Jpx_OseDerivatives_GeniumInet_Itch_v5_0_6_Dissector.lua" \
  -T json \
  > Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.SecondsMessage.json 2> Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.SecondsMessage.json.stderr \
  || { echo "--- tshark FAILED (SecondsMessage) ---"; cat Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.SecondsMessage.json.stderr; exit 1; }

grep "jpx.osederivatives.geniuminet.itch.v5.0.6.seconds" Jpx.OseDerivatives.GeniumInet.Itch.v5.0.6.SecondsMessage.json
