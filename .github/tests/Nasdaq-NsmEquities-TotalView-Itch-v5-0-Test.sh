set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/AddOrderNoMpidAttributionMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/AddOrderNoMpidAttributionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  --enable-heuristic "nasdaq.nsmequities.totalview.itch.v5.0.lua_udp" \
  -d "udp.port==${PORT},nasdaq.nsmequities.totalview.itch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderNoMpidAttributionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json.stderr; fi

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.buysellindicator" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.AddOrderNoMpidAttributionMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/MarketParticipantPositionMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/MarketParticipantPositionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  --enable-heuristic "nasdaq.nsmequities.totalview.itch.v5.0.lua_udp" \
  -d "udp.port==${PORT},nasdaq.nsmequities.totalview.itch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json.stderr
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json.stderr ]; then echo "--- tshark stderr (MarketParticipantPositionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json.stderr; fi

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.mpid" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.primarymarketmaker" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.marketmakermode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.marketparticipantstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.MarketParticipantPositionMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/NetOrderImbalanceIndicatorMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/NetOrderImbalanceIndicatorMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  --enable-heuristic "nasdaq.nsmequities.totalview.itch.v5.0.lua_udp" \
  -d "udp.port==${PORT},nasdaq.nsmequities.totalview.itch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json.stderr
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json.stderr ]; then echo "--- tshark stderr (NetOrderImbalanceIndicatorMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.NetOrderImbalanceIndicatorMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderDeleteMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderDeleteMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  --enable-heuristic "nasdaq.nsmequities.totalview.itch.v5.0.lua_udp" \
  -d "udp.port==${PORT},nasdaq.nsmequities.totalview.itch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr ]; then echo "--- tshark stderr (OrderDeleteMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json.stderr; fi

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderDeleteMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderExecutedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderExecutedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  --enable-heuristic "nasdaq.nsmequities.totalview.itch.v5.0.lua_udp" \
  -d "udp.port==${PORT},nasdaq.nsmequities.totalview.itch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json.stderr; fi

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.orderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.executedshares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.matchnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderExecutedMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderReplaceMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/OrderReplaceMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  --enable-heuristic "nasdaq.nsmequities.totalview.itch.v5.0.lua_udp" \
  -d "udp.port==${PORT},nasdaq.nsmequities.totalview.itch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr ]; then echo "--- tshark stderr (OrderReplaceMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json.stderr; fi

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.originalorderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.neworderreferencenumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.shares" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.price" Nasdaq.NsmEquities.TotalView.Itch.v5.0.OrderReplaceMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/StockTradingActionMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Nasdaq.Equities.TotalView.Itch.v5.0/StockTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_NsmEquities_TotalView_Itch_v5_0_Dissector.lua" \
  --enable-heuristic "nasdaq.nsmequities.totalview.itch.v5.0.lua_udp" \
  -d "udp.port==${PORT},nasdaq.nsmequities.totalview.itch.v5.0.lua" \
  -T json \
  > Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json 2> Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr
if [ -s Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr ]; then echo "--- tshark stderr (StockTradingActionMessage) ---"; cat Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json.stderr; fi

grep "nasdaq.nsmequities.totalview.itch.v5.0.stocklocate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.trackingnumber" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.timestamp" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.stock" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.tradingstate" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.reserved" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
grep "nasdaq.nsmequities.totalview.itch.v5.0.reasoncode" Nasdaq.NsmEquities.TotalView.Itch.v5.0.StockTradingActionMessage.json
