set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeed.v2.5.g/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json 2> Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.price" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.volume" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.side" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.firmid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeed.v2.5.g/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json 2> Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeed.v2.5.g/ModifyOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json 2> Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.price" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.volume" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.positionchange" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.side" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeed.v2.5.g/NonDisplayedTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json 2> Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonDisplayedTradeMessage) ---"; cat Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.price" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.volume" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.NonDisplayedTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeed.v2.5.g/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json 2> Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradeid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.price" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.volume" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.printableflag" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradecond1" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradecond2" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradecond3" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.tradecond4" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeed.v2.5.g/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json 2> Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.orderid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.neworderid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.price" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.volume" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.side" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.reserved1" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeed.v2.5.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sourcetimens" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolindex" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.securitystatus" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.haltcondition" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.reserved4" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.price1" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.price2" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.ssrtriggeringvolume" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.time" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.ssrstate" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.marketstate" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sessionstate" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/TexasEquities.IntegratedFeed.v2.5.g/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_TexasEquities_IntegratedFeed_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json 2> Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.id" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.symbolseqnum" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.texasequities.integratedfeed.pillar.v2.5.g.sourcetime" Nyse.TexasEquities.IntegratedFeed.Pillar.v2.5.g.SourceTimeReferenceMessage.json
