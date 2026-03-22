set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshBook.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json

grep "cme.futures.mdp3.sbe.v1.5.transacttime" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.futures.mdp3.sbe.v1.5.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.futures.mdp3.sbe.v1.5.padding2" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshSessionStatistics.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json

grep "cme.futures.mdp3.sbe.v1.5.transacttime" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.futures.mdp3.sbe.v1.5.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.futures.mdp3.sbe.v1.5.padding2" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json

grep "cme.futures.mdp3.sbe.v1.5.transacttime" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.futures.mdp3.sbe.v1.5.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.futures.mdp3.sbe.v1.5.padding2" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshVolume.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json

grep "cme.futures.mdp3.sbe.v1.5.transacttime" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.futures.mdp3.sbe.v1.5.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.futures.mdp3.sbe.v1.5.padding2" Cme.Futures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdInstrumentDefinitionSpread.pcap" \
  -X "lua_script:Cme/Cme_Futures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -T json \
  > Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json

grep "cme.futures.mdp3.sbe.v1.5.matcheventindicator" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.totnumreportsoptional" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.securityupdateaction" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.lastupdatetime" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.mdsecuritytradingstatus" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.applid" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.marketsegmentid" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.underlyingproductoptional" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.securityexchange" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.securitygroup" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.asset" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.symbol" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.securityid" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.securitytype" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.cficode" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.currency" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.securitysubtype" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.userdefinedinstrument" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.matchalgorithm" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.mintradevol" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.maxtradevol" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.minpriceincrement" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.displayfactor" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.pricedisplayformat" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.priceratio" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.tickrule" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.unitofmeasure" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.tradingreferenceprice" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.settlpricetype" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.openinterestqty" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.clearedvolume" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.highlimitprice" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.lowlimitprice" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.maxpricevariation" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.mainfraction" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
grep "cme.futures.mdp3.sbe.v1.5.subfraction" Cme.Futures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json
