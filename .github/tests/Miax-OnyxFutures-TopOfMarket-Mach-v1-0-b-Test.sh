set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/BestBidAndOfferMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr \
  || { echo "--- tshark FAILED (BestBidAndOfferMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr; exit 1; }
if [ -s Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr ]; then echo "--- tshark stderr (BestBidAndOfferMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr; fi
echo "--- tshark diagnostic (BestBidAndOfferMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json; echo

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbprice" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbsize" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mboprice" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbosize" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/InstrumentTradingStatusNotificationMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentTradingStatusNotificationMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr; exit 1; }
if [ -s Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr ]; then echo "--- tshark stderr (InstrumentTradingStatusNotificationMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr; fi
echo "--- tshark diagnostic (InstrumentTradingStatusNotificationMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json; echo

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.tradingstatus" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.marketstate" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/SystemStateMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemStateMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr; exit 1; }
if [ -s Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr ]; then echo "--- tshark stderr (SystemStateMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr; fi
echo "--- tshark diagnostic (SystemStateMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json; echo

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.tomversion" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.sessionid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.systemstatus" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
