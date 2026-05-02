set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrderMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.side" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.firmid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json.stderr ]; then echo "--- tshark stderr (CrossTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json.stderr; fi
echo "--- tshark diagnostic (CrossTradeMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.crossid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.crosstype" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json.stderr ]; then echo "--- tshark stderr (DeleteOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (DeleteOrderMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json.stderr ]; then echo "--- tshark stderr (ImbalanceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json.stderr; fi
echo "--- tshark diagnostic (ImbalanceMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.referenceprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.pairedqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.totalimbalanceqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.marketimbalanceqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctiontime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctiontype" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.imbalanceside" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.continuousbookclearingprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctioninterestclearingprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrfilingprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.indicativematchprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.uppercollar" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.lowercollar" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.auctionstatus" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.freezestatus" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.numextensions" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.unpairedqty" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.unpairedside" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.significantimbalance" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutionMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutionMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradeid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.printableflag" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved11" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond2" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond3" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.tradecond4" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json.stderr ]; then echo "--- tshark stderr (ReplaceOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (ReplaceOrderMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.orderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.neworderid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.volume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.prevpriceparitysplits" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.newpriceparitysplits" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json.stderr ]; then echo "--- tshark stderr (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (SecurityStatusMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.securitystatus" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.haltcondition" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.reserved4" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price1" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.price2" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrtriggeringexchangeid" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrtriggeringvolume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.time" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.ssrstate" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.marketstate" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sessionstate" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json.stderr ]; then echo "--- tshark stderr (SourceTimeReferenceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json.stderr; fi
echo "--- tshark diagnostic (SourceTimeReferenceMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.id" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolseqnum" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Pillar.v2.5/StockSummaryMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeed_Pillar_v2_5_a_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json 2> Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json.stderr \
  || { echo "--- tshark FAILED (StockSummaryMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json.stderr; exit 1; }
if [ -s Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json.stderr ]; then echo "--- tshark stderr (StockSummaryMessage) ---"; cat Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json.stderr; fi
echo "--- tshark diagnostic (StockSummaryMessage) ---"
echo "json bytes: $(wc -c < Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json | sort -u | head -n 40

grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetime" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.sourcetimens" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.symbolindex" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.highprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.lowprice" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.open" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.close" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
grep "nyse.nyseequities.integratedfeed.pillar.v2.5.a.totalvolume" Nyse.NyseEquities.IntegratedFeed.Pillar.v2.5.a.StockSummaryMessage.json
