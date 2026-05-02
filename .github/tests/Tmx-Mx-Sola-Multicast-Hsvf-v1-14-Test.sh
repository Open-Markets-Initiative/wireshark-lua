set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/OptionMarketDepthMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json 2> Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionMarketDepthMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json.stderr; exit 1; }
if [ -s Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json.stderr ]; then echo "--- tshark stderr (OptionMarketDepthMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json.stderr; fi
echo "--- tshark diagnostic (OptionMarketDepthMessage) ---"
echo "json bytes: $(wc -c < Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json | sort -u | head -n 40

grep "tmx.mx.sola.multicast.hsvf.v1.14.exchangeid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.instrumentstatusmarker" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.numberoflevels" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/OptionTradeMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json 2> Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionTradeMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json.stderr; exit 1; }
if [ -s Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json.stderr ]; then echo "--- tshark stderr (OptionTradeMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json.stderr; fi
echo "--- tshark diagnostic (OptionTradeMessage) ---"
echo "json bytes: $(wc -c < Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json | sort -u | head -n 40

grep "tmx.mx.sola.multicast.hsvf.v1.14.exchangeid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.volume" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.tradepricen7" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.tradepricefractionindicator" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.netchangesigna1" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.netchange" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.netchangefractionindicatorx1" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.priceindicatormarkera1" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.tradenumber" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.auctionid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/StrategyAuctionBeginningMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json 2> Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyAuctionBeginningMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json.stderr; exit 1; }
if [ -s Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json.stderr ]; then echo "--- tshark stderr (StrategyAuctionBeginningMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json.stderr; fi
echo "--- tshark diagnostic (StrategyAuctionBeginningMessage) ---"
echo "json bytes: $(wc -c < Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json | sort -u | head -n 40

grep "tmx.mx.sola.multicast.hsvf.v1.14.exchangeid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.strategysymbol" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.auctionid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.initialorderside" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.initialorderquantity" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.initialorderprice" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.initialorderpricefractionindicator" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.auctionexpirytimestamp" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.auctionduration" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.initialquantityassured" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/StrategyMarketDepthMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json 2> Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyMarketDepthMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json.stderr; exit 1; }
if [ -s Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json.stderr ]; then echo "--- tshark stderr (StrategyMarketDepthMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json.stderr; fi
echo "--- tshark diagnostic (StrategyMarketDepthMessage) ---"
echo "json bytes: $(wc -c < Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json | sort -u | head -n 40

grep "tmx.mx.sola.multicast.hsvf.v1.14.exchangeid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.symbol" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.instrumentstatusmarker" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.numberoflevels" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/StrategyTradeMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json 2> Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (StrategyTradeMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json.stderr; exit 1; }
if [ -s Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json.stderr ]; then echo "--- tshark stderr (StrategyTradeMessage) ---"; cat Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json.stderr; fi
echo "--- tshark diagnostic (StrategyTradeMessage) ---"
echo "json bytes: $(wc -c < Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json | sort -u | head -n 40

grep "tmx.mx.sola.multicast.hsvf.v1.14.exchangeid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.symbol" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.volume" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.tradepricesign" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.tradepricen7" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.tradepricefractionindicator" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.netchangesignx1" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.netchange" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.netchangefractionindicatorx1" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.priceindicatormarkerx1" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.tradenumber" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.auctionid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json
