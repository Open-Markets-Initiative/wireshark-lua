set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/MdIncrementalRefreshBookLongQty.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json 2> Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshBookLongQty) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.transacttime" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.padding2" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshBookLongQty.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/MdIncrementalRefreshTradeSummaryLongQty.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json 2> Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummaryLongQty) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.transacttime" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.padding2" Cme.Globex.Mdp3.Sbe.v1.12.MdIncrementalRefreshTradeSummaryLongQty.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/MarketDataRequest.Tcp.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.MarketDataRequest.json 2> Cme.Globex.Mdp3.Sbe.v1.12.MarketDataRequest.json.stderr \
  || { echo "--- tshark FAILED (MarketDataRequest) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.MarketDataRequest.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.mdreqid" Cme.Globex.Mdp3.Sbe.v1.12.MarketDataRequest.json
grep "cme.globex.mdp3.sbe.v1.12.subscriptionreqtype" Cme.Globex.Mdp3.Sbe.v1.12.MarketDataRequest.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/RequestAck.Tcp.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.RequestAck.json 2> Cme.Globex.Mdp3.Sbe.v1.12.RequestAck.json.stderr \
  || { echo "--- tshark FAILED (RequestAck) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.RequestAck.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.mdreqid" Cme.Globex.Mdp3.Sbe.v1.12.RequestAck.json
grep "cme.globex.mdp3.sbe.v1.12.subscriptionreqtype" Cme.Globex.Mdp3.Sbe.v1.12.RequestAck.json
grep "cme.globex.mdp3.sbe.v1.12.mdreqidstatus" Cme.Globex.Mdp3.Sbe.v1.12.RequestAck.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/SecurityListRequest.Tcp.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.SecurityListRequest.json 2> Cme.Globex.Mdp3.Sbe.v1.12.SecurityListRequest.json.stderr \
  || { echo "--- tshark FAILED (SecurityListRequest) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.SecurityListRequest.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.mdreqid" Cme.Globex.Mdp3.Sbe.v1.12.SecurityListRequest.json
grep "cme.globex.mdp3.sbe.v1.12.subscriptionreqtype" Cme.Globex.Mdp3.Sbe.v1.12.SecurityListRequest.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/SecurityStatusRequest.Tcp.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatusRequest.json 2> Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatusRequest.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusRequest) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatusRequest.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.mdreqid" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatusRequest.json
grep "cme.globex.mdp3.sbe.v1.12.subscriptionreqtype" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatusRequest.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/SecurityStatus.Tcp.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json 2> Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatus) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.transacttime" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json
grep "cme.globex.mdp3.sbe.v1.12.securitygroup" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json
grep "cme.globex.mdp3.sbe.v1.12.asset" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json
grep "cme.globex.mdp3.sbe.v1.12.securityidoptional" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json
grep "cme.globex.mdp3.sbe.v1.12.tradedate" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json
grep "cme.globex.mdp3.sbe.v1.12.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json
grep "cme.globex.mdp3.sbe.v1.12.securitytradingstatus" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json
grep "cme.globex.mdp3.sbe.v1.12.haltreason" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json
grep "cme.globex.mdp3.sbe.v1.12.securitytradingevent" Cme.Globex.Mdp3.Sbe.v1.12.SecurityStatus.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/MdInstrumentDefinitionFx.Tcp.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json 2> Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json.stderr \
  || { echo "--- tshark FAILED (MdInstrumentDefinitionFx) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.totnumreportsoptional" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.securityupdateaction" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.lastupdatetime" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.mdsecuritytradingstatus" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.applid" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.marketsegmentid" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.underlyingproduct" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.securityexchange" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.securitygroup" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.asset" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.symbol" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.securityid" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.securitytype" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.cficode" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.currency" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.settlcurrency" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.pricequotecurrency" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.matchalgorithm" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.mintradevol" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.maxtradevol" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.minpriceincrement" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.displayfactor" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.priceprecision" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.unitofmeasure" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.unitofmeasureqty" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.highlimitprice" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.lowlimitprice" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.maxpricevariation" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.userdefinedinstrument" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.financialinstrumentfullname" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.fxcurrencysymbol" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.settltype" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.interveningdays" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.fxbenchmarkratefix" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.ratesource" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.fixratelocaltime" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.fixratelocaltimezone" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.minquotelife" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.maxpricediscretionoffset" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.instrumentguid" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
grep "cme.globex.mdp3.sbe.v1.12.settlementlocale" Cme.Globex.Mdp3.Sbe.v1.12.MdInstrumentDefinitionFx.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/SnapshotFullRefreshTcpLongQty.Tcp.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.SnapshotFullRefreshTcpLongQty.json 2> Cme.Globex.Mdp3.Sbe.v1.12.SnapshotFullRefreshTcpLongQty.json.stderr \
  || { echo "--- tshark FAILED (SnapshotFullRefreshTcpLongQty) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.SnapshotFullRefreshTcpLongQty.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.12.transacttime" Cme.Globex.Mdp3.Sbe.v1.12.SnapshotFullRefreshTcpLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.12.SnapshotFullRefreshTcpLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.securityid" Cme.Globex.Mdp3.Sbe.v1.12.SnapshotFullRefreshTcpLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.highlimitprice" Cme.Globex.Mdp3.Sbe.v1.12.SnapshotFullRefreshTcpLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.lowlimitprice" Cme.Globex.Mdp3.Sbe.v1.12.SnapshotFullRefreshTcpLongQty.json
grep "cme.globex.mdp3.sbe.v1.12.maxpricevariation" Cme.Globex.Mdp3.Sbe.v1.12.SnapshotFullRefreshTcpLongQty.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.12/SubscriberHeartbeat.Tcp.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_12_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.12.SubscriberHeartbeat.json 2> Cme.Globex.Mdp3.Sbe.v1.12.SubscriberHeartbeat.json.stderr \
  || { echo "--- tshark FAILED (SubscriberHeartbeat) ---"; cat Cme.Globex.Mdp3.Sbe.v1.12.SubscriberHeartbeat.json.stderr; exit 1; }

