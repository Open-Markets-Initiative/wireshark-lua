set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Eurex/Xti.Fbe.v10.0/OrderExecResponse.pcap" \
  --disable-protocol eti \
  -X "lua_script:Eurex/Eurex_T7_Xti_Fbe_v10_0_Dissector.lua" \
  -T json \
  > Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json 2> Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json.stderr \
  || { echo "--- tshark FAILED (OrderExecResponse) ---"; cat Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json.stderr; exit 1; }

grep "eurex.t7.xti.fbe.v10.0.pad2" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.orderid" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.clordid" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.origclordid" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.securityid" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.execid" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.trdregtsentrytime" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.trdregtstimepriority" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.leavesqty" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.cumqty" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.cxlqty" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.displayqty" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.marketsegmentid" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.orderidsfx" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.execrestatementreason" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.side" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.ordstatus" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.exectype" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.matchtype" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.triggered" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.crossedindicator" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.transactiondelayindicator" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.nofills" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.noorderevents" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
grep "eurex.t7.xti.fbe.v10.0.pad5" Eurex.T7.Xti.Fbe.v10.0.OrderExecResponse.json
