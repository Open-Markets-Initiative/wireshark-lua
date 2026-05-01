set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/DefineSymbolMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/DefineSymbolMessage.pcap" \
  -X "lua_script:Txse/Txse_TxseEquities_OrderEntry_Seed_v0_1_Dissector.lua" \
  -d "udp.port==${PORT},txse.txseequities.orderentry.seed.v0.1.lua" \
  -T json \
  > Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json 2> Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr \
  || { echo "--- tshark FAILED (DefineSymbolMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr; exit 1; }
if [ -s Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr ]; then echo "--- tshark stderr (DefineSymbolMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr; fi

grep "txse.txseequities.orderentry.seed.v0.1.transacttime" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.symbolid" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.symbol" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.suffix" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.matchingengineid" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.definesymbolbitfields" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.lotsize" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
PORT=$(tshark -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/LimitOrderMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/LimitOrderMessage.pcap" \
  -X "lua_script:Txse/Txse_TxseEquities_OrderEntry_Seed_v0_1_Dissector.lua" \
  -d "udp.port==${PORT},txse.txseequities.orderentry.seed.v0.1.lua" \
  -T json \
  > Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json 2> Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (LimitOrderMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr; exit 1; }
if [ -s Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr ]; then echo "--- tshark stderr (LimitOrderMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr; fi

grep "txse.txseequities.orderentry.seed.v0.1.limitorderpresencebits" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.clordid" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.orderqty" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.limitorderbitfields" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.symbolid" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.price" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
