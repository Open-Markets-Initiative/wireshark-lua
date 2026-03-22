set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/QuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -T json \
  > Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json

grep "nyse.equities.bbo.pillar.v2.5.b.sourcetimens" Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.symbolindex" Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.symbolseqnum" Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.askprice" Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.askvolume" Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.bidprice" Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.bidvolume" Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.quotecondition" Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.rpiindicator" Nyse.Equities.Bbo.Pillar.v2.5.b.QuoteMessage.json
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/RefreshHeaderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -T json \
  > Nyse.Equities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json

grep "nyse.equities.bbo.pillar.v2.5.b.currentrefreshpkt" Nyse.Equities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.totalrefreshpkts" Nyse.Equities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.lastseqnum" Nyse.Equities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.lastsymbolseqnum" Nyse.Equities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -T json \
  > Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json

grep "nyse.equities.bbo.pillar.v2.5.b.sourcetime" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.sourcetimens" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.symbolindex" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.symbolseqnum" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.securitystatus" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.haltcondition" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.reserved4" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.price1" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.price2" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.ssrtriggeringexchangeid" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.ssrtriggeringvolume" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.time" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.ssrstate" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.marketstate" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.sessionstate" Nyse.Equities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Equities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -T json \
  > Nyse.Equities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json

grep "nyse.equities.bbo.pillar.v2.5.b.id" Nyse.Equities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.symbolseqnum" Nyse.Equities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json
grep "nyse.equities.bbo.pillar.v2.5.b.sourcetime" Nyse.Equities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json
