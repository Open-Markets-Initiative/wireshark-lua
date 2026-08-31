set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eti.Fbe.v6.1/Heartbeat.pcap" \
  --disable-protocol eti \
  -X "lua_script:Eurex/Eurex_T7_Eti_Fbe_v6_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Eti.Fbe.v6.1.Heartbeat.json 2> Eurex.T7.Eti.Fbe.v6.1.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Eurex.T7.Eti.Fbe.v6.1.Heartbeat.json.stderr; exit 1; }

grep "eurex.t7.eti.fbe.v6.1.networkmsgid" Eurex.T7.Eti.Fbe.v6.1.Heartbeat.json
grep "eurex.t7.eti.fbe.v6.1.pad2" Eurex.T7.Eti.Fbe.v6.1.Heartbeat.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eti.Fbe.v6.1/RetransmitMeMessageRequest.pcap" \
  --disable-protocol eti \
  -X "lua_script:Eurex/Eurex_T7_Eti_Fbe_v6_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json 2> Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json.stderr \
  || { echo "--- tshark FAILED (RetransmitMeMessageRequest) ---"; cat Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json.stderr; exit 1; }

grep "eurex.t7.eti.fbe.v6.1.networkmsgid" Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json
grep "eurex.t7.eti.fbe.v6.1.pad2" Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json
grep "eurex.t7.eti.fbe.v6.1.subscriptionscope" Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json
grep "eurex.t7.eti.fbe.v6.1.partitionid" Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json
grep "eurex.t7.eti.fbe.v6.1.refapplid" Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json
grep "eurex.t7.eti.fbe.v6.1.applbegmsgid" Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json
grep "eurex.t7.eti.fbe.v6.1.applendmsgid" Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json
grep "eurex.t7.eti.fbe.v6.1.pad1" Eurex.T7.Eti.Fbe.v6.1.RetransmitMeMessageRequest.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eti.Fbe.v6.1/UserLoginResponse.pcap" \
  --disable-protocol eti \
  -X "lua_script:Eurex/Eurex_T7_Eti_Fbe_v6_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Eti.Fbe.v6.1.UserLoginResponse.json 2> Eurex.T7.Eti.Fbe.v6.1.UserLoginResponse.json.stderr \
  || { echo "--- tshark FAILED (UserLoginResponse) ---"; cat Eurex.T7.Eti.Fbe.v6.1.UserLoginResponse.json.stderr; exit 1; }

grep "eurex.t7.eti.fbe.v6.1.pad2" Eurex.T7.Eti.Fbe.v6.1.UserLoginResponse.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eti.Fbe.v6.1/Reassembly.pcap" \
  --disable-protocol eti \
  -X "lua_script:Eurex/Eurex_T7_Eti_Fbe_v6_1_Dissector.lua" \
  -T json \
  > Eurex.T7.Eti.Fbe.v6.1.Reassembly.json 2> Eurex.T7.Eti.Fbe.v6.1.Reassembly.json.stderr \
  || { echo "--- tshark FAILED (Reassembly) ---"; cat Eurex.T7.Eti.Fbe.v6.1.Reassembly.json.stderr; exit 1; }

grep "eurex.t7.eti.fbe.v6.1." Eurex.T7.Eti.Fbe.v6.1.Reassembly.json

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/T7.Eti.Fbe.v6.1/Reassembly.pcap" \
  --disable-protocol eti \
  -X "lua_script:Eurex/Eurex_T7_Eti_Fbe_v6_1_Dissector.lua" \
  -Y "tcp.segments" \
  | grep . \
  || { echo "--- no reassembly (Reassembly) ---"; exit 1; }
