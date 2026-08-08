set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/AuctionInformationMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionInformationMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.auctiontype" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.pairedshares" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.referenceprice" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.indicativeclearingprice" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.imbalanceshares" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.imbalanceside" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.extensionnumber" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.scheduledauctiontime" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.auctionbookclearingprice" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.collarreferenceprice" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.lowerauctioncollar" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
grep "iex.iexequities.tops.iextp.v1.56.upperauctioncollar" Iex.IexEquities.Tops.IexTp.v1.56.AuctionInformationMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/OfficialPriceMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.OfficialPriceMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.OfficialPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OfficialPriceMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.OfficialPriceMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.pricetype" Iex.IexEquities.Tops.IexTp.v1.56.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.56.officialprice" Iex.IexEquities.Tops.IexTp.v1.56.OfficialPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.OperationalHaltStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.OperationalHaltStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OperationalHaltStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.OperationalHaltStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.operationalhaltstatus" Iex.IexEquities.Tops.IexTp.v1.56.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.OperationalHaltStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.quoteupdateflags" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.bidsize" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.bidprice" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.askprice" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.56.asksize" Iex.IexEquities.Tops.IexTp.v1.56.QuoteUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/SecurityDirectoryMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.SecurityDirectoryMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.SecurityDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDirectoryMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.SecurityDirectoryMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.securitydirectoryflags" Iex.IexEquities.Tops.IexTp.v1.56.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.56.roundlotsize" Iex.IexEquities.Tops.IexTp.v1.56.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.56.adjustedpocprice" Iex.IexEquities.Tops.IexTp.v1.56.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.56.luldtier" Iex.IexEquities.Tops.IexTp.v1.56.SecurityDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.ShortSalePriceTestStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.ShortSalePriceTestStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.shortsalepriceteststatus" Iex.IexEquities.Tops.IexTp.v1.56.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.56.detail" Iex.IexEquities.Tops.IexTp.v1.56.ShortSalePriceTestStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/SystemEventMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.SystemEventMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.SystemEventMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.systemevent" Iex.IexEquities.Tops.IexTp.v1.56.SystemEventMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradeReportMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.saleconditionflags" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.size" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.price" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.56.tradeid" Iex.IexEquities.Tops.IexTp.v1.56.TradeReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_56_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.56.TradingStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.56.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.56.TradingStatusMessage.json.stderr; exit 1; }

grep "iex.iexequities.tops.iextp.v1.56.tradingstatus" Iex.IexEquities.Tops.IexTp.v1.56.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.56.timestamp" Iex.IexEquities.Tops.IexTp.v1.56.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.56.symbol" Iex.IexEquities.Tops.IexTp.v1.56.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.56.reason" Iex.IexEquities.Tops.IexTp.v1.56.TradingStatusMessage.json
