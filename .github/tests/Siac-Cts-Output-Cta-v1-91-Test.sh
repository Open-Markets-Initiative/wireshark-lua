set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v1.91/IndexMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v1_91_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v1.91.IndexMessage.json

grep "siac.cts.output.cta.v1.91.participantid" Siac.Cts.Output.Cta.v1.91.IndexMessage.json
grep "siac.cts.output.cta.v1.91.messageid" Siac.Cts.Output.Cta.v1.91.IndexMessage.json
grep "siac.cts.output.cta.v1.91.transactionid" Siac.Cts.Output.Cta.v1.91.IndexMessage.json
grep "siac.cts.output.cta.v1.91.participantreferencenumber" Siac.Cts.Output.Cta.v1.91.IndexMessage.json
grep "siac.cts.output.cta.v1.91.indexsymbol" Siac.Cts.Output.Cta.v1.91.IndexMessage.json
grep "siac.cts.output.cta.v1.91.indexvalue" Siac.Cts.Output.Cta.v1.91.IndexMessage.json
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v1.91/LineIntegrityMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v1_91_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v1.91.LineIntegrityMessage.json

grep "siac.cts.output.cta.v1.91.participantid" Siac.Cts.Output.Cta.v1.91.LineIntegrityMessage.json
grep "siac.cts.output.cta.v1.91.messageid" Siac.Cts.Output.Cta.v1.91.LineIntegrityMessage.json
grep "siac.cts.output.cta.v1.91.transactionid" Siac.Cts.Output.Cta.v1.91.LineIntegrityMessage.json
grep "siac.cts.output.cta.v1.91.participantreferencenumber" Siac.Cts.Output.Cta.v1.91.LineIntegrityMessage.json
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v1.91/LongTradeMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v1_91_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json

grep "siac.cts.output.cta.v1.91.participantid" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.messageid" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.transactionid" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.participantreferencenumber" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.securitysymbol" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.instrumenttype" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.tradeprice" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.tradevolume" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.sellerssaledays" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.stopstockindicator" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.tradethroughexemptindicator" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.tradereportingfacilityid" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.financialstatusindicator" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.heldtradeindicator" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.consolidatedhighlowlastindicator" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
grep "siac.cts.output.cta.v1.91.participantopenhighlowlastindicator" Siac.Cts.Output.Cta.v1.91.LongTradeMessage.json
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v1.91/ShortTradeMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v1_91_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json

grep "siac.cts.output.cta.v1.91.participantid" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.messageid" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.transactionid" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.participantreferencenumber" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.securitysymbolshort" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.salecondition" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.saleconditioncategory" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.tradepriceshort" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.tradevolumeshort" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.consolidatedhighlowlastindicator" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
grep "siac.cts.output.cta.v1.91.participantopenhighlowlastindicator" Siac.Cts.Output.Cta.v1.91.ShortTradeMessage.json
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v1.91/TradingStatusMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v1_91_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json

grep "siac.cts.output.cta.v1.91.participantid" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.messageid" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.transactionid" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.participantreferencenumber" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.securitysymbol" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.instrumenttype" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.lastprice" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.highindicationpriceupperlimitpriceband" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.lowindicationpricelowerlimitpriceband" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.buyvolume" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.sellvolume" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.securitystatus" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.haltreason" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.financialstatusindicator" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
grep "siac.cts.output.cta.v1.91.limituplimitdownindicator" Siac.Cts.Output.Cta.v1.91.TradingStatusMessage.json
