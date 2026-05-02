set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshBook.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json.stderr; exit 1; }

grep "cme.cmefutures.mdp3.sbe.v1.5.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.5.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.5.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshSessionStatistics.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshSessionStatistics) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json.stderr; exit 1; }

grep "cme.cmefutures.mdp3.sbe.v1.5.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.cmefutures.mdp3.sbe.v1.5.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.cmefutures.mdp3.sbe.v1.5.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json.stderr; exit 1; }

grep "cme.cmefutures.mdp3.sbe.v1.5.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.5.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.5.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshVolume.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshVolume) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json.stderr; exit 1; }

grep "cme.cmefutures.mdp3.sbe.v1.5.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.5.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.5.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdInstrumentDefinitionSpread.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json.stderr \
  || { echo "--- tshark FAILED (MdInstrumentDefinitionSpread) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json.stderr; exit 1; }

grep "cme.cmefutures.mdp3.sbe.v1.5.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.totnumreportsoptional" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.securityupdateaction" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.lastupdatetime" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.mdsecuritytradingstatus" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.applid" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.marketsegmentid" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.underlyingproductoptional" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.securityexchange" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.securitygroup" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.asset" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.symbol" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.securityid" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.securitytype" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.cficode" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.currency" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.securitysubtype" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.userdefinedinstrument" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.matchalgorithm" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.mintradevol" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.maxtradevol" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.minpriceincrement" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.displayfactor" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.pricedisplayformat" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.priceratio" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.tickrule" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.unitofmeasure" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.tradingreferenceprice" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.settlpricetype" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.openinterestqty" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.clearedvolume" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.highlimitprice" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.lowlimitprice" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.maxpricevariation" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.mainfraction" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.cmefutures.mdp3.sbe.v1.5.subfraction" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
