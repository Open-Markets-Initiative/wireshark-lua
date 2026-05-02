set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/NegotiateRejectMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/NegotiateRejectMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,b3.b3derivatives.binaryentrypoint.sbe.v8.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,b3.b3derivatives.binaryentrypoint.sbe.v8.0.lua"; else echo "could not detect transport port for NegotiateRejectMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/NegotiateRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (NegotiateRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr ]; then echo "--- tshark stderr (NegotiateRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr; fi
echo "--- tshark diagnostic (NegotiateRejectMessage) ---"
echo "json bytes: $(wc -c < B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json)"
echo "frame count: $(grep -c '\"_index\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json | sort -u | head -n 40

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.enteringfirmoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.negotiationrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.offset25padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.currentsessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/TerminateMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/TerminateMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,b3.b3derivatives.binaryentrypoint.sbe.v8.0.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,b3.b3derivatives.binaryentrypoint.sbe.v8.0.lua"; else echo "could not detect transport port for TerminateMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/TerminateMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -d "$decode" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr \
  || { echo "--- tshark FAILED (TerminateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr ]; then echo "--- tshark stderr (TerminateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr; fi
echo "--- tshark diagnostic (TerminateMessage) ---"
echo "json bytes: $(wc -c < B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json | sort -u | head -n 40

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.terminationcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json
