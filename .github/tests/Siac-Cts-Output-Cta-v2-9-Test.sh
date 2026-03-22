set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.9/LineIntegrityMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_9_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json

grep "siac.cts.output.cta.v2.9.participantid" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.9.messageid" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.9.transactionid" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.9.participantreferencenumber" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.9/LongTradeMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_9_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json

grep "siac.cts.output.cta.v2.9.participantid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.messageid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.transactionid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.participantreferencenumber" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.securitysymbol" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.instrumenttype" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.tradeprice" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.tradevolume" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.sellerssaledays" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.stopstockindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.tradethroughexemptindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.tradereportingfacilityid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.financialstatusindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.heldtradeindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.consolidatedhighlowlastindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.participantopenhighlowlastindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.9/TradingStatusMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_9_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json

grep "siac.cts.output.cta.v2.9.participantid" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.messageid" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.transactionid" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.participantreferencenumber" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.securitysymbol" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.instrumenttype" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.lastprice" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.highindicationpriceupperlimitpriceband" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.lowindicationpricelowerlimitpriceband" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.buyvolume" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.sellvolume" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.securitystatus" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.haltreason" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.financialstatusindicator" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.limituplimitdownindicator" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
