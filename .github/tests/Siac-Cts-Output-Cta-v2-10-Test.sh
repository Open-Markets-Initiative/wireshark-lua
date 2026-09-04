set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Output.Cta.v2.10/TradeCorrectionMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_10_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json 2> Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeCorrectionMessage) ---"; cat Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.10.participantid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.seconds" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.nanoseconds" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.messageid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.transactionid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.participantreferencenumber" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.securitysymbol" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.instrumenttype" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.settlementtype" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradethroughexemptreason" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.extendedhoursorsequencetype" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.srotradedetail" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradeprice" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradevolume" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.sellerssaledays" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.stopstockindicator" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradethroughexemptindicator" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradereportingfacilityid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.seconds" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.nanoseconds" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.originalparticipantreferencenumber" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.settlementtype" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradethroughexemptreason" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.extendedhoursorsequencetype" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.srotradedetail" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradeprice" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradevolume" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.sellerssaledays" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.stopstockindicator" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradethroughexemptindicator" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.financialstatusindicator" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.previousclosepricedate" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.lastparticipantid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.lastprice" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.highprice" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.lowprice" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.totalvolumeshort" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tick" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.previousclosepricedate" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.lastprice" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.highprice" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.lowprice" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.openprice" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.totalvolumeshort" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tick" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
