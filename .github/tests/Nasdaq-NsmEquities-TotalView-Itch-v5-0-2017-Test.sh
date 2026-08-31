set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/AddOrderNoMpidAttributionMessage.pcap" \
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
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/AddOrderWithMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderWithMpidAttributionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.attribution" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.AddOrderWithMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/CrossTradeMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.crossshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.crossprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.crosstype" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/LuldAuctionCollarMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json.stderr \
  || { echo "--- tshark FAILED (LuldAuctionCollarMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.auctioncollarreferenceprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.upperauctioncollarprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.lowerauctioncollarprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.auctioncollarextension" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.LuldAuctionCollarMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/MarketParticipantPositionMessage.pcap" \
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
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/MwcbDeclineLevelMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MwcbDeclineLevelMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MwcbDeclineLevelMessage.json.stderr \
  || { echo "--- tshark FAILED (MwcbDeclineLevelMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MwcbDeclineLevelMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MwcbDeclineLevelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MwcbDeclineLevelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MwcbDeclineLevelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.level1" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MwcbDeclineLevelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.level2" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MwcbDeclineLevelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.level3" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.MwcbDeclineLevelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/NetOrderImbalanceIndicatorMessage.pcap" \
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
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/NonCrossTradeMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonCrossTradeMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.NonCrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/OrderCancelMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderCancelMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderCancelMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderCancelMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.canceledshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderCancelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/OrderExecutedMessage.pcap" \
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
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/OrderExecutedWithPriceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedWithPriceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.printable" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.executionprice" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.OrderExecutedWithPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/OrderReplaceMessage.pcap" \
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
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/RegShoShortSalePriceTestRestrictedIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.RegShoShortSalePriceTestRestrictedIndicatorMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RegShoShortSalePriceTestRestrictedIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.locatecode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.regshoaction" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/StockDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (StockDirectoryMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.marketcategory" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.financialstatusindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.roundlotsize" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.roundlotsonly" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.issueclassification" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.issuesubtype" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.authenticity" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.shortsalethresholdindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.ipoflag" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.luldreferencepricetier" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.etpflag" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.etpleveragefactor" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.inverseindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.StockDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/StockTradingActionMessage.pcap" \
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
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NsmEquities.TotalView.Itch.v5.0.2017/SystemEventMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_2017_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.SystemEventMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.SystemEventMessage.json.stderr; exit 1; }

grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.SystemEventMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.2017.eventcode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.2017.SystemEventMessage.json
