set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/AddOrModifyOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json

grep "ice.futures.mdf.impact.v1.1.24.marketid" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.orderid" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.ordersequenceid" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.side" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.price" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.quantity" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.isimplied" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.isrfq" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.orderentrydatetime" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.extraflags" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
grep "ice.futures.mdf.impact.v1.1.24.sequencewithinmillis" Ice.Futures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/MarketStateChangeMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.Futures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json

grep "ice.futures.mdf.impact.v1.1.24.marketid" Ice.Futures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
grep "ice.futures.mdf.impact.v1.1.24.tradingstatus" Ice.Futures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
grep "ice.futures.mdf.impact.v1.1.24.messagedatetime" Ice.Futures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/NewOptionsStrategyDefinitionMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json

grep "ice.futures.mdf.impact.v1.1.24.marketid" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.underlyingmarketid" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.contractsymbol" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.tradingstatus" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.orderpricedenominator" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.incrementprice" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.incrementqty" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.minqty" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.numberofstrategylegdefinitions" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.numberofhedgedefinitions" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.securitysubtype" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.isblockonly" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.strategysymbol" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
grep "ice.futures.mdf.impact.v1.1.24.gtallowed" Ice.Futures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/OpenPriceMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.Futures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json

grep "ice.futures.mdf.impact.v1.1.24.marketid" Ice.Futures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
grep "ice.futures.mdf.impact.v1.1.24.openprice" Ice.Futures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
grep "ice.futures.mdf.impact.v1.1.24.messagedatetime" Ice.Futures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/PreOpenPriceIndicatorMessage.pcap" \
  -X "lua_script:Ice/Ice_Futures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.Futures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json

grep "ice.futures.mdf.impact.v1.1.24.marketid" Ice.Futures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.futures.mdf.impact.v1.1.24.preopenprice" Ice.Futures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.futures.mdf.impact.v1.1.24.messagedatetime" Ice.Futures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.futures.mdf.impact.v1.1.24.haspreopenvolume" Ice.Futures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.futures.mdf.impact.v1.1.24.preopenvolume" Ice.Futures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
