set -o errexit
set -o pipefail

tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionCancelMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cboe.options.complex.pitch.v2.1.18.lua"]' \
  > Cboe.Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json

grep "cboe.options.complex.pitch.v2.1.18.timeoffset" Cboe.Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json
grep "cboe.options.complex.pitch.v2.1.18.auctionid" Cboe.Options.Complex.Pitch.v2.1.18.AuctionCancelMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionNotificationMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cboe.options.complex.pitch.v2.1.18.lua"]' \
  > Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json

grep "cboe.options.complex.pitch.v2.1.18.timeoffset" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.complexinstrumentid" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.auctionid" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.auctiontype" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.sideindicator" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.price" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.quantity" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.customerindicator" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.participantid" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.auctionendoffset" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
grep "cboe.options.complex.pitch.v2.1.18.clientid" Cboe.Options.Complex.Pitch.v2.1.18.AuctionNotificationMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/AuctionUpdateMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cboe.options.complex.pitch.v2.1.18.lua"]' \
  > Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json

grep "cboe.options.complex.pitch.v2.1.18.timeoffset" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.complexinstrumentid8" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.auctionopeningtype" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.referenceprice" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.buycontracts" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.sellcontracts" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.indicativeprice" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.auctiononlyprice" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.openingcondition" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.compositemarketbidprice" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
grep "cboe.options.complex.pitch.v2.1.18.compositemarketofferprice" Cboe.Options.Complex.Pitch.v2.1.18.AuctionUpdateMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/ComplexInstrumentDefinitionExpandedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cboe.options.complex.pitch.v2.1.18.lua"]' \
  > Cboe.Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json

grep "cboe.options.complex.pitch.v2.1.18.timeoffset" Cboe.Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.options.complex.pitch.v2.1.18.complexinstrumentid" Cboe.Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.options.complex.pitch.v2.1.18.complexinstrumentunderlying" Cboe.Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
grep "cboe.options.complex.pitch.v2.1.18.legcount" Cboe.Options.Complex.Pitch.v2.1.18.ComplexInstrumentDefinitionExpandedMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/DeleteOrderMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cboe.options.complex.pitch.v2.1.18.lua"]' \
  > Cboe.Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json

grep "cboe.options.complex.pitch.v2.1.18.timeoffset" Cboe.Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json
grep "cboe.options.complex.pitch.v2.1.18.orderid" Cboe.Options.Complex.Pitch.v2.1.18.DeleteOrderMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/ModifyOrderShortMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cboe.options.complex.pitch.v2.1.18.lua"]' \
  > Cboe.Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json

grep "cboe.options.complex.pitch.v2.1.18.timeoffset" Cboe.Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.options.complex.pitch.v2.1.18.orderid" Cboe.Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.options.complex.pitch.v2.1.18.quantityshort" Cboe.Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.options.complex.pitch.v2.1.18.priceshort" Cboe.Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
grep "cboe.options.complex.pitch.v2.1.18.padding" Cboe.Options.Complex.Pitch.v2.1.18.ModifyOrderShortMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/OrderExecutedMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cboe.options.complex.pitch.v2.1.18.lua"]' \
  > Cboe.Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json

grep "cboe.options.complex.pitch.v2.1.18.timeoffset" Cboe.Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.options.complex.pitch.v2.1.18.orderid" Cboe.Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.options.complex.pitch.v2.1.18.executedquantity" Cboe.Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.options.complex.pitch.v2.1.18.executionid" Cboe.Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
grep "cboe.options.complex.pitch.v2.1.18.tradecondition" Cboe.Options.Complex.Pitch.v2.1.18.OrderExecutedMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/SymbolMappingMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cboe.options.complex.pitch.v2.1.18.lua"]' \
  > Cboe.Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json

grep "cboe.options.complex.pitch.v2.1.18.feedsymbol" Cboe.Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.options.complex.pitch.v2.1.18.osisymbol" Cboe.Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.options.complex.pitch.v2.1.18.symbolcondition" Cboe.Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
grep "cboe.options.complex.pitch.v2.1.18.underlying" Cboe.Options.Complex.Pitch.v2.1.18.SymbolMappingMessage.json
tshark \
  -r "omi-data-packets/Cboe/Options.ComplexDepthOfBook.Pitch.v2.1.18/TimeMessage.pcap" \
  -X "lua_script:Cboe/Cboe_Options_Complex_Pitch_v2_1_18_Dissector.lua" \
  -T json \
  | jq '.[0]._source.layers["cboe.options.complex.pitch.v2.1.18.lua"]' \
  > Cboe.Options.Complex.Pitch.v2.1.18.TimeMessage.json

grep "cboe.options.complex.pitch.v2.1.18.time" Cboe.Options.Complex.Pitch.v2.1.18.TimeMessage.json
