set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/AddOrModifyOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrModifyOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr; exit 1; }

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.orderid" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.ordersequenceid" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.side" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.price" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.quantity" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.isimplied" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.isrfq" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.orderentrydatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.extraflags" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.sequencewithinmillis" Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/MarketStateChangeMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketStateChangeMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr; exit 1; }

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.tradingstatus" Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/NewOptionsStrategyDefinitionMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOptionsStrategyDefinitionMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr; exit 1; }

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.underlyingmarketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.contractsymbol" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.tradingstatus" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.orderpricedenominator" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.incrementprice" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.incrementqty" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.minqty" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.numberofstrategylegdefinitions" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.numberofhedgedefinitions" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.securitysubtype" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.isblockonly" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.strategysymbol" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.gtallowed" Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/OpenPriceMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OpenPriceMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr; exit 1; }

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.openprice" Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/PreOpenPriceIndicatorMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (PreOpenPriceIndicatorMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr; exit 1; }

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.preopenprice" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.haspreopenvolume" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.preopenvolume" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
