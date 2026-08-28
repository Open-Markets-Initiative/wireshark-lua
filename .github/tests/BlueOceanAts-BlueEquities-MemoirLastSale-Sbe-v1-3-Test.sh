set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirLastSale.v1.3/InstrumentDirectoryMessage.pcap" \
  -X "lua_script:BlueOceanAts/BlueOceanAts_BlueEquities_MemoirLastSale_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json 2> BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentDirectoryMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.symbol" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.symbolsfx" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.roundlot" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.istestsymbol" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.mpv" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.InstrumentDirectoryMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirLastSale.v1.3/SecurityTradingStatusMessage.pcap" \
  -X "lua_script:BlueOceanAts/BlueOceanAts_BlueEquities_MemoirLastSale_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.SecurityTradingStatusMessage.json 2> BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityTradingStatusMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.SecurityTradingStatusMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.securitytradingstatus" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.SecurityTradingStatusMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.securitytradingstatusreason" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.SecurityTradingStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirLastSale.v1.3/TradeReportMessage.pcap" \
  -X "lua_script:BlueOceanAts/BlueOceanAts_BlueEquities_MemoirLastSale_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json 2> BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeReportMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.securityid" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradeid" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradeqty" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradeprice" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.salecondition1" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.salecondition2" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.salecondition3" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.salecondition4" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradeReportMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/BlueOceanAts/BlueEquities.MemoirLastSale.v1.3/TradingSessionStatusMessage.pcap" \
  -X "lua_script:BlueOceanAts/BlueOceanAts_BlueEquities_MemoirLastSale_Sbe_v1_3_Dissector.lua" \
  -T json \
  > BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradingSessionStatusMessage.json 2> BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradingSessionStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingSessionStatusMessage) ---"; cat BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradingSessionStatusMessage.json.stderr; exit 1; }

grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.timestamp" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradingSessionStatusMessage.json
grep "blueoceanats.blueequities.memoirlastsale.sbe.v1.3.tradingsession" BlueOceanAts.BlueEquities.MemoirLastSale.Sbe.v1.3.TradingSessionStatusMessage.json
