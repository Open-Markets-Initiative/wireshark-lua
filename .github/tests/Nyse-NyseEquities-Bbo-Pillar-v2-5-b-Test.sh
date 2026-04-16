set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/QuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json

grep "nyse.nyseequities.bbo.pillar.v2.5.b.sourcetimens" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.symbolindex" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.symbolseqnum" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.askprice" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.askvolume" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.bidprice" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.bidvolume" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.quotecondition" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.rpiindicator" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/RefreshHeaderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json

grep "nyse.nyseequities.bbo.pillar.v2.5.b.currentrefreshpkt" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.totalrefreshpkts" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.lastseqnum" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.lastsymbolseqnum" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json

grep "nyse.nyseequities.bbo.pillar.v2.5.b.sourcetime" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.sourcetimens" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.symbolindex" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.symbolseqnum" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.securitystatus" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.haltcondition" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.reserved4" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.price1" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.price2" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.ssrtriggeringexchangeid" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.ssrtriggeringvolume" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.time" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.ssrstate" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.marketstate" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.sessionstate" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json

grep "nyse.nyseequities.bbo.pillar.v2.5.b.id" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.symbolseqnum" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.sourcetime" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json
