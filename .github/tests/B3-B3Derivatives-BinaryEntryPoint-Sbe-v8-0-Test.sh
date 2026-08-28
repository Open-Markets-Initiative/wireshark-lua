set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.0/EstablishAckMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishAckMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishAckMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishAckMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishAckMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.keepaliveinterval" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishAckMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.lastincomingseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishAckMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.0/EstablishRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (EstablishRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.establishmentrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.offset21padding1" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.lastincomingseqnooptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.EstablishRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.0/NegotiateRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (NegotiateRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.enteringfirmoptional" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.negotiationrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.offset25padding3" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.currentsessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.0/RetransmissionMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmissionMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmissionMessage.json.stderr \
  || { echo "--- tshark FAILED (RetransmissionMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmissionMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmissionMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmissionMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmissionMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.count" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmissionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.0/RetransmitRejectMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmitRejectMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmitRejectMessage.json.stderr \
  || { echo "--- tshark FAILED (RetransmitRejectMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmitRejectMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmitRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.requesttimestamp" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmitRejectMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.retransmitrejectcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.RetransmitRejectMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.0/SequenceMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.SequenceMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.SequenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.SequenceMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.nextseqno" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.SequenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/B3/B3Derivatives.BinaryEntryPoint.Sbe.v8.0/TerminateMessage.pcap" \
  -X "lua_script:B3/B3_B3Derivatives_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -T json \
  > B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json 2> B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr \
  || { echo "--- tshark FAILED (TerminateMessage) ---"; cat B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json.stderr; exit 1; }

grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.sessionverid" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json
grep "b3.b3derivatives.binaryentrypoint.sbe.v8.0.terminationcode" B3.B3Derivatives.BinaryEntryPoint.Sbe.v8.0.TerminateMessage.json
