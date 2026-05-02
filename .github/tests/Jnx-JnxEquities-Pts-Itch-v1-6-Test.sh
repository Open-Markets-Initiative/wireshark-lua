set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderDeletedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderDeletedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeletedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderDeletedMessage) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderDeletedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderExecutedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderExecutedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutedMessage) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.executedquantity" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.matchnumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderExecutedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderReplacedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/OrderReplacedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplacedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr ]; then echo "--- tshark stderr (OrderReplacedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderReplacedMessage) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.originalordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.newordernumber" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.quantity" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.price" Jnx.JnxEquities.Pts.Itch.v1.6.OrderReplacedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/ShortSellingPriceRestrictionStateMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/ShortSellingPriceRestrictionStateMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSellingPriceRestrictionStateMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr ]; then echo "--- tshark stderr (ShortSellingPriceRestrictionStateMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json.stderr; fi
echo "--- tshark diagnostic (ShortSellingPriceRestrictionStateMessage) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.itch.v1.6.timestampnanoseconds" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.orderbookid" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.group" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.6.shortsellingstate" Jnx.JnxEquities.Pts.Itch.v1.6.ShortSellingPriceRestrictionStateMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/TimestampSecondsMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.6/TimestampSecondsMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_6_Dissector.lua" \
  -d "udp.port==$port,jnx.jnxequities.pts.itch.v1.6.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr \
  || { echo "--- tshark FAILED (TimestampSecondsMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr; exit 1; }
if [ -s Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr ]; then echo "--- tshark stderr (TimestampSecondsMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json.stderr; fi
echo "--- tshark diagnostic (TimestampSecondsMessage) ---"
echo "json bytes: $(wc -c < Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json | sort -u | head -n 40

grep "jnx.jnxequities.pts.itch.v1.6.timestampseconds" Jnx.JnxEquities.Pts.Itch.v1.6.TimestampSecondsMessage.json
