set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/AddOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_ByxEquities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json 2> Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderShortMessage) ---"; cat Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderShortMessage) ---"; cat Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrderShortMessage) ---"
echo "json bytes: $(wc -c < Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json | sort -u | head -n 40

grep "cboe.byxequities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.sideindicator" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.symbol" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.addorderflags" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.AddOrderShortMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Byx.Equities.DepthOfBook.Pitch.v2.41/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_ByxEquities_DepthOfBook_Pitch_v2_41_29_Dissector.lua" \
  -T json \
  > Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json 2> Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderShortMessage) ---"; cat Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json.stderr; fi
echo "--- tshark diagnostic (ModifyOrderShortMessage) ---"
echo "json bytes: $(wc -c < Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json | sort -u | head -n 40

grep "cboe.byxequities.depthofbook.pitch.v2.41.29.timeoffset" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.orderid" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.quantityshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.priceshort" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
grep "cboe.byxequities.depthofbook.pitch.v2.41.29.modifyorderflags" Cboe.ByxEquities.DepthOfBook.Pitch.v2.41.29.ModifyOrderShortMessage.json
