set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Siac/Cts.Cta.v2.10/TradeCorrectionMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.10/TradeCorrectionMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_10_Dissector.lua" \
  -d "udp.port==$port,siac.cts.output.cta.v2.10.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json 2> Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeCorrectionMessage) ---"; cat Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr; exit 1; }
if [ -s Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr ]; then echo "--- tshark stderr (TradeCorrectionMessage) ---"; cat Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json.stderr; fi
echo "--- tshark diagnostic (TradeCorrectionMessage) ---"
echo "json bytes: $(wc -c < Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Siac.Cts.Output.Cta.v2.10.TradeCorrectionMessage.json | sort -u | head -n 40

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
