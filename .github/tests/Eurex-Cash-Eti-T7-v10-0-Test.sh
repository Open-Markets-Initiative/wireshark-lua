set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Eurex/Eti.T7.v10.0/OrderExecResponse.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Eti.T7.v10.0/OrderExecResponse.pcap" \
  -X "lua_script:Eurex/Eurex_Cash_Eti_T7_v10_0_Dissector.lua" \
  -d "udp.port==$port,eurex.cash.eti.t7.v10.0.lua" \
  -T json \
  > Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json 2> Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json.stderr \
  || { echo "--- tshark FAILED (OrderExecResponse) ---"; cat Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json.stderr; exit 1; }
if [ -s Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json.stderr ]; then echo "--- tshark stderr (OrderExecResponse) ---"; cat Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json.stderr; fi
echo "--- tshark diagnostic (OrderExecResponse) ---"
echo "json bytes: $(wc -c < Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json)"
echo "frame count: $(grep -c '\"_index\"' Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json | sort -u | head -n 40

grep "eurex.cash.eti.t7.v10.0.pad2" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.orderid" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.clordid" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.origclordid" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.securityid" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.execid" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.trdregtsentrytime" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.trdregtstimepriority" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.leavesqty" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.cumqty" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.cxlqty" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.displayqty" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.marketsegmentid" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.orderidsfx" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.execrestatementreason" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.side" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.ordstatus" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.exectype" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.matchtype" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.triggered" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.crossedindicator" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.transactiondelayindicator" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.nofills" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.noorderevents" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.cash.eti.t7.v10.0.pad5" Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json
