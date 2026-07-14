-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgxOptions Complex Pitch 2.1.61 Protocol
local omi_cboe_edgxoptions_complex_pitch_v2_1_61 = Proto("Omi.Cboe.EdgxOptions.Complex.Pitch.v2.1.61", "Cboe EdgxOptions Complex Pitch 2.1.61")

-- Protocol table
local cboe_edgxoptions_complex_pitch_v2_1_61 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgxOptions Complex Pitch 2.1.61 Fields
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.edgxoptions.complex.pitch.v2.1.61.auctionendoffset", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_id = ProtoField.new("Auction Id", "cboe.edgxoptions.complex.pitch.v2.1.61.auctionid", ftypes.UINT64)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.edgxoptions.complex.pitch.v2.1.61.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_type = ProtoField.new("Auction Type", "cboe.edgxoptions.complex.pitch.v2.1.61.auctiontype", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.edgxoptions.complex.pitch.v2.1.61.buycontracts", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.canceled_quantity_long = ProtoField.new("Canceled Quantity Long", "cboe.edgxoptions.complex.pitch.v2.1.61.canceledquantitylong", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.edgxoptions.complex.pitch.v2.1.61.canceledquantityshort", ftypes.UINT16)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.client_id = ProtoField.new("Client Id", "cboe.edgxoptions.complex.pitch.v2.1.61.clientid", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_id_long = ProtoField.new("Complex Instrument Id Long", "cboe.edgxoptions.complex.pitch.v2.1.61.complexinstrumentidlong", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_id_short = ProtoField.new("Complex Instrument Id Short", "cboe.edgxoptions.complex.pitch.v2.1.61.complexinstrumentidshort", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.edgxoptions.complex.pitch.v2.1.61.complexinstrumenttype", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.edgxoptions.complex.pitch.v2.1.61.complexinstrumentunderlying", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_leg = ProtoField.new("Complex Leg", "cboe.edgxoptions.complex.pitch.v2.1.61.complexleg", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_symbol_id = ProtoField.new("Complex Symbol Id", "cboe.edgxoptions.complex.pitch.v2.1.61.complexsymbolid", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.edgxoptions.complex.pitch.v2.1.61.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.edgxoptions.complex.pitch.v2.1.61.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.count = ProtoField.new("Count", "cboe.edgxoptions.complex.pitch.v2.1.61.count", ftypes.UINT8)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.edgxoptions.complex.pitch.v2.1.61.customerindicator", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.edgxoptions.complex.pitch.v2.1.61.executedquantity", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.execution_id = ProtoField.new("Execution Id", "cboe.edgxoptions.complex.pitch.v2.1.61.executionid", ftypes.UINT64)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.edgxoptions.complex.pitch.v2.1.61.feedsymbol", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.edgxoptions.complex.pitch.v2.1.61.gthtradingstatus", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.edgxoptions.complex.pitch.v2.1.61.indicativeprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.leg_count = ProtoField.new("Leg Count", "cboe.edgxoptions.complex.pitch.v2.1.61.legcount", ftypes.UINT8)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.edgxoptions.complex.pitch.v2.1.61.legratio", ftypes.INT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.edgxoptions.complex.pitch.v2.1.61.legsecuritytype", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.edgxoptions.complex.pitch.v2.1.61.legsymbol", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.length = ProtoField.new("Length", "cboe.edgxoptions.complex.pitch.v2.1.61.length", ftypes.UINT16)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message = ProtoField.new("Message", "cboe.edgxoptions.complex.pitch.v2.1.61.message", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message_header = ProtoField.new("Message Header", "cboe.edgxoptions.complex.pitch.v2.1.61.messageheader", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message_length = ProtoField.new("Message Length", "cboe.edgxoptions.complex.pitch.v2.1.61.messagelength", ftypes.UINT8)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message_type = ProtoField.new("Message Type", "cboe.edgxoptions.complex.pitch.v2.1.61.messagetype", ftypes.UINT8)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.notification_auction_type = ProtoField.new("Notification Auction Type", "cboe.edgxoptions.complex.pitch.v2.1.61.notificationauctiontype", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.edgxoptions.complex.pitch.v2.1.61.openingcondition", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.order_id = ProtoField.new("Order Id", "cboe.edgxoptions.complex.pitch.v2.1.61.orderid", ftypes.UINT64)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.edgxoptions.complex.pitch.v2.1.61.osisymbol", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.packet = ProtoField.new("Packet", "cboe.edgxoptions.complex.pitch.v2.1.61.packet", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.packet_header = ProtoField.new("Packet Header", "cboe.edgxoptions.complex.pitch.v2.1.61.packetheader", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.participant_id = ProtoField.new("Participant Id", "cboe.edgxoptions.complex.pitch.v2.1.61.participantid", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.price_long = ProtoField.new("Price Long", "cboe.edgxoptions.complex.pitch.v2.1.61.pricelong", ftypes.DOUBLE)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.price_short = ProtoField.new("Price Short", "cboe.edgxoptions.complex.pitch.v2.1.61.priceshort", ftypes.DOUBLE)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.quantity_long = ProtoField.new("Quantity Long", "cboe.edgxoptions.complex.pitch.v2.1.61.quantitylong", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.edgxoptions.complex.pitch.v2.1.61.quantityshort", ftypes.UINT16)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reference_price = ProtoField.new("Reference Price", "cboe.edgxoptions.complex.pitch.v2.1.61.referenceprice", ftypes.DOUBLE)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.edgxoptions.complex.pitch.v2.1.61.remainingquantity", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.edgxoptions.complex.pitch.v2.1.61.reserved1", ftypes.BYTES)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.edgxoptions.complex.pitch.v2.1.61.reserved2", ftypes.BYTES)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reserved_5 = ProtoField.new("Reserved 5", "cboe.edgxoptions.complex.pitch.v2.1.61.reserved5", ftypes.BYTES)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.edgxoptions.complex.pitch.v2.1.61.sellcontracts", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.sequence = ProtoField.new("Sequence", "cboe.edgxoptions.complex.pitch.v2.1.61.sequence", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.side = ProtoField.new("Side", "cboe.edgxoptions.complex.pitch.v2.1.61.side", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.edgxoptions.complex.pitch.v2.1.61.sideindicator", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.edgxoptions.complex.pitch.v2.1.61.symbolcondition", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.time = ProtoField.new("Time", "cboe.edgxoptions.complex.pitch.v2.1.61.time", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.time_offset = ProtoField.new("Time Offset", "cboe.edgxoptions.complex.pitch.v2.1.61.timeoffset", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.timestamp = ProtoField.new("Timestamp", "cboe.edgxoptions.complex.pitch.v2.1.61.timestamp", ftypes.UINT32)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.edgxoptions.complex.pitch.v2.1.61.tradecondition", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trading_status = ProtoField.new("Trading Status", "cboe.edgxoptions.complex.pitch.v2.1.61.tradingstatus", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.underlying = ProtoField.new("Underlying", "cboe.edgxoptions.complex.pitch.v2.1.61.underlying", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.unit = ProtoField.new("Unit", "cboe.edgxoptions.complex.pitch.v2.1.61.unit", ftypes.UINT8)

-- Cboe EdgxOptions Pitch Complex 2.1.61 Application Messages
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.edgxoptions.complex.pitch.v2.1.61.addorderexpandedmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.edgxoptions.complex.pitch.v2.1.61.addorderlongmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.edgxoptions.complex.pitch.v2.1.61.addordershortmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.edgxoptions.complex.pitch.v2.1.61.auctioncancelmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.edgxoptions.complex.pitch.v2.1.61.auctionnotificationmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.edgxoptions.complex.pitch.v2.1.61.auctionsummarymessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.edgxoptions.complex.pitch.v2.1.61.auctiontrademessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.edgxoptions.complex.pitch.v2.1.61.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.edgxoptions.complex.pitch.v2.1.61.deleteordermessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.edgxoptions.complex.pitch.v2.1.61.endofsessionmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.edgxoptions.complex.pitch.v2.1.61.modifyorderlongmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.edgxoptions.complex.pitch.v2.1.61.modifyordershortmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.options_auction_update_message = ProtoField.new("Options Auction Update Message", "cboe.edgxoptions.complex.pitch.v2.1.61.optionsauctionupdatemessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.edgxoptions.complex.pitch.v2.1.61.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.edgxoptions.complex.pitch.v2.1.61.orderexecutedmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.edgxoptions.complex.pitch.v2.1.61.reducesizelongmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.edgxoptions.complex.pitch.v2.1.61.reducesizeshortmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.edgxoptions.complex.pitch.v2.1.61.symbolmappingmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.time_message = ProtoField.new("Time Message", "cboe.edgxoptions.complex.pitch.v2.1.61.timemessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.edgxoptions.complex.pitch.v2.1.61.tradelongmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.edgxoptions.complex.pitch.v2.1.61.tradeshortmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.edgxoptions.complex.pitch.v2.1.61.tradingstatusmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.transaction_begin_message = ProtoField.new("Transaction Begin Message", "cboe.edgxoptions.complex.pitch.v2.1.61.transactionbeginmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.edgxoptions.complex.pitch.v2.1.61.transactionendmessage", ftypes.STRING)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.edgxoptions.complex.pitch.v2.1.61.unitclearmessage", ftypes.STRING)

-- Cboe EdgxOptions Complex Pitch 2.1.61 generated fields
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_leg_index = ProtoField.new("Complex Leg Index", "cboe.edgxoptions.complex.pitch.v2.1.61.complexlegindex", ftypes.UINT16)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message_index = ProtoField.new("Message Index", "cboe.edgxoptions.complex.pitch.v2.1.61.messageindex", ftypes.UINT16)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.timestamp = ProtoField.new("Timestamp", "cboe.edgxoptions.complex.pitch.v2.1.61.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Cboe EdgxOptions Complex Pitch 2.1.61 Formatting
-----------------------------------------------------------------------

-- timestamp format
local time_offset_format_enum = {
  { 1, "Raw", 0 },
  { 2, "Time of Day", 1 },
  { 3, "Full DateTime", 2 }
}

-- 0=Raw, 1=TimeOfDay, 2=FullDateTime
cboe_edgxoptions_complex_pitch_v2_1_61.time_offset_format = 2

-- Hours behind UTC (EST) for midnight calculation
cboe_edgxoptions_complex_pitch_v2_1_61.utc_offset_hours = 5


-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgxOptions Complex Pitch 2.1.61 Element Dissection Options
show.application_messages = true
show.complex_leg = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true
show.complex_leg_index = true

-- Register Cboe EdgxOptions Complex Pitch 2.1.61 Show Options
omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_complex_leg = Pref.bool("Show Complex Leg", show.complex_leg, "Parse and add Complex Leg to protocol tree")
omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_complex_leg_index = Pref.bool("Show Complex Leg Index", show.complex_leg_index, "Show generated complex leg index in protocol tree")

omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.time_offset_format = Pref.enum("Time Offset Format", 2, "Time Offset display format", time_offset_format_enum, false)
omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.utc_offset_hours = Pref.uint("UTC Offset (hours)", 5, "Hours behind UTC (EST) for midnight calculation")

-- Handle changed preferences
function omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_application_messages
  end
  if show.complex_leg ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_complex_leg then
    show.complex_leg = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_complex_leg
  end
  if show.message ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_message then
    show.message = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_message
  end
  if show.message_header ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_message_header then
    show.message_header = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_packet then
    show.packet = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_packet_header then
    show.packet_header = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_message_index then
    show.message_index = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_message_index
  end
  if show.complex_leg_index ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_complex_leg_index then
    show.complex_leg_index = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.show_complex_leg_index
  end
  if cboe_edgxoptions_complex_pitch_v2_1_61.time_offset_format ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.time_offset_format then
    cboe_edgxoptions_complex_pitch_v2_1_61.time_offset_format = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.time_offset_format
  end
  if cboe_edgxoptions_complex_pitch_v2_1_61.utc_offset_hours ~= omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.utc_offset_hours then
    cboe_edgxoptions_complex_pitch_v2_1_61.utc_offset_hours = omi_cboe_edgxoptions_complex_pitch_v2_1_61.prefs.utc_offset_hours
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
cboe_edgxoptions_complex_pitch_v2_1_61.conversation = {}
cboe_edgxoptions_complex_pitch_v2_1_61.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
cboe_edgxoptions_complex_pitch_v2_1_61.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
cboe_edgxoptions_complex_pitch_v2_1_61.conversation.data = function(packet)
  local key = cboe_edgxoptions_complex_pitch_v2_1_61.conversation.key(packet)
  local data = cboe_edgxoptions_complex_pitch_v2_1_61.conversation.flows[key]
  if data == nil then
    data = { time = { last = nil, frames = {} } }
    cboe_edgxoptions_complex_pitch_v2_1_61.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
cboe_edgxoptions_complex_pitch_v2_1_61.conversation.current = nil


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
-- Cboe EdgxOptions Complex Pitch 2.1.61 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_edgxoptions_complex_pitch_v2_1_61.auction_end_offset = {}

-- Size: Auction End Offset
cboe_edgxoptions_complex_pitch_v2_1_61.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_edgxoptions_complex_pitch_v2_1_61.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_edgxoptions_complex_pitch_v2_1_61.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_edgxoptions_complex_pitch_v2_1_61.auction_id = {}

-- Size: Auction Id
cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.size = 8

-- Display: Auction Id
cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price = {}

-- Size: Auction Only Price
cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price.translate(raw)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_edgxoptions_complex_pitch_v2_1_61.auction_type = {}

-- Size: Auction Type
cboe_edgxoptions_complex_pitch_v2_1_61.auction_type.size = 1

-- Display: Auction Type
cboe_edgxoptions_complex_pitch_v2_1_61.auction_type.display = function(value)
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
cboe_edgxoptions_complex_pitch_v2_1_61.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_edgxoptions_complex_pitch_v2_1_61.buy_contracts = {}

-- Size: Buy Contracts
cboe_edgxoptions_complex_pitch_v2_1_61.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_edgxoptions_complex_pitch_v2_1_61.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_edgxoptions_complex_pitch_v2_1_61.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Long
cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_long = {}

-- Size: Canceled Quantity Long
cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_long.size = 4

-- Display: Canceled Quantity Long
cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_long.display = function(value)
  return "Canceled Quantity Long: "..value
end

-- Dissect: Canceled Quantity Long
cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.canceled_quantity_long, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Client Id
cboe_edgxoptions_complex_pitch_v2_1_61.client_id = {}

-- Size: Client Id
cboe_edgxoptions_complex_pitch_v2_1_61.client_id.size = 4

-- Display: Client Id
cboe_edgxoptions_complex_pitch_v2_1_61.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_edgxoptions_complex_pitch_v2_1_61.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.client_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.client_id, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Long
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long = {}

-- Size: Complex Instrument Id Long
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.size = 8

-- Display: Complex Instrument Id Long
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.display = function(value)
  return "Complex Instrument Id Long: "..value
end

-- Dissect: Complex Instrument Id Long
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_id_long, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id Short
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short = {}

-- Size: Complex Instrument Id Short
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.size = 6

-- Display: Complex Instrument Id Short
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.display = function(value)
  return "Complex Instrument Id Short: "..value
end

-- Dissect: Complex Instrument Id Short
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_id_short, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_type.size = 4

-- Display: Complex Instrument Type
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_type.display = function(value)
  return "Complex Instrument Type: "..value
end

-- Dissect: Complex Instrument Type
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Underlying
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Complex Symbol Id
cboe_edgxoptions_complex_pitch_v2_1_61.complex_symbol_id = {}

-- Size: Complex Symbol Id
cboe_edgxoptions_complex_pitch_v2_1_61.complex_symbol_id.size = 6

-- Display: Complex Symbol Id
cboe_edgxoptions_complex_pitch_v2_1_61.complex_symbol_id.display = function(value)
  return "Complex Symbol Id: "..value
end

-- Dissect: Complex Symbol Id
cboe_edgxoptions_complex_pitch_v2_1_61.complex_symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.complex_symbol_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.complex_symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_symbol_id, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price.translate(raw)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Composite Market Offer Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price.translate(raw)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Count
cboe_edgxoptions_complex_pitch_v2_1_61.count = {}

-- Size: Count
cboe_edgxoptions_complex_pitch_v2_1_61.count.size = 1

-- Display: Count
cboe_edgxoptions_complex_pitch_v2_1_61.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_edgxoptions_complex_pitch_v2_1_61.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator = {}

-- Size: Customer Indicator
cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity = {}

-- Size: Executed Quantity
cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_edgxoptions_complex_pitch_v2_1_61.execution_id = {}

-- Size: Execution Id
cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.size = 8

-- Display: Execution Id
cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.feed_symbol = {}

-- Size: Feed Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_edgxoptions_complex_pitch_v2_1_61.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_edgxoptions_complex_pitch_v2_1_61.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_edgxoptions_complex_pitch_v2_1_61.gth_trading_status.display = function(value)
  if value == "H" then
    return "Gth Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Gth Trading Status: Quote Only (Q)"
  end
  if value == "T" then
    return "Gth Trading Status: Trading (T)"
  end

  return "Gth Trading Status: Unknown("..value..")"
end

-- Dissect: Gth Trading Status
cboe_edgxoptions_complex_pitch_v2_1_61.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price = {}

-- Size: Indicative Price
cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price.size = 8

-- Display: Indicative Price
cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price.translate(raw)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Leg Count
cboe_edgxoptions_complex_pitch_v2_1_61.leg_count = {}

-- Size: Leg Count
cboe_edgxoptions_complex_pitch_v2_1_61.leg_count.size = 1

-- Display: Leg Count
cboe_edgxoptions_complex_pitch_v2_1_61.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_edgxoptions_complex_pitch_v2_1_61.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_edgxoptions_complex_pitch_v2_1_61.leg_ratio = {}

-- Size: Leg Ratio
cboe_edgxoptions_complex_pitch_v2_1_61.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_edgxoptions_complex_pitch_v2_1_61.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_edgxoptions_complex_pitch_v2_1_61.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Security Type
cboe_edgxoptions_complex_pitch_v2_1_61.leg_security_type = {}

-- Size: Leg Security Type
cboe_edgxoptions_complex_pitch_v2_1_61.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_edgxoptions_complex_pitch_v2_1_61.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Leg Is An Option Instrument (O)"
  end
  if value == "E" then
    return "Leg Security Type: Leg Is An Equity Instrument (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_edgxoptions_complex_pitch_v2_1_61.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.leg_symbol = {}

-- Size: Leg Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Length
cboe_edgxoptions_complex_pitch_v2_1_61.length = {}

-- Size: Length
cboe_edgxoptions_complex_pitch_v2_1_61.length.size = 2

-- Display: Length
cboe_edgxoptions_complex_pitch_v2_1_61.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_edgxoptions_complex_pitch_v2_1_61.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgxoptions_complex_pitch_v2_1_61.message_length = {}

-- Size: Message Length
cboe_edgxoptions_complex_pitch_v2_1_61.message_length.size = 1

-- Display: Message Length
cboe_edgxoptions_complex_pitch_v2_1_61.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgxoptions_complex_pitch_v2_1_61.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_edgxoptions_complex_pitch_v2_1_61.message_type = {}

-- Size: Message Type
cboe_edgxoptions_complex_pitch_v2_1_61.message_type.size = 1

-- Display: Message Type
cboe_edgxoptions_complex_pitch_v2_1_61.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0xBC then
    return "Message Type: Transaction Begin Message (0xBC)"
  end
  if value == 0xBD then
    return "Message Type: Transaction End Message (0xBD)"
  end
  if value == 0x9A then
    return "Message Type: Complex Instrument Definition Expanded Message (0x9A)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x21 then
    return "Message Type: Add Order Long Message (0x21)"
  end
  if value == 0x22 then
    return "Message Type: Add Order Short Message (0x22)"
  end
  if value == 0x2F then
    return "Message Type: Add Order Expanded Message (0x2F)"
  end
  if value == 0x23 then
    return "Message Type: Order Executed Message (0x23)"
  end
  if value == 0x24 then
    return "Message Type: Order Executed At Price Size Message (0x24)"
  end
  if value == 0x25 then
    return "Message Type: Reduce Size Long Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Reduce Size Short Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Modify Order Long Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Modify Order Short Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: Delete Order Message (0x29)"
  end
  if value == 0x2A then
    return "Message Type: Trade Long Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Trade Short Message (0x2B)"
  end
  if value == 0xAD then
    return "Message Type: Auction Notification Message (0xAD)"
  end
  if value == 0xAE then
    return "Message Type: Auction Cancel Message (0xAE)"
  end
  if value == 0xAF then
    return "Message Type: Auction Trade Message (0xAF)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0xD1 then
    return "Message Type: Options Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session Message (0x2D)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_edgxoptions_complex_pitch_v2_1_61.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message_type, range, value, display)

  return offset + length, value
end

-- Notification Auction Type
cboe_edgxoptions_complex_pitch_v2_1_61.notification_auction_type = {}

-- Size: Notification Auction Type
cboe_edgxoptions_complex_pitch_v2_1_61.notification_auction_type.size = 1

-- Display: Notification Auction Type
cboe_edgxoptions_complex_pitch_v2_1_61.notification_auction_type.display = function(value)
  if value == "C" then
    return "Notification Auction Type: Complex Order Auction Coa Or Stop Complex Order Auction Scoa Effective Tbd (C)"
  end
  if value == "S" then
    return "Notification Auction Type: Complex Solicitation Auction Mechanism (S)"
  end
  if value == "B" then
    return "Notification Auction Type: Complex Aim (B)"
  end
  if value == "O" then
    return "Notification Auction Type: Coa All Or None (O)"
  end

  return "Notification Auction Type: Unknown("..value..")"
end

-- Dissect: Notification Auction Type
cboe_edgxoptions_complex_pitch_v2_1_61.notification_auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.notification_auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.notification_auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.notification_auction_type, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_edgxoptions_complex_pitch_v2_1_61.opening_condition = {}

-- Size: Opening Condition
cboe_edgxoptions_complex_pitch_v2_1_61.opening_condition.size = 1

-- Display: Opening Condition
cboe_edgxoptions_complex_pitch_v2_1_61.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_edgxoptions_complex_pitch_v2_1_61.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_edgxoptions_complex_pitch_v2_1_61.order_id = {}

-- Size: Order Id
cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size = 8

-- Display: Order Id
cboe_edgxoptions_complex_pitch_v2_1_61.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.order_id, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.osi_symbol = {}

-- Size: Osi Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_edgxoptions_complex_pitch_v2_1_61.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_edgxoptions_complex_pitch_v2_1_61.participant_id = {}

-- Size: Participant Id
cboe_edgxoptions_complex_pitch_v2_1_61.participant_id.size = 4

-- Display: Participant Id
cboe_edgxoptions_complex_pitch_v2_1_61.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_edgxoptions_complex_pitch_v2_1_61.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price Long
cboe_edgxoptions_complex_pitch_v2_1_61.price_long = {}

-- Size: Price Long
cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size = 8

-- Display: Price Long
cboe_edgxoptions_complex_pitch_v2_1_61.price_long.display = function(value)
  return "Price Long: "..value
end

-- Translate: Price Long
cboe_edgxoptions_complex_pitch_v2_1_61.price_long.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Long
cboe_edgxoptions_complex_pitch_v2_1_61.price_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.translate(raw)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_edgxoptions_complex_pitch_v2_1_61.price_short = {}

-- Size: Price Short
cboe_edgxoptions_complex_pitch_v2_1_61.price_short.size = 2

-- Display: Price Short
cboe_edgxoptions_complex_pitch_v2_1_61.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_edgxoptions_complex_pitch_v2_1_61.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_edgxoptions_complex_pitch_v2_1_61.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_edgxoptions_complex_pitch_v2_1_61.price_short.translate(raw)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Long
cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long = {}

-- Size: Quantity Long
cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.size = 4

-- Display: Quantity Long
cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.display = function(value)
  return "Quantity Long: "..value
end

-- Dissect: Quantity Long
cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.quantity_long, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short = {}

-- Size: Quantity Short
cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.size = 2

-- Display: Quantity Short
cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_edgxoptions_complex_pitch_v2_1_61.reference_price = {}

-- Size: Reference Price
cboe_edgxoptions_complex_pitch_v2_1_61.reference_price.size = 8

-- Display: Reference Price
cboe_edgxoptions_complex_pitch_v2_1_61.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_edgxoptions_complex_pitch_v2_1_61.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_edgxoptions_complex_pitch_v2_1_61.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxoptions_complex_pitch_v2_1_61.reference_price.translate(raw)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_edgxoptions_complex_pitch_v2_1_61.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_edgxoptions_complex_pitch_v2_1_61.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_edgxoptions_complex_pitch_v2_1_61.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_edgxoptions_complex_pitch_v2_1_61.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1 = {}

-- Size: Reserved 1
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.size = 1

-- Display: Reserved 1
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_2 = {}

-- Size: Reserved 2
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_2.size = 2

-- Display: Reserved 2
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 5
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_5 = {}

-- Size: Reserved 5
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_5.size = 5

-- Display: Reserved 5
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
cboe_edgxoptions_complex_pitch_v2_1_61.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_5.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_edgxoptions_complex_pitch_v2_1_61.sell_contracts = {}

-- Size: Sell Contracts
cboe_edgxoptions_complex_pitch_v2_1_61.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_edgxoptions_complex_pitch_v2_1_61.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_edgxoptions_complex_pitch_v2_1_61.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_edgxoptions_complex_pitch_v2_1_61.sequence = {}

-- Size: Sequence
cboe_edgxoptions_complex_pitch_v2_1_61.sequence.size = 4

-- Display: Sequence
cboe_edgxoptions_complex_pitch_v2_1_61.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_edgxoptions_complex_pitch_v2_1_61.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side
cboe_edgxoptions_complex_pitch_v2_1_61.side = {}

-- Size: Side
cboe_edgxoptions_complex_pitch_v2_1_61.side.size = 1

-- Display: Side
cboe_edgxoptions_complex_pitch_v2_1_61.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_edgxoptions_complex_pitch_v2_1_61.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.side, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator = {}

-- Size: Side Indicator
cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.size = 1

-- Display: Side Indicator
cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_edgxoptions_complex_pitch_v2_1_61.symbol_condition = {}

-- Size: Symbol Condition
cboe_edgxoptions_complex_pitch_v2_1_61.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_edgxoptions_complex_pitch_v2_1_61.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_edgxoptions_complex_pitch_v2_1_61.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_edgxoptions_complex_pitch_v2_1_61.time = {}

-- Size: Time
cboe_edgxoptions_complex_pitch_v2_1_61.time.size = 4

-- Store: Time
cboe_edgxoptions_complex_pitch_v2_1_61.time.current = nil

-- Generated: Time
cboe_edgxoptions_complex_pitch_v2_1_61.time.generated = function(value, range, packet, parent)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.time.display(value)
  local time = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.time, range, value, display)
  time:set_generated()
end

-- Display: Time
cboe_edgxoptions_complex_pitch_v2_1_61.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_edgxoptions_complex_pitch_v2_1_61.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_edgxoptions_complex_pitch_v2_1_61.time_offset = {}

-- Size: Time Offset
cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size = 4

-- Display: Time Offset
cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_edgxoptions_complex_pitch_v2_1_61.timestamp = {}

-- Size: Timestamp
cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.size = 4

-- Display: Timestamp
cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition = {}

-- Size: Trade Condition
cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.size = 1

-- Display: Trade Condition
cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.display = function(value)
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
cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_edgxoptions_complex_pitch_v2_1_61.trading_status = {}

-- Size: Trading Status
cboe_edgxoptions_complex_pitch_v2_1_61.trading_status.size = 1

-- Display: Trading Status
cboe_edgxoptions_complex_pitch_v2_1_61.trading_status.display = function(value)
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
cboe_edgxoptions_complex_pitch_v2_1_61.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_edgxoptions_complex_pitch_v2_1_61.underlying = {}

-- Size: Underlying
cboe_edgxoptions_complex_pitch_v2_1_61.underlying.size = 8

-- Display: Underlying
cboe_edgxoptions_complex_pitch_v2_1_61.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_edgxoptions_complex_pitch_v2_1_61.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.underlying.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.underlying, range, value, display)

  return offset + length, value
end

-- Unit
cboe_edgxoptions_complex_pitch_v2_1_61.unit = {}

-- Size: Unit
cboe_edgxoptions_complex_pitch_v2_1_61.unit.size = 1

-- Display: Unit
cboe_edgxoptions_complex_pitch_v2_1_61.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_edgxoptions_complex_pitch_v2_1_61.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.unit, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_edgxoptions_complex_pitch_v2_1_61.timestamp = {}

-- Translate: Timestamp
cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.translate = function(time_offset, stored_time)
  return UInt64.new(stored_time * 1000000000 + time_offset)
end

-- Display: Timestamp
cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.display = function(time_offset, stored_time, packet)
  -- Raw display mode
  if cboe_edgxoptions_complex_pitch_v2_1_61.time_offset_format == 0 then
    return "Timestamp: "..(stored_time * 1000000000 + time_offset)
  end

  -- Full datetime mode (calculate from capture date + UTC offset)
  if cboe_edgxoptions_complex_pitch_v2_1_61.time_offset_format == 2 and packet then
    local capture_time = type(packet.abs_ts) == "number" and packet.abs_ts or packet.abs_ts:tonumber()
    local utc_offset_seconds = cboe_edgxoptions_complex_pitch_v2_1_61.utc_offset_hours * 3600
    local local_midnight = math.floor((capture_time - utc_offset_seconds) / 86400) * 86400
    local full_seconds = local_midnight + stored_time

    return "Timestamp: "..os.date("!%Y-%m-%d %H:%M:%S.", full_seconds)..string.format("%09d", time_offset)
  end

  -- Time of day mode
  return "Timestamp: "..os.date("!%H:%M:%S.", stored_time)..string.format("%09d", time_offset)
end

-- Composite: Timestamp
cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.composite = function(buffer, offset, stored_time, packet, parent)
  local length = cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size
  local range = buffer(offset, length)
  local time_offset = range:le_uint()
  local value = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.translate(time_offset, stored_time)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.display(time_offset, stored_time, packet)
  parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.timestamp, range, value, display)

  cboe_edgxoptions_complex_pitch_v2_1_61.time.generated(stored_time, range, packet, parent)

  display = cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.display(time_offset)
  parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.time_offset, range, time_offset, display)

  return offset + length, value
end

-- Dissect: Timestamp
cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_time = cboe_edgxoptions_complex_pitch_v2_1_61.time.current

  if stored_time ~= nil then
    return cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.composite(buffer, offset, stored_time, packet, parent)
  end

  return cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgxOptions Complex Pitch 2.1.61
-----------------------------------------------------------------------

-- End Of Session Message
cboe_edgxoptions_complex_pitch_v2_1_61.end_of_session_message = {}

-- Size: End Of Session Message
cboe_edgxoptions_complex_pitch_v2_1_61.end_of_session_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.size

-- Display: End Of Session Message
cboe_edgxoptions_complex_pitch_v2_1_61.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_edgxoptions_complex_pitch_v2_1_61.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_edgxoptions_complex_pitch_v2_1_61.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_summary_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.auction_type.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.size

-- Display: Auction Summary Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_edgxoptions_complex_pitch_v2_1_61.auction_type.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Signed Long Price
  index, price_long = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Options Auction Update Message
cboe_edgxoptions_complex_pitch_v2_1_61.options_auction_update_message = {}

-- Size: Options Auction Update Message
cboe_edgxoptions_complex_pitch_v2_1_61.options_auction_update_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.auction_type.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reference_price.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.buy_contracts.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.sell_contracts.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.opening_condition.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price.size

-- Display: Options Auction Update Message
cboe_edgxoptions_complex_pitch_v2_1_61.options_auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Auction Update Message
cboe_edgxoptions_complex_pitch_v2_1_61.options_auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Auction Type: Alphanumeric
  index, auction_type = cboe_edgxoptions_complex_pitch_v2_1_61.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: Binary Long Price
  index, reference_price = cboe_edgxoptions_complex_pitch_v2_1_61.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: Binary
  index, buy_contracts = cboe_edgxoptions_complex_pitch_v2_1_61.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: Binary
  index, sell_contracts = cboe_edgxoptions_complex_pitch_v2_1_61.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: Binary Signed Long Price
  index, indicative_price = cboe_edgxoptions_complex_pitch_v2_1_61.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: Binary Signed Long Price
  index, auction_only_price = cboe_edgxoptions_complex_pitch_v2_1_61.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: Alphanumeric
  index, opening_condition = cboe_edgxoptions_complex_pitch_v2_1_61.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: Binary Signed Long Price
  index, composite_market_bid_price = cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: Binary Signed Long Price
  index, composite_market_offer_price = cboe_edgxoptions_complex_pitch_v2_1_61.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Auction Update Message
cboe_edgxoptions_complex_pitch_v2_1_61.options_auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.options_auction_update_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.options_auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.options_auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.options_auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_edgxoptions_complex_pitch_v2_1_61.trading_status_message = {}

-- Size: Trading Status Message
cboe_edgxoptions_complex_pitch_v2_1_61.trading_status_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.complex_symbol_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reserved_2.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.trading_status.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.gth_trading_status.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Trading Status Message
cboe_edgxoptions_complex_pitch_v2_1_61.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_edgxoptions_complex_pitch_v2_1_61.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Symbol Id: Printable ASCII
  index, complex_symbol_id = cboe_edgxoptions_complex_pitch_v2_1_61.complex_symbol_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: Reserved
  index, reserved_2 = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_edgxoptions_complex_pitch_v2_1_61.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: Alpha
  index, gth_trading_status = cboe_edgxoptions_complex_pitch_v2_1_61.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_edgxoptions_complex_pitch_v2_1_61.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_trade_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.size

-- Display: Auction Trade Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Signed Long Price
  index, price_long = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_cancel_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.size

-- Display: Auction Cancel Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_notification_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.notification_auction_type.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.side.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.participant_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.auction_end_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.client_id.size

-- Display: Auction Notification Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_edgxoptions_complex_pitch_v2_1_61.auction_id.dissect(buffer, index, packet, parent)

  -- Notification Auction Type: Alphanumeric
  index, notification_auction_type = cboe_edgxoptions_complex_pitch_v2_1_61.notification_auction_type.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_edgxoptions_complex_pitch_v2_1_61.side.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Signed Long Price
  index, price_long = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_edgxoptions_complex_pitch_v2_1_61.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: Binary
  index, auction_end_offset = cboe_edgxoptions_complex_pitch_v2_1_61.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_edgxoptions_complex_pitch_v2_1_61.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_edgxoptions_complex_pitch_v2_1_61.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_short_message = {}

-- Size: Trade Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_short_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.size

-- Display: Trade Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Signed Short Price
  index, price_short = cboe_edgxoptions_complex_pitch_v2_1_61.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_long_message = {}

-- Size: Trade Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_long_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.size

-- Display: Trade Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Signed Long Price
  index, price_long = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_edgxoptions_complex_pitch_v2_1_61.delete_order_message = {}

-- Size: Delete Order Message
cboe_edgxoptions_complex_pitch_v2_1_61.delete_order_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size

-- Display: Delete Order Message
cboe_edgxoptions_complex_pitch_v2_1_61.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_edgxoptions_complex_pitch_v2_1_61.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_edgxoptions_complex_pitch_v2_1_61.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_short_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Modify Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Signed Short Price
  index, price_short = cboe_edgxoptions_complex_pitch_v2_1_61.price_short.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_long_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Modify Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Signed Long Price
  index, price_long = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_short_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_long_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_long.size

-- Display: Reduce Size Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Long: Binary
  index, canceled_quantity_long = cboe_edgxoptions_complex_pitch_v2_1_61.canceled_quantity_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.remaining_quantity.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.size

-- Display: Order Executed At Price Size Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_edgxoptions_complex_pitch_v2_1_61.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Signed Long Price
  index, price_long = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_message = {}

-- Size: Order Executed Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.size

-- Display: Order Executed Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_edgxoptions_complex_pitch_v2_1_61.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxoptions_complex_pitch_v2_1_61.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = cboe_edgxoptions_complex_pitch_v2_1_61.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_expanded_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.participant_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.client_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reserved_5.size

-- Display: Add Order Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Long: Printable ASCII
  index, complex_instrument_id_long = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_long.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Signed Long Price
  index, price_long = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_edgxoptions_complex_pitch_v2_1_61.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_edgxoptions_complex_pitch_v2_1_61.customer_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: Alphanumeric
  index, client_id = cboe_edgxoptions_complex_pitch_v2_1_61.client_id.dissect(buffer, index, packet, parent)

  -- Reserved 5: Reserved
  index, reserved_5 = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_5.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_short_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Add Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Signed Short Price
  index, price_short = cboe_edgxoptions_complex_pitch_v2_1_61.price_short.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_long_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.order_id.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.price_long.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.size

-- Display: Add Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxoptions_complex_pitch_v2_1_61.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxoptions_complex_pitch_v2_1_61.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Long: Binary
  index, quantity_long = cboe_edgxoptions_complex_pitch_v2_1_61.quantity_long.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Price Long: Binary Signed Long Price
  index, price_long = cboe_edgxoptions_complex_pitch_v2_1_61.price_long.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = cboe_edgxoptions_complex_pitch_v2_1_61.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_edgxoptions_complex_pitch_v2_1_61.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_edgxoptions_complex_pitch_v2_1_61.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_edgxoptions_complex_pitch_v2_1_61.symbol_mapping_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.feed_symbol.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.osi_symbol.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.symbol_condition.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.underlying.size

-- Display: Symbol Mapping Message
cboe_edgxoptions_complex_pitch_v2_1_61.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_edgxoptions_complex_pitch_v2_1_61.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: Printable ASCII
  index, feed_symbol = cboe_edgxoptions_complex_pitch_v2_1_61.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: Printable ASCII
  index, osi_symbol = cboe_edgxoptions_complex_pitch_v2_1_61.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: Alphanumeric
  index, symbol_condition = cboe_edgxoptions_complex_pitch_v2_1_61.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: Alphanumeric
  index, underlying = cboe_edgxoptions_complex_pitch_v2_1_61.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_edgxoptions_complex_pitch_v2_1_61.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Leg
cboe_edgxoptions_complex_pitch_v2_1_61.complex_leg = {}

-- Size: Complex Leg
cboe_edgxoptions_complex_pitch_v2_1_61.complex_leg.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.leg_symbol.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.leg_ratio.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.leg_security_type.size

-- Display: Complex Leg
cboe_edgxoptions_complex_pitch_v2_1_61.complex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg
cboe_edgxoptions_complex_pitch_v2_1_61.complex_leg.fields = function(buffer, offset, packet, parent, complex_leg_index)
  local index = offset

  -- Implicit Complex Leg Index
  if complex_leg_index ~= nil and show.complex_leg_index then
    local iteration = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_leg_index, complex_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Printable ASCII
  index, leg_symbol = cboe_edgxoptions_complex_pitch_v2_1_61.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Signed Binary
  index, leg_ratio = cboe_edgxoptions_complex_pitch_v2_1_61.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: Alphanumeric
  index, leg_security_type = cboe_edgxoptions_complex_pitch_v2_1_61.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
cboe_edgxoptions_complex_pitch_v2_1_61.complex_leg.dissect = function(buffer, offset, packet, parent, complex_leg_index)
  if show.complex_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_leg, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.complex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
  end
end

-- Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size

  index = index + cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.size

  index = index + cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_underlying.size

  index = index + cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_type.size

  index = index + cboe_edgxoptions_complex_pitch_v2_1_61.leg_count.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id Short: Printable ASCII
  index, complex_instrument_id_short = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_id_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: Printable ASCII
  index, complex_instrument_underlying = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Alphanumeric
  index, complex_instrument_type = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: Binary
  index, leg_count = cboe_edgxoptions_complex_pitch_v2_1_61.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, leg_count do
    index, complex_leg = cboe_edgxoptions_complex_pitch_v2_1_61.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.complex_instrument_definition_expanded_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_end_message = {}

-- Size: Transaction End Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_end_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size

-- Display: Transaction End Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.transaction_end_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.transaction_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.transaction_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.transaction_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_begin_message = {}

-- Size: Transaction Begin Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_begin_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size

-- Display: Transaction Begin Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_begin_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_begin_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin Message
cboe_edgxoptions_complex_pitch_v2_1_61.transaction_begin_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.transaction_begin_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.transaction_begin_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.transaction_begin_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.transaction_begin_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_edgxoptions_complex_pitch_v2_1_61.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_edgxoptions_complex_pitch_v2_1_61.unit_clear_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time_offset.size

-- Display: Unit Clear Message
cboe_edgxoptions_complex_pitch_v2_1_61.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_edgxoptions_complex_pitch_v2_1_61.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Time Offset
  index, time_offset = cboe_edgxoptions_complex_pitch_v2_1_61.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_edgxoptions_complex_pitch_v2_1_61.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_edgxoptions_complex_pitch_v2_1_61.time_message = {}

-- Size: Time Message
cboe_edgxoptions_complex_pitch_v2_1_61.time_message.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.time.size

-- Display: Time Message
cboe_edgxoptions_complex_pitch_v2_1_61.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_edgxoptions_complex_pitch_v2_1_61.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_edgxoptions_complex_pitch_v2_1_61.time.dissect(buffer, index, packet, parent)

  -- Store Time Value
  cboe_edgxoptions_complex_pitch_v2_1_61.time.current = time

  if not packet.visited then
    cboe_edgxoptions_complex_pitch_v2_1_61.conversation.current.time.last = time
  end

  return index
end

-- Dissect: Time Message
cboe_edgxoptions_complex_pitch_v2_1_61.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.time_message, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_edgxoptions_complex_pitch_v2_1_61.payload = {}

-- Dissect: Payload
cboe_edgxoptions_complex_pitch_v2_1_61.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin Message
  if message_type == 0xBC then
    return cboe_edgxoptions_complex_pitch_v2_1_61.transaction_begin_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End Message
  if message_type == 0xBD then
    return cboe_edgxoptions_complex_pitch_v2_1_61.transaction_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_edgxoptions_complex_pitch_v2_1_61.complex_instrument_definition_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_edgxoptions_complex_pitch_v2_1_61.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_edgxoptions_complex_pitch_v2_1_61.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_edgxoptions_complex_pitch_v2_1_61.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_edgxoptions_complex_pitch_v2_1_61.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_edgxoptions_complex_pitch_v2_1_61.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_edgxoptions_complex_pitch_v2_1_61.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_edgxoptions_complex_pitch_v2_1_61.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Auction Update Message
  if message_type == 0xD1 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.options_auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_edgxoptions_complex_pitch_v2_1_61.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_edgxoptions_complex_pitch_v2_1_61.message_header = {}

-- Size: Message Header
cboe_edgxoptions_complex_pitch_v2_1_61.message_header.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.message_length.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.message_type.size

-- Display: Message Header
cboe_edgxoptions_complex_pitch_v2_1_61.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgxoptions_complex_pitch_v2_1_61.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxoptions_complex_pitch_v2_1_61.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = cboe_edgxoptions_complex_pitch_v2_1_61.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgxoptions_complex_pitch_v2_1_61.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message_header, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_edgxoptions_complex_pitch_v2_1_61.message = {}

-- Read runtime size of: Message
cboe_edgxoptions_complex_pitch_v2_1_61.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_edgxoptions_complex_pitch_v2_1_61.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_edgxoptions_complex_pitch_v2_1_61.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_edgxoptions_complex_pitch_v2_1_61.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = cboe_edgxoptions_complex_pitch_v2_1_61.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_edgxoptions_complex_pitch_v2_1_61.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_edgxoptions_complex_pitch_v2_1_61.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.message, buffer(offset, 0))
    local current = cboe_edgxoptions_complex_pitch_v2_1_61.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgxoptions_complex_pitch_v2_1_61.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Heartbeat
cboe_edgxoptions_complex_pitch_v2_1_61.heartbeat = {}

-- Display: Heartbeat
cboe_edgxoptions_complex_pitch_v2_1_61.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
cboe_edgxoptions_complex_pitch_v2_1_61.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = cboe_edgxoptions_complex_pitch_v2_1_61.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Messages
cboe_edgxoptions_complex_pitch_v2_1_61.messages = {}

-- Dissect: Messages
cboe_edgxoptions_complex_pitch_v2_1_61.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return cboe_edgxoptions_complex_pitch_v2_1_61.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_edgxoptions_complex_pitch_v2_1_61.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_edgxoptions_complex_pitch_v2_1_61.packet_header = {}

-- Size: Packet Header
cboe_edgxoptions_complex_pitch_v2_1_61.packet_header.size =
  cboe_edgxoptions_complex_pitch_v2_1_61.length.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.count.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.unit.size + 
  cboe_edgxoptions_complex_pitch_v2_1_61.sequence.size

-- Display: Packet Header
cboe_edgxoptions_complex_pitch_v2_1_61.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_edgxoptions_complex_pitch_v2_1_61.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_edgxoptions_complex_pitch_v2_1_61.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_edgxoptions_complex_pitch_v2_1_61.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_edgxoptions_complex_pitch_v2_1_61.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_edgxoptions_complex_pitch_v2_1_61.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_edgxoptions_complex_pitch_v2_1_61.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61.fields.packet_header, buffer(offset, 0))
    local index = cboe_edgxoptions_complex_pitch_v2_1_61.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxoptions_complex_pitch_v2_1_61.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxoptions_complex_pitch_v2_1_61.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_edgxoptions_complex_pitch_v2_1_61.packet = {}

-- Verify required size of Udp packet
cboe_edgxoptions_complex_pitch_v2_1_61.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_edgxoptions_complex_pitch_v2_1_61.packet_header.size
end

-- Dissect Packet
cboe_edgxoptions_complex_pitch_v2_1_61.packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = cboe_edgxoptions_complex_pitch_v2_1_61.conversation.data(packet)
  if not packet.visited then
    data.time.frames[packet.number] = data.time.last
  end
  cboe_edgxoptions_complex_pitch_v2_1_61.time.current = data.time.frames[packet.number]
  cboe_edgxoptions_complex_pitch_v2_1_61.conversation.current = data

  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_edgxoptions_complex_pitch_v2_1_61.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 6, 1):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_edgxoptions_complex_pitch_v2_1_61.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgxoptions_complex_pitch_v2_1_61.init()
  cboe_edgxoptions_complex_pitch_v2_1_61.time.current = nil
  cboe_edgxoptions_complex_pitch_v2_1_61.conversation.current = nil
  cboe_edgxoptions_complex_pitch_v2_1_61.conversation.flows = {}
end

-- Dissector for Cboe EdgxOptions Complex Pitch 2.1.61
function omi_cboe_edgxoptions_complex_pitch_v2_1_61.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgxoptions_complex_pitch_v2_1_61.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_edgxoptions_complex_pitch_v2_1_61, buffer(), omi_cboe_edgxoptions_complex_pitch_v2_1_61.description, "("..buffer:len().." Bytes)")
  return cboe_edgxoptions_complex_pitch_v2_1_61.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe EdgxOptions Complex Pitch 2.1.61 (Udp)
local function omi_cboe_edgxoptions_complex_pitch_v2_1_61_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxoptions_complex_pitch_v2_1_61.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxoptions_complex_pitch_v2_1_61
  omi_cboe_edgxoptions_complex_pitch_v2_1_61.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe EdgxOptions Complex Pitch 2.1.61
omi_cboe_edgxoptions_complex_pitch_v2_1_61:register_heuristic("udp", omi_cboe_edgxoptions_complex_pitch_v2_1_61_udp_heuristic)

-- Register Cboe EdgxOptions Complex Pitch 2.1.61 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cboe_edgxoptions_complex_pitch_v2_1_61)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.1.61
--   Date: Wednesday, April 1, 2026
--   Specification: US_OPTIONS_COMPLEX_MULTICAST_PITCH_SPECIFICATION.pdf
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
