set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/OtcMarkets/LinkAts.Headers/Heartbeat.pcap" \
  -X "lua_script:OtcMarkets/OtcMarkets_LinkAts_Multicast_Link_v4_3_Dissector.lua" \
  -T json \
  > OtcMarkets.LinkAts.Multicast.Link.v4.3.Heartbeat.json 2> OtcMarkets.LinkAts.Multicast.Link.v4.3.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat OtcMarkets.LinkAts.Multicast.Link.v4.3.Heartbeat.json.stderr; exit 1; }

