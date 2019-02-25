set -o errexit
set -o pipefail

tshark \
  -r "Directory/Data/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.H.pcap" \
  -X "lua_script:Nasdaq/Nasdaq.Ise.OrderFeed.Itch.v1.1.Script.Dissector.lua" \
  -T json \
  | jq ".[0]._source.layers.lua" > Nasdaq.Ise.OrderFeed.Itch.v1.1.StrategyTradingActionMessage.H.json

cat Nasdaq.Ise.OrderFeed.Itch.v1.1.StrategyTradingActionMessage.H.json
  
grep "nasdaq.ise.ordercombofeed.itch.v1.1.strategyid" Nasdaq.Ise.OrderFeed.Itch.v1.1.StrategyTradingActionMessage.H.json 
grep "nasdaq.ise.ordercombofeed.itch.v1.1.currenttradingstate" Nasdaq.Ise.OrderFeed.Itch.v1.1.StrategyTradingActionMessage.H.json 
  