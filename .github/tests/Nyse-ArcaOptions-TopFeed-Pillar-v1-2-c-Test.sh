set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/Arca.Options.TopFeed.Pillar.1.2.c/OptionsQuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaOptions_TopFeed_Pillar_v1_2_c_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json 2> Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (OptionsQuoteMessage) ---"; cat Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json.stderr; exit 1; }

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
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/Arca.Options.TopFeed.Pillar.1.2.c/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_ArcaOptions_TopFeed_Pillar_v1_2_c_Dissector.lua" \
  -T json \
  > Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json 2> Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourcetime" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.sourcetimens" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.productid" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arcaoptions.topfeed.pillar.v1.2.c.channelid" Nyse.ArcaOptions.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
