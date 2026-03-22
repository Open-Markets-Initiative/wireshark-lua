set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/DefineSymbolMessage.pcap" \
  -X "lua_script:Txse/Txse_Equities_OrderEntry_Seed_v0_1_Dissector.lua" \
  -T json \
  > Txse.Equities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json

grep "txse.equities.orderentry.seed.v0.1.transacttime" Txse.Equities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.equities.orderentry.seed.v0.1.symbolid" Txse.Equities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.equities.orderentry.seed.v0.1.symbol" Txse.Equities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.equities.orderentry.seed.v0.1.suffix" Txse.Equities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.equities.orderentry.seed.v0.1.matchingengineid" Txse.Equities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.equities.orderentry.seed.v0.1.definesymbolbitfields" Txse.Equities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
grep "txse.equities.orderentry.seed.v0.1.lotsize" Txse.Equities.OrderEntry.Seed.v0.1.DefineSymbolMessage.json
tshark \
  -r "omi-data-packets/Txse/OrderEntry.Seed.v0.7/LimitOrderMessage.pcap" \
  -X "lua_script:Txse/Txse_Equities_OrderEntry_Seed_v0_1_Dissector.lua" \
  -T json \
  > Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json

grep "txse.equities.orderentry.seed.v0.1.limitorderpresencebits" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.clordid" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.orderqty" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.limitorderbitfields" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.symbolid" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.price" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.selfmatchscope" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.selfmatchinstruction" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.priceslideinstruction" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.minqty" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.maxfloorqty" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.maxreplenishqtyrange" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.maxreplenishtimerange" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.referencepricetarget" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.expiretime" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.userdata" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.mpid" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.membergroup" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
grep "txse.equities.orderentry.seed.v0.1.locatebroker" Txse.Equities.OrderEntry.Seed.v0.1.LimitOrderMessage.json
