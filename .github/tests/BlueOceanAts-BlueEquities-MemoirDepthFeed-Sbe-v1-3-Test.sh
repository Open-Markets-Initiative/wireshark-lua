set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.v1.3/OrderAddedMessage.pcap" \
  -X "lua_script:BlueOceanAts/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderAddedMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.orderid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.side" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.quantity" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.price" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderAddedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.v1.3/OrderDeletedMessage.pcap" \
  -X "lua_script:BlueOceanAts/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeletedMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.orderid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderDeletedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.v1.3/OrderExecutedMessage.pcap" \
  -X "lua_script:BlueOceanAts/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.orderid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.tradeid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.quantity" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.price" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirDepthFeed.v1.3/OrderReducedMessage.pcap" \
  -X "lua_script:BlueOceanAts/BlueOceanAts_BlueEquities_MemoirDepthFeed_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json 2> BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReducedMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.orderid" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
grep "blueoceanats.blueequities.memoirdepthfeed.sbe.v1.3.quantity" BlueOceanAts.BlueEquities.MemoirDepthFeed.Sbe.v1.3.OrderReducedMessage.json
