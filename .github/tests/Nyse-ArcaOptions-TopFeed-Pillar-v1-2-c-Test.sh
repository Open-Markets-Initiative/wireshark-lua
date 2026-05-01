set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/Arca.Options.TopFeed.Pillar.1.2.c/OptionsQuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaOptions_TopFeed_Pillar_v1_2_c_Dissector.lua" \
  --enable-heuristic "nyse.arcaoptions.topfeed.pillar.v1.2.c.lua_udp" \
  -T json \
  > Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json 2> Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json.stderr
if [ -s Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json.stderr ]; then echo "--- tshark stderr (OptionsQuoteMessage) ---"; cat Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json.stderr; fi

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
  --enable-heuristic "nyse.arcaoptions.topfeed.pillar.v1.2.c.lua_udp" \
  -T json \
  > Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json 2> Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json.stderr
if [ -s Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json.stderr ]; then echo "--- tshark stderr (SequenceNumberResetMessage) ---"; cat Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json.stderr; fi

grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourcetime" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourcetimens" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.productid" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.channelid" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
