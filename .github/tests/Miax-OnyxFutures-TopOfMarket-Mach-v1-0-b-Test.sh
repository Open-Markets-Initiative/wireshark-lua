set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/BestBidAndOfferMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  --enable-heuristic "miax.onyxfutures.topofmarket.mach.v1.0.b.lua_udp" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr
if [ -s Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr ]; then echo "--- tshark stderr (BestBidAndOfferMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr; fi

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbprice" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbsize" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mboprice" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbosize" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/InstrumentTradingStatusNotificationMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  --enable-heuristic "miax.onyxfutures.topofmarket.mach.v1.0.b.lua_udp" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr
if [ -s Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr ]; then echo "--- tshark stderr (InstrumentTradingStatusNotificationMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr; fi

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.tradingstatus" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.marketstate" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/SystemStateMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  --enable-heuristic "miax.onyxfutures.topofmarket.mach.v1.0.b.lua_udp" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr
if [ -s Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr ]; then echo "--- tshark stderr (SystemStateMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr; fi

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.tomversion" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.sessionid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.systemstatus" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
