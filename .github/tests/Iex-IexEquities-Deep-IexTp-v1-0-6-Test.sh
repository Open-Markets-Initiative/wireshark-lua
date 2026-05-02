set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelBuyUpdateMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelBuyUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -d "udp.port==$port,iex.iexequities.deep.iextp.v1.0.6.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelBuyUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr ]; then echo "--- tshark stderr (PriceLevelBuyUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (PriceLevelBuyUpdateMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json | sort -u | head -n 40

grep "iex.iexequities.deep.iextp.v1.0.6.eventflags" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.timestamp" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.symbol" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.size" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.price" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelBuyUpdateMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelSellUpdateMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Iex/Deep.IexTp.v1.0/PriceLevelSellUpdateMessage.pcap" \
  -X "lua_script:Iex/Iex_IexEquities_Deep_IexTp_v1_0_6_Dissector.lua" \
  -d "udp.port==$port,iex.iexequities.deep.iextp.v1.0.6.lua" \
  -T json \
  > Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json 2> Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (PriceLevelSellUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr; exit 1; }
if [ -s Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr ]; then echo "--- tshark stderr (PriceLevelSellUpdateMessage) ---"; cat Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (PriceLevelSellUpdateMessage) ---"
echo "json bytes: $(wc -c < Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json | sort -u | head -n 40

grep "iex.iexequities.deep.iextp.v1.0.6.eventflags" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.timestamp" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.symbol" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.size" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
grep "iex.iexequities.deep.iextp.v1.0.6.price" Iex.IexEquities.Deep.IexTp.v1.0.6.PriceLevelSellUpdateMessage.json
