set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/ImbalancesFeed.Xdp.v2.1.f/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_ImbalancesFeed_Xdp_v2_1_f_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json 2> Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json.stderr ]; then echo "--- tshark stderr (ImbalanceMessage) ---"; cat Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json.stderr; fi
echo "--- tshark diagnostic (ImbalanceMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.sourcetime" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.sourcetimens" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.symbolindex" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.symbolseqnum" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.referenceprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.pairedqty" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.totalimbalanceqty" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.marketimbalanceqty" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.auctiontime" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.auctiontype" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.imbalanceside" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.continuousbookclearingprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.closingonlyclearingprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.ssrfilingprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.indicativematchprice" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.uppercollar" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.lowercollar" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.auctionstatus" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.freezestatus" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.xdp.v2.1.f.numextensions" Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
