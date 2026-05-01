set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/QuoteMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/QuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -d "udp.port==${PORT},nyse.nyseequities.bbo.pillar.v2.5.b.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json 2> Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (QuoteMessage) ---"; cat Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json.stderr ]; then echo "--- tshark stderr (QuoteMessage) ---"; cat Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json.stderr; fi

grep "nyse.nyseequities.bbo.pillar.v2.5.b.sourcetimens" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.symbolindex" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.symbolseqnum" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.askprice" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.askvolume" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.bidprice" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.bidvolume" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.quotecondition" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.rpiindicator" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.QuoteMessage.json
PORT=$(tshark -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/RefreshHeaderMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/RefreshHeaderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -d "udp.port==${PORT},nyse.nyseequities.bbo.pillar.v2.5.b.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json 2> Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshHeaderMessage) ---"; cat Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json.stderr ]; then echo "--- tshark stderr (RefreshHeaderMessage) ---"; cat Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json.stderr; fi

grep "nyse.nyseequities.bbo.pillar.v2.5.b.currentrefreshpkt" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.totalrefreshpkts" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.lastseqnum" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.lastsymbolseqnum" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.RefreshHeaderMessage.json
PORT=$(tshark -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/SecurityStatusMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -d "udp.port==${PORT},nyse.nyseequities.bbo.pillar.v2.5.b.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json 2> Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json.stderr ]; then echo "--- tshark stderr (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SecurityStatusMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/SourceTimeReferenceMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Nyse/National.Equities.Bbo.Pillar.v2.5/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_Bbo_Pillar_v2_5_b_Dissector.lua" \
  -d "udp.port==${PORT},nyse.nyseequities.bbo.pillar.v2.5.b.lua" \
  -T json \
  > Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json 2> Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json.stderr ]; then echo "--- tshark stderr (SourceTimeReferenceMessage) ---"; cat Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json.stderr; fi

grep "nyse.nyseequities.bbo.pillar.v2.5.b.id" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.symbolseqnum" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.bbo.pillar.v2.5.b.sourcetime" Nyse.NyseEquities.Bbo.Pillar.v2.5.b.SourceTimeReferenceMessage.json
