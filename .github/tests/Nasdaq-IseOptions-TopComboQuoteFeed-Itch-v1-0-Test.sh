set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyDirectoryMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyDirectoryMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyDirectoryMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr; fi

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategytype" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.source" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.underlyingsymbol" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.numberoflegs" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyTickerMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyTickerMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyTickerMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyTickerMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr; fi

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lastprice" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.volume" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.high" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.low" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.first" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.tradecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestAskUpdate.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestAskUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr \
  || { echo "--- tshark FAILED (StrategyBestAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr ]; then echo "--- tshark stderr (StrategyBestAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr; fi

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.quotecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.price" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.custsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.procustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.marketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidAndAskUpdate.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidAndAskUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr \
  || { echo "--- tshark FAILED (StrategyBestBidAndAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr ]; then echo "--- tshark stderr (StrategyBestBidAndAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr; fi

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.quotecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidprice" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidcustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidprocustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidnttsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.bidnttmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askprice" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asksize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askcustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askprocustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asknttsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.askmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.asknttmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidUpdate.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr \
  || { echo "--- tshark FAILED (StrategyBestBidUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr ]; then echo "--- tshark stderr (StrategyBestBidUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr; fi

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.quotecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.price" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.custsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.procustsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.marketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.nttmarketsize" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyOpenClosedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyOpenClosedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyOpenClosedMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr ]; then echo "--- tshark stderr (StrategyOpenClosedMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr; fi

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.openstate" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
PORT=$(tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyTradingActionMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==${PORT},nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyTradingActionMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr ]; then echo "--- tshark stderr (StrategyTradingActionMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr; fi

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currenttradingstate" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
