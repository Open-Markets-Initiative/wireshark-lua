set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderDeletedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderDeletedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==${PORT},jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeletedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json
PORT=$(tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderExecutedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderExecutedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==${PORT},jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.executedquantity" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.matchnumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
PORT=$(tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderReplacedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderReplacedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==${PORT},jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplacedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr ]; then echo "--- tshark stderr (OrderReplacedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.originalordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.newordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.quantity" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.price" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
PORT=$(tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/ShortSellingPriceRestrictionStateMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/ShortSellingPriceRestrictionStateMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==${PORT},jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSellingPriceRestrictionStateMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr ]; then echo "--- tshark stderr (ShortSellingPriceRestrictionStateMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.orderbookid" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.group" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.shortsellingstate" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
PORT=$(tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/TimestampSecondsMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/TimestampSecondsMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==${PORT},jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr \
  || { echo "--- tshark FAILED (TimestampSecondsMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr ]; then echo "--- tshark stderr (TimestampSecondsMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr; fi

grep "jnx.jnxequities.pts.itch.v1.6.timestampseconds" Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json
