set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Siac/Cqs.Cta.v1.91/LongQuoteMessage.pcap" \
  -X "lua_script:Siac/Siac_Cqs_Output_Cta_v1_91_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["siac.cqs.output.cta.v1.91.lua"]' \
  > Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json

grep "siac.cqs.output.cta.v1.91.participantid" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.messageid" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.transactionid" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.participantreferencenumber" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.securitysymbollong" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.instrumenttype" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.quotecondition" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.securitystatusindicator" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.bidpricelowerlimitpriceband" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.bidsizelong" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.offerpriceupperlimitpriceband" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.offersizelong" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.retailinterestindicator" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.settlementcondition" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.marketcondition" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.finramarketmakerid" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.finrabboindicator" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.shortsalerestrictionindicator" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.primarylistingmarketparticipantid" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.financialstatusindicator" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.sipgeneratedmessageidentifier" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.luldindicator" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.nationalbboluldindicator" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
grep "siac.cqs.output.cta.v1.91.nationalbboindicator" Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json
