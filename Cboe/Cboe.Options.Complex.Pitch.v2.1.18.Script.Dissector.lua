-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Options Complex Pitch 2.1.18 Protocol
local cboe_options_complex_pitch_v2_1_18 = Proto("Cboe.Options.Complex.Pitch.v2.1.18.Lua", "Cboe Options Complex Pitch 2.1.18")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Options Complex Pitch 2.1.18 Fields
cboe_options_complex_pitch_v2_1_18.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.options.complex.pitch.v2.1.18.addorderexpandedmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.options.complex.pitch.v2.1.18.addorderlongmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.options.complex.pitch.v2.1.18.addordershortmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.options.complex.pitch.v2.1.18.auctioncancelmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.options.complex.pitch.v2.1.18.auctionendoffset", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.auction_id = ProtoField.new("Auction Id", "cboe.options.complex.pitch.v2.1.18.auctionid", ftypes.UINT64)
cboe_options_complex_pitch_v2_1_18.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.options.complex.pitch.v2.1.18.auctionnotificationmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.options.complex.pitch.v2.1.18.auctiononlyprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_18.fields.auction_opening_type = ProtoField.new("Auction Opening Type", "cboe.options.complex.pitch.v2.1.18.auctionopeningtype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.options.complex.pitch.v2.1.18.auctionsummarymessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.options.complex.pitch.v2.1.18.auctiontrademessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.auction_type = ProtoField.new("Auction Type", "cboe.options.complex.pitch.v2.1.18.auctiontype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.options.complex.pitch.v2.1.18.auctionupdatemessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.options.complex.pitch.v2.1.18.buycontracts", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.canceled_quantity = ProtoField.new("Canceled Quantity", "cboe.options.complex.pitch.v2.1.18.canceledquantity", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.options.complex.pitch.v2.1.18.canceledquantityshort", ftypes.UINT16)
cboe_options_complex_pitch_v2_1_18.fields.client_id = ProtoField.new("Client Id", "cboe.options.complex.pitch.v2.1.18.clientid", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.complex_auction_reserved_bytes = ProtoField.new("Complex Auction Reserved Bytes", "cboe.options.complex.pitch.v2.1.18.complexauctionreservedbytes", ftypes.BYTES)
cboe_options_complex_pitch_v2_1_18.fields.complex_auction_type = ProtoField.new("Complex Auction Type", "cboe.options.complex.pitch.v2.1.18.complexauctiontype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.options.complex.pitch.v2.1.18.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.options.complex.pitch.v2.1.18.complexinstrumentid", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_id_8 = ProtoField.new("Complex Instrument Id 8", "cboe.options.complex.pitch.v2.1.18.complexinstrumentid8", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_leg = ProtoField.new("Complex Instrument Leg", "cboe.options.complex.pitch.v2.1.18.complexinstrumentleg", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.options.complex.pitch.v2.1.18.complexinstrumenttype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.options.complex.pitch.v2.1.18.complexinstrumentunderlying", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.complex_symbol_id = ProtoField.new("Complex Symbol Id", "cboe.options.complex.pitch.v2.1.18.complexsymbolid", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.options.complex.pitch.v2.1.18.compositemarketbidprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_18.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.options.complex.pitch.v2.1.18.compositemarketofferprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_18.fields.count = ProtoField.new("Count", "cboe.options.complex.pitch.v2.1.18.count", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_18.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.options.complex.pitch.v2.1.18.customerindicator", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.options.complex.pitch.v2.1.18.deleteordermessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.options.complex.pitch.v2.1.18.endofsessionmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.options.complex.pitch.v2.1.18.executedquantity", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.execution_id = ProtoField.new("Execution Id", "cboe.options.complex.pitch.v2.1.18.executionid", ftypes.UINT64)
cboe_options_complex_pitch_v2_1_18.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.options.complex.pitch.v2.1.18.feedsymbol", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.options.complex.pitch.v2.1.18.gthtradingstatus", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.options.complex.pitch.v2.1.18.indicativeprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_18.fields.leg_count = ProtoField.new("Leg Count", "cboe.options.complex.pitch.v2.1.18.legcount", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_18.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.options.complex.pitch.v2.1.18.legratio", ftypes.INT32)
cboe_options_complex_pitch_v2_1_18.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.options.complex.pitch.v2.1.18.legsecuritytype", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.options.complex.pitch.v2.1.18.legsymbol", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.length = ProtoField.new("Length", "cboe.options.complex.pitch.v2.1.18.length", ftypes.UINT16)
cboe_options_complex_pitch_v2_1_18.fields.message = ProtoField.new("Message", "cboe.options.complex.pitch.v2.1.18.message", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.message_header = ProtoField.new("Message Header", "cboe.options.complex.pitch.v2.1.18.messageheader", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.message_length = ProtoField.new("Message Length", "cboe.options.complex.pitch.v2.1.18.messagelength", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_18.fields.message_type = ProtoField.new("Message Type", "cboe.options.complex.pitch.v2.1.18.messagetype", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_18.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.options.complex.pitch.v2.1.18.modifyorderlongmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.options.complex.pitch.v2.1.18.modifyordershortmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.options.complex.pitch.v2.1.18.openingcondition", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.options.complex.pitch.v2.1.18.orderexecutedatpricesizemessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.options.complex.pitch.v2.1.18.orderexecutedmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.order_id = ProtoField.new("Order Id", "cboe.options.complex.pitch.v2.1.18.orderid", ftypes.UINT64)
cboe_options_complex_pitch_v2_1_18.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.options.complex.pitch.v2.1.18.osisymbol", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.packet = ProtoField.new("Packet", "cboe.options.complex.pitch.v2.1.18.packet", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.packet_header = ProtoField.new("Packet Header", "cboe.options.complex.pitch.v2.1.18.packetheader", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.padding = ProtoField.new("Padding", "cboe.options.complex.pitch.v2.1.18.padding", ftypes.BYTES)
cboe_options_complex_pitch_v2_1_18.fields.participant_id = ProtoField.new("Participant Id", "cboe.options.complex.pitch.v2.1.18.participantid", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.payload = ProtoField.new("Payload", "cboe.options.complex.pitch.v2.1.18.payload", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.price = ProtoField.new("Price", "cboe.options.complex.pitch.v2.1.18.price", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_18.fields.price_short = ProtoField.new("Price Short", "cboe.options.complex.pitch.v2.1.18.priceshort", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_18.fields.quantity = ProtoField.new("Quantity", "cboe.options.complex.pitch.v2.1.18.quantity", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.options.complex.pitch.v2.1.18.quantityshort", ftypes.UINT16)
cboe_options_complex_pitch_v2_1_18.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.options.complex.pitch.v2.1.18.reducesizelongmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.options.complex.pitch.v2.1.18.reducesizeshortmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.reference_price = ProtoField.new("Reference Price", "cboe.options.complex.pitch.v2.1.18.referenceprice", ftypes.DOUBLE)
cboe_options_complex_pitch_v2_1_18.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.options.complex.pitch.v2.1.18.remainingquantity", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.reserved = ProtoField.new("Reserved", "cboe.options.complex.pitch.v2.1.18.reserved", ftypes.BYTES)
cboe_options_complex_pitch_v2_1_18.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.options.complex.pitch.v2.1.18.sellcontracts", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.sequence = ProtoField.new("Sequence", "cboe.options.complex.pitch.v2.1.18.sequence", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.options.complex.pitch.v2.1.18.sideindicator", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.options.complex.pitch.v2.1.18.symbolcondition", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.options.complex.pitch.v2.1.18.symbolmappingmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.time = ProtoField.new("Time", "cboe.options.complex.pitch.v2.1.18.time", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.time_message = ProtoField.new("Time Message", "cboe.options.complex.pitch.v2.1.18.timemessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.time_offset = ProtoField.new("Time Offset", "cboe.options.complex.pitch.v2.1.18.timeoffset", ftypes.UINT32)
cboe_options_complex_pitch_v2_1_18.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.options.complex.pitch.v2.1.18.tradecondition", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.options.complex.pitch.v2.1.18.tradelongmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.options.complex.pitch.v2.1.18.tradeshortmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.trading_status = ProtoField.new("Trading Status", "cboe.options.complex.pitch.v2.1.18.tradingstatus", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.options.complex.pitch.v2.1.18.tradingstatusmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.transaction_begin = ProtoField.new("Transaction Begin", "cboe.options.complex.pitch.v2.1.18.transactionbegin", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.options.complex.pitch.v2.1.18.transactionendmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.underlying = ProtoField.new("Underlying", "cboe.options.complex.pitch.v2.1.18.underlying", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.unit = ProtoField.new("Unit", "cboe.options.complex.pitch.v2.1.18.unit", ftypes.UINT8)
cboe_options_complex_pitch_v2_1_18.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.options.complex.pitch.v2.1.18.unitclearmessage", ftypes.STRING)
cboe_options_complex_pitch_v2_1_18.fields.unused = ProtoField.new("Unused", "cboe.options.complex.pitch.v2.1.18.unused", ftypes.BYTES)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Options Complex Pitch 2.1.18 Element Dissection Options
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

-- Register Cboe Options Complex Pitch 2.1.18 Show Options
cboe_options_complex_pitch_v2_1_18.prefs.show_add_order_expanded_message = Pref.bool("Show Add Order Expanded Message", show.add_order_expanded_message, "Parse and add Add Order Expanded Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_complex_instrument_definition_expanded_message = Pref.bool("Show Complex Instrument Definition Expanded Message", show.complex_instrument_definition_expanded_message, "Parse and add Complex Instrument Definition Expanded Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_complex_instrument_leg = Pref.bool("Show Complex Instrument Leg", show.complex_instrument_leg, "Parse and add Complex Instrument Leg to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_complex_instrument_type = Pref.bool("Show Complex Instrument Type", show.complex_instrument_type, "Parse and add Complex Instrument Type to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_symbol_mapping_message = Pref.bool("Show Symbol Mapping Message", show.symbol_mapping_message, "Parse and add Symbol Mapping Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_transaction_begin = Pref.bool("Show Transaction Begin", show.transaction_begin, "Parse and add Transaction Begin to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_transaction_end_message = Pref.bool("Show Transaction End Message", show.transaction_end_message, "Parse and add Transaction End Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_options_complex_pitch_v2_1_18.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_options_complex_pitch_v2_1_18.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_expanded_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_add_order_expanded_message then
    show.add_order_expanded_message = cboe_options_complex_pitch_v2_1_18.prefs.show_add_order_expanded_message
    changed = true
  end
  if show.add_order_long_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_add_order_long_message then
    show.add_order_long_message = cboe_options_complex_pitch_v2_1_18.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_add_order_short_message then
    show.add_order_short_message = cboe_options_complex_pitch_v2_1_18.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_cancel_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_auction_cancel_message then
    show.auction_cancel_message = cboe_options_complex_pitch_v2_1_18.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_notification_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_auction_notification_message then
    show.auction_notification_message = cboe_options_complex_pitch_v2_1_18.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_summary_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_auction_summary_message then
    show.auction_summary_message = cboe_options_complex_pitch_v2_1_18.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_trade_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_auction_trade_message then
    show.auction_trade_message = cboe_options_complex_pitch_v2_1_18.prefs.show_auction_trade_message
    changed = true
  end
  if show.auction_update_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_auction_update_message then
    show.auction_update_message = cboe_options_complex_pitch_v2_1_18.prefs.show_auction_update_message
    changed = true
  end
  if show.complex_instrument_definition_expanded_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_complex_instrument_definition_expanded_message then
    show.complex_instrument_definition_expanded_message = cboe_options_complex_pitch_v2_1_18.prefs.show_complex_instrument_definition_expanded_message
    changed = true
  end
  if show.complex_instrument_leg ~= cboe_options_complex_pitch_v2_1_18.prefs.show_complex_instrument_leg then
    show.complex_instrument_leg = cboe_options_complex_pitch_v2_1_18.prefs.show_complex_instrument_leg
    changed = true
  end
  if show.complex_instrument_type ~= cboe_options_complex_pitch_v2_1_18.prefs.show_complex_instrument_type then
    show.complex_instrument_type = cboe_options_complex_pitch_v2_1_18.prefs.show_complex_instrument_type
    changed = true
  end
  if show.delete_order_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_delete_order_message then
    show.delete_order_message = cboe_options_complex_pitch_v2_1_18.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_session_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_end_of_session_message then
    show.end_of_session_message = cboe_options_complex_pitch_v2_1_18.prefs.show_end_of_session_message
    changed = true
  end
  if show.message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_message then
    show.message = cboe_options_complex_pitch_v2_1_18.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_options_complex_pitch_v2_1_18.prefs.show_message_header then
    show.message_header = cboe_options_complex_pitch_v2_1_18.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_modify_order_long_message then
    show.modify_order_long_message = cboe_options_complex_pitch_v2_1_18.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_modify_order_short_message then
    show.modify_order_short_message = cboe_options_complex_pitch_v2_1_18.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = cboe_options_complex_pitch_v2_1_18.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_order_executed_message then
    show.order_executed_message = cboe_options_complex_pitch_v2_1_18.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= cboe_options_complex_pitch_v2_1_18.prefs.show_packet then
    show.packet = cboe_options_complex_pitch_v2_1_18.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_options_complex_pitch_v2_1_18.prefs.show_packet_header then
    show.packet_header = cboe_options_complex_pitch_v2_1_18.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = cboe_options_complex_pitch_v2_1_18.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = cboe_options_complex_pitch_v2_1_18.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.symbol_mapping_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_symbol_mapping_message then
    show.symbol_mapping_message = cboe_options_complex_pitch_v2_1_18.prefs.show_symbol_mapping_message
    changed = true
  end
  if show.time_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_time_message then
    show.time_message = cboe_options_complex_pitch_v2_1_18.prefs.show_time_message
    changed = true
  end
  if show.trade_long_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_trade_long_message then
    show.trade_long_message = cboe_options_complex_pitch_v2_1_18.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_trade_short_message then
    show.trade_short_message = cboe_options_complex_pitch_v2_1_18.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_trading_status_message then
    show.trading_status_message = cboe_options_complex_pitch_v2_1_18.prefs.show_trading_status_message
    changed = true
  end
  if show.transaction_begin ~= cboe_options_complex_pitch_v2_1_18.prefs.show_transaction_begin then
    show.transaction_begin = cboe_options_complex_pitch_v2_1_18.prefs.show_transaction_begin
    changed = true
  end
  if show.transaction_end_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_transaction_end_message then
    show.transaction_end_message = cboe_options_complex_pitch_v2_1_18.prefs.show_transaction_end_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_options_complex_pitch_v2_1_18.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_options_complex_pitch_v2_1_18.prefs.show_unit_clear_message
    changed = true
  end
  if show.payload ~= cboe_options_complex_pitch_v2_1_18.prefs.show_payload then
    show.payload = cboe_options_complex_pitch_v2_1_18.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Options Complex Pitch 2.1.18
-----------------------------------------------------------------------

-- Size: Time Offset
size_of.time_offset = 4

-- Display: Time Offset
display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
dissect.time_offset = function(buffer, offset, packet, parent)
  local length = size_of.time_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Session Message
size_of.end_of_session_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  return index
end

-- Display: End Of Session Message
display.end_of_session_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Session Message
dissect.end_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
dissect.end_of_session_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_session_message then
    local length = size_of.end_of_session_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.end_of_session_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.end_of_session_message, range, display)
  end

  return dissect.end_of_session_message_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
size_of.quantity = 4

-- Display: Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local length = size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Auction Opening Type
size_of.auction_opening_type = 1

-- Display: Auction Opening Type
display.auction_opening_type = function(value)
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
dissect.auction_opening_type = function(buffer, offset, packet, parent)
  local length = size_of.auction_opening_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.auction_opening_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_opening_type, range, value, display)

  return offset + length, value
end

-- Size: Complex Instrument Id 8
size_of.complex_instrument_id_8 = 8

-- Display: Complex Instrument Id 8
display.complex_instrument_id_8 = function(value)
  return "Complex Instrument Id 8: "..value
end

-- Dissect: Complex Instrument Id 8
dissect.complex_instrument_id_8 = function(buffer, offset, packet, parent)
  local length = size_of.complex_instrument_id_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.complex_instrument_id_8(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_id_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Summary Message
size_of.auction_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.complex_instrument_id_8

  index = index + size_of.auction_opening_type

  index = index + size_of.price

  index = index + size_of.quantity

  return index
end

-- Display: Auction Summary Message
display.auction_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Summary Message
dissect.auction_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Complex Instrument Id 8: 8 Byte Ascii String
  index, complex_instrument_id_8 = dissect.complex_instrument_id_8(buffer, index, packet, parent)

  -- Auction Opening Type: 1 Byte Ascii String Enum with 3 values
  index, auction_opening_type = dissect.auction_opening_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
dissect.auction_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_summary_message then
    local length = size_of.auction_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_summary_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_summary_message, range, display)
  end

  return dissect.auction_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Composite Market Offer Price
size_of.composite_market_offer_price = 8

-- Display: Composite Market Offer Price
display.composite_market_offer_price = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
translate.composite_market_offer_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Composite Market Offer Price
dissect.composite_market_offer_price = function(buffer, offset, packet, parent)
  local length = size_of.composite_market_offer_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.composite_market_offer_price(raw)
  local display = display.composite_market_offer_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Composite Market Bid Price
size_of.composite_market_bid_price = 8

-- Display: Composite Market Bid Price
display.composite_market_bid_price = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
translate.composite_market_bid_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Composite Market Bid Price
dissect.composite_market_bid_price = function(buffer, offset, packet, parent)
  local length = size_of.composite_market_bid_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.composite_market_bid_price(raw)
  local display = display.composite_market_bid_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Opening Condition
size_of.opening_condition = 1

-- Display: Opening Condition
display.opening_condition = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
dissect.opening_condition = function(buffer, offset, packet, parent)
  local length = size_of.opening_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.opening_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Size: Auction Only Price
size_of.auction_only_price = 8

-- Display: Auction Only Price
display.auction_only_price = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
translate.auction_only_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Auction Only Price
dissect.auction_only_price = function(buffer, offset, packet, parent)
  local length = size_of.auction_only_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.auction_only_price(raw)
  local display = display.auction_only_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Size: Indicative Price
size_of.indicative_price = 8

-- Display: Indicative Price
display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
translate.indicative_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Indicative Price
dissect.indicative_price = function(buffer, offset, packet, parent)
  local length = size_of.indicative_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.indicative_price(raw)
  local display = display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Size: Sell Contracts
size_of.sell_contracts = 4

-- Display: Sell Contracts
display.sell_contracts = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
dissect.sell_contracts = function(buffer, offset, packet, parent)
  local length = size_of.sell_contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sell_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Size: Buy Contracts
size_of.buy_contracts = 4

-- Display: Buy Contracts
display.buy_contracts = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
dissect.buy_contracts = function(buffer, offset, packet, parent)
  local length = size_of.buy_contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.buy_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
size_of.reference_price = 8

-- Display: Reference Price
display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
translate.reference_price = function(raw)
  return raw:tonumber()*10000
end

-- Dissect: Reference Price
dissect.reference_price = function(buffer, offset, packet, parent)
  local length = size_of.reference_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.reference_price(raw)
  local display = display.reference_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Update Message
size_of.auction_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.complex_instrument_id_8

  index = index + size_of.auction_opening_type

  index = index + size_of.reference_price

  index = index + size_of.buy_contracts

  index = index + size_of.sell_contracts

  index = index + size_of.indicative_price

  index = index + size_of.auction_only_price

  index = index + size_of.opening_condition

  index = index + size_of.composite_market_bid_price

  index = index + size_of.composite_market_offer_price

  return index
end

-- Display: Auction Update Message
display.auction_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Update Message
dissect.auction_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Complex Instrument Id 8: 8 Byte Ascii String
  index, complex_instrument_id_8 = dissect.complex_instrument_id_8(buffer, index, packet, parent)

  -- Auction Opening Type: 1 Byte Ascii String Enum with 3 values
  index, auction_opening_type = dissect.auction_opening_type(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = dissect.reference_price(buffer, index, packet, parent)

  -- Buy Contracts: 4 Byte Unsigned Fixed Width Integer
  index, buy_contracts = dissect.buy_contracts(buffer, index, packet, parent)

  -- Sell Contracts: 4 Byte Unsigned Fixed Width Integer
  index, sell_contracts = dissect.sell_contracts(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Signed Fixed Width Integer
  index, indicative_price = dissect.indicative_price(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Signed Fixed Width Integer
  index, auction_only_price = dissect.auction_only_price(buffer, index, packet, parent)

  -- Opening Condition: 1 Byte Ascii String
  index, opening_condition = dissect.opening_condition(buffer, index, packet, parent)

  -- Composite Market Bid Price: 8 Byte Signed Fixed Width Integer
  index, composite_market_bid_price = dissect.composite_market_bid_price(buffer, index, packet, parent)

  -- Composite Market Offer Price: 8 Byte Signed Fixed Width Integer
  index, composite_market_offer_price = dissect.composite_market_offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
dissect.auction_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_update_message then
    local length = size_of.auction_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_update_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_update_message, range, display)
  end

  return dissect.auction_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Padding
size_of.padding = 1

-- Display: Padding
display.padding = function(value)
  return "Padding: "..value
end

-- Dissect: Padding
dissect.padding = function(buffer, offset, packet, parent)
  local length = size_of.padding
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.padding(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.padding, range, value, display)

  return offset + length, value
end

-- Size: Gth Trading Status
size_of.gth_trading_status = 1

-- Display: Gth Trading Status
display.gth_trading_status = function(value)
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
dissect.gth_trading_status = function(buffer, offset, packet, parent)
  local length = size_of.gth_trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.gth_trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Reserved
size_of.reserved = 1

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
size_of.trading_status = 1

-- Display: Trading Status
display.trading_status = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
dissect.trading_status = function(buffer, offset, packet, parent)
  local length = size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Unused
size_of.unused = 2

-- Display: Unused
display.unused = function(value)
  return "Unused: "..value
end

-- Dissect: Unused
dissect.unused = function(buffer, offset, packet, parent)
  local length = size_of.unused
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.unused(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.unused, range, value, display)

  return offset + length, value
end

-- Size: Complex Symbol Id
size_of.complex_symbol_id = 6

-- Display: Complex Symbol Id
display.complex_symbol_id = function(value)
  return "Complex Symbol Id: "..value
end

-- Dissect: Complex Symbol Id
dissect.complex_symbol_id = function(buffer, offset, packet, parent)
  local length = size_of.complex_symbol_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.complex_symbol_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.complex_symbol_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.complex_symbol_id

  index = index + size_of.unused

  index = index + size_of.trading_status

  index = index + size_of.reserved

  index = index + size_of.gth_trading_status

  index = index + size_of.padding

  return index
end

-- Display: Trading Status Message
display.trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Status Message
dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Complex Symbol Id: 6 Byte Ascii String
  index, complex_symbol_id = dissect.complex_symbol_id(buffer, index, packet, parent)

  -- Unused: 2 Byte
  index, unused = dissect.unused(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 3 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Gth Trading Status: 1 Byte Ascii String Enum with 3 values
  index, gth_trading_status = dissect.gth_trading_status(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
dissect.trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_status_message then
    local length = size_of.trading_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trading_status_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.trading_status_message, range, display)
  end

  return dissect.trading_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Id
size_of.execution_id = 8

-- Display: Execution Id
display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
dissect.execution_id = function(buffer, offset, packet, parent)
  local length = size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
size_of.auction_id = 8

-- Display: Auction Id
display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
dissect.auction_id = function(buffer, offset, packet, parent)
  local length = size_of.auction_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.auction_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Trade Message
size_of.auction_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.auction_id

  index = index + size_of.execution_id

  index = index + size_of.price

  index = index + size_of.quantity

  return index
end

-- Display: Auction Trade Message
display.auction_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Trade Message
dissect.auction_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = dissect.auction_id(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
dissect.auction_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_trade_message then
    local length = size_of.auction_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_trade_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_trade_message, range, display)
  end

  return dissect.auction_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Auction Cancel Message
size_of.auction_cancel_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.auction_id

  return index
end

-- Display: Auction Cancel Message
display.auction_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Cancel Message
dissect.auction_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
dissect.auction_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_cancel_message then
    local length = size_of.auction_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_cancel_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_cancel_message, range, display)
  end

  return dissect.auction_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Client Id
size_of.client_id = 4

-- Display: Client Id
display.client_id = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
dissect.client_id = function(buffer, offset, packet, parent)
  local length = size_of.client_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.client_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.client_id, range, value, display)

  return offset + length, value
end

-- Size: Auction End Offset
size_of.auction_end_offset = 4

-- Display: Auction End Offset
display.auction_end_offset = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
dissect.auction_end_offset = function(buffer, offset, packet, parent)
  local length = size_of.auction_end_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.auction_end_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
size_of.participant_id = 4

-- Display: Participant Id
display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
dissect.participant_id = function(buffer, offset, packet, parent)
  local length = size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Customer Indicator
size_of.customer_indicator = 1

-- Display: Customer Indicator
display.customer_indicator = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
dissect.customer_indicator = function(buffer, offset, packet, parent)
  local length = size_of.customer_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Size: Side Indicator
size_of.side_indicator = 1

-- Display: Side Indicator
display.side_indicator = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
dissect.side_indicator = function(buffer, offset, packet, parent)
  local length = size_of.side_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.side_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
size_of.auction_type = 1

-- Display: Auction Type
display.auction_type = function(value)
  if value == "C" then
    return "Auction Type: Complex Auction (C)"
  end
  if value == "S" then
    return "Auction Type: Complex Solicitation Auction (S)"
  end
  if value == "B" then
    return "Auction Type: Complex Aim (B)"
  end
  if value == "O" then
    return "Auction Type: Coa All Or None (O)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
dissect.auction_type = function(buffer, offset, packet, parent)
  local length = size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Complex Instrument Id
size_of.complex_instrument_id = 6

-- Display: Complex Instrument Id
display.complex_instrument_id = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
dissect.complex_instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.complex_instrument_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.complex_instrument_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Notification Message
size_of.auction_notification_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.complex_instrument_id

  index = index + size_of.auction_id

  index = index + size_of.auction_type

  index = index + size_of.side_indicator

  index = index + size_of.price

  index = index + size_of.quantity

  index = index + size_of.customer_indicator

  index = index + size_of.participant_id

  index = index + size_of.auction_end_offset

  index = index + size_of.client_id

  return index
end

-- Display: Auction Notification Message
display.auction_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Notification Message
dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = dissect.side_indicator(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = dissect.customer_indicator(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = dissect.auction_end_offset(buffer, index, packet, parent)

  -- Client Id: 4 Byte Ascii String
  index, client_id = dissect.client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
dissect.auction_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_notification_message then
    local length = size_of.auction_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_notification_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.auction_notification_message, range, display)
  end

  return dissect.auction_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Condition
size_of.trade_condition = 1

-- Display: Trade Condition
display.trade_condition = function(value)
  if value == "f" then
    return "Trade Condition: Complex To Complex Electronic Trade (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Auction Trade (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Cross (h)"
  end
  if value == "j" then
    return "Trade Condition: Complex Electronic Trade Against Single (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex With Stock Options Auction Trade (k)"
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
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Price Short
size_of.price_short = 2

-- Display: Price Short
display.price_short = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
translate.price_short = function(raw)
  return raw*100
end

-- Dissect: Price Short
dissect.price_short = function(buffer, offset, packet, parent)
  local length = size_of.price_short
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.price_short(raw)
  local display = display.price_short(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.price_short, range, value, display)

  return offset + length, value
end

-- Size: Quantity Short
size_of.quantity_short = 2

-- Display: Quantity Short
display.quantity_short = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
dissect.quantity_short = function(buffer, offset, packet, parent)
  local length = size_of.quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local length = size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Short Message
size_of.trade_short_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.side_indicator

  index = index + size_of.quantity_short

  index = index + size_of.complex_instrument_id

  index = index + size_of.price_short

  index = index + size_of.execution_id

  index = index + size_of.trade_condition

  return index
end

-- Display: Trade Short Message
display.trade_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Short Message
dissect.trade_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = dissect.quantity_short(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Price Short: 2 Byte Signed Fixed Width Integer
  index, price_short = dissect.price_short(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 9 values
  index, trade_condition = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
dissect.trade_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_short_message then
    local length = size_of.trade_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.trade_short_message, range, display)
  end

  return dissect.trade_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Long Message
size_of.trade_long_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.side_indicator

  index = index + size_of.quantity

  index = index + size_of.complex_instrument_id

  index = index + size_of.price

  index = index + size_of.execution_id

  index = index + size_of.trade_condition

  return index
end

-- Display: Trade Long Message
display.trade_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Long Message
dissect.trade_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 9 values
  index, trade_condition = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
dissect.trade_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_long_message then
    local length = size_of.trade_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.trade_long_message, range, display)
  end

  return dissect.trade_long_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Delete Order Message
size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  return index
end

-- Display: Delete Order Message
display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local length = size_of.delete_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.delete_order_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.delete_order_message, range, display)
  end

  return dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Short Message
size_of.modify_order_short_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.quantity_short

  index = index + size_of.price_short

  index = index + size_of.padding

  return index
end

-- Display: Modify Order Short Message
display.modify_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Short Message
dissect.modify_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = dissect.quantity_short(buffer, index, packet, parent)

  -- Price Short: 2 Byte Signed Fixed Width Integer
  index, price_short = dissect.price_short(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
dissect.modify_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_short_message then
    local length = size_of.modify_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.modify_order_short_message, range, display)
  end

  return dissect.modify_order_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Modify Order Long Message
size_of.modify_order_long_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.quantity

  index = index + size_of.price

  index = index + size_of.padding

  return index
end

-- Display: Modify Order Long Message
display.modify_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Long Message
dissect.modify_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
dissect.modify_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_long_message then
    local length = size_of.modify_order_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.modify_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.modify_order_long_message, range, display)
  end

  return dissect.modify_order_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Quantity Short
size_of.canceled_quantity_short = 2

-- Display: Canceled Quantity Short
display.canceled_quantity_short = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
dissect.canceled_quantity_short = function(buffer, offset, packet, parent)
  local length = size_of.canceled_quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.canceled_quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Short Message
size_of.reduce_size_short_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.canceled_quantity_short

  return index
end

-- Display: Reduce Size Short Message
display.reduce_size_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
dissect.reduce_size_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Canceled Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, canceled_quantity_short = dissect.canceled_quantity_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
dissect.reduce_size_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_short_message then
    local length = size_of.reduce_size_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reduce_size_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.reduce_size_short_message, range, display)
  end

  return dissect.reduce_size_short_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Quantity
size_of.canceled_quantity = 4

-- Display: Canceled Quantity
display.canceled_quantity = function(value)
  return "Canceled Quantity: "..value
end

-- Dissect: Canceled Quantity
dissect.canceled_quantity = function(buffer, offset, packet, parent)
  local length = size_of.canceled_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.canceled_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.canceled_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Long Message
size_of.reduce_size_long_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.canceled_quantity

  return index
end

-- Display: Reduce Size Long Message
display.reduce_size_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
dissect.reduce_size_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Canceled Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_quantity = dissect.canceled_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
dissect.reduce_size_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_long_message then
    local length = size_of.reduce_size_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reduce_size_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.reduce_size_long_message, range, display)
  end

  return dissect.reduce_size_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Remaining Quantity
size_of.remaining_quantity = 4

-- Display: Remaining Quantity
display.remaining_quantity = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
dissect.remaining_quantity = function(buffer, offset, packet, parent)
  local length = size_of.remaining_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.remaining_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Size: Executed Quantity
size_of.executed_quantity = 4

-- Display: Executed Quantity
display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed At Price Size Message
size_of.order_executed_at_price_size_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.executed_quantity

  index = index + size_of.remaining_quantity

  index = index + size_of.execution_id

  index = index + size_of.price

  index = index + size_of.trade_condition

  return index
end

-- Display: Order Executed At Price Size Message
display.order_executed_at_price_size_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
dissect.order_executed_at_price_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = dissect.executed_quantity(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = dissect.remaining_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 9 values
  index, trade_condition = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
dissect.order_executed_at_price_size_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_at_price_size_message then
    local length = size_of.order_executed_at_price_size_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_executed_at_price_size_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.order_executed_at_price_size_message, range, display)
  end

  return dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Executed Message
size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.executed_quantity

  index = index + size_of.execution_id

  index = index + size_of.trade_condition

  return index
end

-- Display: Order Executed Message
display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = dissect.executed_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 9 values
  index, trade_condition = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_executed_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.order_executed_message, range, display)
  end

  return dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Expanded Message
size_of.add_order_expanded_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.side_indicator

  index = index + size_of.quantity

  index = index + size_of.complex_instrument_id_8

  index = index + size_of.price

  index = index + size_of.reserved

  index = index + size_of.participant_id

  index = index + size_of.customer_indicator

  index = index + size_of.client_id

  return index
end

-- Display: Add Order Expanded Message
display.add_order_expanded_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
dissect.add_order_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Complex Instrument Id 8: 8 Byte Ascii String
  index, complex_instrument_id_8 = dissect.complex_instrument_id_8(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = dissect.customer_indicator(buffer, index, packet, parent)

  -- Client Id: 4 Byte Ascii String
  index, client_id = dissect.client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
dissect.add_order_expanded_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_expanded_message then
    local length = size_of.add_order_expanded_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_expanded_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.add_order_expanded_message, range, display)
  end

  return dissect.add_order_expanded_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Short Message
size_of.add_order_short_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.side_indicator

  index = index + size_of.quantity_short

  index = index + size_of.complex_instrument_id

  index = index + size_of.price_short

  index = index + size_of.padding

  return index
end

-- Display: Add Order Short Message
display.add_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Short Message
dissect.add_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = dissect.quantity_short(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Price Short: 2 Byte Signed Fixed Width Integer
  index, price_short = dissect.price_short(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
dissect.add_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_short_message then
    local length = size_of.add_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.add_order_short_message, range, display)
  end

  return dissect.add_order_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Long Message
size_of.add_order_long_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.order_id

  index = index + size_of.side_indicator

  index = index + size_of.quantity

  index = index + size_of.complex_instrument_id

  index = index + size_of.price

  index = index + size_of.padding

  return index
end

-- Display: Add Order Long Message
display.add_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Long Message
dissect.add_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
dissect.add_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_long_message then
    local length = size_of.add_order_long_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.add_order_long_message, range, display)
  end

  return dissect.add_order_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Underlying
size_of.underlying = 8

-- Display: Underlying
display.underlying = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
dissect.underlying = function(buffer, offset, packet, parent)
  local length = size_of.underlying
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.underlying, range, value, display)

  return offset + length, value
end

-- Size: Symbol Condition
size_of.symbol_condition = 1

-- Display: Symbol Condition
display.symbol_condition = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
dissect.symbol_condition = function(buffer, offset, packet, parent)
  local length = size_of.symbol_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Size: Osi Symbol
size_of.osi_symbol = 21

-- Display: Osi Symbol
display.osi_symbol = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
dissect.osi_symbol = function(buffer, offset, packet, parent)
  local length = size_of.osi_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.osi_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Size: Feed Symbol
size_of.feed_symbol = 6

-- Display: Feed Symbol
display.feed_symbol = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
dissect.feed_symbol = function(buffer, offset, packet, parent)
  local length = size_of.feed_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.feed_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Mapping Message
size_of.symbol_mapping_message = function(buffer, offset)
  local index = 0

  index = index + size_of.feed_symbol

  index = index + size_of.osi_symbol

  index = index + size_of.symbol_condition

  index = index + size_of.underlying

  return index
end

-- Display: Symbol Mapping Message
display.symbol_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
dissect.symbol_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index, feed_symbol = dissect.feed_symbol(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index, osi_symbol = dissect.osi_symbol(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String Enum with 2 values
  index, symbol_condition = dissect.symbol_condition(buffer, index, packet, parent)

  -- Underlying: 8 Byte Ascii String
  index, underlying = dissect.underlying(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
dissect.symbol_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_mapping_message then
    local length = size_of.symbol_mapping_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol_mapping_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.symbol_mapping_message, range, display)
  end

  return dissect.symbol_mapping_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Security Type
size_of.leg_security_type = 1

-- Display: Leg Security Type
display.leg_security_type = function(value)
  if value == "O" then
    return "Leg Security Type: Option (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
dissect.leg_security_type = function(buffer, offset, packet, parent)
  local length = size_of.leg_security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
size_of.leg_ratio = 4

-- Display: Leg Ratio
display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol
size_of.leg_symbol = 8

-- Display: Leg Symbol
display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = size_of.leg_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Instrument Leg
size_of.complex_instrument_leg = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_symbol

  index = index + size_of.leg_ratio

  index = index + size_of.leg_security_type

  return index
end

-- Display: Complex Instrument Leg
display.complex_instrument_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Instrument Leg
dissect.complex_instrument_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol: 8 Byte Ascii String
  index, leg_symbol = dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Signed Fixed Width Integer
  index, leg_ratio = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Ascii String Enum with 2 values
  index, leg_security_type = dissect.leg_security_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Instrument Leg
dissect.complex_instrument_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_instrument_leg then
    local length = size_of.complex_instrument_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_instrument_leg(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_leg, range, display)
  end

  return dissect.complex_instrument_leg_fields(buffer, offset, packet, parent)
end

-- Size: Leg Count
size_of.leg_count = 1

-- Display: Leg Count
display.leg_count = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
dissect.leg_count = function(buffer, offset, packet, parent)
  local length = size_of.leg_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_count(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Size: Complex Auction Reserved Bytes
size_of.complex_auction_reserved_bytes = 3

-- Display: Complex Auction Reserved Bytes
display.complex_auction_reserved_bytes = function(value)
  return "Complex Auction Reserved Bytes: "..value
end

-- Dissect: Complex Auction Reserved Bytes
dissect.complex_auction_reserved_bytes = function(buffer, offset, packet, parent)
  local length = size_of.complex_auction_reserved_bytes
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.complex_auction_reserved_bytes(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.complex_auction_reserved_bytes, range, value, display)

  return offset + length, value
end

-- Size: Complex Auction Type
size_of.complex_auction_type = 1

-- Display: Complex Auction Type
display.complex_auction_type = function(value)
  return "Complex Auction Type: "..value
end

-- Dissect: Complex Auction Type
dissect.complex_auction_type = function(buffer, offset, packet, parent)
  local length = size_of.complex_auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.complex_auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.complex_auction_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Instrument Type
size_of.complex_instrument_type = function(buffer, offset)
  local index = 0

  index = index + size_of.complex_auction_type

  index = index + size_of.complex_auction_reserved_bytes

  return index
end

-- Display: Complex Instrument Type
display.complex_instrument_type = function(buffer, offset, value, packet, parent)
  return "Complex Instrument Type: "..value
end

-- Dissect Fields: Complex Instrument Type
dissect.complex_instrument_type_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Complex Auction Type: 1 Byte Ascii String
  index, complex_auction_type = dissect.complex_auction_type(buffer, index, packet, parent)

  -- Complex Auction Reserved Bytes: 3 Byte
  index, complex_auction_reserved_bytes = dissect.complex_auction_reserved_bytes(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Instrument Type
dissect.complex_instrument_type = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_instrument_type then
    local length = size_of.complex_instrument_type(buffer, offset)
    local range = buffer(offset, length)
    local value = range:string()
    local display = display.complex_instrument_type(buffer, offset, value, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_type, range, value, display)
  end

  return dissect.complex_instrument_type_fields(buffer, offset, packet, parent)
end

-- Size: Complex Instrument Underlying
size_of.complex_instrument_underlying = 8

-- Display: Complex Instrument Underlying
display.complex_instrument_underlying = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
dissect.complex_instrument_underlying = function(buffer, offset, packet, parent)
  local length = size_of.complex_instrument_underlying
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.complex_instrument_underlying(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Instrument Definition Expanded Message
size_of.complex_instrument_definition_expanded_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  index = index + size_of.complex_instrument_id

  index = index + size_of.complex_instrument_underlying

  index = index + size_of.complex_instrument_type(buffer, offset + index)

  index = index + size_of.leg_count

  -- Calculate field size from count
  local complex_instrument_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_instrument_leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
display.complex_instrument_definition_expanded_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
dissect.complex_instrument_definition_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = dissect.complex_instrument_id(buffer, index, packet, parent)

  -- Complex Instrument Underlying: 8 Byte Ascii String
  index, complex_instrument_underlying = dissect.complex_instrument_underlying(buffer, index, packet, parent)

  -- Complex Instrument Type: Struct of 2 fields
  index, complex_instrument_type = dissect.complex_instrument_type(buffer, index, packet, parent)

  -- Leg Count: 1 Byte Unsigned Fixed Width Integer
  index, leg_count = dissect.leg_count(buffer, index, packet, parent)

  -- Complex Instrument Leg: Struct of 3 fields
  for i = 1, leg_count do
    index = dissect.complex_instrument_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
dissect.complex_instrument_definition_expanded_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_instrument_definition_expanded_message then
    local length = size_of.complex_instrument_definition_expanded_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_instrument_definition_expanded_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.complex_instrument_definition_expanded_message, range, display)
  end

  return dissect.complex_instrument_definition_expanded_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Transaction End Message
size_of.transaction_end_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  return index
end

-- Display: Transaction End Message
display.transaction_end_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Transaction End Message
dissect.transaction_end_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
dissect.transaction_end_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.transaction_end_message then
    local length = size_of.transaction_end_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.transaction_end_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.transaction_end_message, range, display)
  end

  return dissect.transaction_end_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Transaction Begin
size_of.transaction_begin = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  return index
end

-- Display: Transaction Begin
display.transaction_begin = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Transaction Begin
dissect.transaction_begin_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin
dissect.transaction_begin = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.transaction_begin then
    local length = size_of.transaction_begin(buffer, offset)
    local range = buffer(offset, length)
    local display = display.transaction_begin(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.transaction_begin, range, display)
  end

  return dissect.transaction_begin_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Unit Clear Message
size_of.unit_clear_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time_offset

  return index
end

-- Display: Unit Clear Message
display.unit_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Clear Message
dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
dissect.unit_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_clear_message then
    local length = size_of.unit_clear_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.unit_clear_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.unit_clear_message, range, display)
  end

  return dissect.unit_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: Time
size_of.time = 4

-- Display: Time
display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
dissect.time = function(buffer, offset, packet, parent)
  local length = size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time

  return index
end

-- Display: Time Message
display.time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Message
dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
dissect.time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_message then
    local length = size_of.time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.time_message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.time_message, range, display)
  end

  return dissect.time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return size_of.time_message(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return size_of.unit_clear_message(buffer, offset)
  end
  -- Size of Transaction Begin
  if message_type == 0xBC then
    return size_of.transaction_begin(buffer, offset)
  end
  -- Size of Transaction End Message
  if message_type == 0xBD then
    return size_of.transaction_end_message(buffer, offset)
  end
  -- Size of Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return size_of.complex_instrument_definition_expanded_message(buffer, offset)
  end
  -- Size of Symbol Mapping Message
  if message_type == 0x2E then
    return size_of.symbol_mapping_message(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x21 then
    return size_of.add_order_long_message(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return size_of.add_order_short_message(buffer, offset)
  end
  -- Size of Add Order Expanded Message
  if message_type == 0x2F then
    return size_of.add_order_expanded_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return size_of.order_executed_at_price_size_message(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return size_of.reduce_size_long_message(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return size_of.reduce_size_short_message(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return size_of.modify_order_long_message(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return size_of.modify_order_short_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return size_of.delete_order_message(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x2A then
    return size_of.trade_long_message(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return size_of.trade_short_message(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == 0xAD then
    return size_of.auction_notification_message(buffer, offset)
  end
  -- Size of Auction Cancel Message
  if message_type == 0xAE then
    return size_of.auction_cancel_message(buffer, offset)
  end
  -- Size of Auction Trade Message
  if message_type == 0xAF then
    return size_of.auction_trade_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return size_of.trading_status_message(buffer, offset)
  end
  -- Size of Auction Update Message
  if message_type == 0xD1 then
    return size_of.auction_update_message(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return size_of.auction_summary_message(buffer, offset)
  end
  -- Size of End Of Session Message
  if message_type == 0x2D then
    return size_of.end_of_session_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin
  if message_type == 0xBC then
    return dissect.transaction_begin(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End Message
  if message_type == 0xBD then
    return dissect.transaction_end_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return dissect.complex_instrument_definition_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return dissect.symbol_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return dissect.add_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return dissect.add_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return dissect.add_order_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return dissect.order_executed_at_price_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return dissect.reduce_size_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return dissect.reduce_size_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return dissect.modify_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return dissect.modify_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return dissect.trade_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return dissect.trade_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return dissect.auction_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return dissect.auction_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return dissect.auction_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0xD1 then
    return dissect.auction_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return dissect.auction_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return dissect.end_of_session_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(cboe_options_complex_pitch_v2_1_18.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 1

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_length

  index = index + size_of.message_type

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence
size_of.sequence = 4

-- Display: Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local length = size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
size_of.unit = 1

-- Display: Unit
display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
dissect.unit = function(buffer, offset, packet, parent)
  local length = size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
size_of.count = 1

-- Display: Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local length = size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
size_of.length = 2

-- Display: Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local length = size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_complex_pitch_v2_1_18.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.length

  index = index + size_of.count

  index = index + size_of.unit

  index = index + size_of.sequence

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(cboe_options_complex_pitch_v2_1_18.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_options_complex_pitch_v2_1_18.init()
end

-- Dissector for Cboe Options Complex Pitch 2.1.18
function cboe_options_complex_pitch_v2_1_18.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_options_complex_pitch_v2_1_18.name

  -- Dissect protocol
  local protocol = parent:add(cboe_options_complex_pitch_v2_1_18, buffer(), cboe_options_complex_pitch_v2_1_18.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_options_complex_pitch_v2_1_18)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_options_complex_pitch_v2_1_18_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Options Complex Pitch 2.1.18
local function cboe_options_complex_pitch_v2_1_18_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_options_complex_pitch_v2_1_18_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_options_complex_pitch_v2_1_18
  cboe_options_complex_pitch_v2_1_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Options Complex Pitch 2.1.18
cboe_options_complex_pitch_v2_1_18:register_heuristic("udp", cboe_options_complex_pitch_v2_1_18_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.1.18
--   Date: Friday, January 31, 2020
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
