set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyDirectoryMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr; exit 1; }

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategytype" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.source" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.underlyingsymbol" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.numberoflegs" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyTickerMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyTickerMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr; exit 1; }

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lastprice" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.volume" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.high" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.low" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.first" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.tradecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestAskUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr \
  || { echo "--- tshark FAILED (StrategyBestAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr; exit 1; }

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.quotecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.price" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.custsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.procustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.marketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidAndAskUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr \
  || { echo "--- tshark FAILED (StrategyBestBidAndAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr; exit 1; }

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.quotecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidprice" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidcustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidprocustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidnttsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidnttmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askprice" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asksize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askcustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askprocustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asknttsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asknttmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr \
  || { echo "--- tshark FAILED (StrategyBestBidUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr; exit 1; }

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.quotecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.price" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.custsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.procustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.marketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyOpenClosedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyOpenClosedMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr; exit 1; }

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.openstate" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyTradingActionMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr; exit 1; }

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currenttradingstate" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
