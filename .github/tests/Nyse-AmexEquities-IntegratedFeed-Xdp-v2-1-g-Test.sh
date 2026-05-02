set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json.stderr; exit 1; }
if [ -s Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json.stderr ]; then echo "--- tshark stderr (AddOrderMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (AddOrderMessage) ---"
echo "json bytes: $(wc -c < Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json | sort -u | head -n 40

grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.orderid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.price" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.volume" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.side" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.firmid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.numparitysplits" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json.stderr; exit 1; }
if [ -s Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json.stderr ]; then echo "--- tshark stderr (ImbalanceMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json.stderr; fi
echo "--- tshark diagnostic (ImbalanceMessage) ---"
echo "json bytes: $(wc -c < Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json | sort -u | head -n 40

grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.referenceprice" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.pairedqty" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.totalimbalanceqty" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.marketimbalanceqty" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.auctiontime" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.auctiontype" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.imbalanceside" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.continuousbookclearingprice" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.closingonlyclearingprice" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.ssrfilingprice" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.indicativematchprice" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.uppercollar" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.lowercollar" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.auctionstatus" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.freezestatus" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.numextensions" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json.stderr; exit 1; }
if [ -s Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutionMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutionMessage) ---"
echo "json bytes: $(wc -c < Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json | sort -u | head -n 40

grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.orderid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.tradeid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.price" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.volume" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.printableflag" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.numparitysplits" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.dbexecid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json.stderr; exit 1; }
if [ -s Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json.stderr ]; then echo "--- tshark stderr (ReplaceOrderMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (ReplaceOrderMessage) ---"
echo "json bytes: $(wc -c < Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json | sort -u | head -n 40

grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.orderid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.neworderid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.price" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.volume" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.prevpriceparitysplits" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.newpriceparitysplits" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json.stderr; exit 1; }
if [ -s Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json.stderr ]; then echo "--- tshark stderr (SecurityStatusMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json.stderr; fi
echo "--- tshark diagnostic (SecurityStatusMessage) ---"
echo "json bytes: $(wc -c < Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json | sort -u | head -n 40

grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.sourcetimens" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.securitystatus" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.haltcondition" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.reserved4" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.price1" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.price2" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.ssrtriggeringexchangeid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.ssrtriggeringvolume" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.time" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.ssrstate" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.marketstate" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.sessionstate" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json.stderr; exit 1; }
if [ -s Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json.stderr ]; then echo "--- tshark stderr (SourceTimeReferenceMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json.stderr; fi
echo "--- tshark diagnostic (SourceTimeReferenceMessage) ---"
echo "json bytes: $(wc -c < Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json | sort -u | head -n 40

grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.id" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolseqnum" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.sourcetime" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/IntegratedFeed.Xdp.v2.1/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexEquities_IntegratedFeed_Xdp_v2_1_g_Dissector.lua" \
  -T json \
  > Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json 2> Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json.stderr; exit 1; }
if [ -s Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json.stderr ]; then echo "--- tshark stderr (SymbolIndexMappingMessage) ---"; cat Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json.stderr; fi
echo "--- tshark diagnostic (SymbolIndexMappingMessage) ---"
echo "json bytes: $(wc -c < Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json | sort -u | head -n 40

grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbolindex" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.symbol" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.reserved1" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.marketid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.systemid" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.exchangecode" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.pricescalecode" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.securitytype" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.lotsize" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.prevcloseprice" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.prevclosevolume" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.priceresolution" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.roundlot" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.mpv" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.unitoftrade" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
grep "nyse.amexequities.integratedfeed.xdp.v2.1.g.reserved2" Nyse.AmexEquities.IntegratedFeed.Xdp.v2.1.g.SymbolIndexMappingMessage.json
