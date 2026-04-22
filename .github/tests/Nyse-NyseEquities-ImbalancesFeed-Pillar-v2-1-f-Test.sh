set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/ImbalancesFeed.Xdp.v2.1.f/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_ImbalancesFeed_Pillar_v2_1_f_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json

grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.sourcetime" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.sourcetimens" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.symbolindex" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.symbolseqnum" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.referenceprice" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.pairedqty" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.totalimbalanceqty" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.marketimbalanceqty" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.auctiontime" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.auctiontype" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.imbalanceside" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.continuousbookclearingprice" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.closingonlyclearingprice" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.ssrfilingprice" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.indicativematchprice" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.uppercollar" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.lowercollar" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.auctionstatus" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.freezestatus" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
grep "nyse.nyseequities.imbalancesfeed.pillar.v2.1.f.numextensions" Nyse.NyseEquities.ImbalancesFeed.Pillar.v2.1.f.ImbalanceMessage.json
