set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/AddOrModifyOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrModifyOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr ]; then echo "--- tshark stderr (AddOrModifyOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrModifyOrderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json; echo

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
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/MarketStateChangeMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketStateChangeMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr ]; then echo "--- tshark stderr (MarketStateChangeMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr; fi
echo "--- tshark diagnostic (MarketStateChangeMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json; echo

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.tradingstatus" Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/NewOptionsStrategyDefinitionMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOptionsStrategyDefinitionMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr ]; then echo "--- tshark stderr (NewOptionsStrategyDefinitionMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr; fi
echo "--- tshark diagnostic (NewOptionsStrategyDefinitionMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json; echo

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
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/OpenPriceMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OpenPriceMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr ]; then echo "--- tshark stderr (OpenPriceMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr; fi
echo "--- tshark diagnostic (OpenPriceMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json; echo

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.openprice" Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/PreOpenPriceIndicatorMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (PreOpenPriceIndicatorMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr ]; then echo "--- tshark stderr (PreOpenPriceIndicatorMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr; fi
echo "--- tshark diagnostic (PreOpenPriceIndicatorMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json; echo

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.preopenprice" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.haspreopenvolume" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.preopenvolume" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
