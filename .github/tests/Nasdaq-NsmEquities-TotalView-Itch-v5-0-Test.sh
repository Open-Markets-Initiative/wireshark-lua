set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/MarketParticipantPositionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.mpid" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.primarymarketmaker" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.marketmakermode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.marketparticipantstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/NetOrderImbalanceIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.pairedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.imbalanceshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.imbalancedirection" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.farprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.nearprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.currentreferenceprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.crosstype" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.pricevariationindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderReplaceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.originalorderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.neworderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.tradingstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.reserved" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.reasoncode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
