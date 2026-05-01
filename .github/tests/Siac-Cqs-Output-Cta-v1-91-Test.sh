set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Siac/Cqs.Cta.v1.91/LongQuoteMessage.pcap" \
  -X "lua_script:Siac/Siac_Cqs_Output_Cta_v1_91_Dissector.lua" \
  -T json \
  > Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json 2> Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (LongQuoteMessage) ---"; cat Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json.stderr; exit 1; }
if [ -s Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json.stderr ]; then echo "--- tshark stderr (LongQuoteMessage) ---"; cat Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json.stderr; fi
echo "--- tshark diagnostic (LongQuoteMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Siac.Cqs.Output.Cta.v1.91.LongQuoteMessage.json; echo

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
