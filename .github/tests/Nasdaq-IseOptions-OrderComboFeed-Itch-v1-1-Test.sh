set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyAuctionMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyAuctionMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; else echo "could not detect transport port for ComplexStrategyAuctionMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyAuctionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyAuctionMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyAuctionMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json.stderr; fi
echo "--- tshark diagnostic (ComplexStrategyAuctionMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyAuctionMessage.json | sort -u | head -n 40

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
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyDirectoryMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyDirectoryMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; else echo "could not detect transport port for ComplexStrategyDirectoryMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyDirectoryMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyDirectoryMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyDirectoryMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json.stderr; fi
echo "--- tshark diagnostic (ComplexStrategyDirectoryMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json | sort -u | head -n 40

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategytype" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.source" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.underlyingsymbol" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.numberoflegs" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyDirectoryMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyOrderOnBookMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyOrderOnBookMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; else echo "could not detect transport port for ComplexStrategyOrderOnBookMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/ComplexStrategyOrderOnBookMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexStrategyOrderOnBookMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json.stderr ]; then echo "--- tshark stderr (ComplexStrategyOrderOnBookMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json.stderr; fi
echo "--- tshark diagnostic (ComplexStrategyOrderOnBookMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.ComplexStrategyOrderOnBookMessage.json | sort -u | head -n 40

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
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyOpenClosedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyOpenClosedMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; else echo "could not detect transport port for StrategyOpenClosedMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyOpenClosedMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyOpenClosedMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json.stderr ]; then echo "--- tshark stderr (StrategyOpenClosedMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json.stderr; fi
echo "--- tshark diagnostic (StrategyOpenClosedMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json | sort -u | head -n 40

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.openstate" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyOpenClosedMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,nasdaq.iseoptions.ordercombofeed.itch.v1.1.lua"; else echo "could not detect transport port for StrategyTradingActionMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Nasdaq/Ise.OrderComboFeed.v1.1/StrategyTradingActionMessage.pcap" \
  -X "lua_script:Nasdaq/Nasdaq_IseOptions_OrderComboFeed_Itch_v1_1_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json 2> Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyTradingActionMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json.stderr; exit 1; }
if [ -s Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json.stderr ]; then echo "--- tshark stderr (StrategyTradingActionMessage) ---"; cat Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json.stderr; fi
echo "--- tshark diagnostic (StrategyTradingActionMessage) ---"
echo "json bytes: $(wc -c < Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json | sort -u | head -n 40

grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.timestamp" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.strategyid" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
grep "nasdaq.iseoptions.ordercombofeed.itch.v1.1.currenttradingstate" Nasdaq.IseOptions.OrderComboFeed.Itch.v1.1.StrategyTradingActionMessage.json
