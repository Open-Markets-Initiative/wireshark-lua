set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Nyse/Arca.Options.TopFeed.Pillar.1.2.c/OptionsQuoteMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Arca_Options_TopFeed_Pillar_v1_2_c_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.arca.options.topfeed.pillar.v1.2.c.lua"]' \
  > Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json

grep "nyse.arca.options.topfeed.pillar.v1.2.c.sourcetimens" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.seriesindex" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.seriesseqnum" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.askprice" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.askvolume" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.bidprice" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.bidvolume" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.quotecondition" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.reserved1" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.askcustomervolume" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.bidcustomervolume" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.OptionsQuoteMessage.json
tshark \
  -r "omi-data-packets/Nyse/Arca.Options.TopFeed.Pillar.1.2.c/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_Arca_Options_TopFeed_Pillar_v1_2_c_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["nyse.arca.options.topfeed.pillar.v1.2.c.lua"]' \
  > Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json

grep "nyse.arca.options.topfeed.pillar.v1.2.c.sourcetime" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.sourcetimens" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.productid" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
grep "nyse.arca.options.topfeed.pillar.v1.2.c.channelid" Nyse.Arca.Options.TopFeed.Pillar.v1.2.c.SequenceNumberResetMessage.json
