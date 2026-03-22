set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/OptionMarketDepthMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["tmx.mx.sola.multicast.hsvf.v1.14.lua"]' \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json

grep "tmx.mx.sola.multicast.hsvf.v1.14.exchangeid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.instrumentstatusmarker" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.numberoflevels" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionMarketDepthMessage.json
tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/OptionTradeMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["tmx.mx.sola.multicast.hsvf.v1.14.lua"]' \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.OptionTradeMessage.json

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
tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/StrategyAuctionBeginningMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["tmx.mx.sola.multicast.hsvf.v1.14.lua"]' \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyAuctionBeginningMessage.json

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
tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/StrategyMarketDepthMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["tmx.mx.sola.multicast.hsvf.v1.14.lua"]' \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json

grep "tmx.mx.sola.multicast.hsvf.v1.14.exchangeid" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.symbol" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.instrumentstatusmarker" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json
grep "tmx.mx.sola.multicast.hsvf.v1.14.numberoflevels" Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyMarketDepthMessage.json
tshark \
  -r "omi-data-packets/Tmx/Mx.Sola.1.14/StrategyTradeMessage.pcap" \
  -X "lua_script:Tmx/Tmx_Mx_Sola_Multicast_Hsvf_v1_14_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["tmx.mx.sola.multicast.hsvf.v1.14.lua"]' \
  > Tmx.Mx.Sola.Multicast.Hsvf.v1.14.StrategyTradeMessage.json

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
