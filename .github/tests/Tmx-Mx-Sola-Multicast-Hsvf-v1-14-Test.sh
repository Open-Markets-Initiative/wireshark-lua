set -o errexit
set -o pipefail

tshark \
  -r "Data/Tmx/Mx.Sola.1.14/StrategyAuctionBeginningMessage.pcap" \
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
