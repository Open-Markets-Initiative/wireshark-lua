set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.BinaryOrderEntry.v1.1.20/QuoteUpdate.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_BinaryOrderEntry_Boe3_v1_1_20_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json 2> Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdate) ---"; cat Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json.stderr; exit 1; }

grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.quoteupdateid" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.clearingfirm" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.clearingaccount" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.cmtanumber" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.account" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.customgroupid" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.capacity" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.cticode" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.manualorderindicator" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.oeoid" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.sizemodifier" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.quotecnt" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdate.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/CfeFutures.BinaryOrderEntry.v1.1.20/QuoteUpdateAcknowledgement.pcap" \
  -X "lua_script:Cboe/Cboe_CfeFutures_BinaryOrderEntry_Boe3_v1_1_20_Dissector.lua" \
  -T json \
  > Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdateAcknowledgement.json 2> Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdateAcknowledgement.json.stderr \
  || { echo "--- tshark FAILED (QuoteUpdateAcknowledgement) ---"; cat Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdateAcknowledgement.json.stderr; exit 1; }

grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.transactiontime" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdateAcknowledgement.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.quoteupdateid" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdateAcknowledgement.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.requestreceivedtime" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdateAcknowledgement.json
grep "cboe.cfefutures.binaryorderentry.boe3.v1.1.20.quotecnt" Cboe.CfeFutures.BinaryOrderEntry.Boe3.v1.1.20.QuoteUpdateAcknowledgement.json
