set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/BestBidAndOfferMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr \
  || { echo "--- tshark FAILED (BestBidAndOfferMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr; exit 1; }

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbprice" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbsize" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mboprice" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbosize" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/InstrumentTradingStatusNotificationMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentTradingStatusNotificationMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr; exit 1; }

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.tradingstatus" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.marketstate" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/SystemStateMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemStateMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr; exit 1; }

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.tomversion" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.sessionid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.systemstatus" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
