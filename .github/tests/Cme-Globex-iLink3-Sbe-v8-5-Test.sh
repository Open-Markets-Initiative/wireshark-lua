set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.iLink3.v8.5/ExecutionReportStatus.pcap" \
  -X "lua_script:Cme/Cme_Globex_iLink3_Sbe_v8_5_Dissector.lua" \
  -T json \
  > Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json 2> Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json.stderr \
  || { echo "--- tshark FAILED (ExecutionReportStatus) ---"; cat Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json.stderr; exit 1; }

grep "cme.globex.ilink3.sbe.v8.5.seqnum" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.uuid" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.text" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.execid" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.senderid" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.clordid" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.partydetailslistreqid" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.orderid" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.priceoptional" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.stoppx" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.transacttime" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.sendingtimeepoch" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.orderrequestid" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.ordstatusreqidoptional" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.massstatusreqidoptional" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.crossidoptional" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.hostcrossid" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.location" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.securityid" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.orderqty" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.cumqty" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.leavesqty" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.minqty" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.displayqty" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.expiredate" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.ordstatus" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.ordtypeoptional" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.side" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.timeinforce" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.manualorderindicator" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.possretransflag" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.lastrptrequested" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.crosstype" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.execinst" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.executionmode" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.liquidityflag" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.managedorder" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.globex.ilink3.sbe.v8.5.shortsaletype" Cme.Globex.iLink3.Sbe.v8.5.ExecutionReportStatus.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.iLink3.v8.5/QuoteCancel.pcap" \
  -X "lua_script:Cme/Cme_Globex_iLink3_Sbe_v8_5_Dissector.lua" \
  -T json \
  > Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json 2> Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json.stderr \
  || { echo "--- tshark FAILED (QuoteCancel) ---"; cat Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json.stderr; exit 1; }

grep "cme.globex.ilink3.sbe.v8.5.partydetailslistreqid" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.globex.ilink3.sbe.v8.5.sendingtimeepoch" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.globex.ilink3.sbe.v8.5.manualorderindicator" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.globex.ilink3.sbe.v8.5.seqnum" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.globex.ilink3.sbe.v8.5.senderid" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.globex.ilink3.sbe.v8.5.location" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.globex.ilink3.sbe.v8.5.quoteid" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.globex.ilink3.sbe.v8.5.quotecanceltype" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.globex.ilink3.sbe.v8.5.liquidityflag" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancel.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.iLink3.v8.5/QuoteCancelAck.pcap" \
  -X "lua_script:Cme/Cme_Globex_iLink3_Sbe_v8_5_Dissector.lua" \
  -T json \
  > Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json 2> Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json.stderr \
  || { echo "--- tshark FAILED (QuoteCancelAck) ---"; cat Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json.stderr; exit 1; }

grep "cme.globex.ilink3.sbe.v8.5.seqnum" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.uuid" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.text" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.senderid" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.partydetailslistreqid" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.requesttime" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.sendingtimeepoch" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.cancelledsymbol" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.location" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.quoteid" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.quoterejectreason" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.delayduration" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.manualorderindicator" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.quotecxlstatus" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.noprocessedentries" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.mmprotectionreset" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.unsolicitedcanceltype" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.splitmsg" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.totnoquoteentriesoptional" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.liquidityflag" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.possretransflag" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.globex.ilink3.sbe.v8.5.delaytotime" Cme.Globex.iLink3.Sbe.v8.5.QuoteCancelAck.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Cme/Globex.iLink3.v8.5/Sequence.pcap" \
  -X "lua_script:Cme/Cme_Globex_iLink3_Sbe_v8_5_Dissector.lua" \
  -T json \
  > Cme.Globex.iLink3.Sbe.v8.5.Sequence.json 2> Cme.Globex.iLink3.Sbe.v8.5.Sequence.json.stderr \
  || { echo "--- tshark FAILED (Sequence) ---"; cat Cme.Globex.iLink3.Sbe.v8.5.Sequence.json.stderr; exit 1; }

grep "cme.globex.ilink3.sbe.v8.5.uuid" Cme.Globex.iLink3.Sbe.v8.5.Sequence.json
grep "cme.globex.ilink3.sbe.v8.5.nextseqno" Cme.Globex.iLink3.Sbe.v8.5.Sequence.json
grep "cme.globex.ilink3.sbe.v8.5.faulttoleranceindicator" Cme.Globex.iLink3.Sbe.v8.5.Sequence.json
grep "cme.globex.ilink3.sbe.v8.5.keepaliveintervallapsed" Cme.Globex.iLink3.Sbe.v8.5.Sequence.json
