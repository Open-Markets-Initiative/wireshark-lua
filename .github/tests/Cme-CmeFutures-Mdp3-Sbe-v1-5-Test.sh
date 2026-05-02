set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshBook.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshBook.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -d "udp.port==$port,cme.cmefutures.mdp3.sbe.v1.5.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshBook) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshBook) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json | sort -u | head -n 40

grep "cme.cmefutures.mdp3.sbe.v1.5.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.5.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
grep "cme.cmefutures.mdp3.sbe.v1.5.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshBook.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshSessionStatistics.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshSessionStatistics.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -d "udp.port==$port,cme.cmefutures.mdp3.sbe.v1.5.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshSessionStatistics) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshSessionStatistics) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshSessionStatistics) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json | sort -u | head -n 40

grep "cme.cmefutures.mdp3.sbe.v1.5.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.cmefutures.mdp3.sbe.v1.5.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
grep "cme.cmefutures.mdp3.sbe.v1.5.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshSessionStatistics.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshTradeSummary.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshTradeSummary.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -d "udp.port==$port,cme.cmefutures.mdp3.sbe.v1.5.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshTradeSummary) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshTradeSummary) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json | sort -u | head -n 40

grep "cme.cmefutures.mdp3.sbe.v1.5.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.5.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
grep "cme.cmefutures.mdp3.sbe.v1.5.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshTradeSummary.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshVolume.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdIncrementalRefreshVolume.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -d "udp.port==$port,cme.cmefutures.mdp3.sbe.v1.5.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json.stderr \
  || { echo "--- tshark FAILED (MdIncrementalRefreshVolume) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json.stderr ]; then echo "--- tshark stderr (MdIncrementalRefreshVolume) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json.stderr; fi
echo "--- tshark diagnostic (MdIncrementalRefreshVolume) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json | sort -u | head -n 40

grep "cme.cmefutures.mdp3.sbe.v1.5.transacttime" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.5.matcheventindicator" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
grep "cme.cmefutures.mdp3.sbe.v1.5.padding2" Cme.CmeFutures.Mdp3.Sbe.v1.5.MdIncrementalRefreshVolume.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdInstrumentDefinitionSpread.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Mdp3.Sbe.v1.5/MdInstrumentDefinitionSpread.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_Mdp3_Sbe_v1_5_Dissector.lua" \
  -d "udp.port==$port,cme.cmefutures.mdp3.sbe.v1.5.lua" \
  -T json \
  > Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json 2> Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json.stderr \
  || { echo "--- tshark FAILED (MdInstrumentDefinitionSpread) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json.stderr; exit 1; }
if [ -s Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json.stderr ]; then echo "--- tshark stderr (MdInstrumentDefinitionSpread) ---"; cat Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json.stderr; fi
echo "--- tshark diagnostic (MdInstrumentDefinitionSpread) ---"
echo "json bytes: $(wc -c < Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json)"
echo "frame count: $(grep -c '\"_index\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cme.CmeFutures.Mdp3.Sbe.v1.5.MdInstrumentDefinitionSpread.json | sort -u | head -n 40

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
