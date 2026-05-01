set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/AuctionInformationMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  --enable-heuristic "iex.iexequities.tops.iextp.v1.5.6.lua_udp" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json.stderr
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json.stderr ]; then echo "--- tshark stderr (AuctionInformationMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json.stderr; fi

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
  --enable-heuristic "iex.iexequities.tops.iextp.v1.5.6.lua_udp" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json.stderr
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json.stderr ]; then echo "--- tshark stderr (OfficialPriceMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json.stderr; fi

grep "iex.iexequities.tops.iextp.v1.5.6.pricetype" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.officialprice" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  --enable-heuristic "iex.iexequities.tops.iextp.v1.5.6.lua_udp" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json.stderr
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json.stderr ]; then echo "--- tshark stderr (OperationalHaltStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json.stderr; fi

grep "iex.iexequities.tops.iextp.v1.5.6.operationalhaltstatus" Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  --enable-heuristic "iex.iexequities.tops.iextp.v1.5.6.lua_udp" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json.stderr
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json.stderr ]; then echo "--- tshark stderr (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json.stderr; fi

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
  --enable-heuristic "iex.iexequities.tops.iextp.v1.5.6.lua_udp" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json.stderr
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (SecurityDirectoryMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json.stderr; fi

grep "iex.iexequities.tops.iextp.v1.5.6.securitydirectoryflags" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.roundlotsize" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.adjustedpocprice" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.luldtier" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  --enable-heuristic "iex.iexequities.tops.iextp.v1.5.6.lua_udp" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json.stderr
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json.stderr ]; then echo "--- tshark stderr (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json.stderr; fi

grep "iex.iexequities.tops.iextp.v1.5.6.shortsalepriceteststatus" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.detail" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/SystemEventMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  --enable-heuristic "iex.iexequities.tops.iextp.v1.5.6.lua_udp" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json.stderr
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json.stderr ]; then echo "--- tshark stderr (SystemEventMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json.stderr; fi

grep "iex.iexequities.tops.iextp.v1.5.6.systemevent" Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradeReportMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  --enable-heuristic "iex.iexequities.tops.iextp.v1.5.6.lua_udp" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json.stderr
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json.stderr ]; then echo "--- tshark stderr (TradeReportMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json.stderr; fi

grep "iex.iexequities.tops.iextp.v1.5.6.saleconditionflags" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.size" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.price" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.tradeid" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  --enable-heuristic "iex.iexequities.tops.iextp.v1.5.6.lua_udp" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json.stderr
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json.stderr; fi

grep "iex.iexequities.tops.iextp.v1.5.6.tradingstatus" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.reason" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
