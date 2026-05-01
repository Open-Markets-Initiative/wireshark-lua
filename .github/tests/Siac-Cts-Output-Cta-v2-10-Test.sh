set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.10/TradeCorrectionMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_10_Dissector.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json 2> Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeCorrectionMessage) ---"; cat Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr; exit 1; }
if [ -s Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr ]; then echo "--- tshark stderr (TradeCorrectionMessage) ---"; cat Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr; fi
echo "--- tshark diagnostic (TradeCorrectionMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json; echo

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
