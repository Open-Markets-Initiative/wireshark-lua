set -o errexit
set -o pipefail

chown -R tester:tester .

runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Opra.Recipient.v6.2/AdministrativeMessage.pcap" \
  -X "lua_script:Siac/Siac_Opra_Recipient_Obi_v6_1_Dissector.lua" \
  -T json \
  > Siac.Opra.Recipient.Obi.v6.1.AdministrativeMessage.json 2> Siac.Opra.Recipient.Obi.v6.1.AdministrativeMessage.json.stderr \
  || { echo "--- tshark FAILED (AdministrativeMessage) ---"; cat Siac.Opra.Recipient.Obi.v6.1.AdministrativeMessage.json.stderr; exit 1; }

grep "siac.opra.recipient.obi.v6.1.messageindicator" Siac.Opra.Recipient.Obi.v6.1.AdministrativeMessage.json
grep "siac.opra.recipient.obi.v6.1.transactionid" Siac.Opra.Recipient.Obi.v6.1.AdministrativeMessage.json
grep "siac.opra.recipient.obi.v6.1.participantreferencenumber" Siac.Opra.Recipient.Obi.v6.1.AdministrativeMessage.json
grep "siac.opra.recipient.obi.v6.1.messagedatalength" Siac.Opra.Recipient.Obi.v6.1.AdministrativeMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Opra.Recipient.v6.2/ControlMessage.pcap" \
  -X "lua_script:Siac/Siac_Opra_Recipient_Obi_v6_1_Dissector.lua" \
  -T json \
  > Siac.Opra.Recipient.Obi.v6.1.ControlMessage.json 2> Siac.Opra.Recipient.Obi.v6.1.ControlMessage.json.stderr \
  || { echo "--- tshark FAILED (ControlMessage) ---"; cat Siac.Opra.Recipient.Obi.v6.1.ControlMessage.json.stderr; exit 1; }

grep "siac.opra.recipient.obi.v6.1.messageindicator" Siac.Opra.Recipient.Obi.v6.1.ControlMessage.json
grep "siac.opra.recipient.obi.v6.1.transactionid" Siac.Opra.Recipient.Obi.v6.1.ControlMessage.json
grep "siac.opra.recipient.obi.v6.1.participantreferencenumber" Siac.Opra.Recipient.Obi.v6.1.ControlMessage.json
grep "siac.opra.recipient.obi.v6.1.messagedatalength" Siac.Opra.Recipient.Obi.v6.1.ControlMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Opra.Recipient.v6.2/LongEquityAndIndexQuoteMessage.pcap" \
  -X "lua_script:Siac/Siac_Opra_Recipient_Obi_v6_1_Dissector.lua" \
  -T json \
  > Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json 2> Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (LongEquityAndIndexQuoteMessage) ---"; cat Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json.stderr; exit 1; }

grep "siac.opra.recipient.obi.v6.1.bboindicator" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.transactionid" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.participantreferencenumber" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.securitysymbol" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.reserved1" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.strikepricedenominatorcode" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.strikeprice" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.premiumpricedenominatorcode" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.bidprice" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.bidsize" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.offerprice" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.offersize" Siac.Opra.Recipient.Obi.v6.1.LongEquityAndIndexQuoteMessage.json
runuser -u tester -- tshark \
  -r "omi-data-packets/Siac/Opra.Recipient.v6.2/ShortEquityAndIndexQuoteMessage.pcap" \
  -X "lua_script:Siac/Siac_Opra_Recipient_Obi_v6_1_Dissector.lua" \
  -T json \
  > Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json 2> Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json.stderr \
  || { echo "--- tshark FAILED (ShortEquityAndIndexQuoteMessage) ---"; cat Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json.stderr; exit 1; }

grep "siac.opra.recipient.obi.v6.1.bboindicator" Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.transactionid" Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.participantreferencenumber" Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.securitysymbolshort" Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.strikepriceshort" Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.bidpriceshort" Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.bidsizeshort" Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.offerpriceshort" Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.1.offersizeshort" Siac.Opra.Recipient.Obi.v6.1.ShortEquityAndIndexQuoteMessage.json
