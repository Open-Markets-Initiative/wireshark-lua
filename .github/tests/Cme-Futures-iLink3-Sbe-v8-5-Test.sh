set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cme/iLink3.Sbe.8.5/ExecutionReportStatus.pcap" \
  -X "lua_script:Cme/Cme_Futures_iLink3_Sbe_v8_5_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cme.futures.ilink3.sbe.v8.5.lua"]' \
  > Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json

grep "cme.futures.ilink3.sbe.v8.5.seqnum" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.uuid" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.text" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.execid" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.senderid" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.clordid" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.partydetailslistreqid" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.orderid" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.priceoptional" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.stoppx" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.transacttime" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.sendingtimeepoch" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.orderrequestid" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.ordstatusreqidoptional" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.massstatusreqidoptional" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.crossidoptional" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.hostcrossid" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.location" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.securityid" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.orderqty" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.cumqty" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.leavesqty" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.minqty" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.displayqty" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.expiredate" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.ordstatus" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.ordtypeoptional" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.side" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.timeinforce" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.manualorderindicator" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.possretransflag" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.lastrptrequested" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.crosstype" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.execinst" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.executionmode" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.liquidityflag" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.managedorder" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.futures.ilink3.sbe.v8.5.shortsaletype" Cme.Futures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
tshark \
  -r "omi-data-packets/Cme/iLink3.Sbe.8.5/QuoteCancel.pcap" \
  -X "lua_script:Cme/Cme_Futures_iLink3_Sbe_v8_5_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cme.futures.ilink3.sbe.v8.5.lua"]' \
  > Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json

grep "cme.futures.ilink3.sbe.v8.5.partydetailslistreqid" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.futures.ilink3.sbe.v8.5.sendingtimeepoch" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.futures.ilink3.sbe.v8.5.manualorderindicator" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.futures.ilink3.sbe.v8.5.seqnum" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.futures.ilink3.sbe.v8.5.senderid" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.futures.ilink3.sbe.v8.5.location" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.futures.ilink3.sbe.v8.5.quoteid" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.futures.ilink3.sbe.v8.5.quotecanceltype" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.futures.ilink3.sbe.v8.5.liquidityflag" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancel.json
tshark \
  -r "omi-data-packets/Cme/iLink3.Sbe.8.5/QuoteCancelAck.pcap" \
  -X "lua_script:Cme/Cme_Futures_iLink3_Sbe_v8_5_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cme.futures.ilink3.sbe.v8.5.lua"]' \
  > Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json

grep "cme.futures.ilink3.sbe.v8.5.seqnum" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.uuid" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.text" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.senderid" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.partydetailslistreqid" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.requesttime" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.sendingtimeepoch" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.cancelledsymbol" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.location" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.quoteid" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.quoterejectreason" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.delayduration" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.manualorderindicator" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.quotecxlstatus" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.noprocessedentries" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.mmprotectionreset" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.unsolicitedcanceltype" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.splitmsg" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.totnoquoteentriesoptional" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.liquidityflag" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.possretransflag" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.futures.ilink3.sbe.v8.5.delaytotime" Cme.Futures.iLink3.Sbe.v8.5.QuoteCancelAck.json
tshark \
  -r "omi-data-packets/Cme/iLink3.Sbe.8.5/Sequence.pcap" \
  -X "lua_script:Cme/Cme_Futures_iLink3_Sbe_v8_5_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cme.futures.ilink3.sbe.v8.5.lua"]' \
  > Cme.Futures.iLink3.Sbe.v8.5.Sequence.json

grep "cme.futures.ilink3.sbe.v8.5.uuid" Cme.Futures.iLink3.Sbe.v8.5.Sequence.json
grep "cme.futures.ilink3.sbe.v8.5.nextseqno" Cme.Futures.iLink3.Sbe.v8.5.Sequence.json
grep "cme.futures.ilink3.sbe.v8.5.faulttoleranceindicator" Cme.Futures.iLink3.Sbe.v8.5.Sequence.json
grep "cme.futures.ilink3.sbe.v8.5.keepaliveintervallapsed" Cme.Futures.iLink3.Sbe.v8.5.Sequence.json
