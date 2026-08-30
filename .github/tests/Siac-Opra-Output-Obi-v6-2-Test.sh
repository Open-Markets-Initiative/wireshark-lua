set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Opra.Output.Obi.v6.2/AdministrativeMessage.pcap" \
  -X "lua_script:Siac/Siac_Opra_Output_Obi_v6_2_Dissector.lua" \
  -T json \
  > Siac.Opra.Output.Obi.v6.2.AdministrativeMessage.json 2> Siac.Opra.Output.Obi.v6.2.AdministrativeMessage.json.stderr \
  || { echo "--- tshark FAILED (AdministrativeMessage) ---"; cat Siac.Opra.Output.Obi.v6.2.AdministrativeMessage.json.stderr; exit 1; }

grep "siac.opra.output.obi.v6.2.messageindicator" Siac.Opra.Output.Obi.v6.2.AdministrativeMessage.json
grep "siac.opra.output.obi.v6.2.transactionid" Siac.Opra.Output.Obi.v6.2.AdministrativeMessage.json
grep "siac.opra.output.obi.v6.2.participantreferencenumber" Siac.Opra.Output.Obi.v6.2.AdministrativeMessage.json
grep "siac.opra.output.obi.v6.2.messagedatalength" Siac.Opra.Output.Obi.v6.2.AdministrativeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Opra.Output.Obi.v6.2/ControlMessage.pcap" \
  -X "lua_script:Siac/Siac_Opra_Output_Obi_v6_2_Dissector.lua" \
  -T json \
  > Siac.Opra.Output.Obi.v6.2.ControlMessage.json 2> Siac.Opra.Output.Obi.v6.2.ControlMessage.json.stderr \
  || { echo "--- tshark FAILED (ControlMessage) ---"; cat Siac.Opra.Output.Obi.v6.2.ControlMessage.json.stderr; exit 1; }

grep "siac.opra.output.obi.v6.2.messageindicator" Siac.Opra.Output.Obi.v6.2.ControlMessage.json
grep "siac.opra.output.obi.v6.2.transactionid" Siac.Opra.Output.Obi.v6.2.ControlMessage.json
grep "siac.opra.output.obi.v6.2.participantreferencenumber" Siac.Opra.Output.Obi.v6.2.ControlMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Opra.Output.Obi.v6.2/LongEquityAndIndexQuoteMessage.pcap" \
  -X "lua_script:Siac/Siac_Opra_Output_Obi_v6_2_Dissector.lua" \
  -T json \
  > Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json 2> Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (LongEquityAndIndexQuoteMessage) ---"; cat Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json.stderr; exit 1; }

grep "siac.opra.output.obi.v6.2.bboindicator" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.transactionid" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.participantreferencenumber" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.securitysymbol" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.reserved1" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.strikepricedenominatorcode" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.strikeprice" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.premiumpricedenominatorcode" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.bidprice" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.bidsize" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.offerprice" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.offersize" Siac.Opra.Output.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Opra.Output.Obi.v6.2/ShortEquityAndIndexQuoteMessage.pcap" \
  -X "lua_script:Siac/Siac_Opra_Output_Obi_v6_2_Dissector.lua" \
  -T json \
  > Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json 2> Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortEquityAndIndexQuoteMessage) ---"; cat Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json.stderr; exit 1; }

grep "siac.opra.output.obi.v6.2.bboindicator" Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.transactionid" Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.participantreferencenumber" Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.securitysymbolshort" Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.strikepriceshort" Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.bidpriceshort" Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.bidsizeshort" Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.offerpriceshort" Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.output.obi.v6.2.offersizeshort" Siac.Opra.Output.Obi.v6.2.ShortEquityAndIndexQuoteMessage.json
