set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Siac/Cts.Cta.v2.10/TradeCorrectionMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.10/TradeCorrectionMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_10_Dissector.lua" \
  --enable-heuristic "siac.cts.output.cta.v2.10.lua_udp" \
  -d "udp.port==${PORT},siac.cts.output.cta.v2.10.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json 2> Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr
if [ -s Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr ]; then echo "--- tshark stderr (TradeCorrectionMessage) ---"; cat Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr; fi

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
