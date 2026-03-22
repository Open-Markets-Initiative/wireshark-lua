set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyAuctionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"]' \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordertype" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.side" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.price" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.size" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.execflag" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordercapacity" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.scope" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ownerid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.giveup" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.cmta" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionevent" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctiontype" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.numberofresponses" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"]' \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategytype" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.source" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.underlyingsymbol" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.numberoflegs" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyOrderOnBookMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"]' \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordertype" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.side" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.price" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.size" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.execflag" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordercapacity" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.scope" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ownerid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.giveup" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.cmta" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyOpenClosedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"]' \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.openstate" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"]' \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currenttradingstate" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
