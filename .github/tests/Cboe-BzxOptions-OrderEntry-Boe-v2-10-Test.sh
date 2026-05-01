set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/CancelOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr ]; then echo "--- tshark stderr (CancelOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (CancelOrderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json; echo

grep "cboe.bzxoptions.orderentry.boe.v2.10.origclordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginRequestMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginRequestMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr ]; then echo "--- tshark stderr (LoginRequestMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr; fi
echo "--- tshark diagnostic (LoginRequestMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json; echo

grep "cboe.bzxoptions.orderentry.boe.v2.10.sessionsubid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.username" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.password" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofparamgroups" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginResponseMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginResponseMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr ]; then echo "--- tshark stderr (LoginResponseMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr; fi
echo "--- tshark diagnostic (LoginResponseMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json; echo

grep "cboe.bzxoptions.orderentry.boe.v2.10.loginresponsestatus" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.loginresponsetext" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.nounspecifiedunitreplay" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.lastreceivedsequencenumber" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofunits" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofparamgroups" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/ModifyOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (ModifyOrderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json; echo

grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.origclordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/NewOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr ]; then echo "--- tshark stderr (NewOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (NewOrderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json; echo

grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.side" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderqty" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderCancelledMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelledMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr ]; then echo "--- tshark stderr (OrderCancelledMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderCancelledMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json; echo

grep "cboe.bzxoptions.orderentry.boe.v2.10.transacttime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.cancelreason" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderModifiedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderModifiedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr ]; then echo "--- tshark stderr (OrderModifiedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderModifiedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json; echo

grep "cboe.bzxoptions.orderentry.boe.v2.10.transactiontime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderRejectedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderRejectedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr ]; then echo "--- tshark stderr (OrderRejectedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderRejectedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json; echo

grep "cboe.bzxoptions.orderentry.boe.v2.10.transactiontime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderrejectreason" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.text" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
