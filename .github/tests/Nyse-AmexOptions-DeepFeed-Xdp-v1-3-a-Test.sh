set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.v1.3.a/OutrightMarketDepthBuyMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json 2> Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightMarketDepthBuyMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.sourcens" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstlevelvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondlevelvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdlevelvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.quotecondition" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.reserved1" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthBuyMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.v1.3.a/OutrightMarketDepthSellMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json 2> Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json.stderr \
  || { echo "--- tshark FAILED (OutrightMarketDepthSellMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.sourcens" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.quotecondition" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.reserved1" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.OutrightMarketDepthSellMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.v1.3.a/RefreshOutrightMarketDepthBuyMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json 2> Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshOutrightMarketDepthBuyMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.sourcens" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.quotecondition" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.reserved1" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthBuyMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.v1.3.a/RefreshOutrightMarketDepthSellMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json 2> Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json.stderr \
  || { echo "--- tshark FAILED (RefreshOutrightMarketDepthSellMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.sourcetime" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.sourcetimens" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.seriesindex" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.symbolseqnum" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdlevelprice" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdvolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.quotecondition" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.reserved1" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.firstlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.secondlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.thirdlevelcustomervolume" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.RefreshOutrightMarketDepthSellMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Nyse/AmexOptions.DeepFeed.v1.3.a/StreamIdMessage.pcap" \
  -X "lua_script:Nyse/Nyse_AmexOptions_DeepFeed_Xdp_v1_3_a_Dissector.lua" \
  -T json \
  > Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.StreamIdMessage.json 2> Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.StreamIdMessage.json.stderr \
  || { echo "--- tshark FAILED (StreamIdMessage) ---"; cat Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.StreamIdMessage.json.stderr; exit 1; }

grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.streamid" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.StreamIdMessage.json
grep "nyse.amexoptions.deepfeed.xdp.v1.3.a.reserved2" Nyse.AmexOptions.DeepFeed.Xdp.v1.3.a.StreamIdMessage.json
