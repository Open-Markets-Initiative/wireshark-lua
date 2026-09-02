set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Glimpse.v1.3/LoginAcceptedPacket.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Glimpse_v1_3_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginAcceptedPacket.json 2> Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginAcceptedPacket.json.stderr \
  || { echo "--- tshark FAILED (LoginAcceptedPacket) ---"; cat Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginAcceptedPacket.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.glimpse.v1.3.acceptedsession" Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginAcceptedPacket.json
grep "jnx.jnxequities.pts.glimpse.v1.3.acceptedsequencenumber" Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginAcceptedPacket.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Glimpse.v1.3/LoginRequestPacket.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Glimpse_v1_3_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginRequestPacket.json 2> Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginRequestPacket.json.stderr \
  || { echo "--- tshark FAILED (LoginRequestPacket) ---"; cat Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginRequestPacket.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.glimpse.v1.3.username" Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginRequestPacket.json
grep "jnx.jnxequities.pts.glimpse.v1.3.password" Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginRequestPacket.json
grep "jnx.jnxequities.pts.glimpse.v1.3.requestedsession" Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginRequestPacket.json
grep "jnx.jnxequities.pts.glimpse.v1.3.requestedsequencenumber" Jnx.JnxEquities.Pts.Glimpse.v1.3.LoginRequestPacket.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Glimpse.v1.3/OrderbookDirectoryMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Glimpse_v1_3_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json 2> Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderbookDirectoryMessage) ---"; cat Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.glimpse.v1.3.nanoseconds" Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.orderbookid" Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.orderbookcode" Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.group" Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.roundlotsize" Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.priceticksizetableid" Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.pricedecimals" Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.upperpricelimit" Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.lowerpricelimit" Jnx.JnxEquities.Pts.Glimpse.v1.3.OrderbookDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Glimpse.v1.3/PriceTickSizeMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Glimpse_v1_3_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Glimpse.v1.3.PriceTickSizeMessage.json 2> Jnx.JnxEquities.Pts.Glimpse.v1.3.PriceTickSizeMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceTickSizeMessage) ---"; cat Jnx.JnxEquities.Pts.Glimpse.v1.3.PriceTickSizeMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.glimpse.v1.3.nanoseconds" Jnx.JnxEquities.Pts.Glimpse.v1.3.PriceTickSizeMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.priceticksizetableid" Jnx.JnxEquities.Pts.Glimpse.v1.3.PriceTickSizeMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.priceticksize" Jnx.JnxEquities.Pts.Glimpse.v1.3.PriceTickSizeMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.pricestart" Jnx.JnxEquities.Pts.Glimpse.v1.3.PriceTickSizeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Glimpse.v1.3/SecondsMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Glimpse_v1_3_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Glimpse.v1.3.SecondsMessage.json 2> Jnx.JnxEquities.Pts.Glimpse.v1.3.SecondsMessage.json.stderr \
  || { echo "--- tshark FAILED (SecondsMessage) ---"; cat Jnx.JnxEquities.Pts.Glimpse.v1.3.SecondsMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.glimpse.v1.3.seconds" Jnx.JnxEquities.Pts.Glimpse.v1.3.SecondsMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Jnx/JnxEquities.Pts.Glimpse.v1.3/SystemEventMessage.pcap" \
  -X "lua_script:Jnx/Jnx_JnxEquities_Pts_Glimpse_v1_3_Dissector.lua" \
  -T json \
  > Jnx.JnxEquities.Pts.Glimpse.v1.3.SystemEventMessage.json 2> Jnx.JnxEquities.Pts.Glimpse.v1.3.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Jnx.JnxEquities.Pts.Glimpse.v1.3.SystemEventMessage.json.stderr; exit 1; }

grep "jnx.jnxequities.pts.glimpse.v1.3.nanoseconds" Jnx.JnxEquities.Pts.Glimpse.v1.3.SystemEventMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.group" Jnx.JnxEquities.Pts.Glimpse.v1.3.SystemEventMessage.json
grep "jnx.jnxequities.pts.glimpse.v1.3.systemevent" Jnx.JnxEquities.Pts.Glimpse.v1.3.SystemEventMessage.json
