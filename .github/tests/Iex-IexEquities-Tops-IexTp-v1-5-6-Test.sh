set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/AuctionInformationMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json

grep "iex.iexequities.tops.iextp.v1.5.6.auctiontype" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.pairedshares" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.referenceprice" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.indicativeclearingprice" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.imbalanceshares" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.imbalanceside" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.extensionnumber" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.scheduledauctiontime" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.auctionbookclearingprice" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.collarreferenceprice" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.lowerauctioncollar" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.upperauctioncollar" Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/OfficialPriceMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json

grep "iex.iexequities.tops.iextp.v1.5.6.pricetype" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.officialprice" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json

grep "iex.iexequities.tops.iextp.v1.5.6.operationalhaltstatus" Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json

grep "iex.iexequities.tops.iextp.v1.5.6.quoteupdateflags" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.bidsize" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.bidprice" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.askprice" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.asksize" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/SecurityDirectoryMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json

grep "iex.iexequities.tops.iextp.v1.5.6.securitydirectoryflags" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.roundlotsize" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.adjustedpocprice" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.luldtier" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json

grep "iex.iexequities.tops.iextp.v1.5.6.shortsalepriceteststatus" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.detail" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/SystemEventMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json

grep "iex.iexequities.tops.iextp.v1.5.6.systemevent" Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradeReportMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json

grep "iex.iexequities.tops.iextp.v1.5.6.saleconditionflags" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.size" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.price" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.tradeid" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json

grep "iex.iexequities.tops.iextp.v1.5.6.tradingstatus" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.reason" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
