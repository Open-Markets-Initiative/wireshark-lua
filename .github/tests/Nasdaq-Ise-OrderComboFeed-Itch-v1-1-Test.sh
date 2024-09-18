set -o errexit
set -o pipefail

tshark \
  -r "Data/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.H.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_Ise_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nasdaq.ise.ordercombofeed.itch.v1.1.lua"]' \
  > Nasdaq.Ise.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json

grep "nasdaq.ise.ordercombofeed.itch.v1.1.timestamp" Nasdaq.Ise.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.ise.ordercombofeed.itch.v1.1.strategyid" Nasdaq.Ise.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.ise.ordercombofeed.itch.v1.1.currenttradingstate" Nasdaq.Ise.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
