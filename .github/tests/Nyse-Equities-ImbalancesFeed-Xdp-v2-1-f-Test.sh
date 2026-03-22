set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/ImbalancesFeed.Xdp.v2.1.f/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_ImbalancesFeed_Xdp_v2_1_f_Dissector.lua" \
  -T json \
  > Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json

grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.sourcetime" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.sourcetimens" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.symbolindex" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.symbolseqnum" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.referenceprice" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.pairedqty" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.totalimbalanceqty" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.marketimbalanceqty" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.auctiontime" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.auctiontype" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.imbalanceside" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.continuousbookclearingprice" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.closingonlyclearingprice" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.ssrfilingprice" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.indicativematchprice" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.uppercollar" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.lowercollar" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.auctionstatus" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.freezestatus" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
grep "nyse.equities.imbalancesfeed.xdp.v2.1.f.numextensions" Nyse.Equities.ImbalancesFeed.Xdp.v2.1.f.ImbalanceMessage.json
