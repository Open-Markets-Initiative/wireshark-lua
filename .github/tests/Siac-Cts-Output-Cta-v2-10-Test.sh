set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.10/TradeCorrectionMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_10_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json 2> Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeCorrectionMessage) ---"; cat Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr; exit 1; }

grep "siac.cts.output.cta.v2.10.participantid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.messageid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.transactionid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.participantreferencenumber" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.securitysymbol" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.instrumenttype" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.tradereportingfacilityid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.originalparticipantreferencenumber" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
grep "siac.cts.output.cta.v2.10.financialstatusindicator" Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json
