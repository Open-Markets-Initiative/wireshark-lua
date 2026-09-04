set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.Mdp3.Sbe.v1.5/MdIncrementalRefreshBook.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json 2> Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshBook) ---"; cat Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.5.transacttime" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.globex.mdp3.sbe.v1.5.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.globex.mdp3.sbe.v1.5.padding2" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.Mdp3.Sbe.v1.5/MdIncrementalRefreshSessionStatistics.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json 2> Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshSessionStatistics) ---"; cat Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.5.transacttime" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.globex.mdp3.sbe.v1.5.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.globex.mdp3.sbe.v1.5.padding2" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.Mdp3.Sbe.v1.5/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json 2> Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummary) ---"; cat Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.5.transacttime" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.globex.mdp3.sbe.v1.5.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.globex.mdp3.sbe.v1.5.padding2" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.globex.mdp3.sbe.v1.5.padding5" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.Mdp3.Sbe.v1.5/MdIncrementalRefreshVolume.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json 2> Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshVolume) ---"; cat Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.5.transacttime" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.globex.mdp3.sbe.v1.5.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.globex.mdp3.sbe.v1.5.padding2" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.Mdp3.Sbe.v1.5/MdInstrumentDefinitionSpread.pcap" \
  -X "lua_script:Cme/Cme_Globex_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json 2> Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json.stderr \
  || { echo "--- tshark FAILED (MdInstrumentDefinitionSpread) ---"; cat Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json.stderr; exit 1; }

grep "cme.globex.mdp3.sbe.v1.5.matcheventindicator" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.totnumreportsoptional" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.securityupdateaction" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.lastupdatetime" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.mdsecuritytradingstatus" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.applid" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.marketsegmentid" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.underlyingproductoptional" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.securityexchange" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.securitygroup" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.asset" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.symbol" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.securityid" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.securitytype" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.cficode" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.year" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.month" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.day" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.week" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.currency" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.securitysubtype" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.userdefinedinstrument" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.matchalgorithm" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.mintradevol" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.maxtradevol" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.minpriceincrement" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.displayfactor" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.pricedisplayformat" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.priceratio" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.tickrule" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.unitofmeasure" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.tradingreferenceprice" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.settlpricetype" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.openinterestqty" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.clearedvolume" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.highlimitprice" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.lowlimitprice" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.maxpricevariation" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.mainfraction" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.subfraction" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.blocklength" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.globex.mdp3.sbe.v1.5.numingroup" Cme.Globex.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
