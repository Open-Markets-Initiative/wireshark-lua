set -o errexit
set -o pipefail

# Wireshark's Debian build silently disables -X lua_script: when running as root,
# so all tshark calls below run as the unprivileged 'tester' user via runuser.
# Give that user write access to the working directory for json output files.
chown -R tester:tester .

port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/CancelOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/CancelOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -d "udp.port==$port,cboe.bzxoptions.orderentry.boe.v2.10.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (CancelOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr ]; then echo "--- tshark stderr (CancelOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (CancelOrderMessage) ---"
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json | sort -u | head -n 40

grep "cboe.bzxoptions.orderentry.boe.v2.10.origclordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.CancelOrderMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginRequestMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginRequestMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -d "udp.port==$port,cboe.bzxoptions.orderentry.boe.v2.10.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginRequestMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr ]; then echo "--- tshark stderr (LoginRequestMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json.stderr; fi
echo "--- tshark diagnostic (LoginRequestMessage) ---"
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json | sort -u | head -n 40

grep "cboe.bzxoptions.orderentry.boe.v2.10.sessionsubid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.username" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.password" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofparamgroups" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginRequestMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginResponseMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/LoginResponseMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -d "udp.port==$port,cboe.bzxoptions.orderentry.boe.v2.10.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr \
  || { echo "--- tshark FAILED (LoginResponseMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr ]; then echo "--- tshark stderr (LoginResponseMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json.stderr; fi
echo "--- tshark diagnostic (LoginResponseMessage) ---"
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json | sort -u | head -n 40

grep "cboe.bzxoptions.orderentry.boe.v2.10.loginresponsestatus" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.loginresponsetext" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.nounspecifiedunitreplay" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.lastreceivedsequencenumber" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofunits" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.numberofparamgroups" Cboe.BzxOptions.OrderEntry.Boe.v2.10.LoginResponseMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/ModifyOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/ModifyOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -d "udp.port==$port,cboe.bzxoptions.orderentry.boe.v2.10.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (ModifyOrderMessage) ---"
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json | sort -u | head -n 40

grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.origclordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.ModifyOrderMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/NewOrderMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/NewOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -d "udp.port==$port,cboe.bzxoptions.orderentry.boe.v2.10.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (NewOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr ]; then echo "--- tshark stderr (NewOrderMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (NewOrderMessage) ---"
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json | sort -u | head -n 40

grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.side" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderqty" Cboe.BzxOptions.OrderEntry.Boe.v2.10.NewOrderMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderCancelledMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderCancelledMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -d "udp.port==$port,cboe.bzxoptions.orderentry.boe.v2.10.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderCancelledMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr ]; then echo "--- tshark stderr (OrderCancelledMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderCancelledMessage) ---"
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json | sort -u | head -n 40

grep "cboe.bzxoptions.orderentry.boe.v2.10.transacttime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.cancelreason" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderCancelledMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderModifiedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderModifiedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -d "udp.port==$port,cboe.bzxoptions.orderentry.boe.v2.10.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderModifiedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr ]; then echo "--- tshark stderr (OrderModifiedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderModifiedMessage) ---"
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json | sort -u | head -n 40

grep "cboe.bzxoptions.orderentry.boe.v2.10.transactiontime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderModifiedMessage.json
port=$(runuser -u tester -- tshark -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderRejectedMessage.pcap" -c 1 -T fields -e udp.dstport 2>/dev/null | tr -d '[:space:]')

runuser -u tester -- tshark \
  -r "omi-data-packets/Cboe/Options.OrderEntry.Boe.v2.10.5/OrderRejectedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_BzxOptions_OrderEntry_Boe_v2_10_Dissector.lua" \
  -d "udp.port==$port,cboe.bzxoptions.orderentry.boe.v2.10.lua" \
  -T json \
  > Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json 2> Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderRejectedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr; exit 1; }
if [ -s Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr ]; then echo "--- tshark stderr (OrderRejectedMessage) ---"; cat Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderRejectedMessage) ---"
echo "json bytes: $(wc -c < Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json || true)"
echo "frame.protocols: $(grep -oE '\"frame.protocols\": \"[^\"]+\"' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json | head -n 1)"
echo "layer keys:"
grep -oE '"[a-z0-9_.]+":' Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json | sort -u | head -n 40

grep "cboe.bzxoptions.orderentry.boe.v2.10.transactiontime" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.clordid" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.orderrejectreason" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.text" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
grep "cboe.bzxoptions.orderentry.boe.v2.10.reservedinternal" Cboe.BzxOptions.OrderEntry.Boe.v2.10.OrderRejectedMessage.json
