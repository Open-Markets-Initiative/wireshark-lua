set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/AddOrModifyOrderMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/AddOrModifyOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  --enable-heuristic "ice.icefutures.mdf.impact.v1.1.24.lua_udp" \
  -d "udp.port==${PORT},ice.icefutures.mdf.impact.v1.1.24.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrModifyOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr ]; then echo "--- tshark stderr (AddOrModifyOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.AddOrModifyOrderMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/MarketStateChangeMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/MarketStateChangeMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  --enable-heuristic "ice.icefutures.mdf.impact.v1.1.24.lua_udp" \
  -d "udp.port==${PORT},ice.icefutures.mdf.impact.v1.1.24.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketStateChangeMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr ]; then echo "--- tshark stderr (MarketStateChangeMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json.stderr; fi

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.tradingstatus" Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.MarketStateChangeMessage.json
PORT=$(tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/NewOptionsStrategyDefinitionMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/NewOptionsStrategyDefinitionMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  --enable-heuristic "ice.icefutures.mdf.impact.v1.1.24.lua_udp" \
  -d "udp.port==${PORT},ice.icefutures.mdf.impact.v1.1.24.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOptionsStrategyDefinitionMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr ]; then echo "--- tshark stderr (NewOptionsStrategyDefinitionMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.NewOptionsStrategyDefinitionMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/OpenPriceMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/OpenPriceMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  --enable-heuristic "ice.icefutures.mdf.impact.v1.1.24.lua_udp" \
  -d "udp.port==${PORT},ice.icefutures.mdf.impact.v1.1.24.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OpenPriceMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr ]; then echo "--- tshark stderr (OpenPriceMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json.stderr; fi

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.openprice" Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.OpenPriceMessage.json
PORT=$(tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/PreOpenPriceIndicatorMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.24/PreOpenPriceIndicatorMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_24_Dissector.lua" \
  --enable-heuristic "ice.icefutures.mdf.impact.v1.1.24.lua_udp" \
  -d "udp.port==${PORT},ice.icefutures.mdf.impact.v1.1.24.lua" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (PreOpenPriceIndicatorMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr ]; then echo "--- tshark stderr (PreOpenPriceIndicatorMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json.stderr; fi

grep "ice.icefutures.mdf.impact.v1.1.24.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.preopenprice" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.haspreopenvolume" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
grep "ice.icefutures.mdf.impact.v1.1.24.preopenvolume" Ice.IceFutures.Mdf.iMpact.v1.1.24.PreOpenPriceIndicatorMessage.json
