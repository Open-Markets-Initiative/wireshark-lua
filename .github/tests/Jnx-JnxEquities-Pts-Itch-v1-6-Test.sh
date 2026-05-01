set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderDeletedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeletedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderDeletedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json; echo

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderExecutedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json; echo

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.executedquantity" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.matchnumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderReplacedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplacedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr ]; then echo "--- tshark stderr (OrderReplacedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderReplacedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json; echo

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.originalordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.newordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.quantity" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.price" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/ShortSellingPriceRestrictionStateMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSellingPriceRestrictionStateMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr ]; then echo "--- tshark stderr (ShortSellingPriceRestrictionStateMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr; fi
echo "--- tshark diagnostic (ShortSellingPriceRestrictionStateMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json; echo

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.orderbookid" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.group" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.shortsellingstate" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/TimestampSecondsMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr \
  || { echo "--- tshark FAILED (TimestampSecondsMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr ]; then echo "--- tshark stderr (TimestampSecondsMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr; fi
echo "--- tshark diagnostic (TimestampSecondsMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json; echo

grep "jnx.jnxequities.pts.itch.v1.6.timestampseconds" Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json
