set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelBuyUpdateMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelBuyUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -d "udp.port==${PORT},iex.iexequities.deep.iextp.v1.0.6.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelBuyUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr ]; then echo "--- tshark stderr (PriceLevelBuyUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr; fi

grep "iex.iexequities.deep.iextp.v1.0.6.eventflags" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.timestamp" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.symbol" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.size" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.price" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
PORT=$(tshark -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelSellUpdateMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelSellUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -d "udp.port==${PORT},iex.iexequities.deep.iextp.v1.0.6.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelSellUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr ]; then echo "--- tshark stderr (PriceLevelSellUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr; fi

grep "iex.iexequities.deep.iextp.v1.0.6.eventflags" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.timestamp" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.symbol" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.size" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.price" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
