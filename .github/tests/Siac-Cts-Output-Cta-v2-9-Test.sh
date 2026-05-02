set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Siac/Cts.Cta.v2.9/LineIntegrityMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Siac/Cts.Cta.v2.9/LineIntegrityMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,siac.cts.output.cta.v2.9.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,siac.cts.output.cta.v2.9.lua"; else echo "could not detect transport port for LineIntegrityMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.9/LineIntegrityMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_9_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json 2> Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json.stderr \
  || { echo "--- tshark FAILED (LineIntegrityMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json.stderr; exit 1; }
if [ -s Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json.stderr ]; then echo "--- tshark stderr (LineIntegrityMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json.stderr; fi
echo "--- tshark diagnostic (LineIntegrityMessage) ---"
echo "json bytes: $(wc -c < Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json | sort -u | head -n 40

grep "siac.cts.output.cta.v2.9.participantid" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.9.messageid" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.9.transactionid" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.9.participantreferencenumber" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Siac/Cts.Cta.v2.9/LongTradeMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Siac/Cts.Cta.v2.9/LongTradeMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,siac.cts.output.cta.v2.9.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,siac.cts.output.cta.v2.9.lua"; else echo "could not detect transport port for LongTradeMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.9/LongTradeMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_9_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json 2> Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (LongTradeMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json.stderr; exit 1; }
if [ -s Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json.stderr ]; then echo "--- tshark stderr (LongTradeMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json.stderr; fi
echo "--- tshark diagnostic (LongTradeMessage) ---"
echo "json bytes: $(wc -c < Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json | sort -u | head -n 40

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
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Siac/Cts.Cta.v2.9/TradingStatusMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Siac/Cts.Cta.v2.9/TradingStatusMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,siac.cts.output.cta.v2.9.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,siac.cts.output.cta.v2.9.lua"; else echo "could not detect transport port for TradingStatusMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.9/TradingStatusMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_9_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json 2> Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json.stderr; exit 1; }
if [ -s Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingStatusMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (TradingStatusMessage) ---"
echo "json bytes: $(wc -c < Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json | sort -u | head -n 40

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
