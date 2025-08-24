set -o errexit
set -o pipefail

tshark \
  -r "Data/Siac/Opra.Recipient.v6.2/LongEquityAndIndexQuoteMessage.pcap" \
  -X "lua_script:Siac/Siac_Opra_Recipient_Obi_v6_2_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["siac.opra.recipient.obi.v6.2.lua"]' \
  > Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json

grep "siac.opra.recipient.obi.v6.2.quotemessagetype" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.bboindicator" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.transactionid" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.participantreferencenumber" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.securitysymbol" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.reserved1" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.strikepricedenominatorcode" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.strikeprice" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.premiumpricedenominatorcode" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.bidprice" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.bidsize" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.offerprice" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
grep "siac.opra.recipient.obi.v6.2.offersize" Siac.Opra.Recipient.Obi.v6.2.LongEquityAndIndexQuoteMessage.json
