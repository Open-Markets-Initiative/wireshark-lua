set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.7/OrderAddedWithoutAttributesMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_7_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAddedWithoutAttributesMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.itch.v1.7.nanoseconds" Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.buysellindicator" Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.quantity" Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.orderbookid" Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.group" Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.price" Jnx.JnxEquities.Pts.Itch.v1.7.OrderAddedWithoutAttributesMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.7/OrderDeletedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_7_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.7.OrderDeletedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.7.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.7.OrderDeletedMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.itch.v1.7.nanoseconds" Jnx.JnxEquities.Pts.Itch.v1.7.OrderDeletedMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.7.OrderDeletedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.7/OrderExecutedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_7_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.7.OrderExecutedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.7.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.7.OrderExecutedMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.itch.v1.7.nanoseconds" Jnx.JnxEquities.Pts.Itch.v1.7.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.ordernumber" Jnx.JnxEquities.Pts.Itch.v1.7.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.executedquantity" Jnx.JnxEquities.Pts.Itch.v1.7.OrderExecutedMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.matchnumber" Jnx.JnxEquities.Pts.Itch.v1.7.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.7/OrderReplacedMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_7_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.7.OrderReplacedMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.7.OrderReplacedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplacedMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.7.OrderReplacedMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.itch.v1.7.nanoseconds" Jnx.JnxEquities.Pts.Itch.v1.7.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.originalordernumber" Jnx.JnxEquities.Pts.Itch.v1.7.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.newordernumber" Jnx.JnxEquities.Pts.Itch.v1.7.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.quantity" Jnx.JnxEquities.Pts.Itch.v1.7.OrderReplacedMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.price" Jnx.JnxEquities.Pts.Itch.v1.7.OrderReplacedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.7/SecondsMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_7_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.7.SecondsMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.7.SecondsMessage.json.stderr \
  || { echo "--- tshark FAILED (SecondsMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.7.SecondsMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.itch.v1.7.seconds" Jnx.JnxEquities.Pts.Itch.v1.7.SecondsMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.7/ShortSellingPriceRestrictionStateMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_7_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.7.ShortSellingPriceRestrictionStateMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.7.ShortSellingPriceRestrictionStateMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSellingPriceRestrictionStateMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.7.ShortSellingPriceRestrictionStateMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.itch.v1.7.nanoseconds" Jnx.JnxEquities.Pts.Itch.v1.7.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.orderbookid" Jnx.JnxEquities.Pts.Itch.v1.7.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.group" Jnx.JnxEquities.Pts.Itch.v1.7.ShortSellingPriceRestrictionStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.shortsellingstate" Jnx.JnxEquities.Pts.Itch.v1.7.ShortSellingPriceRestrictionStateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.7/SystemEventMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_7_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.7.SystemEventMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.7.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.7.SystemEventMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.itch.v1.7.nanoseconds" Jnx.JnxEquities.Pts.Itch.v1.7.SystemEventMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.group" Jnx.JnxEquities.Pts.Itch.v1.7.SystemEventMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.systemevent" Jnx.JnxEquities.Pts.Itch.v1.7.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Itch.v1.7/TradingStateMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Itch_v1_7_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Itch.v1.7.TradingStateMessage.json 2> Jnx.JnxEquities.Pts.Itch.v1.7.TradingStateMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStateMessage) ---"; cat Jnx.JnxEquities.Pts.Itch.v1.7.TradingStateMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.itch.v1.7.nanoseconds" Jnx.JnxEquities.Pts.Itch.v1.7.TradingStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.orderbookid" Jnx.JnxEquities.Pts.Itch.v1.7.TradingStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.group" Jnx.JnxEquities.Pts.Itch.v1.7.TradingStateMessage.json
grep "jnx.jnxequities.pts.itch.v1.7.tradingstate" Jnx.JnxEquities.Pts.Itch.v1.7.TradingStateMessage.json
