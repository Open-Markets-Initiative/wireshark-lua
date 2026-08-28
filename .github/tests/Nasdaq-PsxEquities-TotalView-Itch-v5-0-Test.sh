set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.stocklocate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.buysellindicator" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.sharesinteger4" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.stock" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.price" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/AddOrderWithMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderWithMpidAttributionMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.stocklocate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.buysellindicator" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.sharesinteger4" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.stock" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.price" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.attribution" Nasdaq.PsxEquities.TotalView.Itch.v5.0.AddOrderWithMpidAttributionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/OrderCancelMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.stocklocate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.cancelledshares" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderCancelMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.stocklocate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.stocklocate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.executedshares" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.matchnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/OrderExecutedWithPriceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedWithPriceMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.stocklocate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.executedshares" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.matchnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.printable" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.executionprice" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderExecutedWithPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/OrderReplaceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplaceMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.stocklocate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.originalorderreferencenumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.neworderreferencenumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.sharesinteger4" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.price" Nasdaq.PsxEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/RegShoShortSalePriceTestRestrictedIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (RegShoShortSalePriceTestRestrictedIndicatorMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.locatecode" Nasdaq.PsxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.stock" Nasdaq.PsxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.regshoaction" Nasdaq.PsxEquities.TotalView.Itch.v5.0.RegShoShortSalePriceTestRestrictedIndicatorMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StockTradingActionMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.stocklocate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.stock" Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.tradingstate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.reserved" Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.reason" Nasdaq.PsxEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/PsxEquities.TotalView.Itch.v5.0.20230822/SystemEventMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_PsxEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.PsxEquities.TotalView.Itch.v5.0.SystemEventMessage.json 2> Nasdaq.PsxEquities.TotalView.Itch.v5.0.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Nasdaq.PsxEquities.TotalView.Itch.v5.0.SystemEventMessage.json.stderr; exit 1; }

grep "nasdaq.psxequities.totalview.itch.v5.0.stocklocate" Nasdaq.PsxEquities.TotalView.Itch.v5.0.SystemEventMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.trackingnumber" Nasdaq.PsxEquities.TotalView.Itch.v5.0.SystemEventMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.timestamp" Nasdaq.PsxEquities.TotalView.Itch.v5.0.SystemEventMessage.json
grep "nasdaq.psxequities.totalview.itch.v5.0.eventcode" Nasdaq.PsxEquities.TotalView.Itch.v5.0.SystemEventMessage.json
