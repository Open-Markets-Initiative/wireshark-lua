set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyDirectoryMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyDirectoryMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyDirectoryMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json.stderr; fi
echo "--- tshark diagnostic (ComplexStrategyDirectoryMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json | sort -u | head -n 40

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategytype" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.source" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.underlyingsymbol" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.numberoflegs" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyDirectoryMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyTickerMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/ComplexStrategyTickerMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyTickerMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyTickerMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json.stderr; fi
echo "--- tshark diagnostic (ComplexStrategyTickerMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json | sort -u | head -n 40

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lastprice" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.size" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.volume" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.high" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.low" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.first" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.tradecondition" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.ComplexStrategyTickerMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestAskUpdate.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestAskUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr \
  || { echo "--- tshark FAILED (StrategyBestAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr ]; then echo "--- tshark stderr (StrategyBestAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json.stderr; fi
echo "--- tshark diagnostic (StrategyBestAskUpdate) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestAskUpdate.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidAndAskUpdate.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidAndAskUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr \
  || { echo "--- tshark FAILED (StrategyBestBidAndAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr ]; then echo "--- tshark stderr (StrategyBestBidAndAskUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json.stderr; fi
echo "--- tshark diagnostic (StrategyBestBidAndAskUpdate) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidAndAskUpdate.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidUpdate.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyBestBidUpdate.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr \
  || { echo "--- tshark FAILED (StrategyBestBidUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr ]; then echo "--- tshark stderr (StrategyBestBidUpdate) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json.stderr; fi
echo "--- tshark diagnostic (StrategyBestBidUpdate) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyBestBidUpdate.json | sort -u | head -n 40

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
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyOpenClosedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyOpenClosedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyOpenClosedMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr ]; then echo "--- tshark stderr (StrategyOpenClosedMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json.stderr; fi
echo "--- tshark diagnostic (StrategyOpenClosedMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json | sort -u | head -n 40

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.openstate" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyOpenClosedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyTradingActionMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.TopComboQuoteFeed.v1.0/StrategyTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_TopComboQuoteFeed_Itch_v1_0_Dissector.lua" \
  -d "udp.port==$port,nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.lua" \
  -T json \
  > Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json 2> Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyTradingActionMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr ]; then echo "--- tshark stderr (StrategyTradingActionMessage) ---"; cat Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json.stderr; fi
echo "--- tshark diagnostic (StrategyTradingActionMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json | sort -u | head -n 40

grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.timestamp" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.strategyid" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.topcomboquotefeed.itch.v1.0.currenttradingstate" Nasdaq.IseOptions.TopComboQuoteFeed.Itch.v1.0.StrategyTradingActionMessage.json
