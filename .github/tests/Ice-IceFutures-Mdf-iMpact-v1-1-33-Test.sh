set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/DeleteOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json.stderr ]; then echo "--- tshark stderr (DeleteOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json.stderr; fi

grep "ice.icefutures.mdf.impact.v1.1.33.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.orderid" Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.sequencewithinmillis" Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketSnapshotOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketSnapshotOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json.stderr ]; then echo "--- tshark stderr (MarketSnapshotOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json.stderr; fi

grep "ice.icefutures.mdf.impact.v1.1.33.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.orderid" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.ordersequenceid" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.side" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.price" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.quantity" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.isimplied" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.isrfq" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.orderentrydatetime" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.sequencewithinmillis" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketStatisticsMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketStatisticsMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json.stderr ]; then echo "--- tshark stderr (MarketStatisticsMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json.stderr; fi

grep "ice.icefutures.mdf.impact.v1.1.33.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.volume" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.blockvolume" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.efsvolume" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.efpvolume" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.high" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.low" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.vwap" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MessageBundleMarker.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json.stderr \
  || { echo "--- tshark FAILED (MessageBundleMarker) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json.stderr ]; then echo "--- tshark stderr (MessageBundleMarker) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json.stderr; fi

grep "ice.icefutures.mdf.impact.v1.1.33.startorend" Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/SpecialFieldMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json.stderr \
  || { echo "--- tshark FAILED (SpecialFieldMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json.stderr ]; then echo "--- tshark stderr (SpecialFieldMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json.stderr; fi

grep "ice.icefutures.mdf.impact.v1.1.33.numberofspecialfields" Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/TradeMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json.stderr ]; then echo "--- tshark stderr (TradeMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json.stderr; fi

grep "ice.icefutures.mdf.impact.v1.1.33.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.tradeid" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.issystempricedleg" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.price" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.quantity" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.offmarkettradeindicator" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.transactdatetime" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.systempricedlegtype" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.isimpliedspreadatmarketopen" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.isadjustedtrade" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.aggressorside" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.extraflags" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.offmarkettradetype" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.sequencewithinmillis" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
