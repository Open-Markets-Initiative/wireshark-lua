set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/AddOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (AddOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.side" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.firmid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.AddOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/CrossTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (CrossTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.crossid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.crosstype" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.CrossTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/DeleteOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.DeleteOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.DeleteOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.DeleteOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.DeleteOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/ImbalanceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json.stderr \
  || { echo "--- tshark FAILED (ImbalanceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.referenceprice" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.pairedqty" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.totalimbalanceqty" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.marketimbalanceqty" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.auctiontime" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.auctiontype" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.imbalanceside" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.continuousbookclearingprice" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.auctioninterestclearingprice" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.ssrfilingprice" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.indicativematchprice" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.uppercollar" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.lowercollar" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.auctionstatus" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.freezestatus" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.numextensions" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.unpairedqty" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.unpairedside" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ImbalanceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/MessageUnavailableMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.MessageUnavailableMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.MessageUnavailableMessage.json.stderr \
  || { echo "--- tshark FAILED (MessageUnavailableMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.MessageUnavailableMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.beginseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.MessageUnavailableMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.endseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.MessageUnavailableMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.productid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.MessageUnavailableMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.channelid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.MessageUnavailableMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/ModifyOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.positionchange" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.side" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ModifyOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/NonDisplayedTradeMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (NonDisplayedTradeMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradeid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.printableflag" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradecond1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradecond2" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradecond3" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradecond4" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.NonDisplayedTradeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/OrderExecutionMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutionMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradeid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.printableflag" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradecond1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradecond2" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradecond3" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.tradecond4" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.OrderExecutionMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/ReplaceOrderMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ReplaceOrderMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.orderid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.neworderid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.price" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.volume" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.side" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.ReplaceOrderMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/RetailPriceImprovementMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.RetailPriceImprovementMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.RetailPriceImprovementMessage.json.stderr \
  || { echo "--- tshark FAILED (RetailPriceImprovementMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.RetailPriceImprovementMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.RetailPriceImprovementMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.RetailPriceImprovementMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.RetailPriceImprovementMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.rpiindicator" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.RetailPriceImprovementMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/SecurityStatusMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (SecurityStatusMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.securitystatus" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.haltcondition" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.reserved4" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.price1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.price2" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.ssrtriggeringexchangeid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.ssrtriggeringvolume" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.time" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.ssrstate" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.marketstate" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sessionstate" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SecurityStatusMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/SequenceNumberResetMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SequenceNumberResetMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SequenceNumberResetMessage.json.stderr \
  || { echo "--- tshark FAILED (SequenceNumberResetMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SequenceNumberResetMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.productid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SequenceNumberResetMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.channelid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SequenceNumberResetMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/SourceTimeReferenceMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SourceTimeReferenceMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr \
  || { echo "--- tshark FAILED (SourceTimeReferenceMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SourceTimeReferenceMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.id" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SourceTimeReferenceMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SourceTimeReferenceMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/SymbolClearMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolClearMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolClearMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolClearMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolClearMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetime" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolClearMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.sourcetimens" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolClearMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolClearMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.nextsourceseqnum" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolClearMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/SymbolIndexMappingMessage.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolIndexMappingMessage) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbolindex" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.symbol" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.reserved1" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.marketid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.systemid" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.exchangecode" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.pricescalecode" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.securitytype" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.lotsize" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.prevcloseprice" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.prevclosevolume" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.priceresolution" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.roundlot" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.mpv" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.unitoftrade" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.latecloseeligible" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.etheligible" Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.SymbolIndexMappingMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g/MultipleMessages.pcap" \
  -X "lua_script:Nyse/Nyse_NyseEquities_IntegratedFeedRetransmission_Pillar_v2_5_g_Dissector.lua" \
  -T json \
  > Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.Multiplemessages.json 2> Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.Multiplemessages.json.stderr \
  || { echo "--- tshark FAILED (MultipleMessages) ---"; cat Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.Multiplemessages.json.stderr; exit 1; }

grep "nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g." Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.Multiplemessages.json

[ "$(grep -c 'nyse.nyseequities.integratedfeedretransmission.pillar.v2.5.g.' Nyse.NyseEquities.IntegratedFeedRetransmission.Pillar.v2.5.g.Multiplemessages.json)" -gt 1 ] || { echo "--- only one message decoded (MultipleMessages) ---"; exit 1; }
