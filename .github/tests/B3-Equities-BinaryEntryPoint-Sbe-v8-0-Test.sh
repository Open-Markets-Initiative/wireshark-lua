set -o errexit
set -o pipefail

tshark \
  -r "Data/B3/BinaryEntryPoint.v8.0/NegotiateRejectMessage.3.pcap" \
  -X "lua_script:B3/B3_Equities_BinaryEntryPoint_Sbe_v8_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["b3.equities.binaryentrypoint.sbe.v8.0.lua"]' \
  > B3.Equities.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json

grep "b3.equities.binaryentrypoint.sbe.v8.0.sessionid" B3.Equities.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.sessionverid" B3.Equities.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.requesttimestamp" B3.Equities.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.enteringfirmoptional" B3.Equities.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.negotiationrejectcode" B3.Equities.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.offset25padding3" B3.Equities.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
grep "b3.equities.binaryentrypoint.sbe.v8.0.currentsessionverid" B3.Equities.BinaryEntryPoint.Sbe.v8.0.NegotiateRejectMessage.json
