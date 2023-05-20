-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Options Complex Pitch 2.1.37 Protocol
local cboe_options_complex_pitch_v2_1_37 = Proto("Cboe.Options.Complex.Pitch.v2.1.37.Lua", "Cboe Options Complex Pitch 2.1.37")

-- Component Tables
local show = {}
local format = {}
local cboe_options_complex_pitch_v2_1_37_display = {}
local cboe_options_complex_pitch_v2_1_37_dissect = {}
local cboe_options_complex_pitch_v2_1_37_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Options Complex Pitch 2.1.37 Fields
cboe_options_complex_pitch_v2_1_37.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.options.complex.pitch.v2.1.37.addorderexpandedmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.options.complex.pitch.v2.1.37.addorderlongmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.options.complex.pitch.v2.1.37.addordershortmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.options.complex.pitch.v2.1.37.auctioncancelmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.options.complex.pitch.v2.1.37.auctionendoffset", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.auction_id = ProtoField.new("Auction Id", "cboe.options.complex.pitch.v2.1.37.auctionid", ftypes.UINT64)
cboe_options_complex_pitch_v2_1_37.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.options.complex.pitch.v2.1.37.auctionnotificationmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.options.complex.pitch.v2.1.37.auctiononlyprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_37.fields.auction_opening_type = ProtoField.new("Auction Opening Type", "cboe.options.complex.pitch.v2.1.37.auctionopeningtype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.options.complex.pitch.v2.1.37.auctionsummarymessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.options.complex.pitch.v2.1.37.auctiontrademessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.auction_type = ProtoField.new("Auction Type", "cboe.options.complex.pitch.v2.1.37.auctiontype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.options.complex.pitch.v2.1.37.auctionupdatemessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.options.complex.pitch.v2.1.37.buycontracts", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.canceled_quantity = ProtoField.new("Canceled Quantity", "cboe.options.complex.pitch.v2.1.37.canceledquantity", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.options.complex.pitch.v2.1.37.canceledquantityshort", ftypes.UINT16)
cboe_options_complex_pitch_v2_1_37.fields.client_id = ProtoField.new("Client Id", "cboe.options.complex.pitch.v2.1.37.clientid", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.complex_auction_reserved_bytes = ProtoField.new("Complex Auction Reserved Bytes", "cboe.options.complex.pitch.v2.1.37.complexauctionreservedbytes", ftypes.BYTES)
cboe_options_complex_pitch_v2_1_37.fields.complex_auction_type = ProtoField.new("Complex Auction Type", "cboe.options.complex.pitch.v2.1.37.complexauctiontype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.options.complex.pitch.v2.1.37.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.options.complex.pitch.v2.1.37.complexinstrumentid", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_id_8 = ProtoField.new("Complex Instrument Id 8", "cboe.options.complex.pitch.v2.1.37.complexinstrumentid8", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_leg = ProtoField.new("Complex Instrument Leg", "cboe.options.complex.pitch.v2.1.37.complexinstrumentleg", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.options.complex.pitch.v2.1.37.complexinstrumenttype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.options.complex.pitch.v2.1.37.complexinstrumentunderlying", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.complex_symbol_id = ProtoField.new("Complex Symbol Id", "cboe.options.complex.pitch.v2.1.37.complexsymbolid", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.options.complex.pitch.v2.1.37.compositemarketbidprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_37.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.options.complex.pitch.v2.1.37.compositemarketofferprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_37.fields.count = ProtoField.new("Count", "cboe.options.complex.pitch.v2.1.37.count", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_37.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.options.complex.pitch.v2.1.37.customerindicator", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.options.complex.pitch.v2.1.37.deleteordermessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.options.complex.pitch.v2.1.37.endofsessionmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.options.complex.pitch.v2.1.37.executedquantity", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.execution_id = ProtoField.new("Execution Id", "cboe.options.complex.pitch.v2.1.37.executionid", ftypes.UINT64)
cboe_options_complex_pitch_v2_1_37.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.options.complex.pitch.v2.1.37.feedsymbol", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.options.complex.pitch.v2.1.37.gthtradingstatus", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.options.complex.pitch.v2.1.37.indicativeprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_37.fields.leg_count = ProtoField.new("Leg Count", "cboe.options.complex.pitch.v2.1.37.legcount", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_37.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.options.complex.pitch.v2.1.37.legratio", ftypes.INT32)
cboe_options_complex_pitch_v2_1_37.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.options.complex.pitch.v2.1.37.legsecuritytype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.options.complex.pitch.v2.1.37.legsymbol", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.length = ProtoField.new("Length", "cboe.options.complex.pitch.v2.1.37.length", ftypes.UINT16)
cboe_options_complex_pitch_v2_1_37.fields.message = ProtoField.new("Message", "cboe.options.complex.pitch.v2.1.37.message", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.message_header = ProtoField.new("Message Header", "cboe.options.complex.pitch.v2.1.37.messageheader", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.message_length = ProtoField.new("Message Length", "cboe.options.complex.pitch.v2.1.37.messagelength", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_37.fields.message_type = ProtoField.new("Message Type", "cboe.options.complex.pitch.v2.1.37.messagetype", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_37.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.options.complex.pitch.v2.1.37.modifyorderlongmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.options.complex.pitch.v2.1.37.modifyordershortmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.options.complex.pitch.v2.1.37.openingcondition", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.options.complex.pitch.v2.1.37.orderexecutedatpricesizemessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.options.complex.pitch.v2.1.37.orderexecutedmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.order_id = ProtoField.new("Order Id", "cboe.options.complex.pitch.v2.1.37.orderid", ftypes.UINT64)
cboe_options_complex_pitch_v2_1_37.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.options.complex.pitch.v2.1.37.osisymbol", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.packet = ProtoField.new("Packet", "cboe.options.complex.pitch.v2.1.37.packet", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.packet_header = ProtoField.new("Packet Header", "cboe.options.complex.pitch.v2.1.37.packetheader", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.padding = ProtoField.new("Padding", "cboe.options.complex.pitch.v2.1.37.padding", ftypes.BYTES)
cboe_options_complex_pitch_v2_1_37.fields.participant_id = ProtoField.new("Participant Id", "cboe.options.complex.pitch.v2.1.37.participantid", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.payload = ProtoField.new("Payload", "cboe.options.complex.pitch.v2.1.37.payload", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.price = ProtoField.new("Price", "cboe.options.complex.pitch.v2.1.37.price", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_37.fields.price_short = ProtoField.new("Price Short", "cboe.options.complex.pitch.v2.1.37.priceshort", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_37.fields.quantity = ProtoField.new("Quantity", "cboe.options.complex.pitch.v2.1.37.quantity", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.options.complex.pitch.v2.1.37.quantityshort", ftypes.UINT16)
cboe_options_complex_pitch_v2_1_37.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.options.complex.pitch.v2.1.37.reducesizelongmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.options.complex.pitch.v2.1.37.reducesizeshortmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.reference_price = ProtoField.new("Reference Price", "cboe.options.complex.pitch.v2.1.37.referenceprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_37.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.options.complex.pitch.v2.1.37.remainingquantity", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.reserved = ProtoField.new("Reserved", "cboe.options.complex.pitch.v2.1.37.reserved", ftypes.BYTES)
cboe_options_complex_pitch_v2_1_37.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.options.complex.pitch.v2.1.37.sellcontracts", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.sequence = ProtoField.new("Sequence", "cboe.options.complex.pitch.v2.1.37.sequence", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.options.complex.pitch.v2.1.37.sideindicator", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.options.complex.pitch.v2.1.37.symbolcondition", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.options.complex.pitch.v2.1.37.symbolmappingmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.time = ProtoField.new("Time", "cboe.options.complex.pitch.v2.1.37.time", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.time_message = ProtoField.new("Time Message", "cboe.options.complex.pitch.v2.1.37.timemessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.time_offset = ProtoField.new("Time Offset", "cboe.options.complex.pitch.v2.1.37.timeoffset", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_37.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.options.complex.pitch.v2.1.37.tradecondition", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.options.complex.pitch.v2.1.37.tradelongmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.options.complex.pitch.v2.1.37.tradeshortmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.trading_status = ProtoField.new("Trading Status", "cboe.options.complex.pitch.v2.1.37.tradingstatus", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.options.complex.pitch.v2.1.37.tradingstatusmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.transaction_begin = ProtoField.new("Transaction Begin", "cboe.options.complex.pitch.v2.1.37.transactionbegin", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.options.complex.pitch.v2.1.37.transactionendmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.underlying = ProtoField.new("Underlying", "cboe.options.complex.pitch.v2.1.37.underlying", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.unit = ProtoField.new("Unit", "cboe.options.complex.pitch.v2.1.37.unit", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_37.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.options.complex.pitch.v2.1.37.unitclearmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_37.fields.unused = ProtoField.new("Unused", "cboe.options.complex.pitch.v2.1.37.unused", ftypes.BYTES)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Options Complex Pitch 2.1.37 Element Dissection Options
show.add_order_expanded_message = true
show.add_order_long_message = true
show.add_order_short_message = true
show.auction_cancel_message = true
show.auction_notification_message = true
show.auction_summary_message = true
show.auction_trade_message = true
show.auction_update_message = true
show.complex_instrument_definition_expanded_message = true
show.complex_instrument_leg = true
show.complex_instrument_type = true
show.delete_order_message = true
show.end_of_session_message = true
show.message = true
show.message_header = true
show.modify_order_long_message = true
show.modify_order_short_message = true
show.order_executed_at_price_size_message = true
show.order_executed_message = true
show.packet = true
show.packet_header = true
show.reduce_size_long_message = true
show.reduce_size_short_message = true
show.symbol_mapping_message = true
show.time_message = true
show.trade_long_message = true
show.trade_short_message = true
show.trading_status_message = true
show.transaction_begin = true
show.transaction_end_message = true
show.unit_clear_message = true
show.payload = false

-- Register Cboe Options Complex Pitch 2.1.37 Show Options
cboe_options_complex_pitch_v2_1_37.prefs.show_add_order_expanded_message = Pref.bool("Show Add Order Expanded Message", show.add_order_expanded_message, "Parse and add Add Order Expanded Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_definition_expanded_message = Pref.bool("Show Complex Instrument Definition Expanded Message", show.complex_instrument_definition_expanded_message, "Parse and add Complex Instrument Definition Expanded Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_leg = Pref.bool("Show Complex Instrument Leg", show.complex_instrument_leg, "Parse and add Complex Instrument Leg to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_type = Pref.bool("Show Complex Instrument Type", show.complex_instrument_type, "Parse and add Complex Instrument Type to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_symbol_mapping_message = Pref.bool("Show Symbol Mapping Message", show.symbol_mapping_message, "Parse and add Symbol Mapping Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_transaction_begin = Pref.bool("Show Transaction Begin", show.transaction_begin, "Parse and add Transaction Begin to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_transaction_end_message = Pref.bool("Show Transaction End Message", show.transaction_end_message, "Parse and add Transaction End Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_options_complex_pitch_v2_1_37.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_options_complex_pitch_v2_1_37.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_expanded_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_add_order_expanded_message then
    show.add_order_expanded_message = cboe_options_complex_pitch_v2_1_37.prefs.show_add_order_expanded_message
    changed = true
  end
  if show.add_order_long_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_add_order_long_message then
    show.add_order_long_message = cboe_options_complex_pitch_v2_1_37.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_add_order_short_message then
    show.add_order_short_message = cboe_options_complex_pitch_v2_1_37.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_cancel_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_auction_cancel_message then
    show.auction_cancel_message = cboe_options_complex_pitch_v2_1_37.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_notification_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_auction_notification_message then
    show.auction_notification_message = cboe_options_complex_pitch_v2_1_37.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_summary_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_auction_summary_message then
    show.auction_summary_message = cboe_options_complex_pitch_v2_1_37.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_trade_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_auction_trade_message then
    show.auction_trade_message = cboe_options_complex_pitch_v2_1_37.prefs.show_auction_trade_message
    changed = true
  end
  if show.auction_update_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_auction_update_message then
    show.auction_update_message = cboe_options_complex_pitch_v2_1_37.prefs.show_auction_update_message
    changed = true
  end
  if show.complex_instrument_definition_expanded_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_definition_expanded_message then
    show.complex_instrument_definition_expanded_message = cboe_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_definition_expanded_message
    changed = true
  end
  if show.complex_instrument_leg ~= cboe_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_leg then
    show.complex_instrument_leg = cboe_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_leg
    changed = true
  end
  if show.complex_instrument_type ~= cboe_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_type then
    show.complex_instrument_type = cboe_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_type
    changed = true
  end
  if show.delete_order_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_delete_order_message then
    show.delete_order_message = cboe_options_complex_pitch_v2_1_37.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_session_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_end_of_session_message then
    show.end_of_session_message = cboe_options_complex_pitch_v2_1_37.prefs.show_end_of_session_message
    changed = true
  end
  if show.message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_message then
    show.message = cboe_options_complex_pitch_v2_1_37.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_options_complex_pitch_v2_1_37.prefs.show_message_header then
    show.message_header = cboe_options_complex_pitch_v2_1_37.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_modify_order_long_message then
    show.modify_order_long_message = cboe_options_complex_pitch_v2_1_37.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_modify_order_short_message then
    show.modify_order_short_message = cboe_options_complex_pitch_v2_1_37.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = cboe_options_complex_pitch_v2_1_37.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_order_executed_message then
    show.order_executed_message = cboe_options_complex_pitch_v2_1_37.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= cboe_options_complex_pitch_v2_1_37.prefs.show_packet then
    show.packet = cboe_options_complex_pitch_v2_1_37.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_options_complex_pitch_v2_1_37.prefs.show_packet_header then
    show.packet_header = cboe_options_complex_pitch_v2_1_37.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = cboe_options_complex_pitch_v2_1_37.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = cboe_options_complex_pitch_v2_1_37.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.symbol_mapping_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_symbol_mapping_message then
    show.symbol_mapping_message = cboe_options_complex_pitch_v2_1_37.prefs.show_symbol_mapping_message
    changed = true
  end
  if show.time_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_time_message then
    show.time_message = cboe_options_complex_pitch_v2_1_37.prefs.show_time_message
    changed = true
  end
  if show.trade_long_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_trade_long_message then
    show.trade_long_message = cboe_options_complex_pitch_v2_1_37.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_trade_short_message then
    show.trade_short_message = cboe_options_complex_pitch_v2_1_37.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_trading_status_message then
    show.trading_status_message = cboe_options_complex_pitch_v2_1_37.prefs.show_trading_status_message
    changed = true
  end
  if show.transaction_begin ~= cboe_options_complex_pitch_v2_1_37.prefs.show_transaction_begin then
    show.transaction_begin = cboe_options_complex_pitch_v2_1_37.prefs.show_transaction_begin
    changed = true
  end
  if show.transaction_end_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_transaction_end_message then
    show.transaction_end_message = cboe_options_complex_pitch_v2_1_37.prefs.show_transaction_end_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_options_complex_pitch_v2_1_37.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_options_complex_pitch_v2_1_37.prefs.show_unit_clear_message
    changed = true
  end
  if show.payload ~= cboe_options_complex_pitch_v2_1_37.prefs.show_payload then
    show.payload = cboe_options_complex_pitch_v2_1_37.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Options Complex Pitch 2.1.37
-----------------------------------------------------------------------

-- Size: Time Offset
cboe_options_complex_pitch_v2_1_37_size_of.time_offset = 4

-- Display: Time Offset
cboe_options_complex_pitch_v2_1_37_display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_options_complex_pitch_v2_1_37_dissect.time_offset = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.time_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Session Message
cboe_options_complex_pitch_v2_1_37_size_of.end_of_session_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  return index
end

-- Display: End Of Session Message
cboe_options_complex_pitch_v2_1_37_display.end_of_session_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_options_complex_pitch_v2_1_37_dissect.end_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_options_complex_pitch_v2_1_37_dissect.end_of_session_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_session_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.end_of_session_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.end_of_session_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.end_of_session_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.end_of_session_message_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
cboe_options_complex_pitch_v2_1_37_size_of.quantity = 4

-- Display: Quantity
cboe_options_complex_pitch_v2_1_37_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_options_complex_pitch_v2_1_37_dissect.quantity = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Price
cboe_options_complex_pitch_v2_1_37_size_of.price = 8

-- Display: Price
cboe_options_complex_pitch_v2_1_37_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Price
cboe_options_complex_pitch_v2_1_37_dissect.price = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = cboe_options_complex_pitch_v2_1_37_display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Auction Opening Type
cboe_options_complex_pitch_v2_1_37_size_of.auction_opening_type = 1

-- Display: Auction Opening Type
cboe_options_complex_pitch_v2_1_37_display.auction_opening_type = function(value)
  if value == "G" then
    return "Auction Opening Type: Gth (G)"
  end
  if value == "O" then
    return "Auction Opening Type: Rth (O)"
  end
  if value == "H" then
    return "Auction Opening Type: Halt Reopening (H)"
  end

  return "Auction Opening Type: Unknown("..value..")"
end

-- Dissect: Auction Opening Type
cboe_options_complex_pitch_v2_1_37_dissect.auction_opening_type = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_opening_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.auction_opening_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_opening_type, range, value, display)

  return offset + length, value
end

-- Size: Complex Instrument Id 8
cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id_8 = 8

-- Display: Complex Instrument Id 8
cboe_options_complex_pitch_v2_1_37_display.complex_instrument_id_8 = function(value)
  return "Complex Instrument Id 8: "..value
end

-- Dissect: Complex Instrument Id 8
cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id_8 = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.complex_instrument_id_8(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_id_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Summary Message
cboe_options_complex_pitch_v2_1_37_size_of.auction_summary_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id_8

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.auction_opening_type

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity

  return index
end

-- Display: Auction Summary Message
cboe_options_complex_pitch_v2_1_37_display.auction_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Complex Instrument Id 8: 8 Byte Ascii String
  index, complex_instrument_id_8 = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id_8(buffer, index, packet, parent)

  -- Auction Opening Type: 1 Byte Ascii String Enum with 3 values
  index, auction_opening_type = cboe_options_complex_pitch_v2_1_37_dissect.auction_opening_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_options_complex_pitch_v2_1_37_dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_options_complex_pitch_v2_1_37_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_summary_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.auction_summary_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_summary_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.auction_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Composite Market Offer Price
cboe_options_complex_pitch_v2_1_37_size_of.composite_market_offer_price = 8

-- Display: Composite Market Offer Price
cboe_options_complex_pitch_v2_1_37_display.composite_market_offer_price = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
translate.composite_market_offer_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Composite Market Offer Price
cboe_options_complex_pitch_v2_1_37_dissect.composite_market_offer_price = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.composite_market_offer_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.composite_market_offer_price(raw)
  local display = cboe_options_complex_pitch_v2_1_37_display.composite_market_offer_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Composite Market Bid Price
cboe_options_complex_pitch_v2_1_37_size_of.composite_market_bid_price = 8

-- Display: Composite Market Bid Price
cboe_options_complex_pitch_v2_1_37_display.composite_market_bid_price = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
translate.composite_market_bid_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Composite Market Bid Price
cboe_options_complex_pitch_v2_1_37_dissect.composite_market_bid_price = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.composite_market_bid_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.composite_market_bid_price(raw)
  local display = cboe_options_complex_pitch_v2_1_37_display.composite_market_bid_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Opening Condition
cboe_options_complex_pitch_v2_1_37_size_of.opening_condition = 1

-- Display: Opening Condition
cboe_options_complex_pitch_v2_1_37_display.opening_condition = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_options_complex_pitch_v2_1_37_dissect.opening_condition = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.opening_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.opening_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Size: Auction Only Price
cboe_options_complex_pitch_v2_1_37_size_of.auction_only_price = 8

-- Display: Auction Only Price
cboe_options_complex_pitch_v2_1_37_display.auction_only_price = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
translate.auction_only_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Auction Only Price
cboe_options_complex_pitch_v2_1_37_dissect.auction_only_price = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_only_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.auction_only_price(raw)
  local display = cboe_options_complex_pitch_v2_1_37_display.auction_only_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Size: Indicative Price
cboe_options_complex_pitch_v2_1_37_size_of.indicative_price = 8

-- Display: Indicative Price
cboe_options_complex_pitch_v2_1_37_display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
translate.indicative_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Indicative Price
cboe_options_complex_pitch_v2_1_37_dissect.indicative_price = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.indicative_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.indicative_price(raw)
  local display = cboe_options_complex_pitch_v2_1_37_display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Size: Sell Contracts
cboe_options_complex_pitch_v2_1_37_size_of.sell_contracts = 4

-- Display: Sell Contracts
cboe_options_complex_pitch_v2_1_37_display.sell_contracts = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_options_complex_pitch_v2_1_37_dissect.sell_contracts = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.sell_contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.sell_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Size: Buy Contracts
cboe_options_complex_pitch_v2_1_37_size_of.buy_contracts = 4

-- Display: Buy Contracts
cboe_options_complex_pitch_v2_1_37_display.buy_contracts = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_options_complex_pitch_v2_1_37_dissect.buy_contracts = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.buy_contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.buy_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
cboe_options_complex_pitch_v2_1_37_size_of.reference_price = 8

-- Display: Reference Price
cboe_options_complex_pitch_v2_1_37_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
translate.reference_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Reference Price
cboe_options_complex_pitch_v2_1_37_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.reference_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.reference_price(raw)
  local display = cboe_options_complex_pitch_v2_1_37_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Update Message
cboe_options_complex_pitch_v2_1_37_size_of.auction_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id_8

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.auction_opening_type

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.reference_price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.buy_contracts

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.sell_contracts

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.indicative_price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.auction_only_price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.opening_condition

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.composite_market_bid_price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.composite_market_offer_price

  return index
end

-- Display: Auction Update Message
cboe_options_complex_pitch_v2_1_37_display.auction_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Complex Instrument Id 8: 8 Byte Ascii String
  index, complex_instrument_id_8 = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id_8(buffer, index, packet, parent)

  -- Auction Opening Type: 1 Byte Ascii String Enum with 3 values
  index, auction_opening_type = cboe_options_complex_pitch_v2_1_37_dissect.auction_opening_type(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = cboe_options_complex_pitch_v2_1_37_dissect.reference_price(buffer, index, packet, parent)

  -- Buy Contracts: 4 Byte Unsigned Fixed Width Integer
  index, buy_contracts = cboe_options_complex_pitch_v2_1_37_dissect.buy_contracts(buffer, index, packet, parent)

  -- Sell Contracts: 4 Byte Unsigned Fixed Width Integer
  index, sell_contracts = cboe_options_complex_pitch_v2_1_37_dissect.sell_contracts(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Signed Fixed Width Integer
  index, indicative_price = cboe_options_complex_pitch_v2_1_37_dissect.indicative_price(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Signed Fixed Width Integer
  index, auction_only_price = cboe_options_complex_pitch_v2_1_37_dissect.auction_only_price(buffer, index, packet, parent)

  -- Opening Condition: 1 Byte Ascii String
  index, opening_condition = cboe_options_complex_pitch_v2_1_37_dissect.opening_condition(buffer, index, packet, parent)

  -- Composite Market Bid Price: 8 Byte Signed Fixed Width Integer
  index, composite_market_bid_price = cboe_options_complex_pitch_v2_1_37_dissect.composite_market_bid_price(buffer, index, packet, parent)

  -- Composite Market Offer Price: 8 Byte Signed Fixed Width Integer
  index, composite_market_offer_price = cboe_options_complex_pitch_v2_1_37_dissect.composite_market_offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_update_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.auction_update_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_update_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.auction_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Padding
cboe_options_complex_pitch_v2_1_37_size_of.padding = 1

-- Display: Padding
cboe_options_complex_pitch_v2_1_37_display.padding = function(value)
  return "Padding: "..value
end

-- Dissect: Padding
cboe_options_complex_pitch_v2_1_37_dissect.padding = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.padding
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_options_complex_pitch_v2_1_37_display.padding(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.padding, range, value, display)

  return offset + length, value
end

-- Size: Gth Trading Status
cboe_options_complex_pitch_v2_1_37_size_of.gth_trading_status = 1

-- Display: Gth Trading Status
cboe_options_complex_pitch_v2_1_37_display.gth_trading_status = function(value)
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
cboe_options_complex_pitch_v2_1_37_dissect.gth_trading_status = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.gth_trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.gth_trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Reserved
cboe_options_complex_pitch_v2_1_37_size_of.reserved = 1

-- Display: Reserved
cboe_options_complex_pitch_v2_1_37_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_options_complex_pitch_v2_1_37_dissect.reserved = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.reserved
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_options_complex_pitch_v2_1_37_display.reserved(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
cboe_options_complex_pitch_v2_1_37_size_of.trading_status = 1

-- Display: Trading Status
cboe_options_complex_pitch_v2_1_37_display.trading_status = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
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
cboe_options_complex_pitch_v2_1_37_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Unused
cboe_options_complex_pitch_v2_1_37_size_of.unused = 2

-- Display: Unused
cboe_options_complex_pitch_v2_1_37_display.unused = function(value)
  return "Unused: "..value
end

-- Dissect: Unused
cboe_options_complex_pitch_v2_1_37_dissect.unused = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.unused
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_options_complex_pitch_v2_1_37_display.unused(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.unused, range, value, display)

  return offset + length, value
end

-- Size: Complex Symbol Id
cboe_options_complex_pitch_v2_1_37_size_of.complex_symbol_id = 6

-- Display: Complex Symbol Id
cboe_options_complex_pitch_v2_1_37_display.complex_symbol_id = function(value)
  return "Complex Symbol Id: "..value
end

-- Dissect: Complex Symbol Id
cboe_options_complex_pitch_v2_1_37_dissect.complex_symbol_id = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.complex_symbol_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.complex_symbol_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.complex_symbol_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
cboe_options_complex_pitch_v2_1_37_size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_symbol_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.unused

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.trading_status

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.reserved

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.gth_trading_status

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.padding

  return index
end

-- Display: Trading Status Message
cboe_options_complex_pitch_v2_1_37_display.trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_options_complex_pitch_v2_1_37_dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Complex Symbol Id: 6 Byte Ascii String
  index, complex_symbol_id = cboe_options_complex_pitch_v2_1_37_dissect.complex_symbol_id(buffer, index, packet, parent)

  -- Unused: 2 Byte
  index, unused = cboe_options_complex_pitch_v2_1_37_dissect.unused(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 3 values
  index, trading_status = cboe_options_complex_pitch_v2_1_37_dissect.trading_status(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = cboe_options_complex_pitch_v2_1_37_dissect.reserved(buffer, index, packet, parent)

  -- Gth Trading Status: 1 Byte Ascii String Enum with 3 values
  index, gth_trading_status = cboe_options_complex_pitch_v2_1_37_dissect.gth_trading_status(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_options_complex_pitch_v2_1_37_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_options_complex_pitch_v2_1_37_dissect.trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_status_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.trading_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.trading_status_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.trading_status_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.trading_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Id
cboe_options_complex_pitch_v2_1_37_size_of.execution_id = 8

-- Display: Execution Id
cboe_options_complex_pitch_v2_1_37_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_options_complex_pitch_v2_1_37_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_options_complex_pitch_v2_1_37_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
cboe_options_complex_pitch_v2_1_37_size_of.auction_id = 8

-- Display: Auction Id
cboe_options_complex_pitch_v2_1_37_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_options_complex_pitch_v2_1_37_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_options_complex_pitch_v2_1_37_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Trade Message
cboe_options_complex_pitch_v2_1_37_size_of.auction_trade_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.auction_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.execution_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity

  return index
end

-- Display: Auction Trade Message
cboe_options_complex_pitch_v2_1_37_display.auction_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_options_complex_pitch_v2_1_37_dissect.auction_id(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_complex_pitch_v2_1_37_dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_options_complex_pitch_v2_1_37_dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_options_complex_pitch_v2_1_37_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_trade_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.auction_trade_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_trade_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.auction_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Auction Cancel Message
cboe_options_complex_pitch_v2_1_37_size_of.auction_cancel_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.auction_id

  return index
end

-- Display: Auction Cancel Message
cboe_options_complex_pitch_v2_1_37_display.auction_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_options_complex_pitch_v2_1_37_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_cancel_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.auction_cancel_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_cancel_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.auction_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Client Id
cboe_options_complex_pitch_v2_1_37_size_of.client_id = 4

-- Display: Client Id
cboe_options_complex_pitch_v2_1_37_display.client_id = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_options_complex_pitch_v2_1_37_dissect.client_id = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.client_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.client_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.client_id, range, value, display)

  return offset + length, value
end

-- Size: Auction End Offset
cboe_options_complex_pitch_v2_1_37_size_of.auction_end_offset = 4

-- Display: Auction End Offset
cboe_options_complex_pitch_v2_1_37_display.auction_end_offset = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_options_complex_pitch_v2_1_37_dissect.auction_end_offset = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_end_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.auction_end_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
cboe_options_complex_pitch_v2_1_37_size_of.participant_id = 4

-- Display: Participant Id
cboe_options_complex_pitch_v2_1_37_display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_options_complex_pitch_v2_1_37_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Customer Indicator
cboe_options_complex_pitch_v2_1_37_size_of.customer_indicator = 1

-- Display: Customer Indicator
cboe_options_complex_pitch_v2_1_37_display.customer_indicator = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_options_complex_pitch_v2_1_37_dissect.customer_indicator = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.customer_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Size: Side Indicator
cboe_options_complex_pitch_v2_1_37_size_of.side_indicator = 1

-- Display: Side Indicator
cboe_options_complex_pitch_v2_1_37_display.side_indicator = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_options_complex_pitch_v2_1_37_dissect.side_indicator = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.side_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.side_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
cboe_options_complex_pitch_v2_1_37_size_of.auction_type = 1

-- Display: Auction Type
cboe_options_complex_pitch_v2_1_37_display.auction_type = function(value)
  if value == "C" then
    return "Auction Type: Complex Auction (C)"
  end
  if value == "S" then
    return "Auction Type: Complex Solicitation Auction (S)"
  end
  if value == "B" then
    return "Auction Type: Complex Aim (B)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_options_complex_pitch_v2_1_37_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Complex Instrument Id
cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id = 6

-- Display: Complex Instrument Id
cboe_options_complex_pitch_v2_1_37_display.complex_instrument_id = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.complex_instrument_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Notification Message
cboe_options_complex_pitch_v2_1_37_size_of.auction_notification_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.auction_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.auction_type

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.side_indicator

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.customer_indicator

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.participant_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.auction_end_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.client_id

  return index
end

-- Display: Auction Notification Message
cboe_options_complex_pitch_v2_1_37_display.auction_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_options_complex_pitch_v2_1_37_dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 3 values
  index, auction_type = cboe_options_complex_pitch_v2_1_37_dissect.auction_type(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_complex_pitch_v2_1_37_dissect.side_indicator(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_options_complex_pitch_v2_1_37_dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_options_complex_pitch_v2_1_37_dissect.quantity(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_options_complex_pitch_v2_1_37_dissect.customer_indicator(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_options_complex_pitch_v2_1_37_dissect.participant_id(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = cboe_options_complex_pitch_v2_1_37_dissect.auction_end_offset(buffer, index, packet, parent)

  -- Client Id: 4 Byte Ascii String
  index, client_id = cboe_options_complex_pitch_v2_1_37_dissect.client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_options_complex_pitch_v2_1_37_dissect.auction_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_notification_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.auction_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.auction_notification_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.auction_notification_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.auction_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Condition
cboe_options_complex_pitch_v2_1_37_size_of.trade_condition = 1

-- Display: Trade Condition
cboe_options_complex_pitch_v2_1_37_display.trade_condition = function(value)
  if value == "f" then
    return "Trade Condition: Complex To Complex Electronic Trade (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Auction Trade (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex (h)"
  end
  if value == "j" then
    return "Trade Condition: Complex Electronic Trade Against Single (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex With Stock Options Auction Trade (k)"
  end
  if value == "m" then
    return "Trade Condition: Complex Floor Trade Against Single Leg (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex With Stock Electronic Trade (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex With Stock Cross (o)"
  end
  if value == "l" then
    return "Trade Condition: Electronic Trade (l)"
  end
  if value == "p" then
    return "Trade Condition: Complex With Stock Floor Trade (p)"
  end
  if value == "t" then
    return "Trade Condition: Complex Combo Order Floor Trade (t)"
  end
  if value == "v" then
    return "Trade Condition: Extended Hours Trade (v)"
  end
  if value == "I" then
    return "Trade Condition: Electronic Trade (I)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_options_complex_pitch_v2_1_37_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Price Short
cboe_options_complex_pitch_v2_1_37_size_of.price_short = 2

-- Display: Price Short
cboe_options_complex_pitch_v2_1_37_display.price_short = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
translate.price_short = function(raw)
  return raw*100
end

-- Dissect: Price Short
cboe_options_complex_pitch_v2_1_37_dissect.price_short = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.price_short
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.price_short(raw)
  local display = cboe_options_complex_pitch_v2_1_37_display.price_short(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.price_short, range, value, display)

  return offset + length, value
end

-- Size: Quantity Short
cboe_options_complex_pitch_v2_1_37_size_of.quantity_short = 2

-- Display: Quantity Short
cboe_options_complex_pitch_v2_1_37_display.quantity_short = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_options_complex_pitch_v2_1_37_dissect.quantity_short = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Size: Order Id
cboe_options_complex_pitch_v2_1_37_size_of.order_id = 8

-- Display: Order Id
cboe_options_complex_pitch_v2_1_37_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_options_complex_pitch_v2_1_37_dissect.order_id = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_options_complex_pitch_v2_1_37_display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Short Message
cboe_options_complex_pitch_v2_1_37_size_of.trade_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.side_indicator

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity_short

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price_short

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.execution_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.trade_condition

  return index
end

-- Display: Trade Short Message
cboe_options_complex_pitch_v2_1_37_display.trade_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_options_complex_pitch_v2_1_37_dissect.trade_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_complex_pitch_v2_1_37_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_options_complex_pitch_v2_1_37_dissect.quantity_short(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Price Short: 2 Byte Signed Fixed Width Integer
  index, price_short = cboe_options_complex_pitch_v2_1_37_dissect.price_short(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_complex_pitch_v2_1_37_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 14 values
  index, trade_condition = cboe_options_complex_pitch_v2_1_37_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_options_complex_pitch_v2_1_37_dissect.trade_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_short_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.trade_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.trade_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.trade_short_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.trade_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Long Message
cboe_options_complex_pitch_v2_1_37_size_of.trade_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.side_indicator

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.execution_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.trade_condition

  return index
end

-- Display: Trade Long Message
cboe_options_complex_pitch_v2_1_37_display.trade_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_options_complex_pitch_v2_1_37_dissect.trade_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_complex_pitch_v2_1_37_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_options_complex_pitch_v2_1_37_dissect.quantity(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_options_complex_pitch_v2_1_37_dissect.price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_complex_pitch_v2_1_37_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 14 values
  index, trade_condition = cboe_options_complex_pitch_v2_1_37_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_options_complex_pitch_v2_1_37_dissect.trade_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_long_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.trade_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.trade_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.trade_long_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.trade_long_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Message
cboe_options_complex_pitch_v2_1_37_size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  return index
end

-- Display: Delete Order Message
cboe_options_complex_pitch_v2_1_37_display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_options_complex_pitch_v2_1_37_dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_options_complex_pitch_v2_1_37_dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.delete_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.delete_order_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.delete_order_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Short Message
cboe_options_complex_pitch_v2_1_37_size_of.modify_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity_short

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price_short

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.padding

  return index
end

-- Display: Modify Order Short Message
cboe_options_complex_pitch_v2_1_37_display.modify_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_options_complex_pitch_v2_1_37_dissect.modify_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_options_complex_pitch_v2_1_37_dissect.quantity_short(buffer, index, packet, parent)

  -- Price Short: 2 Byte Signed Fixed Width Integer
  index, price_short = cboe_options_complex_pitch_v2_1_37_dissect.price_short(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_options_complex_pitch_v2_1_37_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_options_complex_pitch_v2_1_37_dissect.modify_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_short_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.modify_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.modify_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.modify_order_short_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.modify_order_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Long Message
cboe_options_complex_pitch_v2_1_37_size_of.modify_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.padding

  return index
end

-- Display: Modify Order Long Message
cboe_options_complex_pitch_v2_1_37_display.modify_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_options_complex_pitch_v2_1_37_dissect.modify_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_options_complex_pitch_v2_1_37_dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_options_complex_pitch_v2_1_37_dissect.price(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_options_complex_pitch_v2_1_37_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_options_complex_pitch_v2_1_37_dissect.modify_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_long_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.modify_order_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.modify_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.modify_order_long_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.modify_order_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Quantity Short
cboe_options_complex_pitch_v2_1_37_size_of.canceled_quantity_short = 2

-- Display: Canceled Quantity Short
cboe_options_complex_pitch_v2_1_37_display.canceled_quantity_short = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_options_complex_pitch_v2_1_37_dissect.canceled_quantity_short = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.canceled_quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.canceled_quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Short Message
cboe_options_complex_pitch_v2_1_37_size_of.reduce_size_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.canceled_quantity_short

  return index
end

-- Display: Reduce Size Short Message
cboe_options_complex_pitch_v2_1_37_display.reduce_size_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_options_complex_pitch_v2_1_37_dissect.reduce_size_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, canceled_quantity_short = cboe_options_complex_pitch_v2_1_37_dissect.canceled_quantity_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_options_complex_pitch_v2_1_37_dissect.reduce_size_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_short_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.reduce_size_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.reduce_size_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.reduce_size_short_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.reduce_size_short_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Quantity
cboe_options_complex_pitch_v2_1_37_size_of.canceled_quantity = 4

-- Display: Canceled Quantity
cboe_options_complex_pitch_v2_1_37_display.canceled_quantity = function(value)
  return "Canceled Quantity: "..value
end

-- Dissect: Canceled Quantity
cboe_options_complex_pitch_v2_1_37_dissect.canceled_quantity = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.canceled_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.canceled_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.canceled_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Long Message
cboe_options_complex_pitch_v2_1_37_size_of.reduce_size_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.canceled_quantity

  return index
end

-- Display: Reduce Size Long Message
cboe_options_complex_pitch_v2_1_37_display.reduce_size_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_options_complex_pitch_v2_1_37_dissect.reduce_size_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_quantity = cboe_options_complex_pitch_v2_1_37_dissect.canceled_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_options_complex_pitch_v2_1_37_dissect.reduce_size_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_long_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.reduce_size_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.reduce_size_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.reduce_size_long_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.reduce_size_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Remaining Quantity
cboe_options_complex_pitch_v2_1_37_size_of.remaining_quantity = 4

-- Display: Remaining Quantity
cboe_options_complex_pitch_v2_1_37_display.remaining_quantity = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_options_complex_pitch_v2_1_37_dissect.remaining_quantity = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.remaining_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.remaining_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Size: Executed Quantity
cboe_options_complex_pitch_v2_1_37_size_of.executed_quantity = 4

-- Display: Executed Quantity
cboe_options_complex_pitch_v2_1_37_display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_options_complex_pitch_v2_1_37_dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed At Price Size Message
cboe_options_complex_pitch_v2_1_37_size_of.order_executed_at_price_size_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.executed_quantity

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.remaining_quantity

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.execution_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.trade_condition

  return index
end

-- Display: Order Executed At Price Size Message
cboe_options_complex_pitch_v2_1_37_display.order_executed_at_price_size_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_options_complex_pitch_v2_1_37_dissect.order_executed_at_price_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_options_complex_pitch_v2_1_37_dissect.executed_quantity(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = cboe_options_complex_pitch_v2_1_37_dissect.remaining_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_complex_pitch_v2_1_37_dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_options_complex_pitch_v2_1_37_dissect.price(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 14 values
  index, trade_condition = cboe_options_complex_pitch_v2_1_37_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_options_complex_pitch_v2_1_37_dissect.order_executed_at_price_size_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_at_price_size_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.order_executed_at_price_size_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.order_executed_at_price_size_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.order_executed_at_price_size_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Executed Message
cboe_options_complex_pitch_v2_1_37_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.executed_quantity

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.execution_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.trade_condition

  return index
end

-- Display: Order Executed Message
cboe_options_complex_pitch_v2_1_37_display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_options_complex_pitch_v2_1_37_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_options_complex_pitch_v2_1_37_dissect.executed_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_complex_pitch_v2_1_37_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 14 values
  index, trade_condition = cboe_options_complex_pitch_v2_1_37_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_options_complex_pitch_v2_1_37_dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.order_executed_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.order_executed_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Expanded Message
cboe_options_complex_pitch_v2_1_37_size_of.add_order_expanded_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.side_indicator

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id_8

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.reserved

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.participant_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.customer_indicator

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.client_id

  return index
end

-- Display: Add Order Expanded Message
cboe_options_complex_pitch_v2_1_37_display.add_order_expanded_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_options_complex_pitch_v2_1_37_dissect.add_order_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_complex_pitch_v2_1_37_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_options_complex_pitch_v2_1_37_dissect.quantity(buffer, index, packet, parent)

  -- Complex Instrument Id 8: 8 Byte Ascii String
  index, complex_instrument_id_8 = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id_8(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_options_complex_pitch_v2_1_37_dissect.price(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = cboe_options_complex_pitch_v2_1_37_dissect.reserved(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_options_complex_pitch_v2_1_37_dissect.participant_id(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_options_complex_pitch_v2_1_37_dissect.customer_indicator(buffer, index, packet, parent)

  -- Client Id: 4 Byte Ascii String
  index, client_id = cboe_options_complex_pitch_v2_1_37_dissect.client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_options_complex_pitch_v2_1_37_dissect.add_order_expanded_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_expanded_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.add_order_expanded_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.add_order_expanded_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.add_order_expanded_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.add_order_expanded_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Short Message
cboe_options_complex_pitch_v2_1_37_size_of.add_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.side_indicator

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity_short

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price_short

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.padding

  return index
end

-- Display: Add Order Short Message
cboe_options_complex_pitch_v2_1_37_display.add_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_options_complex_pitch_v2_1_37_dissect.add_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_complex_pitch_v2_1_37_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_options_complex_pitch_v2_1_37_dissect.quantity_short(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Price Short: 2 Byte Signed Fixed Width Integer
  index, price_short = cboe_options_complex_pitch_v2_1_37_dissect.price_short(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_options_complex_pitch_v2_1_37_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_options_complex_pitch_v2_1_37_dissect.add_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_short_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.add_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.add_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.add_order_short_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.add_order_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Long Message
cboe_options_complex_pitch_v2_1_37_size_of.add_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.order_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.side_indicator

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.quantity

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.price

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.padding

  return index
end

-- Display: Add Order Long Message
cboe_options_complex_pitch_v2_1_37_display.add_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_options_complex_pitch_v2_1_37_dissect.add_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_complex_pitch_v2_1_37_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_complex_pitch_v2_1_37_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_options_complex_pitch_v2_1_37_dissect.quantity(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_options_complex_pitch_v2_1_37_dissect.price(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_options_complex_pitch_v2_1_37_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_options_complex_pitch_v2_1_37_dissect.add_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_long_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.add_order_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.add_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.add_order_long_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.add_order_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Underlying
cboe_options_complex_pitch_v2_1_37_size_of.underlying = 8

-- Display: Underlying
cboe_options_complex_pitch_v2_1_37_display.underlying = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_options_complex_pitch_v2_1_37_dissect.underlying = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.underlying
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.underlying(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.underlying, range, value, display)

  return offset + length, value
end

-- Size: Symbol Condition
cboe_options_complex_pitch_v2_1_37_size_of.symbol_condition = 1

-- Display: Symbol Condition
cboe_options_complex_pitch_v2_1_37_display.symbol_condition = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_options_complex_pitch_v2_1_37_dissect.symbol_condition = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.symbol_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.symbol_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Size: Osi Symbol
cboe_options_complex_pitch_v2_1_37_size_of.osi_symbol = 21

-- Display: Osi Symbol
cboe_options_complex_pitch_v2_1_37_display.osi_symbol = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_options_complex_pitch_v2_1_37_dissect.osi_symbol = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.osi_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.osi_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Size: Feed Symbol
cboe_options_complex_pitch_v2_1_37_size_of.feed_symbol = 6

-- Display: Feed Symbol
cboe_options_complex_pitch_v2_1_37_display.feed_symbol = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_options_complex_pitch_v2_1_37_dissect.feed_symbol = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.feed_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.feed_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Mapping Message
cboe_options_complex_pitch_v2_1_37_size_of.symbol_mapping_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.feed_symbol

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.osi_symbol

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.symbol_condition

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.underlying

  return index
end

-- Display: Symbol Mapping Message
cboe_options_complex_pitch_v2_1_37_display.symbol_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_options_complex_pitch_v2_1_37_dissect.symbol_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index, feed_symbol = cboe_options_complex_pitch_v2_1_37_dissect.feed_symbol(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index, osi_symbol = cboe_options_complex_pitch_v2_1_37_dissect.osi_symbol(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String Enum with 2 values
  index, symbol_condition = cboe_options_complex_pitch_v2_1_37_dissect.symbol_condition(buffer, index, packet, parent)

  -- Underlying: 8 Byte Ascii String
  index, underlying = cboe_options_complex_pitch_v2_1_37_dissect.underlying(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_options_complex_pitch_v2_1_37_dissect.symbol_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_mapping_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.symbol_mapping_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.symbol_mapping_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.symbol_mapping_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.symbol_mapping_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Security Type
cboe_options_complex_pitch_v2_1_37_size_of.leg_security_type = 1

-- Display: Leg Security Type
cboe_options_complex_pitch_v2_1_37_display.leg_security_type = function(value)
  if value == "O" then
    return "Leg Security Type: Option (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_options_complex_pitch_v2_1_37_dissect.leg_security_type = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.leg_security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
cboe_options_complex_pitch_v2_1_37_size_of.leg_ratio = 4

-- Display: Leg Ratio
cboe_options_complex_pitch_v2_1_37_display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_options_complex_pitch_v2_1_37_dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_options_complex_pitch_v2_1_37_display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol
cboe_options_complex_pitch_v2_1_37_size_of.leg_symbol = 8

-- Display: Leg Symbol
cboe_options_complex_pitch_v2_1_37_display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_options_complex_pitch_v2_1_37_dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.leg_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Instrument Leg
cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_leg = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.leg_symbol

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.leg_ratio

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.leg_security_type

  return index
end

-- Display: Complex Instrument Leg
cboe_options_complex_pitch_v2_1_37_display.complex_instrument_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Instrument Leg
cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol: 8 Byte Ascii String
  index, leg_symbol = cboe_options_complex_pitch_v2_1_37_dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Signed Fixed Width Integer
  index, leg_ratio = cboe_options_complex_pitch_v2_1_37_dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Ascii String Enum with 2 values
  index, leg_security_type = cboe_options_complex_pitch_v2_1_37_dissect.leg_security_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Instrument Leg
cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_instrument_leg then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.complex_instrument_leg(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_leg, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_leg_fields(buffer, offset, packet, parent)
end

-- Size: Leg Count
cboe_options_complex_pitch_v2_1_37_size_of.leg_count = 1

-- Display: Leg Count
cboe_options_complex_pitch_v2_1_37_display.leg_count = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_options_complex_pitch_v2_1_37_dissect.leg_count = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.leg_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.leg_count(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Size: Complex Auction Reserved Bytes
cboe_options_complex_pitch_v2_1_37_size_of.complex_auction_reserved_bytes = 3

-- Display: Complex Auction Reserved Bytes
cboe_options_complex_pitch_v2_1_37_display.complex_auction_reserved_bytes = function(value)
  return "Complex Auction Reserved Bytes: "..value
end

-- Dissect: Complex Auction Reserved Bytes
cboe_options_complex_pitch_v2_1_37_dissect.complex_auction_reserved_bytes = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.complex_auction_reserved_bytes
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_options_complex_pitch_v2_1_37_display.complex_auction_reserved_bytes(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.complex_auction_reserved_bytes, range, value, display)

  return offset + length, value
end

-- Size: Complex Auction Type
cboe_options_complex_pitch_v2_1_37_size_of.complex_auction_type = 1

-- Display: Complex Auction Type
cboe_options_complex_pitch_v2_1_37_display.complex_auction_type = function(value)
  return "Complex Auction Type: "..value
end

-- Dissect: Complex Auction Type
cboe_options_complex_pitch_v2_1_37_dissect.complex_auction_type = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.complex_auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.complex_auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.complex_auction_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Instrument Type
cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_type = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_auction_type

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_auction_reserved_bytes

  return index
end

-- Display: Complex Instrument Type
cboe_options_complex_pitch_v2_1_37_display.complex_instrument_type = function(buffer, offset, value, packet, parent)
  return "Complex Instrument Type: "..value
end

-- Dissect Fields: Complex Instrument Type
cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_type_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Complex Auction Type: 1 Byte Ascii String
  index, complex_auction_type = cboe_options_complex_pitch_v2_1_37_dissect.complex_auction_type(buffer, index, packet, parent)

  -- Complex Auction Reserved Bytes: 3 Byte
  index, complex_auction_reserved_bytes = cboe_options_complex_pitch_v2_1_37_dissect.complex_auction_reserved_bytes(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Instrument Type
cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_type = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_instrument_type then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_type(buffer, offset)
    local range = buffer(offset, length)
    local value = range:string()
    local display = cboe_options_complex_pitch_v2_1_37_display.complex_instrument_type(buffer, offset, value, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_type, range, value, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_type_fields(buffer, offset, packet, parent)
end

-- Size: Complex Instrument Underlying
cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_underlying = 8

-- Display: Complex Instrument Underlying
cboe_options_complex_pitch_v2_1_37_display.complex_instrument_underlying = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_underlying = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_underlying
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_complex_pitch_v2_1_37_display.complex_instrument_underlying(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_definition_expanded_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_id

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_underlying

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_type(buffer, offset + index)

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.leg_count

  -- Calculate field size from count
  local complex_instrument_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_instrument_leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_options_complex_pitch_v2_1_37_display.complex_instrument_definition_expanded_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_definition_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Complex Instrument Underlying: 8 Byte Ascii String
  index, complex_instrument_underlying = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_underlying(buffer, index, packet, parent)

  -- Complex Instrument Type: Struct of 2 fields
  index, complex_instrument_type = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_type(buffer, index, packet, parent)

  -- Leg Count: 1 Byte Unsigned Fixed Width Integer
  index, leg_count = cboe_options_complex_pitch_v2_1_37_dissect.leg_count(buffer, index, packet, parent)

  -- Complex Instrument Leg: Struct of 3 fields
  for i = 1, leg_count do
    index = cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_definition_expanded_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_instrument_definition_expanded_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_definition_expanded_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.complex_instrument_definition_expanded_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.complex_instrument_definition_expanded_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_definition_expanded_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Transaction End Message
cboe_options_complex_pitch_v2_1_37_size_of.transaction_end_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  return index
end

-- Display: Transaction End Message
cboe_options_complex_pitch_v2_1_37_display.transaction_end_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Transaction End Message
cboe_options_complex_pitch_v2_1_37_dissect.transaction_end_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
cboe_options_complex_pitch_v2_1_37_dissect.transaction_end_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.transaction_end_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.transaction_end_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.transaction_end_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.transaction_end_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.transaction_end_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Transaction Begin
cboe_options_complex_pitch_v2_1_37_size_of.transaction_begin = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  return index
end

-- Display: Transaction Begin
cboe_options_complex_pitch_v2_1_37_display.transaction_begin = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Transaction Begin
cboe_options_complex_pitch_v2_1_37_dissect.transaction_begin_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin
cboe_options_complex_pitch_v2_1_37_dissect.transaction_begin = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.transaction_begin then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.transaction_begin(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.transaction_begin(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.transaction_begin, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.transaction_begin_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Unit Clear Message
cboe_options_complex_pitch_v2_1_37_size_of.unit_clear_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time_offset

  return index
end

-- Display: Unit Clear Message
cboe_options_complex_pitch_v2_1_37_display.unit_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_options_complex_pitch_v2_1_37_dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_complex_pitch_v2_1_37_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_options_complex_pitch_v2_1_37_dissect.unit_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_clear_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.unit_clear_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.unit_clear_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.unit_clear_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.unit_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: Time
cboe_options_complex_pitch_v2_1_37_size_of.time = 4

-- Display: Time
cboe_options_complex_pitch_v2_1_37_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_options_complex_pitch_v2_1_37_dissect.time = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
cboe_options_complex_pitch_v2_1_37_size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.time

  return index
end

-- Display: Time Message
cboe_options_complex_pitch_v2_1_37_display.time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Message
cboe_options_complex_pitch_v2_1_37_dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_options_complex_pitch_v2_1_37_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_options_complex_pitch_v2_1_37_dissect.time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_message then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.time_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.time_message, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cboe_options_complex_pitch_v2_1_37_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_options_complex_pitch_v2_1_37_size_of.time_message(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_options_complex_pitch_v2_1_37_size_of.unit_clear_message(buffer, offset)
  end
  -- Size of Transaction Begin
  if message_type == 0xBC then
    return cboe_options_complex_pitch_v2_1_37_size_of.transaction_begin(buffer, offset)
  end
  -- Size of Transaction End Message
  if message_type == 0xBD then
    return cboe_options_complex_pitch_v2_1_37_size_of.transaction_end_message(buffer, offset)
  end
  -- Size of Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_options_complex_pitch_v2_1_37_size_of.complex_instrument_definition_expanded_message(buffer, offset)
  end
  -- Size of Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_options_complex_pitch_v2_1_37_size_of.symbol_mapping_message(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x21 then
    return cboe_options_complex_pitch_v2_1_37_size_of.add_order_long_message(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_options_complex_pitch_v2_1_37_size_of.add_order_short_message(buffer, offset)
  end
  -- Size of Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_options_complex_pitch_v2_1_37_size_of.add_order_expanded_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_options_complex_pitch_v2_1_37_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_options_complex_pitch_v2_1_37_size_of.order_executed_at_price_size_message(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_options_complex_pitch_v2_1_37_size_of.reduce_size_long_message(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_options_complex_pitch_v2_1_37_size_of.reduce_size_short_message(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_options_complex_pitch_v2_1_37_size_of.modify_order_long_message(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_options_complex_pitch_v2_1_37_size_of.modify_order_short_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_options_complex_pitch_v2_1_37_size_of.delete_order_message(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x2A then
    return cboe_options_complex_pitch_v2_1_37_size_of.trade_long_message(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_options_complex_pitch_v2_1_37_size_of.trade_short_message(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == 0xAD then
    return cboe_options_complex_pitch_v2_1_37_size_of.auction_notification_message(buffer, offset)
  end
  -- Size of Auction Cancel Message
  if message_type == 0xAE then
    return cboe_options_complex_pitch_v2_1_37_size_of.auction_cancel_message(buffer, offset)
  end
  -- Size of Auction Trade Message
  if message_type == 0xAF then
    return cboe_options_complex_pitch_v2_1_37_size_of.auction_trade_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_options_complex_pitch_v2_1_37_size_of.trading_status_message(buffer, offset)
  end
  -- Size of Auction Update Message
  if message_type == 0xD1 then
    return cboe_options_complex_pitch_v2_1_37_size_of.auction_update_message(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return cboe_options_complex_pitch_v2_1_37_size_of.auction_summary_message(buffer, offset)
  end
  -- Size of End Of Session Message
  if message_type == 0x2D then
    return cboe_options_complex_pitch_v2_1_37_size_of.end_of_session_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_options_complex_pitch_v2_1_37_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_options_complex_pitch_v2_1_37_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_options_complex_pitch_v2_1_37_dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_options_complex_pitch_v2_1_37_dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin
  if message_type == 0xBC then
    return cboe_options_complex_pitch_v2_1_37_dissect.transaction_begin(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End Message
  if message_type == 0xBD then
    return cboe_options_complex_pitch_v2_1_37_dissect.transaction_end_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_options_complex_pitch_v2_1_37_dissect.complex_instrument_definition_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_options_complex_pitch_v2_1_37_dissect.symbol_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_options_complex_pitch_v2_1_37_dissect.add_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_options_complex_pitch_v2_1_37_dissect.add_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_options_complex_pitch_v2_1_37_dissect.add_order_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_options_complex_pitch_v2_1_37_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_options_complex_pitch_v2_1_37_dissect.order_executed_at_price_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_options_complex_pitch_v2_1_37_dissect.reduce_size_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_options_complex_pitch_v2_1_37_dissect.reduce_size_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_options_complex_pitch_v2_1_37_dissect.modify_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_options_complex_pitch_v2_1_37_dissect.modify_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_options_complex_pitch_v2_1_37_dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_options_complex_pitch_v2_1_37_dissect.trade_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_options_complex_pitch_v2_1_37_dissect.trade_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_options_complex_pitch_v2_1_37_dissect.auction_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_options_complex_pitch_v2_1_37_dissect.auction_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_options_complex_pitch_v2_1_37_dissect.auction_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_options_complex_pitch_v2_1_37_dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0xD1 then
    return cboe_options_complex_pitch_v2_1_37_dissect.auction_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_options_complex_pitch_v2_1_37_dissect.auction_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_options_complex_pitch_v2_1_37_dissect.end_of_session_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_options_complex_pitch_v2_1_37_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_options_complex_pitch_v2_1_37_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_options_complex_pitch_v2_1_37_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_options_complex_pitch_v2_1_37_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_options_complex_pitch_v2_1_37.fields.payload, range, display)

  return cboe_options_complex_pitch_v2_1_37_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
cboe_options_complex_pitch_v2_1_37_size_of.message_type = 1

-- Display: Message Type
cboe_options_complex_pitch_v2_1_37_display.message_type = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
  end
  if value == 0xBC then
    return "Message Type: Transaction Begin (0xBC)"
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
    return "Message Type: Auction Update Message (0xD1)"
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
cboe_options_complex_pitch_v2_1_37_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_options_complex_pitch_v2_1_37_size_of.message_length = 1

-- Display: Message Length
cboe_options_complex_pitch_v2_1_37_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_options_complex_pitch_v2_1_37_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_options_complex_pitch_v2_1_37_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.message_length

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.message_type

  return index
end

-- Display: Message Header
cboe_options_complex_pitch_v2_1_37_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
cboe_options_complex_pitch_v2_1_37_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_options_complex_pitch_v2_1_37_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = cboe_options_complex_pitch_v2_1_37_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_options_complex_pitch_v2_1_37_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.message_header, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
cboe_options_complex_pitch_v2_1_37_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
cboe_options_complex_pitch_v2_1_37_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_options_complex_pitch_v2_1_37_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = cboe_options_complex_pitch_v2_1_37_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_options_complex_pitch_v2_1_37_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = cboe_options_complex_pitch_v2_1_37_display.message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.message, range, display)
  end

  cboe_options_complex_pitch_v2_1_37_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Sequence
cboe_options_complex_pitch_v2_1_37_size_of.sequence = 4

-- Display: Sequence
cboe_options_complex_pitch_v2_1_37_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_options_complex_pitch_v2_1_37_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_options_complex_pitch_v2_1_37_size_of.unit = 1

-- Display: Unit
cboe_options_complex_pitch_v2_1_37_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_options_complex_pitch_v2_1_37_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_options_complex_pitch_v2_1_37_size_of.count = 1

-- Display: Count
cboe_options_complex_pitch_v2_1_37_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_options_complex_pitch_v2_1_37_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_options_complex_pitch_v2_1_37_size_of.length = 2

-- Display: Length
cboe_options_complex_pitch_v2_1_37_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_options_complex_pitch_v2_1_37_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_options_complex_pitch_v2_1_37_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_complex_pitch_v2_1_37_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_37.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_options_complex_pitch_v2_1_37_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.length

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.count

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.unit

  index = index + cboe_options_complex_pitch_v2_1_37_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_options_complex_pitch_v2_1_37_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
cboe_options_complex_pitch_v2_1_37_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_options_complex_pitch_v2_1_37_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_options_complex_pitch_v2_1_37_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_options_complex_pitch_v2_1_37_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_options_complex_pitch_v2_1_37_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_options_complex_pitch_v2_1_37_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = cboe_options_complex_pitch_v2_1_37_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_options_complex_pitch_v2_1_37_display.packet_header(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_37.fields.packet_header, range, display)
  end

  return cboe_options_complex_pitch_v2_1_37_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
cboe_options_complex_pitch_v2_1_37_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_options_complex_pitch_v2_1_37_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Message: Struct of 2 fields
    index = cboe_options_complex_pitch_v2_1_37_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_options_complex_pitch_v2_1_37.init()
end

-- Dissector for Cboe Options Complex Pitch 2.1.37
function cboe_options_complex_pitch_v2_1_37.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_options_complex_pitch_v2_1_37.name

  -- Dissect protocol
  local protocol = parent:add(cboe_options_complex_pitch_v2_1_37, buffer(), cboe_options_complex_pitch_v2_1_37.description, "("..buffer:len().." Bytes)")
  return cboe_options_complex_pitch_v2_1_37_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_options_complex_pitch_v2_1_37)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_options_complex_pitch_v2_1_37_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Options Complex Pitch 2.1.37
local function cboe_options_complex_pitch_v2_1_37_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_options_complex_pitch_v2_1_37_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_options_complex_pitch_v2_1_37
  cboe_options_complex_pitch_v2_1_37.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Options Complex Pitch 2.1.37
cboe_options_complex_pitch_v2_1_37:register_heuristic("udp", cboe_options_complex_pitch_v2_1_37_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.1.37
--   Date: Tuesday, March 1, 2022
--   Specification: US_OPTIONS_COMPLEX_MULTICAST_PITCH_SPECIFICATION.pdf
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
