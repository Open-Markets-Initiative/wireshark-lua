set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Eurex/Eti.T7.v6.1/Heartbeat.pcap" \
  -X "lua_script:Eurex/Eurex_Cash_Eti_T7_v6_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["eurex.cash.eti.t7.v6.1.lua"]' \
  > Eurex.Cash.Eti.T7.v6.1.Heartbeat.json

grep "eurex.cash.eti.t7.v6.1.networkmsgid" Eurex.Cash.Eti.T7.v6.1.Heartbeat.json
grep "eurex.cash.eti.t7.v6.1.pad2" Eurex.Cash.Eti.T7.v6.1.Heartbeat.json
tshark \
  -r "omi-data-packets/Eurex/Eti.T7.v6.1/RetransmitMeMessageRequest.pcap" \
  -X "lua_script:Eurex/Eurex_Cash_Eti_T7_v6_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["eurex.cash.eti.t7.v6.1.lua"]' \
  > Eurex.Cash.Eti.T7.v6.1.RetransmitMeMessageRequest.json

grep "eurex.cash.eti.t7.v6.1.networkmsgid" Eurex.Cash.Eti.T7.v6.1.RetransmitMeMessageRequest.json
grep "eurex.cash.eti.t7.v6.1.pad2" Eurex.Cash.Eti.T7.v6.1.RetransmitMeMessageRequest.json
grep "eurex.cash.eti.t7.v6.1.subscriptionscope" Eurex.Cash.Eti.T7.v6.1.RetransmitMeMessageRequest.json
grep "eurex.cash.eti.t7.v6.1.partitionid" Eurex.Cash.Eti.T7.v6.1.RetransmitMeMessageRequest.json
grep "eurex.cash.eti.t7.v6.1.refapplid" Eurex.Cash.Eti.T7.v6.1.RetransmitMeMessageRequest.json
grep "eurex.cash.eti.t7.v6.1.applbegmsgid" Eurex.Cash.Eti.T7.v6.1.RetransmitMeMessageRequest.json
grep "eurex.cash.eti.t7.v6.1.applendmsgid" Eurex.Cash.Eti.T7.v6.1.RetransmitMeMessageRequest.json
grep "eurex.cash.eti.t7.v6.1.pad1" Eurex.Cash.Eti.T7.v6.1.RetransmitMeMessageRequest.json
tshark \
  -r "omi-data-packets/Eurex/Eti.T7.v6.1/UserLoginResponse.pcap" \
  -X "lua_script:Eurex/Eurex_Cash_Eti_T7_v6_1_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["eurex.cash.eti.t7.v6.1.lua"]' \
  > Eurex.Cash.Eti.T7.v6.1.UserLoginResponse.json

grep "eurex.cash.eti.t7.v6.1.pad2" Eurex.Cash.Eti.T7.v6.1.UserLoginResponse.json
