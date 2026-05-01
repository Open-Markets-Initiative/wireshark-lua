set -o errexit
set -o pipefail

PORT=$(tshark -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionCancelMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionCancelMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  --enable-heuristic "cboe.c1options.complex.pitch.v2.1.18.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.complex.pitch.v2.1.18.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionCancelMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json.stderr ]; then echo "--- tshark stderr (AuctionCancelMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json.stderr; fi

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.auctionid" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionNotificationMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionNotificationMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  --enable-heuristic "cboe.c1options.complex.pitch.v2.1.18.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.complex.pitch.v2.1.18.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionNotificationMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json.stderr ]; then echo "--- tshark stderr (AuctionNotificationMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionUpdateMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionUpdateMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  --enable-heuristic "cboe.c1options.complex.pitch.v2.1.18.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.complex.pitch.v2.1.18.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json.stderr \
  || { echo "--- tshark FAILED (AuctionUpdateMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json.stderr ]; then echo "--- tshark stderr (AuctionUpdateMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json.stderr; fi

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
PORT=$(tshark -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/ComplexInstrumentDefinitionExpandedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/ComplexInstrumentDefinitionExpandedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  --enable-heuristic "cboe.c1options.complex.pitch.v2.1.18.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.complex.pitch.v2.1.18.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json.stderr \
  || { echo "--- tshark FAILED (ComplexInstrumentDefinitionExpandedMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json.stderr ]; then echo "--- tshark stderr (ComplexInstrumentDefinitionExpandedMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json.stderr; fi

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.complexinstrumentid" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.complexinstrumentunderlying" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.legcount" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/DeleteOrderMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  --enable-heuristic "cboe.c1options.complex.pitch.v2.1.18.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.complex.pitch.v2.1.18.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json.stderr \
  || { echo "--- tshark FAILED (DeleteOrderMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json.stderr ]; then echo "--- tshark stderr (DeleteOrderMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json.stderr; fi

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.orderid" Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/ModifyOrderShortMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  --enable-heuristic "cboe.c1options.complex.pitch.v2.1.18.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.complex.pitch.v2.1.18.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json.stderr \
  || { echo "--- tshark FAILED (ModifyOrderShortMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json.stderr ]; then echo "--- tshark stderr (ModifyOrderShortMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json.stderr; fi

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.orderid" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.quantityshort" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.priceshort" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.padding" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/OrderExecutedMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/OrderExecutedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  --enable-heuristic "cboe.c1options.complex.pitch.v2.1.18.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.complex.pitch.v2.1.18.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json.stderr \
  || { echo "--- tshark FAILED (OrderExecutedMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json.stderr ]; then echo "--- tshark stderr (OrderExecutedMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json.stderr; fi

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.orderid" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.executedquantity" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.executionid" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.tradecondition" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/SymbolMappingMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/SymbolMappingMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  --enable-heuristic "cboe.c1options.complex.pitch.v2.1.18.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.complex.pitch.v2.1.18.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json.stderr \
  || { echo "--- tshark FAILED (SymbolMappingMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json.stderr ]; then echo "--- tshark stderr (SymbolMappingMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json.stderr; fi

grep "cboe.c1options.complex.pitch.v2.1.18.feedsymbol" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.osisymbol" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.symbolcondition" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.underlying" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
PORT=$(tshark -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/TimeMessage.pcap" -Y udp -T fields -e udp.dstport 2>/dev/null | sort -un | head -1)
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  --enable-heuristic "cboe.c1options.complex.pitch.v2.1.18.lua_udp" \
  -d "udp.port==${PORT},cboe.c1options.complex.pitch.v2.1.18.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json 2> Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json.stderr \
  || { echo "--- tshark FAILED (TimeMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json.stderr; exit 1; }
if [ -s Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json.stderr ]; then echo "--- tshark stderr (TimeMessage) ---"; cat Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json.stderr; fi

grep "cboe.c1options.complex.pitch.v2.1.18.time" Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json
