set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/AuctionInformationMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
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
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/OfficialPriceMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.Equities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json

grep "iex.equities.tops.iextp.v1.5.6.pricetype" Iex.Equities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.equities.tops.iextp.v1.5.6.timestamp" Iex.Equities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.equities.tops.iextp.v1.5.6.symbol" Iex.Equities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.equities.tops.iextp.v1.5.6.officialprice" Iex.Equities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.Equities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json

grep "iex.equities.tops.iextp.v1.5.6.operationalhaltstatus" Iex.Equities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
grep "iex.equities.tops.iextp.v1.5.6.timestamp" Iex.Equities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
grep "iex.equities.tops.iextp.v1.5.6.symbol" Iex.Equities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.Equities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json

grep "iex.equities.tops.iextp.v1.5.6.quoteupdateflags" Iex.Equities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.5.6.timestamp" Iex.Equities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.5.6.symbol" Iex.Equities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.5.6.bidsize" Iex.Equities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.5.6.bidprice" Iex.Equities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.5.6.askprice" Iex.Equities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.equities.tops.iextp.v1.5.6.asksize" Iex.Equities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/SecurityDirectoryMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.Equities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json

grep "iex.equities.tops.iextp.v1.5.6.securitydirectoryflags" Iex.Equities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.equities.tops.iextp.v1.5.6.timestamp" Iex.Equities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.equities.tops.iextp.v1.5.6.symbol" Iex.Equities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.equities.tops.iextp.v1.5.6.roundlotsize" Iex.Equities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.equities.tops.iextp.v1.5.6.adjustedpocprice" Iex.Equities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.equities.tops.iextp.v1.5.6.luldtier" Iex.Equities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.Equities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json

grep "iex.equities.tops.iextp.v1.5.6.shortsalepriceteststatus" Iex.Equities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.equities.tops.iextp.v1.5.6.timestamp" Iex.Equities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.equities.tops.iextp.v1.5.6.symbol" Iex.Equities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.equities.tops.iextp.v1.5.6.detail" Iex.Equities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/SystemEventMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.Equities.Tops.IexTp.v1.5.6.SystemEventMessage.json

grep "iex.equities.tops.iextp.v1.5.6.systemevent" Iex.Equities.Tops.IexTp.v1.5.6.SystemEventMessage.json
grep "iex.equities.tops.iextp.v1.5.6.timestamp" Iex.Equities.Tops.IexTp.v1.5.6.SystemEventMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradeReportMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.Equities.Tops.IexTp.v1.5.6.TradeReportMessage.json

grep "iex.equities.tops.iextp.v1.5.6.saleconditionflags" Iex.Equities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.equities.tops.iextp.v1.5.6.timestamp" Iex.Equities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.equities.tops.iextp.v1.5.6.symbol" Iex.Equities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.equities.tops.iextp.v1.5.6.size" Iex.Equities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.equities.tops.iextp.v1.5.6.price" Iex.Equities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.equities.tops.iextp.v1.5.6.tradeid" Iex.Equities.Tops.IexTp.v1.5.6.TradeReportMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_Equities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.Equities.Tops.IexTp.v1.5.6.TradingStatusMessage.json

grep "iex.equities.tops.iextp.v1.5.6.tradingstatus" Iex.Equities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.equities.tops.iextp.v1.5.6.timestamp" Iex.Equities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.equities.tops.iextp.v1.5.6.symbol" Iex.Equities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.equities.tops.iextp.v1.5.6.reason" Iex.Equities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
