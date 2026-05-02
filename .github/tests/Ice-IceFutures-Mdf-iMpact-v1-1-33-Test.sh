set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/DeleteOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/DeleteOrderMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; else echo "could not detect transport port for DeleteOrderMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/DeleteOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json.stderr ]; then echo "--- tshark stderr (DeleteOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (DeleteOrderMessage) ---"
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json | sort -u | head -n 40

grep "ice.icefutures.mdf.impact.v1.1.33.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.orderid" Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.sequencewithinmillis" Ice.IceFutures.Mdf.iMpact.v1.1.33.DeleteOrderMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketSnapshotOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketSnapshotOrderMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; else echo "could not detect transport port for MarketSnapshotOrderMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketSnapshotOrderMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketSnapshotOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json.stderr ]; then echo "--- tshark stderr (MarketSnapshotOrderMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (MarketSnapshotOrderMessage) ---"
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json | sort -u | head -n 40

grep "ice.icefutures.mdf.impact.v1.1.33.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.orderid" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.ordersequenceid" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.side" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.price" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.quantity" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.isimplied" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.isrfq" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.orderentrydatetime" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.sequencewithinmillis" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketSnapshotOrderMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketStatisticsMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketStatisticsMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; else echo "could not detect transport port for MarketStatisticsMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MarketStatisticsMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json.stderr \
  || { echo "--- tshark FAILED (MarketStatisticsMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json.stderr ]; then echo "--- tshark stderr (MarketStatisticsMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json.stderr; fi
echo "--- tshark diagnostic (MarketStatisticsMessage) ---"
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json | sort -u | head -n 40

grep "ice.icefutures.mdf.impact.v1.1.33.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.volume" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.blockvolume" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.efsvolume" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.efpvolume" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.high" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.low" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.vwap" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.messagedatetime" Ice.IceFutures.Mdf.iMpact.v1.1.33.MarketStatisticsMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MessageBundleMarker.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MessageBundleMarker.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; else echo "could not detect transport port for MessageBundleMarker"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/MessageBundleMarker.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json.stderr \
  || { echo "--- tshark FAILED (MessageBundleMarker) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json.stderr ]; then echo "--- tshark stderr (MessageBundleMarker) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json.stderr; fi
echo "--- tshark diagnostic (MessageBundleMarker) ---"
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json | sort -u | head -n 40

grep "ice.icefutures.mdf.impact.v1.1.33.startorend" Ice.IceFutures.Mdf.iMpact.v1.1.33.MessageBundleMarker.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/SpecialFieldMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/SpecialFieldMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; else echo "could not detect transport port for SpecialFieldMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/SpecialFieldMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json.stderr \
  || { echo "--- tshark FAILED (SpecialFieldMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json.stderr ]; then echo "--- tshark stderr (SpecialFieldMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json.stderr; fi
echo "--- tshark diagnostic (SpecialFieldMessage) ---"
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json | sort -u | head -n 40

grep "ice.icefutures.mdf.impact.v1.1.33.numberofspecialfields" Ice.IceFutures.Mdf.iMpact.v1.1.33.SpecialFieldMessage.json
udp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/TradeMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')
tcp_port=$(runuser -u tester -- tshark -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/TradeMessage.pcap" -c 1 -T fields -e tcp.dstport 2>/dev/null | tr -d '[:space:]')
if [ -n "$udp_port" ]; then decode="udp.port==$udp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; elif [ -n "$tcp_port" ]; then decode="tcp.port==$tcp_port,ice.icefutures.mdf.impact.v1.1.33.lua"; else echo "could not detect transport port for TradeMessage"; exit 1; fi

runuser -u tester -- tshark \
  -r "omi-data-packets/Ice/Mdf.iMpact.v1.1.33/TradeMessage.pcap" \
  -X "lua_script:Ice/Ice_IceFutures_Mdf_iMpact_v1_1_33_Dissector.lua" \
  -d "$decode" \
  -T json \
  > Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json 2> Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json.stderr \
  || { echo "--- tshark FAILED (TradeMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json.stderr; exit 1; }
if [ -s Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json.stderr ]; then echo "--- tshark stderr (TradeMessage) ---"; cat Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json.stderr; fi
echo "--- tshark diagnostic (TradeMessage) ---"
echo "json bytes: $(wc -c < Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json | sort -u | head -n 40

grep "ice.icefutures.mdf.impact.v1.1.33.marketid" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.tradeid" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.issystempricedleg" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.price" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.quantity" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.offmarkettradeindicator" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.transactdatetime" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.systempricedlegtype" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.isimpliedspreadatmarketopen" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.isadjustedtrade" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.aggressorside" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.extraflags" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.offmarkettradetype" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
grep "ice.icefutures.mdf.impact.v1.1.33.sequencewithinmillis" Ice.IceFutures.Mdf.iMpact.v1.1.33.TradeMessage.json
