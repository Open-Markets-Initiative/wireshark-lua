set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionCancelMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.auctionid" Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionNotificationMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json

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
  > Cboe.C1Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json

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
  > Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.complexinstrumentid" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.complexinstrumentunderlying" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.legcount" Cboe.C1Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.orderid" Cboe.C1Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.orderid" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.quantityshort" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.priceshort" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.padding" Cboe.C1Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/OrderExecutedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json

grep "cboe.c1options.complex.pitch.v2.1.18.timeoffset" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.orderid" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.executedquantity" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.executionid" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.tradecondition" Cboe.C1Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/SymbolMappingMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json

grep "cboe.c1options.complex.pitch.v2.1.18.feedsymbol" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.osisymbol" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.symbolcondition" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.c1options.complex.pitch.v2.1.18.underlying" Cboe.C1Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_C1Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  > Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json

grep "cboe.c1options.complex.pitch.v2.1.18.time" Cboe.C1Options.Complex.Pitch.v2.1.18.TimeMessage.json
