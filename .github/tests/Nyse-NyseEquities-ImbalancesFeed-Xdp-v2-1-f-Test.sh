set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/ImbalancesFeed.Xdp.v2.1.f/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_ImbalancesFeed_Xdp_v2_1_f_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json 2> Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json.stderr ]; then echo "--- tshark stderr (ImbalanceMessage) ---"; cat Nyse.NyseEquities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json.stderr; fi

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
