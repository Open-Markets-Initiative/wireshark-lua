set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionCancelMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionCancelMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json.stderr ]; then echo "--- tshark stderr (AuctionCancelMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json.stderr; fi
echo "--- tshark diagnostic (AuctionCancelMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json; echo

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.auctionid" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionNotificationMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionNotificationMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json.stderr ]; then echo "--- tshark stderr (AuctionNotificationMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json.stderr; fi
echo "--- tshark diagnostic (AuctionNotificationMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json; echo

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.complexinstrumentid" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.auctionid" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.auctiontype" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.sideindicator" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.price" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.quantity" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.customerindicator" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.participantid" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.auctionendoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.clientid" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionUpdateMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionUpdateMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json.stderr ]; then echo "--- tshark stderr (AuctionUpdateMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json.stderr; fi
echo "--- tshark diagnostic (AuctionUpdateMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json; echo

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.complexinstrumentid8" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.auctionopeningtype" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.referenceprice" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.buycontracts" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.sellcontracts" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.indicativeprice" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.auctiononlyprice" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.openingcondition" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.compositemarketbidprice" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.compositemarketofferprice" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/ComplexInstrumentDefinitionExpandedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexInstrumentDefinitionExpandedMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json.stderr ]; then echo "--- tshark stderr (ComplexInstrumentDefinitionExpandedMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json.stderr; fi
echo "--- tshark diagnostic (ComplexInstrumentDefinitionExpandedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json; echo

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.complexinstrumentid" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.complexinstrumentunderlying" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.legcount" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json.stderr ]; then echo "--- tshark stderr (DeleteOrderMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json.stderr; fi
echo "--- tshark diagnostic (DeleteOrderMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json; echo

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.orderid" Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderShortMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json.stderr; fi
echo "--- tshark diagnostic (ModifyOrderShortMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json; echo

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.orderid" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.quantityshort" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.priceshort" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.padding" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/OrderExecutedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json.stderr; fi
echo "--- tshark diagnostic (OrderExecutedMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json; echo

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.orderid" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.executedquantity" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.executionid" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.tradecondition" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/SymbolMappingMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolMappingMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json.stderr ]; then echo "--- tshark stderr (SymbolMappingMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json.stderr; fi
echo "--- tshark diagnostic (SymbolMappingMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json; echo

grep "cboe.c1options.complex.pitch.v2.1.18.feedsymbol" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.osisymbol" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.symbolcondition" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.underlying" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json.stderr ]; then echo "--- tshark stderr (TimeMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json.stderr; fi
echo "--- tshark diagnostic (TimeMessage) ---"
tshark -v | head -n 1
echo "json bytes: $(wc -c < Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json)"
echo "frame count: $(grep -c '\"_index\"' Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json || true)"
echo "layer keys (frame 0):"
grep -oE '"[a-z0-9_.]+":' Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json | sort -u | head -n 40
echo "json head:"
head -c 1500 Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json; echo

grep "cboe.c1options.complex.pitch.v2.1.18.time" Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json
