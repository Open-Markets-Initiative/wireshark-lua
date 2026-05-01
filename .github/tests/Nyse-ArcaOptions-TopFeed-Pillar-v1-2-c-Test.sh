set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/Arca.Options.TopFeed.Pillar.1.2.c/OptionsQuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaOptions_TopFeed_Pillar_v1_2_c_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json 2> Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsQuoteMessage) ---"; cat Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json.stderr; exit 1; }
if [ -s Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json.stderr ]; then echo "--- tshark stderr (OptionsQuoteMessage) ---"; cat Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json.stderr; fi
echo "--- tshark diagnostic (OptionsQuoteMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json; echo

grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourcetimens" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.seriesindex" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.seriesseqnum" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.askprice" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.askvolume" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.bidprice" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.bidvolume" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.quotecondition" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.reserved1" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.askcustomervolume" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.bidcustomervolume" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
tshark \
  -r "omi-data-packets/Nyse/Arca.Options.TopFeed.Pillar.1.2.c/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaOptions_TopFeed_Pillar_v1_2_c_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json 2> Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json.stderr; exit 1; }
if [ -s Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json.stderr ]; then echo "--- tshark stderr (SequenceNumberResetMessage) ---"; cat Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json.stderr; fi
echo "--- tshark diagnostic (SequenceNumberResetMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json; echo

grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourcetime" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourcetimens" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.productid" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.channelid" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
