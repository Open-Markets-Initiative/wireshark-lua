set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Eurex/Eti.T7.v10.0/OrderExecResponse.pcap" \
  -X "lua_script:Eurex/Eurex_Cash_Eti_T7_v10_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["eurex.cash.eti.t7.v10.0.lua"]' \
  > Eurex.Cash.Eti.T7.v10.0.OrderExecResponse.json

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
