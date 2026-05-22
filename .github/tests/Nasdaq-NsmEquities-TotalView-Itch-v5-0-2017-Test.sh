set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.v5.0/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderNoMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.v5.0/MarketParticipantPositionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketParticipantPositionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.mpid" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.primarymarketmaker" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketmakermode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketparticipantstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MarketParticipantPositionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.v5.0/NetOrderImbalanceIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (NetOrderImbalanceIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.pairedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.imbalanceshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.imbalancedirection" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.farprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.nearprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.currentreferenceprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.crosstype" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.pricevariationindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NetOrderImbalanceIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.v5.0/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.v5.0/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.v5.0/OrderReplaceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplaceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.originalorderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.neworderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderReplaceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.v5.0/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StockTradingActionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.tradingstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.reserved" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.reason" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockTradingActionMessage.json
