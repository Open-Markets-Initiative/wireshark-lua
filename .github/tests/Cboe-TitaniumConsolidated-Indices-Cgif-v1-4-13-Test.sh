set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/TitaniumConsolidated.Indices.Cgif.v1.4.13/ContributorValueMessage.pcap" \
  -X "lua_script:Cboe/Cboe_TitaniumConsolidated_Indices_Cgif_v1_4_13_Dissector.lua" \
  -T json \
  > Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.ContributorValueMessage.json 2> Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.ContributorValueMessage.json.stderr \
  || { echo "--- tshark FAILED (ContributorValueMessage) ---"; cat Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.ContributorValueMessage.json.stderr; exit 1; }

grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.transacttime" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.ContributorValueMessage.json
grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.nomdentries" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.ContributorValueMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/TitaniumConsolidated.Indices.Cgif.v1.4.13/HeartbeatMessage.pcap" \
  -X "lua_script:Cboe/Cboe_TitaniumConsolidated_Indices_Cgif_v1_4_13_Dissector.lua" \
  -T json \
  > Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.HeartbeatMessage.json 2> Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.HeartbeatMessage.json.stderr \
  || { echo "--- tshark FAILED (HeartbeatMessage) ---"; cat Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.HeartbeatMessage.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/TitaniumConsolidated.Indices.Cgif.v1.4.13/IndexDefinitionMessage.pcap" \
  -X "lua_script:Cboe/Cboe_TitaniumConsolidated_Indices_Cgif_v1_4_13_Dissector.lua" \
  -T json \
  > Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json 2> Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json.stderr \
  || { echo "--- tshark FAILED (IndexDefinitionMessage) ---"; cat Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json.stderr; exit 1; }

grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.currentrecordnumber" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json
grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.totalnumberofrecords" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json
grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.descriptionlength" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json
grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.description" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json
grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.status" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json
grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.agentclassification" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json
grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.channellength" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json
grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.channel" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexDefinitionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/TitaniumConsolidated.Indices.Cgif.v1.4.13/IndexValueMessage.pcap" \
  -X "lua_script:Cboe/Cboe_TitaniumConsolidated_Indices_Cgif_v1_4_13_Dissector.lua" \
  -T json \
  > Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexValueMessage.json 2> Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexValueMessage.json.stderr \
  || { echo "--- tshark FAILED (IndexValueMessage) ---"; cat Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexValueMessage.json.stderr; exit 1; }

grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.nomdentries" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexValueMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/TitaniumConsolidated.Indices.Cgif.v1.4.13/IndexValueWithStatusMessage.pcap" \
  -X "lua_script:Cboe/Cboe_TitaniumConsolidated_Indices_Cgif_v1_4_13_Dissector.lua" \
  -T json \
  > Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexValueWithStatusMessage.json 2> Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexValueWithStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (IndexValueWithStatusMessage) ---"; cat Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexValueWithStatusMessage.json.stderr; exit 1; }

grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.indexstatus" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexValueWithStatusMessage.json
grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13.nomdentries" Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.IndexValueWithStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/TitaniumConsolidated.Indices.Cgif.v1.4.13/MultipleMessages.pcap" \
  -X "lua_script:Cboe/Cboe_TitaniumConsolidated_Indices_Cgif_v1_4_13_Dissector.lua" \
  -T json \
  > Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.Multiplemessages.json 2> Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.Multiplemessages.json.stderr; exit 1; }

grep "cboe.titaniumconsolidated.indices.cgif.v1.4.13." Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.Multiplemessages.json

[ "$(grep -c 'cboe.titaniumconsolidated.indices.cgif.v1.4.13.' Cboe.TitaniumConsolidated.Indices.Cgif.v1.4.13.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
