set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyAuctionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyAuctionMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyAuctionMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json.stderr; fi
echo "--- tshark diagnostic (ComplexStrategyAuctionMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json; echo

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordertype" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.side" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.price" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.size" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.execflag" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordercapacity" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.scope" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ownerid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.giveup" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.cmta" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctionevent" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.auctiontype" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.numberofresponses" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyDirectoryMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyDirectoryMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json.stderr; fi
echo "--- tshark diagnostic (ComplexStrategyDirectoryMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json; echo

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategytype" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.source" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.underlyingsymbol" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.numberoflegs" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyOrderOnBookMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyOrderOnBookMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyOrderOnBookMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json.stderr; fi
echo "--- tshark diagnostic (ComplexStrategyOrderOnBookMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json; echo

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordertype" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.side" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.price" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.size" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.execflag" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ordercapacity" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.scope" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.ownerid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.giveup" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.cmta" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyOpenClosedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyOpenClosedMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json.stderr ]; then echo "--- tshark stderr (StrategyOpenClosedMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json.stderr; fi
echo "--- tshark diagnostic (StrategyOpenClosedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json; echo

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.openstate" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json
tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyTradingActionMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json.stderr ]; then echo "--- tshark stderr (StrategyTradingActionMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json.stderr; fi
echo "--- tshark diagnostic (StrategyTradingActionMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json; echo

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currenttradingstate" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
