set -o errexit
set -o pipefail

tshark \
  -r "Data/Iex/Tops.IexTp.v1.5/AuctionInformationMessage.A.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["iex.equities.tops.iextp.v1.5.6.lua"]' \
  > Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json

grep "iex.equities.tops.iextp.v1.5.6.auctiontype" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.timestamp" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.symbol" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.pairedshares" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.referenceprice" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.indicativeclearingprice" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.imbalanceshares" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.imbalanceside" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.extensionnumber" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.scheduledauctiontime" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.auctionbookclearingprice" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.collarreferenceprice" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.lowerauctioncollar" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.equities.tops.iextp.v1.5.6.upperauctioncollar" Iex.Equities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
