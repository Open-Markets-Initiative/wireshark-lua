set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.ComplexFeed.Xdp.v1.3.a/ComplexCrossingRfqMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_ComplexFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json 2> Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexCrossingRfqMessage) ---"; cat Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcens" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.complexindex" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.side" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved1" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.volume2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.price" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexCrossingRfqMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.ComplexFeed.Xdp.v1.3.a/ComplexQuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_ComplexFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json 2> Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexQuoteMessage) ---"; cat Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.complexindex" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.askprice" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.bidprice" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.askvolume" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.bidvolume" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.askcustomervolume" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.bidcustomervolume" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.quotecondition" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved1" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.ComplexFeed.Xdp.v1.3.a/ComplexStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_ComplexFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json 2> Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStatusMessage) ---"; cat Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.complexindex" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.securitystatus" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.haltcondition" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.ComplexFeed.Xdp.v1.3.a/ComplexSymbolDefinitionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_ComplexFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json 2> Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexSymbolDefinitionMessage) ---"; cat Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.complexindex" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.complexsymbol" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.channelid" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.marketid" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.systemid" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved1" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.streamid" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.nooflegs" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexSymbolDefinitionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.ComplexFeed.Xdp.v1.3.a/ComplexTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_ComplexFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json 2> Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexTradeMessage) ---"; cat Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.complexindex" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.tradeid" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.price" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.volume4" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.tradecond1" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.tradecond2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.ComplexTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.ComplexFeed.Xdp.v1.3.a/RefreshComplexQuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_ComplexFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json 2> Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshComplexQuoteMessage) ---"; cat Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.complexindex" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.askprice" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.bidprice" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.askvolume" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.bidvolume" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.askcustomervolume" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.bidcustomervolume" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.quotecondition" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved1" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.ComplexFeed.Xdp.v1.3.a/RefreshComplexTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_ComplexFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json 2> Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshComplexTradeMessage) ---"; cat Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.complexindex" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.tradeid" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.price" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.volume4" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.tradecond1" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.tradecond2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.RefreshComplexTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.ComplexFeed.Xdp.v1.3.a/StreamIdMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_ComplexFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.StreamIdMessage.json 2> Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.StreamIdMessage.json.stderr \
  || { echo "--- tshark FAILED (StreamIdMessage) ---"; cat Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.StreamIdMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.streamid" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.StreamIdMessage.json
grep "nyse.amexoptions.complexfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.ComplexFeed.Xdp.v1.3.a.StreamIdMessage.json
