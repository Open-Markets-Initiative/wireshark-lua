set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Cme/iLink3.Sbe.8.5/ExecutionReportStatus.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cme/iLink3.Sbe.8.5/ExecutionReportStatus.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_iLink3_Sbe_v8_5_Dissector.lua" \
  --enable-heuristic "cme.cmefutures.ilink3.sbe.v8.5.lua_udp" \
  -d "udp.port==${PORT},cme.cmefutures.ilink3.sbe.v8.5.lua" \
  -T json \
  > Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json 2> Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json.stderr
if [ -s Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json.stderr ]; then echo "--- tshark stderr (ExecutionReportStatus) ---"; cat Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json.stderr; fi

grep "cme.cmefutures.ilink3.sbe.v8.5.seqnum" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.uuid" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.text" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.execid" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.senderid" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.clordid" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.partydetailslistreqid" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.orderid" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.priceoptional" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.stoppx" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.transacttime" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.sendingtimeepoch" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.orderrequestid" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.ordstatusreqidoptional" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.massstatusreqidoptional" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.crossidoptional" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.hostcrossid" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.location" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.securityid" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.orderqty" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.cumqty" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.leavesqty" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.minqty" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.displayqty" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.expiredate" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.ordstatus" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.ordtypeoptional" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.side" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.timeinforce" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.manualorderindicator" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.possretransflag" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.lastrptrequested" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.crosstype" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.execinst" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.executionmode" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.liquidityflag" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.managedorder" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
grep "cme.cmefutures.ilink3.sbe.v8.5.shortsaletype" Cme.CmeFutures.iLink3.Sbe.v8.5.ExecutionReportStatus.json
PORT=$(tshark -r "omi-data-packets/Cme/iLink3.Sbe.8.5/QuoteCancel.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cme/iLink3.Sbe.8.5/QuoteCancel.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_iLink3_Sbe_v8_5_Dissector.lua" \
  --enable-heuristic "cme.cmefutures.ilink3.sbe.v8.5.lua_udp" \
  -d "udp.port==${PORT},cme.cmefutures.ilink3.sbe.v8.5.lua" \
  -T json \
  > Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json 2> Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json.stderr
if [ -s Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json.stderr ]; then echo "--- tshark stderr (QuoteCancel) ---"; cat Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json.stderr; fi

grep "cme.cmefutures.ilink3.sbe.v8.5.partydetailslistreqid" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.cmefutures.ilink3.sbe.v8.5.sendingtimeepoch" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.cmefutures.ilink3.sbe.v8.5.manualorderindicator" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.cmefutures.ilink3.sbe.v8.5.seqnum" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.cmefutures.ilink3.sbe.v8.5.senderid" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.cmefutures.ilink3.sbe.v8.5.location" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.cmefutures.ilink3.sbe.v8.5.quoteid" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.cmefutures.ilink3.sbe.v8.5.quotecanceltype" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json
grep "cme.cmefutures.ilink3.sbe.v8.5.liquidityflag" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancel.json
PORT=$(tshark -r "omi-data-packets/Cme/iLink3.Sbe.8.5/QuoteCancelAck.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cme/iLink3.Sbe.8.5/QuoteCancelAck.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_iLink3_Sbe_v8_5_Dissector.lua" \
  --enable-heuristic "cme.cmefutures.ilink3.sbe.v8.5.lua_udp" \
  -d "udp.port==${PORT},cme.cmefutures.ilink3.sbe.v8.5.lua" \
  -T json \
  > Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json 2> Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json.stderr
if [ -s Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json.stderr ]; then echo "--- tshark stderr (QuoteCancelAck) ---"; cat Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json.stderr; fi

grep "cme.cmefutures.ilink3.sbe.v8.5.seqnum" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.uuid" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.text" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.senderid" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.partydetailslistreqid" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.requesttime" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.sendingtimeepoch" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.cancelledsymbol" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.location" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.quoteid" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.quoterejectreason" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.delayduration" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.manualorderindicator" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.quotecxlstatus" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.noprocessedentries" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.mmprotectionreset" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.unsolicitedcanceltype" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.splitmsg" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.totnoquoteentriesoptional" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.liquidityflag" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.possretransflag" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
grep "cme.cmefutures.ilink3.sbe.v8.5.delaytotime" Cme.CmeFutures.iLink3.Sbe.v8.5.QuoteCancelAck.json
PORT=$(tshark -r "omi-data-packets/Cme/iLink3.Sbe.8.5/Sequence.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cme/iLink3.Sbe.8.5/Sequence.pcap" \
  -X "lua_script:Cme/Cme_CmeFutures_iLink3_Sbe_v8_5_Dissector.lua" \
  --enable-heuristic "cme.cmefutures.ilink3.sbe.v8.5.lua_udp" \
  -d "udp.port==${PORT},cme.cmefutures.ilink3.sbe.v8.5.lua" \
  -T json \
  > Cme.CmeFutures.iLink3.Sbe.v8.5.Sequence.json 2> Cme.CmeFutures.iLink3.Sbe.v8.5.Sequence.json.stderr
if [ -s Cme.CmeFutures.iLink3.Sbe.v8.5.Sequence.json.stderr ]; then echo "--- tshark stderr (Sequence) ---"; cat Cme.CmeFutures.iLink3.Sbe.v8.5.Sequence.json.stderr; fi

grep "cme.cmefutures.ilink3.sbe.v8.5.uuid" Cme.CmeFutures.iLink3.Sbe.v8.5.Sequence.json
grep "cme.cmefutures.ilink3.sbe.v8.5.nextseqno" Cme.CmeFutures.iLink3.Sbe.v8.5.Sequence.json
grep "cme.cmefutures.ilink3.sbe.v8.5.faulttoleranceindicator" Cme.CmeFutures.iLink3.Sbe.v8.5.Sequence.json
grep "cme.cmefutures.ilink3.sbe.v8.5.keepaliveintervallapsed" Cme.CmeFutures.iLink3.Sbe.v8.5.Sequence.json
