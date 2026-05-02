set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/DefineSymbolMessage.pcap" \
  -X "lua_script:Txse/Txse_TxseEquities_OrderEntry_Seed_v0_1_Dissector.lua" \
  -T json \
  > Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json 2> Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr \
  || { echo "--- tshark FAILED (DefineSymbolMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr; exit 1; }

grep "txse.txseequities.orderentry.seed.v0.1.transacttime" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.symbolid" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.symbol" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.suffix" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.matchingengineid" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.definesymbolbitfields" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.lotsize" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/LimitOrderMessage.pcap" \
  -X "lua_script:Txse/Txse_TxseEquities_OrderEntry_Seed_v0_1_Dissector.lua" \
  -T json \
  > Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json 2> Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (LimitOrderMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr; exit 1; }

grep "txse.txseequities.orderentry.seed.v0.1.limitorderpresencebits" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.clordid" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.orderqty" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.limitorderbitfields" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.symbolid" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.price" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
