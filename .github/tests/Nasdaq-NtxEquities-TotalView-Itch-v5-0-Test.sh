set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.buysellindicator" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.shares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.stock" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.price" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0/OrderReplaceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplaceMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.originalorderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.neworderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.shares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.price" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/AddOrderMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMpidAttributionMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.buysellindicator" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.shares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.stock" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.price" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.attribution" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.buysellindicator" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.shares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.stock" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.price" Nasdaq.NtxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/NonCrossTradeMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonCrossTradeMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.buysellindicator" Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.shares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.stock" Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.price" Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.matchnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.NonCrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/OrderCancelMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.cancelledshares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.executedshares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.matchnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/OrderExecutedWithPriceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedWithPriceMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.executedshares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.matchnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.printable" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.executionprice" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/OrderReplaceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplaceMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.originalorderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.neworderreferencenumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.shares" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.price" Nasdaq.NtxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/RegShoShortSalePriceTestRestrictedIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RegShoShortSalePriceTestRestrictedIndicatorMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.locatecode" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.stock" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.regshoaction" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/RetailInterestMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.RetailInterestMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.RetailInterestMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailInterestMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.RetailInterestMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RetailInterestMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RetailInterestMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RetailInterestMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.stock" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RetailInterestMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.interestflag" Nasdaq.NtxEquities.TotalView.Itch.v5.0.RetailInterestMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StockTradingActionMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.stock" Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.tradingstate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.reserved" Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.tradingactionreason" Nasdaq.NtxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/NtxEquities.TotalView.Itch.v5.0.20230822/SystemEventMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NtxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NtxEquities.TotalView.Itch.v5.0.SystemEventMessage.json 2> Nasdaq.NtxEquities.TotalView.Itch.v5.0.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Nasdaq.NtxEquities.TotalView.Itch.v5.0.SystemEventMessage.json.stderr; exit 1; }

grep "nasdaq.ntxequities.totalview.itch.v5.0.stocklocate" Nasdaq.NtxEquities.TotalView.Itch.v5.0.SystemEventMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NtxEquities.TotalView.Itch.v5.0.SystemEventMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.timestamp" Nasdaq.NtxEquities.TotalView.Itch.v5.0.SystemEventMessage.json
grep "nasdaq.ntxequities.totalview.itch.v5.0.eventcode" Nasdaq.NtxEquities.TotalView.Itch.v5.0.SystemEventMessage.json
