set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.v1.4.4/CurrentMarketRefreshMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (CurrentMarketRefreshMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securitytradingstatus" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.applseqnum" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.noentries" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.v1.4.4/CurrentMarketUpdateMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (CurrentMarketUpdateMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securitytradingstatus" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.noentries" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.CurrentMarketUpdateMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.v1.4.4/MarketDataRefreshMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketDataRefreshMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securitytradingstatus" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.applseqnum" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.tradevolume" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.noentries" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.MarketDataRefreshMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/C1Options.MarketDataFeed.v1.4.4/TickerMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_MarketDataFeed_Csm_v1_4_2_Dissector.lua" \
  -T json \
  > Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json 2> Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json.stderr \
  || { echo "--- tshark FAILED (TickerMessage) ---"; cat Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json.stderr; exit 1; }

grep "cboe.c1options.marketdatafeed.csm.v1.4.2.classkey" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.securityid" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.pricetype" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json
grep "cboe.c1options.marketdatafeed.csm.v1.4.2.noentries" Cboe.C1Options.MarketDataFeed.Csm.v1.4.2.TickerMessage.json
