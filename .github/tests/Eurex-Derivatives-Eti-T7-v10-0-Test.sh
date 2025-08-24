set -o errexit
set -o pipefail

tshark \
  -r "Data/Eurex/Eti.T7.v10.0/OrderExecResponse.pcap" \
  -X "lua_script:Eurex/Eurex_Derivatives_Eti_T7_v10_0_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["eurex.derivatives.eti.t7.v10.0.lua"]' \
  > Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json

grep "eurex.derivatives.eti.t7.v10.0.pad2" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.orderid" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.clordid" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.origclordid" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.securityid" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.execid" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.trdregtsentrytime" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.trdregtstimepriority" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.leavesqty" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.cumqty" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.cxlqty" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.marketsegmentid" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.nolegexecs" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.execrestatementreason" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.side" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.productcomplex" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.ordstatus" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.exectype" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.triggered" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.crossedindicator" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.transactiondelayindicator" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.nofills" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.noorderevents" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
grep "eurex.derivatives.eti.t7.v10.0.pad7" Eurex.Derivatives.Eti.T7.v10.0.OrderExecResponse.json
