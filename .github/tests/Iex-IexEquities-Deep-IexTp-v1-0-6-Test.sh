set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelBuyUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelBuyUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr ]; then echo "--- tshark stderr (PriceLevelBuyUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (PriceLevelBuyUpdateMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json; echo

grep "iex.iexequities.deep.iextp.v1.0.6.eventflags" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.timestamp" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.symbol" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.size" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.price" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelSellUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelSellUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr ]; then echo "--- tshark stderr (PriceLevelSellUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (PriceLevelSellUpdateMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json; echo

grep "iex.iexequities.deep.iextp.v1.0.6.eventflags" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.timestamp" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.symbol" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.size" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.price" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
