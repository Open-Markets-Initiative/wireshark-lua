set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/AuctionInformationMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionInformationMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json.stderr ]; then echo "--- tshark stderr (AuctionInformationMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json.stderr; fi
echo "--- tshark diagnostic (AuctionInformationMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.5.6.AuctionInformationMessage.json | sort -u | head -n 40

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
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/OfficialPriceMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json.stderr \
  || { echo "--- tshark FAILED (OfficialPriceMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json.stderr ]; then echo "--- tshark stderr (OfficialPriceMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json.stderr; fi
echo "--- tshark diagnostic (OfficialPriceMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json | sort -u | head -n 40

grep "iex.iexequities.tops.iextp.v1.5.6.pricetype" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.officialprice" Iex.IexEquities.Tops.IexTp.v1.5.6.OfficialPriceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/OperationalHaltStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (OperationalHaltStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json.stderr ]; then echo "--- tshark stderr (OperationalHaltStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (OperationalHaltStatusMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json | sort -u | head -n 40

grep "iex.iexequities.tops.iextp.v1.5.6.operationalhaltstatus" Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.OperationalHaltStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/QuoteUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json.stderr ]; then echo "--- tshark stderr (QuoteUpdateMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (QuoteUpdateMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json | sort -u | head -n 40

grep "iex.iexequities.tops.iextp.v1.5.6.quoteupdateflags" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.bidsize" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.bidprice" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.askprice" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.asksize" Iex.IexEquities.Tops.IexTp.v1.5.6.QuoteUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/SecurityDirectoryMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityDirectoryMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json.stderr ]; then echo "--- tshark stderr (SecurityDirectoryMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json.stderr; fi
echo "--- tshark diagnostic (SecurityDirectoryMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json | sort -u | head -n 40

grep "iex.iexequities.tops.iextp.v1.5.6.securitydirectoryflags" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.roundlotsize" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.adjustedpocprice" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.luldtier" Iex.IexEquities.Tops.IexTp.v1.5.6.SecurityDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/ShortSalePriceTestStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json.stderr ]; then echo "--- tshark stderr (ShortSalePriceTestStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (ShortSalePriceTestStatusMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json | sort -u | head -n 40

grep "iex.iexequities.tops.iextp.v1.5.6.shortsalepriceteststatus" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.detail" Iex.IexEquities.Tops.IexTp.v1.5.6.ShortSalePriceTestStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/SystemEventMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemEventMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json.stderr ]; then echo "--- tshark stderr (SystemEventMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json.stderr; fi
echo "--- tshark diagnostic (SystemEventMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json | sort -u | head -n 40

grep "iex.iexequities.tops.iextp.v1.5.6.systemevent" Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.SystemEventMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradeReportMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json.stderr ]; then echo "--- tshark stderr (TradeReportMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json.stderr; fi
echo "--- tshark diagnostic (TradeReportMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json | sort -u | head -n 40

grep "iex.iexequities.tops.iextp.v1.5.6.saleconditionflags" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.size" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.price" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.tradeid" Iex.IexEquities.Tops.IexTp.v1.5.6.TradeReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Tops.IexTp.v1.5/TradingStatusMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Tops_IexTp_v1_5_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json 2> Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingStatusMessage) ---"; cat Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (TradingStatusMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json | sort -u | head -n 40

grep "iex.iexequities.tops.iextp.v1.5.6.tradingstatus" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.timestamp" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.symbol" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
grep "iex.iexequities.tops.iextp.v1.5.6.reason" Iex.IexEquities.Tops.IexTp.v1.5.6.TradingStatusMessage.json
