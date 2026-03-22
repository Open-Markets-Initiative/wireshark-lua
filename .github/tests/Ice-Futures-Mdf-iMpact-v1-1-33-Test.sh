set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/DeleteOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["ice.futures.mdf.impact.v1.1.33.lua"]' \
  > Ice.Futures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json

grep "ice.futures.mdf.impact.v1.1.33.marketid" Ice.Futures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.orderid" Ice.Futures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.messagedatetime" Ice.Futures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.sequencewithinmillis" Ice.Futures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketSnapshotOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["ice.futures.mdf.impact.v1.1.33.lua"]' \
  > Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json

grep "ice.futures.mdf.impact.v1.1.33.marketid" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.orderid" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.ordersequenceid" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.side" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.price" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.quantity" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.isimplied" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.isrfq" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.orderentrydatetime" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.33.sequencewithinmillis" Ice.Futures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketStatisticsMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["ice.futures.mdf.impact.v1.1.33.lua"]' \
  > Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json

grep "ice.futures.mdf.impact.v1.1.33.marketid" Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.futures.mdf.impact.v1.1.33.volume" Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.futures.mdf.impact.v1.1.33.blockvolume" Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.futures.mdf.impact.v1.1.33.efsvolume" Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.futures.mdf.impact.v1.1.33.efpvolume" Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.futures.mdf.impact.v1.1.33.high" Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.futures.mdf.impact.v1.1.33.low" Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.futures.mdf.impact.v1.1.33.vwap" Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.futures.mdf.impact.v1.1.33.messagedatetime" Ice.Futures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MessageBundleMarker.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["ice.futures.mdf.impact.v1.1.33.lua"]' \
  > Ice.Futures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json

grep "ice.futures.mdf.impact.v1.1.33.startorend" Ice.Futures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/SpecialFieldMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["ice.futures.mdf.impact.v1.1.33.lua"]' \
  > Ice.Futures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json

grep "ice.futures.mdf.impact.v1.1.33.numberofspecialfields" Ice.Futures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/TradeMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["ice.futures.mdf.impact.v1.1.33.lua"]' \
  > Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json

grep "ice.futures.mdf.impact.v1.1.33.marketid" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.tradeid" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.issystempricedleg" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.price" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.quantity" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.offmarkettradeindicator" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.transactdatetime" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.systempricedlegtype" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.isimpliedspreadatmarketopen" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.isadjustedtrade" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.aggressorside" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.extraflags" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.offmarkettradetype" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.futures.mdf.impact.v1.1.33.sequencewithinmillis" Ice.Futures.Mdf.iMpact.v1.1.33.TradeMessage.json
