set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/MiaxOptions.ComplexTopOfMarket.Mach.v1.1/Heartbeat.pcap" \
  -X "lua_script:Miax/Miax_MiaxOptions_ComplexTopOfMarket_Mach_v1_1_Dissector.lua" \
  -T json \
  > Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.Heartbeat.json 2> Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.Heartbeat.json.stderr; exit 1; }

