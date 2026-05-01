set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderDeletedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  --enable-heuristic "jnx.jnxequities.pts.itch.v1.6.lua_udp" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeletedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderExecutedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  --enable-heuristic "jnx.jnxequities.pts.itch.v1.6.lua_udp" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.executedquantity" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.matchnumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderReplacedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  --enable-heuristic "jnx.jnxequities.pts.itch.v1.6.lua_udp" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr ]; then echo "--- tshark stderr (OrderReplacedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.originalordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.newordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.quantity" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.price" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/ShortSellingPriceRestrictionStateMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  --enable-heuristic "jnx.jnxequities.pts.itch.v1.6.lua_udp" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr ]; then echo "--- tshark stderr (ShortSellingPriceRestrictionStateMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.orderbookid" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.group" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.shortsellingstate" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/TimestampSecondsMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  --enable-heuristic "jnx.jnxequities.pts.itch.v1.6.lua_udp" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr ]; then echo "--- tshark stderr (TimestampSecondsMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampseconds" Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json
