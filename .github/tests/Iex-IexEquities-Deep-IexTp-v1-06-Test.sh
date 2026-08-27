set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.v1.06/Heartbeat.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.Heartbeat.json 2> Iex.IexEquities.Deep.IexTp.v1.06.Heartbeat.json.stderr \
  || { echo "--- tshark FAILED (Heartbeat) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.Heartbeat.json.stderr; exit 1; }

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.v1.06/PriceLevelBuyUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelBuyUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.eventflags" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.size" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.price" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelBuyUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/IexEquities.Deep.v1.06/PriceLevelSellUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_06_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelSellUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json.stderr; exit 1; }

grep "iex.iexequities.deep.iextp.v1.06.eventflags" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.timestamp" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.symbol" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.size" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.06.price" Iex.IexEquities.Deep.IexTp.v1.06.PriceLevelSellUpdateMessage.json
