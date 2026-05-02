set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/DefineSymbolMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/DefineSymbolMessage.pcap" \
  -X "lua_script:Txse/Txse_TxseEquities_OrderEntry_Seed_v0_1_Dissector.lua" \
  -d "udp.port==$port,txse.txseequities.orderentry.seed.v0.1.lua" \
  -T json \
  > Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json 2> Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr \
  || { echo "--- tshark FAILED (DefineSymbolMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr; exit 1; }
if [ -s Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr ]; then echo "--- tshark stderr (DefineSymbolMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json.stderr; fi
echo "--- tshark diagnostic (DefineSymbolMessage) ---"
echo "json bytes: $(wc -c < Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json | sort -u | head -n 40

grep "txse.txseequities.orderentry.seed.v0.1.transacttime" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.symbolid" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.symbol" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.suffix" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.matchingengineid" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.definesymbolbitfields" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.lotsize" Txse.TxseEquities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/LimitOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/LimitOrderMessage.pcap" \
  -X "lua_script:Txse/Txse_TxseEquities_OrderEntry_Seed_v0_1_Dissector.lua" \
  -d "udp.port==$port,txse.txseequities.orderentry.seed.v0.1.lua" \
  -T json \
  > Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json 2> Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (LimitOrderMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr; exit 1; }
if [ -s Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr ]; then echo "--- tshark stderr (LimitOrderMessage) ---"; cat Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (LimitOrderMessage) ---"
echo "json bytes: $(wc -c < Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json | sort -u | head -n 40

grep "txse.txseequities.orderentry.seed.v0.1.limitorderpresencebits" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.clordid" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.orderqty" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.limitorderbitfields" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.symbolid" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.txseequities.orderentry.seed.v0.1.price" Txse.TxseEquities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
