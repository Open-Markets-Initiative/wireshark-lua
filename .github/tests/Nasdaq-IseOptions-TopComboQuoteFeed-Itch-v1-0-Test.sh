set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua"]' \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategytype" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.source" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.underlyingsymbol" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.numberoflegs" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyTickerMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua"]' \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lastprice" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.volume" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.high" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.low" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.first" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.tradecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestAskUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua"]' \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json

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
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidAndAskUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua"]' \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json

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
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua"]' \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json

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
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyOpenClosedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua"]' \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.openstate" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua"]' \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currenttradingstate" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
