set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/TxseEquities.Seed.v1.0/DefineSymbolMessage.pcap" \
  -X "lua_script:Txse/Txse_TxseEquities_Seed_Rake_v1_0_Dissector.lua" \
  -T json \
  > Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json 2> Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json.stderr \
  || { echo "--- tshark FAILED (DefineSymbolMessage) ---"; cat Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json.stderr; exit 1; }

grep "txse.txseequities.seed.rake.v1.0.transacttime" Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json
grep "txse.txseequities.seed.rake.v1.0.symbolid" Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json
grep "txse.txseequities.seed.rake.v1.0.symbol" Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json
grep "txse.txseequities.seed.rake.v1.0.suffix" Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json
grep "txse.txseequities.seed.rake.v1.0.matchingengineid" Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json
grep "txse.txseequities.seed.rake.v1.0.definesymbolbitfields" Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json
grep "txse.txseequities.seed.rake.v1.0.lotsize" Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json
grep "txse.txseequities.seed.rake.v1.0.listingmarket" Txse.TxseEquities.Seed.Rake.v1.0.DefineSymbolMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/TxseEquities.Seed.v1.0/LimitOrderMessage.pcap" \
  -X "lua_script:Txse/Txse_TxseEquities_Seed_Rake_v1_0_Dissector.lua" \
  -T json \
  > Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json 2> Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (LimitOrderMessage) ---"; cat Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json.stderr; exit 1; }

grep "txse.txseequities.seed.rake.v1.0.limitorderpresencebits" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.clordid" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.orderqty" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.limitorderbitfields" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.symbolid" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.price" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
grep "txse.txseequities.seed.rake.v1.0.selfmatchscope" Txse.TxseEquities.Seed.Rake.v1.0.LimitOrderMessage.json
