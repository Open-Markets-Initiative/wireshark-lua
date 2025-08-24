set -o errexit
set -o pipefail

tshark \
  -r "Data/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"]' \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currenttradingstate" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
