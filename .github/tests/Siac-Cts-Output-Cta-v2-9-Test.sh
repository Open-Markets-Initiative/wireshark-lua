set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Siac/Cts.Cta.v2.9/LineIntegrityMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.9/LineIntegrityMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_9_Dissector.lua" \
  -d "udp.port==${PORT},siac.cts.output.cta.v2.9.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json 2> Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json.stderr \
  || { echo "--- tshark FAILED (LineIntegrityMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json.stderr; exit 1; }
if [ -s Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json.stderr ]; then echo "--- tshark stderr (LineIntegrityMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json.stderr; fi

grep "siac.cts.output.cta.v2.9.participantid" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.9.messageid" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.9.transactionid" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
grep "siac.cts.output.cta.v2.9.participantreferencenumber" Siac.Cts.Output.Cta.v2.9.LineIntegrityMessage.json
PORT=$(tshark -r "omi-data-packets/Siac/Cts.Cta.v2.9/LongTradeMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.9/LongTradeMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_9_Dissector.lua" \
  -d "udp.port==${PORT},siac.cts.output.cta.v2.9.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json 2> Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json.stderr \
  || { echo "--- tshark FAILED (LongTradeMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json.stderr; exit 1; }
if [ -s Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json.stderr ]; then echo "--- tshark stderr (LongTradeMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json.stderr; fi

grep "siac.cts.output.cta.v2.9.participantid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.messageid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.transactionid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.participantreferencenumber" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.securitysymbol" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.instrumenttype" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.tradeprice" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.tradevolume" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.sellerssaledays" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.stopstockindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.tradethroughexemptindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.tradereportingfacilityid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.financialstatusindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.heldtradeindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.consolidatedhighlowlastindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
grep "siac.cts.output.cta.v2.9.participantopenhighlowlastindicator" Siac.Cts.Output.Cta.v2.9.LongTradeMessage.json
PORT=$(tshark -r "omi-data-packets/Siac/Cts.Cta.v2.9/TradingStatusMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Siac/Cts.Cta.v2.9/TradingStatusMessage.pcap" \
  -X "lua_script:Siac/Siac_Cts_Output_Cta_v2_9_Dissector.lua" \
  -d "udp.port==${PORT},siac.cts.output.cta.v2.9.lua" \
  -T json \
  > Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json 2> Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json.stderr \
  || { echo "--- tshark FAILED (TradingStatusMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json.stderr; exit 1; }
if [ -s Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json.stderr ]; then echo "--- tshark stderr (TradingStatusMessage) ---"; cat Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json.stderr; fi

grep "siac.cts.output.cta.v2.9.participantid" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.messageid" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.transactionid" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.participantreferencenumber" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.securitysymbol" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.instrumenttype" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.lastprice" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.highindicationpriceupperlimitpriceband" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.lowindicationpricelowerlimitpriceband" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.buyvolume" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.sellvolume" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.securitystatus" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.haltreason" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.shortsalerestrictionindicator" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.primarylistingmarketparticipantid" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.financialstatusindicator" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
grep "siac.cts.output.cta.v2.9.limituplimitdownindicator" Siac.Cts.Output.Cta.v2.9.TradingStatusMessage.json
