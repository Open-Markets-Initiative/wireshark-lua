set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/BestBidAndOfferMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/BestBidAndOfferMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.onyxfutures.topofmarket.mach.v1.0.b.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.onyxfutures.topofmarket.mach.v1.0.b.lua"; else echo "could not detect transport port for BestBidAndOfferMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/BestBidAndOfferMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr \
  || { echo "--- tshark FAILED (BestBidAndOfferMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr; exit 1; }
if [ -s Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr ]; then echo "--- tshark stderr (BestBidAndOfferMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json.stderr; fi
echo "--- tshark diagnostic (BestBidAndOfferMessage) ---"
echo "json bytes: $(wc -c < Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json | sort -u | head -n 40

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbprice" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbbsize" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mboprice" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.mbosize" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.BestBidAndOfferMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/InstrumentTradingStatusNotificationMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/InstrumentTradingStatusNotificationMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.onyxfutures.topofmarket.mach.v1.0.b.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.onyxfutures.topofmarket.mach.v1.0.b.lua"; else echo "could not detect transport port for InstrumentTradingStatusNotificationMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/InstrumentTradingStatusNotificationMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr \
  || { echo "--- tshark FAILED (InstrumentTradingStatusNotificationMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr; exit 1; }
if [ -s Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr ]; then echo "--- tshark stderr (InstrumentTradingStatusNotificationMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json.stderr; fi
echo "--- tshark diagnostic (InstrumentTradingStatusNotificationMessage) ---"
echo "json bytes: $(wc -c < Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json | sort -u | head -n 40

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.instrumentid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.tradingstatus" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.marketstate" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.InstrumentTradingStatusNotificationMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/SystemStateMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/SystemStateMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,miax.onyxfutures.topofmarket.mach.v1.0.b.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,miax.onyxfutures.topofmarket.mach.v1.0.b.lua"; else echo "could not detect transport port for SystemStateMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Miax/OnyxFutures.ToM.v1.0/SystemStateMessage.pcap" \
  -X "lua_script:Miax/Miax_OnyxFutures_TopOfMarket_Mach_v1_0_b_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json 2> Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr \
  || { echo "--- tshark FAILED (SystemStateMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr; exit 1; }
if [ -s Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr ]; then echo "--- tshark stderr (SystemStateMessage) ---"; cat Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json.stderr; fi
echo "--- tshark diagnostic (SystemStateMessage) ---"
echo "json bytes: $(wc -c < Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json | sort -u | head -n 40

grep "miax.onyxfutures.topofmarket.mach.v1.0.b.timestamp" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.tomversion" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.sessionid" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
grep "miax.onyxfutures.topofmarket.mach.v1.0.b.systemstatus" Miax.OnyxFutures.TopOfMarket.Mach.v1.0.b.SystemStateMessage.json
