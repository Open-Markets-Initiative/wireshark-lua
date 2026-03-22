set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Itch.v1.6/OrderDeletedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.Equities.Pts.Itch.v1.6.OrderDeletedMessage.json

grep "jnx.equities.pts.itch.v1.6.timestampnanoseconds" Jnx.Equities.Pts.Itch.v1.6.OrderDeletedMessage.json
grep "jnx.equities.pts.itch.v1.6.ordernumber" Jnx.Equities.Pts.Itch.v1.6.OrderDeletedMessage.json
tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Itch.v1.6/OrderExecutedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.Equities.Pts.Itch.v1.6.OrderExecutedMessage.json

grep "jnx.equities.pts.itch.v1.6.timestampnanoseconds" Jnx.Equities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.equities.pts.itch.v1.6.ordernumber" Jnx.Equities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.equities.pts.itch.v1.6.executedquantity" Jnx.Equities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.equities.pts.itch.v1.6.matchnumber" Jnx.Equities.Pts.Itch.v1.6.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Itch.v1.6/OrderReplacedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.Equities.Pts.Itch.v1.6.OrderReplacedMessage.json

grep "jnx.equities.pts.itch.v1.6.timestampnanoseconds" Jnx.Equities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.equities.pts.itch.v1.6.originalordernumber" Jnx.Equities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.equities.pts.itch.v1.6.newordernumber" Jnx.Equities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.equities.pts.itch.v1.6.quantity" Jnx.Equities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.equities.pts.itch.v1.6.price" Jnx.Equities.Pts.Itch.v1.6.OrderReplacedMessage.json
tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Itch.v1.6/ShortSellingPriceRestrictionStateMessage.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.Equities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json

grep "jnx.equities.pts.itch.v1.6.timestampnanoseconds" Jnx.Equities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.equities.pts.itch.v1.6.orderbookid" Jnx.Equities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.equities.pts.itch.v1.6.group" Jnx.Equities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.equities.pts.itch.v1.6.shortsellingstate" Jnx.Equities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
tshark \
  -r "omi-data-packets/Jnx/Equities.Pts.Itch.v1.6/TimestampSecondsMessage.pcap" \
  -X "lua_script:Jnx/Jnx_Equities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.Equities.Pts.Itch.v1.6.TimestampSecondsMessage.json

grep "jnx.equities.pts.itch.v1.6.timestampseconds" Jnx.Equities.Pts.Itch.v1.6.TimestampSecondsMessage.json
