set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/NegotiateRejectMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/NegotiateRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  --enable-heuristic "b3.b3derivatives.binaryentrypoint.sbe.v8.0.lua_udp" \
  -d "udp.port==${PORT},b3.b3derivatives.binaryentrypoint.sbe.v8.0.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (NegotiateRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr ]; then echo "--- tshark stderr (NegotiateRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr; fi

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.enteringfirmoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.negotiationrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.offset25padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.currentsessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
PORT=$(tshark -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/TerminateMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/B3/BinaryEntryPoint.v8.0/TerminateMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  --enable-heuristic "b3.b3derivatives.binaryentrypoint.sbe.v8.0.lua_udp" \
  -d "udp.port==${PORT},b3.b3derivatives.binaryentrypoint.sbe.v8.0.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr \
  || { echo "--- tshark FAILED (TerminateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr; exit 1; }
if [ -s B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr ]; then echo "--- tshark stderr (TerminateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr; fi

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.terminationcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json
