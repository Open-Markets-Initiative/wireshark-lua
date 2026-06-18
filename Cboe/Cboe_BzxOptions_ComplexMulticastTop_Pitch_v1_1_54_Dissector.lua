-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54 Protocol
local omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54 = Proto("Omi.Cboe.BzxOptions.ComplexMulticastTop.Pitch.v1.1.54", "Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54")

-- Protocol table
local cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54 Fields
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_customer_quantity_long = ProtoField.new("Ask Customer Quantity Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.askcustomerquantitylong", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_customer_quantity_short = ProtoField.new("Ask Customer Quantity Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.askcustomerquantityshort", ftypes.UINT16)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_price_long = ProtoField.new("Ask Price Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.askpricelong", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_price_short = ProtoField.new("Ask Price Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.askpriceshort", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_quantity_long = ProtoField.new("Ask Quantity Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.askquantitylong", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_quantity_short = ProtoField.new("Ask Quantity Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.askquantityshort", ftypes.UINT16)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.auction_type = ProtoField.new("Auction Type", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.auctiontype", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_customer_quantity_long = ProtoField.new("Bid Customer Quantity Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.bidcustomerquantitylong", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_customer_quantity_short = ProtoField.new("Bid Customer Quantity Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.bidcustomerquantityshort", ftypes.UINT16)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_price_long = ProtoField.new("Bid Price Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.bidpricelong", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_price_short = ProtoField.new("Bid Price Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.bidpriceshort", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_quantity_long = ProtoField.new("Bid Quantity Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.bidquantitylong", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_quantity_short = ProtoField.new("Bid Quantity Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.bidquantityshort", ftypes.UINT16)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bit_fields = ProtoField.new("Bit Fields", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.bitfields", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.buycontracts", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_id_long = ProtoField.new("Complex Instrument Id Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.complexinstrumentidlong", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_id_short = ProtoField.new("Complex Instrument Id Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.complexinstrumentidshort", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.complexinstrumenttype", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.complexinstrumentunderlying", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_leg = ProtoField.new("Complex Leg", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.complexleg", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.count = ProtoField.new("Count", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.count", ftypes.UINT8)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.customer_quantity_long = ProtoField.new("Customer Quantity Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.customerquantitylong", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.customer_quantity_short = ProtoField.new("Customer Quantity Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.customerquantityshort", ftypes.UINT16)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.execution_id = ProtoField.new("Execution Id", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.executionid", ftypes.UINT64)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.feedsymbol", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.gthtradingstatus", ftypes.BYTES)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.indicativeprice", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.leg_count = ProtoField.new("Leg Count", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.legcount", ftypes.UINT8)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.legratio", ftypes.INT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.legsecuritytype", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.legsymbol", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.length = ProtoField.new("Length", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.length", ftypes.UINT16)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message = ProtoField.new("Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.message", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message_header = ProtoField.new("Message Header", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.messageheader", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message_length = ProtoField.new("Message Length", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.messagelength", ftypes.UINT8)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message_type = ProtoField.new("Message Type", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.messagetype", ftypes.UINT8)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.openingcondition", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.osisymbol", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.packet = ProtoField.new("Packet", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.packet", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.packet_header = ProtoField.new("Packet Header", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.packetheader", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.price_long = ProtoField.new("Price Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.pricelong", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.price_short = ProtoField.new("Price Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.priceshort", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.quantitylong", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.quantityshort", ftypes.UINT16)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.reference_price = ProtoField.new("Reference Price", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.referenceprice", ftypes.DOUBLE)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.reserved1", ftypes.BYTES)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.reserved2", ftypes.BYTES)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.reserved_bits = ProtoField.new("Reserved Bits", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.reservedbits", ftypes.UINT8, nil, base.DEC, 0xFF)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.sellcontracts", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.sequence = ProtoField.new("Sequence", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.sequence", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.side = ProtoField.new("Side", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.side", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.symbolcondition", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.time = ProtoField.new("Time", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.time", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.time_offset = ProtoField.new("Time Offset", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.timeoffset", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.total_volume = ProtoField.new("Total Volume", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.totalvolume", ftypes.UINT32)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.tradecondition", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.trading_status = ProtoField.new("Trading Status", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.tradingstatus", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.underlying = ProtoField.new("Underlying", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.underlying", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.unit = ProtoField.new("Unit", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.unit", ftypes.UINT8)

-- Cboe BzxOptions Pitch ComplexMulticastTop 1.1.54 Application Messages
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.auctionsummarymessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.endofsessionmessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.optionsauctionupdatemessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.single_side_update_expanded_long_message = ProtoField.new("Single Side Update Expanded Long Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.singlesideupdateexpandedlongmessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.single_side_update_expanded_short_message = ProtoField.new("Single Side Update Expanded Short Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.singlesideupdateexpandedshortmessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.symbolmappingmessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.time_message = ProtoField.new("Time Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.timemessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.top_trade_message = ProtoField.new("Top Trade Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.toptrademessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.tradingstatusmessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.two_side_update_expanded_long_message = ProtoField.new("Two Side Update Expanded Long Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.twosideupdateexpandedlongmessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.two_side_update_expanded_short_message = ProtoField.new("Two Side Update Expanded Short Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.twosideupdateexpandedshortmessage", ftypes.STRING)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.unitclearmessage", ftypes.STRING)

-- Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54 generated fields
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_leg_index = ProtoField.new("Complex Leg Index", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.complexlegindex", ftypes.UINT16)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message_index = ProtoField.new("Message Index", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.messageindex", ftypes.UINT16)
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.timestamp = ProtoField.new("Timestamp", "cboe.bzxoptions.complexmulticasttop.pitch.v1.1.54.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54 Element Dissection Options
show.application_messages = true
show.bit_fields = true
show.complex_leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true
show.complex_leg_index = true

-- Register Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54 Show Options
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_bit_fields = Pref.bool("Show Bit Fields", show.bit_fields, "Parse and add Bit Fields to protocol tree")
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_complex_leg = Pref.bool("Show Complex Leg", show.complex_leg, "Parse and add Complex Leg to protocol tree")
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_complex_leg_index = Pref.bool("Show Complex Leg Index", show.complex_leg_index, "Show generated complex leg index in protocol tree")


-- Handle changed preferences
function omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_application_messages then
    show.application_messages = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_application_messages
  end
  if show.bit_fields ~= omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_bit_fields then
    show.bit_fields = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_bit_fields
  end
  if show.complex_leg ~= omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_complex_leg then
    show.complex_leg = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_complex_leg
  end
  if show.message ~= omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_message then
    show.message = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_message
  end
  if show.message_header ~= omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_message_header then
    show.message_header = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_packet then
    show.packet = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_packet_header then
    show.packet_header = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_message_index then
    show.message_index = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_message_index
  end
  if show.complex_leg_index ~= omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_complex_leg_index then
    show.complex_leg_index = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.prefs.show_complex_leg_index
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation = {}
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.data = function(packet)
  local key = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.key(packet)
  local data = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.current = nil


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54 Fields
-----------------------------------------------------------------------

-- Ask Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_long = {}

-- Size: Ask Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_long.size = 4

-- Display: Ask Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_long.display = function(value)
  return "Ask Customer Quantity Long: "..value
end

-- Dissect: Ask Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_short = {}

-- Size: Ask Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_short.size = 2

-- Display: Ask Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_short.display = function(value)
  return "Ask Customer Quantity Short: "..value
end

-- Dissect: Ask Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Ask Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long = {}

-- Size: Ask Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long.size = 8

-- Display: Ask Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Translate: Ask Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Ask Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short = {}

-- Size: Ask Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short.size = 2

-- Display: Ask Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Translate: Ask Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_long = {}

-- Size: Ask Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_long.size = 4

-- Display: Ask Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_long.display = function(value)
  return "Ask Quantity Long: "..value
end

-- Dissect: Ask Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_quantity_long, range, value, display)

  return offset + length, value
end

-- Ask Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_short = {}

-- Size: Ask Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_short.size = 2

-- Display: Ask Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_short.display = function(value)
  return "Ask Quantity Short: "..value
end

-- Dissect: Ask Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.ask_quantity_short, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price = {}

-- Size: Auction Only Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type = {}

-- Size: Auction Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type.size = 1

-- Display: Auction Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type.display = function(value)
  if value == "G" then
    return "Auction Type: Gth Opening (G)"
  end
  if value == "O" then
    return "Auction Type: Rth Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Halt Re Opening (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_long = {}

-- Size: Bid Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_long.size = 4

-- Display: Bid Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_long.display = function(value)
  return "Bid Customer Quantity Long: "..value
end

-- Dissect: Bid Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_short = {}

-- Size: Bid Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_short.size = 2

-- Display: Bid Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_short.display = function(value)
  return "Bid Customer Quantity Short: "..value
end

-- Dissect: Bid Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long = {}

-- Size: Bid Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long.size = 8

-- Display: Bid Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Bid Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short = {}

-- Size: Bid Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short.size = 2

-- Display: Bid Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_long = {}

-- Size: Bid Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_long.size = 4

-- Display: Bid Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_long.display = function(value)
  return "Bid Quantity Long: "..value
end

-- Dissect: Bid Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_quantity_long, range, value, display)

  return offset + length, value
end

-- Bid Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_short = {}

-- Size: Bid Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_short.size = 2

-- Display: Bid Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_short.display = function(value)
  return "Bid Quantity Short: "..value
end

-- Dissect: Bid Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bid_quantity_short, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.buy_contracts = {}

-- Size: Buy Contracts
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long = {}

-- Size: Complex Instrument Id Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long.size = 8

-- Display: Complex Instrument Id Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long.display = function(value)
  return "Complex Instrument Id Long: "..value
end

-- Dissect: Complex Instrument Id Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_id_long, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short = {}

-- Size: Complex Instrument Id Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.size = 6

-- Display: Complex Instrument Id Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.display = function(value)
  return "Complex Instrument Id Short: "..value
end

-- Dissect: Complex Instrument Id Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_id_short, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Count
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.count = {}

-- Size: Count
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.count.size = 1

-- Display: Count
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_long = {}

-- Size: Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_long.size = 4

-- Display: Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_long.display = function(value)
  return "Customer Quantity Long: "..value
end

-- Dissect: Customer Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.customer_quantity_long, range, value, display)

  return offset + length, value
end

-- Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_short = {}

-- Size: Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_short.size = 2

-- Display: Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_short.display = function(value)
  return "Customer Quantity Short: "..value
end

-- Dissect: Customer Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.customer_quantity_short, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.execution_id = {}

-- Size: Execution Id
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.execution_id.size = 8

-- Display: Execution Id
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.feed_symbol = {}

-- Size: Feed Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.gth_trading_status.display = function(value)
  return "Gth Trading Status: "..value
end

-- Dissect: Gth Trading Status
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price = {}

-- Size: Indicative Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price.size = 8

-- Display: Indicative Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_count = {}

-- Size: Leg Count
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_count.size = 1

-- Display: Leg Count
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_ratio = {}

-- Size: Leg Ratio
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_security_type = {}

-- Size: Leg Security Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Leg Is An Option Instrument (O)"
  end
  if value == "E" then
    return "Leg Security Type: Leg Is An Equity Instrument (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_symbol = {}

-- Size: Leg Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.length = {}

-- Size: Length
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.length.size = 2

-- Display: Length
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_length = {}

-- Size: Message Length
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_length.size = 1

-- Display: Message Length
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_type = {}

-- Size: Message Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_type.size = 1

-- Display: Message Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0x9A then
    return "Message Type: Complex Instrument Definition Expanded Message (0x9A)"
  end
  if value == 0x2F then
    return "Message Type: Symbol Mapping Message (0x2F)"
  end
  if value == 0xD4 then
    return "Message Type: Single Side Update Expanded Short Message (0xD4)"
  end
  if value == 0xD5 then
    return "Message Type: Single Side Update Expanded Long Message (0xD5)"
  end
  if value == 0xD6 then
    return "Message Type: Two Side Update Expanded Short Message (0xD6)"
  end
  if value == 0xD7 then
    return "Message Type: Two Side Update Expanded Long Message (0xD7)"
  end
  if value == 0xB8 then
    return "Message Type: Top Trade Message (0xB8)"
  end
  if value == 0xD1 then
    return "Message Type: Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message_type, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.opening_condition = {}

-- Size: Opening Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.opening_condition.size = 1

-- Display: Opening Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.osi_symbol = {}

-- Size: Osi Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long = {}

-- Size: Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.size = 8

-- Display: Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short = {}

-- Size: Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short.size = 2

-- Display: Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long = {}

-- Size: Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.size = 4

-- Display: Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_short = {}

-- Size: Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_short.size = 2

-- Display: Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price = {}

-- Size: Reference Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price.size = 8

-- Display: Reference Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price.translate(raw)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1 = {}

-- Size: Reserved 1
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1.size = 1

-- Display: Reserved 1
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_2 = {}

-- Size: Reserved 2
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_2.size = 2

-- Display: Reserved 2
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sell_contracts = {}

-- Size: Sell Contracts
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sequence = {}

-- Size: Sequence
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sequence.size = 4

-- Display: Sequence
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side = {}

-- Size: Side
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side.size = 1

-- Display: Side
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side.display = function(value)
  if value == "B" then
    return "Side: Bid Side (B)"
  end
  if value == "S" then
    return "Side: Ask Side (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.side, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_condition = {}

-- Size: Symbol Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time = {}

-- Size: Time
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.size = 4

-- Store: Time
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.current = nil

-- Generated: Time
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.generated = function(value, range, packet, parent)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.display(value)
  local time = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset = {}

-- Size: Time Offset
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size = 4

-- Display: Time Offset
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Total Volume
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.total_volume = {}

-- Size: Total Volume
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.total_volume.size = 4

-- Display: Total Volume
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trade_condition = {}

-- Size: Trade Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trade_condition.size = 1

-- Display: Trade Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trade_condition.display = function(value)
  if value == "f" then
    return "Trade Condition: Complex To Complex Electronic Trade Cboe Auction Type Is Coa (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Auction Trade Cboe Order Types Include Caim Csam (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Cross Cboe Auction Types Include Cust To Cust Caim Cqcc (h)"
  end
  if value == "j" then
    return "Trade Condition: Complex Electronic Trade Against Single Legs (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex With Stock Options Auction Trade Cboe Auction Types Include Caim W Stock Csam W Stock (k)"
  end
  if value == "m" then
    return "Trade Condition: Complex Floor Trade Against Single Legs All Complex Floor Executions Are Reported As Condition M (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex With Stock Electronic Trade Includes Coa Auctions Done Electronically (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex With Stock Cross Cboe Auction Types Include Cqcc W Stock (o)"
  end
  if value == "p" then
    return "Trade Condition: Complex With Stock Floor Trade (p)"
  end
  if value == "t" then
    return "Trade Condition: Complex Floor Trade Of Proprietary Products Marked As Combo Order (t)"
  end
  if value == "v" then
    return "Trade Condition: Extended Hours Trade Transaction Represents A Trade Executed During The Curb Session (v)"
  end
  if value == "l" then
    return "Trade Condition: Electronic Trade (l)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status = {}

-- Size: Trading Status
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status.size = 1

-- Display: Trading Status
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "L" then
    return "Trading Status: Curb Trading (L)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "T" then
    return "Trading Status: Rth Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.underlying = {}

-- Size: Underlying
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.underlying.size = 8

-- Display: Underlying
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit = {}

-- Size: Unit
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit.size = 1

-- Display: Unit
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp = {}

-- Translate: Timestamp
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_midnightreference + stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.display = function(time_offset, stored_time)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.translate(time_offset, stored_time)
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.display(time_offset, stored_time)
  parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.timestamp, range, value, display)

  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.generated(stored_time, range, packet, parent)

  display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.display(time_offset)
  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_time = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.current

  if stored_time ~= nil then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.composite(buffer, offset, stored_time, packet, parent)
  end

  return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54
-----------------------------------------------------------------------

-- End Of Session Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.end_of_session_message = {}

-- Size: End Of Session Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.end_of_session_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size

-- Display: End Of Session Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status_message = {}

-- Size: Trading Status Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_2.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.gth_trading_status.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1.size

-- Display: Trading Status Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Reserved
  index, gth_trading_status = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_summary_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.size

-- Display: Auction Summary Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.options_auction_update_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.buy_contracts.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sell_contracts.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.opening_condition.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Signed Long Price
  index, indicative_price = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Signed Long Price
  index, auction_only_price = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Signed Long Price
  index, composite_market_bid_price = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Signed Long Price
  index, composite_market_offer_price = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Trade Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.top_trade_message = {}

-- Size: Top Trade Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.top_trade_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.execution_id.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.total_volume.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trade_condition.size

-- Display: Top Trade Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.top_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Trade Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.top_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.execution_id.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.total_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Trade Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.top_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.top_trade_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.top_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.top_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.top_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Bit Fields
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields = {}

-- Size: Bit Fields
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.size = 1

-- Display: Bit Fields
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Bit Fields
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.bits = function(range, value, packet, parent)

  -- Reserved Bits: 8 Bit
  parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.reserved_bits, range, value)
end

-- Dissect: Bit Fields
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.bit_fields, range, display)

  if show.bit_fields then
    cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Two Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_long_message = {}

-- Size: Two Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_long_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_long.size

-- Display: Two Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 1 fields
  index, bit_fields = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Binary Long Price
  index, bid_price_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Quantity Long: Binary
  index, bid_quantity_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_long.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Long: Binary
  index, bid_customer_quantity_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Binary Long Price
  index, ask_price_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Quantity Long: Binary
  index, ask_quantity_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_long.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Long: Binary
  index, ask_customer_quantity_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.two_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Two Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_short_message = {}

-- Size: Two Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_short_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_short.size

-- Display: Two Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Two Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 1 fields
  index, bit_fields = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Binary Short Price
  index, bid_price_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Quantity Short: Binary
  index, bid_quantity_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_quantity_short.dissect(buffer, index, packet, parent)

  -- Bid Customer Quantity Short: Binary
  index, bid_customer_quantity_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bid_customer_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Binary Short Price
  index, ask_price_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Quantity Short: Binary
  index, ask_quantity_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_quantity_short.dissect(buffer, index, packet, parent)

  -- Ask Customer Quantity Short: Binary
  index, ask_customer_quantity_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.ask_customer_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Two Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.two_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_long_message = {}

-- Size: Single Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_long_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_long.size

-- Display: Single Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 1 fields
  index, bit_fields = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Long Price
  index, price_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_long.dissect(buffer, index, packet, parent)

  -- Customer Quantity Long: Binary
  index, customer_quantity_long = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Long Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.single_side_update_expanded_long_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_short_message = {}

-- Size: Single Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_short_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_short.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_short.size

-- Display: Single Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.side.dissect(buffer, index, packet, parent)

  -- Bit Fields: Struct of 1 fields
  index, bit_fields = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.bit_fields.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.price_short.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.quantity_short.dissect(buffer, index, packet, parent)

  -- Customer Quantity Short: Binary
  index, customer_quantity_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.customer_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Expanded Short Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.single_side_update_expanded_short_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_mapping_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.feed_symbol.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.osi_symbol.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_condition.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.underlying.size

-- Display: Symbol Mapping Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Leg
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_leg = {}

-- Size: Complex Leg
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_leg.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_symbol.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_ratio.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_security_type.size

-- Display: Complex Leg
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_leg.fields = function(buffer, offset, packet, parent, complex_leg_index)
  local index = offset

  -- Implicit Complex Leg Index
  if complex_leg_index ~= nil and show.complex_leg_index then
    local iteration = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_leg_index, complex_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_leg.dissect = function(buffer, offset, packet, parent, complex_leg_index)
  if show.complex_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_leg, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
  end
end

-- Complex Instrument Definition Expanded Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size

  index = index + cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.size

  index = index + cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_underlying.size

  index = index + cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_type.size

  index = index + cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_count.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, leg_count do
    index, complex_leg = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.complex_instrument_definition_expanded_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_definition_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit_clear_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_offset.size

-- Display: Unit Clear Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_message = {}

-- Size: Time Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_message.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.size

-- Display: Time Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.current = time

  if not packet.visited then
    cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.time_message, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.payload = {}

-- Dissect: Payload
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.complex_instrument_definition_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2F then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Short Message
  if message_type == 0xD4 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Expanded Long Message
  if message_type == 0xD5 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.single_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Short Message
  if message_type == 0xD6 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Two Side Update Expanded Long Message
  if message_type == 0xD7 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.two_side_update_expanded_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Trade Message
  if message_type == 0xB8 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.top_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_header = {}

-- Size: Message Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_header.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_length.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_type.size

-- Display: Message Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, message_type = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message_header, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message = {}

-- Read runtime size of: Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.message, buffer(offset, 0))
    local current = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.messages = {}

-- Dissect: Messages
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header = {}

-- Size: Packet Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header.size =
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.length.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.count.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit.size + 
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sequence.size

-- Display: Packet Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.fields.packet_header, buffer(offset, 0))
    local index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet = {}

-- Verify required size of Udp packet
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header.size
end

-- Dissect Packet
cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.current = data.time.frames[packet.number]
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.init()
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.time.current = nil
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.current = nil
  cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.conversation.flows = {}
end

-- Dissector for Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54
function omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54, buffer(), omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.description, "("..buffer:len().." Bytes)")
  return cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54 (Udp)
local function omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54
  omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54
omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54:register_heuristic("udp", omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54_udp_heuristic)

-- Register Cboe BzxOptions ComplexMulticastTop Pitch 1.1.54 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_bzxoptions_complexmulticasttop_pitch_v1_1_54)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.54
--   Date: Wednesday, April 1, 2026
--   Specification: US_OPTIONS_COMPLEX_MULTICAST_TOP_SPECIFICATION.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
