set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrderNoMpidAttributionMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json; echo

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
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketParticipantPositionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json.stderr ]; then echo "--- tshark stderr (MarketParticipantPositionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json.stderr; fi
echo "--- tshark diagnostic (MarketParticipantPositionMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json; echo

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
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json.stderr \
  || { echo "--- tshark FAILED (NetOrderImbalanceIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json.stderr ]; then echo "--- tshark stderr (NetOrderImbalanceIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json.stderr; fi
echo "--- tshark diagnostic (NetOrderImbalanceIndicatorMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json; echo

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
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderDeleteMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeleteMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderDeleteMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json; echo

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json; echo

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
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderReplaceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr ]; then echo "--- tshark stderr (OrderReplaceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderReplaceMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json; echo

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
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StockTradingActionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr; exit 1; }
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr ]; then echo "--- tshark stderr (StockTradingActionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr; fi
echo "--- tshark diagnostic (StockTradingActionMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json; echo

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.tradingstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.reserved" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.reasoncode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
