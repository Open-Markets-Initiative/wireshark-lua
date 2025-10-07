-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1 Options Complex Pitch 2.1.37 Protocol
local omi_cboe_c1_options_complex_pitch_v2_1_37 = Proto("Cboe.C1.Options.Complex.Pitch.v2.1.37.Lua", "Cboe C1 Options Complex Pitch 2.1.37")

-- Protocol table
local cboe_c1_options_complex_pitch_v2_1_37 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1 Options Complex Pitch 2.1.37 Fields
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.c1.options.complex.pitch.v2.1.37.auctionendoffset", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_id = ProtoField.new("Auction Id", "cboe.c1.options.complex.pitch.v2.1.37.auctionid", ftypes.UINT64)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.c1.options.complex.pitch.v2.1.37.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_opening_type = ProtoField.new("Auction Opening Type", "cboe.c1.options.complex.pitch.v2.1.37.auctionopeningtype", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_type = ProtoField.new("Auction Type", "cboe.c1.options.complex.pitch.v2.1.37.auctiontype", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.c1.options.complex.pitch.v2.1.37.buycontracts", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.canceled_quantity = ProtoField.new("Canceled Quantity", "cboe.c1.options.complex.pitch.v2.1.37.canceledquantity", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.c1.options.complex.pitch.v2.1.37.canceledquantityshort", ftypes.UINT16)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.client_id = ProtoField.new("Client Id", "cboe.c1.options.complex.pitch.v2.1.37.clientid", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_auction_reserved_bytes = ProtoField.new("Complex Auction Reserved Bytes", "cboe.c1.options.complex.pitch.v2.1.37.complexauctionreservedbytes", ftypes.BYTES)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_auction_type = ProtoField.new("Complex Auction Type", "cboe.c1.options.complex.pitch.v2.1.37.complexauctiontype", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_id = ProtoField.new("Complex Instrument Id", "cboe.c1.options.complex.pitch.v2.1.37.complexinstrumentid", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_id_8 = ProtoField.new("Complex Instrument Id 8", "cboe.c1.options.complex.pitch.v2.1.37.complexinstrumentid8", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_leg = ProtoField.new("Complex Instrument Leg", "cboe.c1.options.complex.pitch.v2.1.37.complexinstrumentleg", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_type = ProtoField.new("Complex Instrument Type", "cboe.c1.options.complex.pitch.v2.1.37.complexinstrumenttype", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_underlying = ProtoField.new("Complex Instrument Underlying", "cboe.c1.options.complex.pitch.v2.1.37.complexinstrumentunderlying", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_symbol_id = ProtoField.new("Complex Symbol Id", "cboe.c1.options.complex.pitch.v2.1.37.complexsymbolid", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.c1.options.complex.pitch.v2.1.37.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.c1.options.complex.pitch.v2.1.37.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.count = ProtoField.new("Count", "cboe.c1.options.complex.pitch.v2.1.37.count", ftypes.UINT8)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.c1.options.complex.pitch.v2.1.37.customerindicator", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.epoch_time = ProtoField.new("Epoch Time", "cboe.c1.options.complex.pitch.v2.1.37.epochtime", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.c1.options.complex.pitch.v2.1.37.executedquantity", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.execution_id = ProtoField.new("Execution Id", "cboe.c1.options.complex.pitch.v2.1.37.executionid", ftypes.UINT64)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c1.options.complex.pitch.v2.1.37.feedsymbol", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.gth_trading_status = ProtoField.new("Gth Trading Status", "cboe.c1.options.complex.pitch.v2.1.37.gthtradingstatus", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.c1.options.complex.pitch.v2.1.37.indicativeprice", ftypes.DOUBLE)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.leg_count = ProtoField.new("Leg Count", "cboe.c1.options.complex.pitch.v2.1.37.legcount", ftypes.UINT8)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.leg_ratio = ProtoField.new("Leg Ratio", "cboe.c1.options.complex.pitch.v2.1.37.legratio", ftypes.INT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.leg_security_type = ProtoField.new("Leg Security Type", "cboe.c1.options.complex.pitch.v2.1.37.legsecuritytype", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.c1.options.complex.pitch.v2.1.37.legsymbol", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.length = ProtoField.new("Length", "cboe.c1.options.complex.pitch.v2.1.37.length", ftypes.UINT16)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message = ProtoField.new("Message", "cboe.c1.options.complex.pitch.v2.1.37.message", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message_header = ProtoField.new("Message Header", "cboe.c1.options.complex.pitch.v2.1.37.messageheader", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message_length = ProtoField.new("Message Length", "cboe.c1.options.complex.pitch.v2.1.37.messagelength", ftypes.UINT8)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message_type = ProtoField.new("Message Type", "cboe.c1.options.complex.pitch.v2.1.37.messagetype", ftypes.UINT8)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.midnight_reference = ProtoField.new("Midnight Reference", "cboe.c1.options.complex.pitch.v2.1.37.midnightreference", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.c1.options.complex.pitch.v2.1.37.openingcondition", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.order_id = ProtoField.new("Order Id", "cboe.c1.options.complex.pitch.v2.1.37.orderid", ftypes.UINT64)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c1.options.complex.pitch.v2.1.37.osisymbol", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.packet = ProtoField.new("Packet", "cboe.c1.options.complex.pitch.v2.1.37.packet", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.packet_header = ProtoField.new("Packet Header", "cboe.c1.options.complex.pitch.v2.1.37.packetheader", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.padding = ProtoField.new("Padding", "cboe.c1.options.complex.pitch.v2.1.37.padding", ftypes.BYTES)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.participant_id = ProtoField.new("Participant Id", "cboe.c1.options.complex.pitch.v2.1.37.participantid", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.payload = ProtoField.new("Payload", "cboe.c1.options.complex.pitch.v2.1.37.payload", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.price = ProtoField.new("Price", "cboe.c1.options.complex.pitch.v2.1.37.price", ftypes.DOUBLE)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.price_short = ProtoField.new("Price Short", "cboe.c1.options.complex.pitch.v2.1.37.priceshort", ftypes.DOUBLE)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.quantity = ProtoField.new("Quantity", "cboe.c1.options.complex.pitch.v2.1.37.quantity", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.c1.options.complex.pitch.v2.1.37.quantityshort", ftypes.UINT16)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.reference_price = ProtoField.new("Reference Price", "cboe.c1.options.complex.pitch.v2.1.37.referenceprice", ftypes.DOUBLE)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.c1.options.complex.pitch.v2.1.37.remainingquantity", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.reserved = ProtoField.new("Reserved", "cboe.c1.options.complex.pitch.v2.1.37.reserved", ftypes.BYTES)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.c1.options.complex.pitch.v2.1.37.sellcontracts", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.sequence = ProtoField.new("Sequence", "cboe.c1.options.complex.pitch.v2.1.37.sequence", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.c1.options.complex.pitch.v2.1.37.sideindicator", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c1.options.complex.pitch.v2.1.37.symbolcondition", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.time = ProtoField.new("Time", "cboe.c1.options.complex.pitch.v2.1.37.time", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.time_offset = ProtoField.new("Time Offset", "cboe.c1.options.complex.pitch.v2.1.37.timeoffset", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.c1.options.complex.pitch.v2.1.37.tradecondition", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trade_date = ProtoField.new("Trade Date", "cboe.c1.options.complex.pitch.v2.1.37.tradedate", ftypes.UINT32)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trading_status = ProtoField.new("Trading Status", "cboe.c1.options.complex.pitch.v2.1.37.tradingstatus", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.underlying = ProtoField.new("Underlying", "cboe.c1.options.complex.pitch.v2.1.37.underlying", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.unit = ProtoField.new("Unit", "cboe.c1.options.complex.pitch.v2.1.37.unit", ftypes.UINT8)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.unused = ProtoField.new("Unused", "cboe.c1.options.complex.pitch.v2.1.37.unused", ftypes.BYTES)

-- Cboe C1 Options Complex Pitch 2.1.37 messages
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.c1.options.complex.pitch.v2.1.37.addorderexpandedmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.c1.options.complex.pitch.v2.1.37.addorderlongmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.c1.options.complex.pitch.v2.1.37.addordershortmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.c1.options.complex.pitch.v2.1.37.auctioncancelmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.c1.options.complex.pitch.v2.1.37.auctionnotificationmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.c1.options.complex.pitch.v2.1.37.auctionsummarymessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.c1.options.complex.pitch.v2.1.37.auctiontrademessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.c1.options.complex.pitch.v2.1.37.auctionupdatemessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_definition_expanded_message = ProtoField.new("Complex Instrument Definition Expanded Message", "cboe.c1.options.complex.pitch.v2.1.37.complexinstrumentdefinitionexpandedmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.c1.options.complex.pitch.v2.1.37.deleteordermessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.c1.options.complex.pitch.v2.1.37.endofsessionmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.c1.options.complex.pitch.v2.1.37.modifyorderlongmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.c1.options.complex.pitch.v2.1.37.modifyordershortmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.c1.options.complex.pitch.v2.1.37.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.c1.options.complex.pitch.v2.1.37.orderexecutedmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.c1.options.complex.pitch.v2.1.37.reducesizelongmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.c1.options.complex.pitch.v2.1.37.reducesizeshortmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c1.options.complex.pitch.v2.1.37.symbolmappingmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.time_message = ProtoField.new("Time Message", "cboe.c1.options.complex.pitch.v2.1.37.timemessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.time_reference_message = ProtoField.new("Time Reference Message", "cboe.c1.options.complex.pitch.v2.1.37.timereferencemessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.c1.options.complex.pitch.v2.1.37.tradelongmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.c1.options.complex.pitch.v2.1.37.tradeshortmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.c1.options.complex.pitch.v2.1.37.tradingstatusmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.transaction_begin = ProtoField.new("Transaction Begin", "cboe.c1.options.complex.pitch.v2.1.37.transactionbegin", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.transaction_end_message = ProtoField.new("Transaction End Message", "cboe.c1.options.complex.pitch.v2.1.37.transactionendmessage", ftypes.STRING)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.c1.options.complex.pitch.v2.1.37.unitclearmessage", ftypes.STRING)

-- Cboe C1 Options Complex Pitch 2.1.37 generated fields
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_leg_index = ProtoField.new("Complex Instrument Leg Index", "cboe.c1.options.complex.pitch.v2.1.37.complexinstrumentlegindex", ftypes.UINT16)
omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message_index = ProtoField.new("Message Index", "cboe.c1.options.complex.pitch.v2.1.37.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C1 Options Complex Pitch 2.1.37 Element Dissection Options
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
show.time_reference_message = true
show.trade_long_message = true
show.trade_short_message = true
show.trading_status_message = true
show.transaction_begin = true
show.transaction_end_message = true
show.unit_clear_message = true
show.payload = false

-- Register Cboe C1 Options Complex Pitch 2.1.37 Show Options
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_add_order_expanded_message = Pref.bool("Show Add Order Expanded Message", show.add_order_expanded_message, "Parse and add Add Order Expanded Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_definition_expanded_message = Pref.bool("Show Complex Instrument Definition Expanded Message", show.complex_instrument_definition_expanded_message, "Parse and add Complex Instrument Definition Expanded Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_leg = Pref.bool("Show Complex Instrument Leg", show.complex_instrument_leg, "Parse and add Complex Instrument Leg to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_type = Pref.bool("Show Complex Instrument Type", show.complex_instrument_type, "Parse and add Complex Instrument Type to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_symbol_mapping_message = Pref.bool("Show Symbol Mapping Message", show.symbol_mapping_message, "Parse and add Symbol Mapping Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_time_reference_message = Pref.bool("Show Time Reference Message", show.time_reference_message, "Parse and add Time Reference Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_transaction_begin = Pref.bool("Show Transaction Begin", show.transaction_begin, "Parse and add Transaction Begin to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_transaction_end_message = Pref.bool("Show Transaction End Message", show.transaction_end_message, "Parse and add Transaction End Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cboe_c1_options_complex_pitch_v2_1_37.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_expanded_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_add_order_expanded_message then
    show.add_order_expanded_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_add_order_expanded_message
    changed = true
  end
  if show.add_order_long_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_add_order_long_message then
    show.add_order_long_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_add_order_short_message then
    show.add_order_short_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_cancel_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_cancel_message then
    show.auction_cancel_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_notification_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_notification_message then
    show.auction_notification_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_summary_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_summary_message then
    show.auction_summary_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_trade_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_trade_message then
    show.auction_trade_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_trade_message
    changed = true
  end
  if show.auction_update_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_update_message then
    show.auction_update_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_auction_update_message
    changed = true
  end
  if show.complex_instrument_definition_expanded_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_definition_expanded_message then
    show.complex_instrument_definition_expanded_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_definition_expanded_message
    changed = true
  end
  if show.complex_instrument_leg ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_leg then
    show.complex_instrument_leg = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_leg
    changed = true
  end
  if show.complex_instrument_type ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_type then
    show.complex_instrument_type = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_complex_instrument_type
    changed = true
  end
  if show.delete_order_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_delete_order_message then
    show.delete_order_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_session_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_end_of_session_message then
    show.end_of_session_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_end_of_session_message
    changed = true
  end
  if show.message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_message then
    show.message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_message_header then
    show.message_header = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_modify_order_long_message then
    show.modify_order_long_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_modify_order_short_message then
    show.modify_order_short_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_order_executed_message then
    show.order_executed_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_packet then
    show.packet = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_packet_header then
    show.packet_header = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.symbol_mapping_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_symbol_mapping_message then
    show.symbol_mapping_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_symbol_mapping_message
    changed = true
  end
  if show.time_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_time_message then
    show.time_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_time_message
    changed = true
  end
  if show.time_reference_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_time_reference_message then
    show.time_reference_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_time_reference_message
    changed = true
  end
  if show.trade_long_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_trade_long_message then
    show.trade_long_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_trade_short_message then
    show.trade_short_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_trading_status_message then
    show.trading_status_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_trading_status_message
    changed = true
  end
  if show.transaction_begin ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_transaction_begin then
    show.transaction_begin = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_transaction_begin
    changed = true
  end
  if show.transaction_end_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_transaction_end_message then
    show.transaction_end_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_transaction_end_message
    changed = true
  end
  if show.unit_clear_message ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_unit_clear_message then
    show.unit_clear_message = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_unit_clear_message
    changed = true
  end
  if show.payload ~= omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_payload then
    show.payload = omi_cboe_c1_options_complex_pitch_v2_1_37.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe C1 Options Complex Pitch 2.1.37
-----------------------------------------------------------------------

-- Time Offset
cboe_c1_options_complex_pitch_v2_1_37.time_offset = {}

-- Size: Time Offset
cboe_c1_options_complex_pitch_v2_1_37.time_offset.size = 4

-- Display: Time Offset
cboe_c1_options_complex_pitch_v2_1_37.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.time_offset, range, value, display)

  return offset + length, value
end

-- End Of Session Message
cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message = {}

-- Size: End Of Session Message
cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size

-- Display: End Of Session Message
cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
cboe_c1_options_complex_pitch_v2_1_37.quantity = {}

-- Size: Quantity
cboe_c1_options_complex_pitch_v2_1_37.quantity.size = 4

-- Display: Quantity
cboe_c1_options_complex_pitch_v2_1_37.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_c1_options_complex_pitch_v2_1_37.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.quantity, range, value, display)

  return offset + length, value
end

-- Price
cboe_c1_options_complex_pitch_v2_1_37.price = {}

-- Size: Price
cboe_c1_options_complex_pitch_v2_1_37.price.size = 8

-- Display: Price
cboe_c1_options_complex_pitch_v2_1_37.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_c1_options_complex_pitch_v2_1_37.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_c1_options_complex_pitch_v2_1_37.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_complex_pitch_v2_1_37.price.translate(raw)
  local display = cboe_c1_options_complex_pitch_v2_1_37.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.price, range, value, display)

  return offset + length, value
end

-- Auction Opening Type
cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type = {}

-- Size: Auction Opening Type
cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type.size = 1

-- Display: Auction Opening Type
cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type.display = function(value)
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
cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_opening_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id 8
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8 = {}

-- Size: Complex Instrument Id 8
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.size = 8

-- Display: Complex Instrument Id 8
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.display = function(value)
  return "Complex Instrument Id 8: "..value
end

-- Dissect: Complex Instrument Id 8
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_id_8, range, value, display)

  return offset + length, value
end

-- Auction Summary Message
cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.size + 
  cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity.size

-- Display: Auction Summary Message
cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id 8: 8 Byte Ascii String
  index, complex_instrument_id_8 = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.dissect(buffer, index, packet, parent)

  -- Auction Opening Type: 1 Byte Ascii String Enum with 3 values
  index, auction_opening_type = cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_c1_options_complex_pitch_v2_1_37.price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c1_options_complex_pitch_v2_1_37.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Composite Market Offer Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price.translate(raw)
  local display = cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price.translate(raw)
  local display = cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_c1_options_complex_pitch_v2_1_37.opening_condition = {}

-- Size: Opening Condition
cboe_c1_options_complex_pitch_v2_1_37.opening_condition.size = 1

-- Display: Opening Condition
cboe_c1_options_complex_pitch_v2_1_37.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_c1_options_complex_pitch_v2_1_37.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_c1_options_complex_pitch_v2_1_37.auction_only_price = {}

-- Size: Auction Only Price
cboe_c1_options_complex_pitch_v2_1_37.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_c1_options_complex_pitch_v2_1_37.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_c1_options_complex_pitch_v2_1_37.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_c1_options_complex_pitch_v2_1_37.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_complex_pitch_v2_1_37.auction_only_price.translate(raw)
  local display = cboe_c1_options_complex_pitch_v2_1_37.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_c1_options_complex_pitch_v2_1_37.indicative_price = {}

-- Size: Indicative Price
cboe_c1_options_complex_pitch_v2_1_37.indicative_price.size = 8

-- Display: Indicative Price
cboe_c1_options_complex_pitch_v2_1_37.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_c1_options_complex_pitch_v2_1_37.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_c1_options_complex_pitch_v2_1_37.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_complex_pitch_v2_1_37.indicative_price.translate(raw)
  local display = cboe_c1_options_complex_pitch_v2_1_37.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_c1_options_complex_pitch_v2_1_37.sell_contracts = {}

-- Size: Sell Contracts
cboe_c1_options_complex_pitch_v2_1_37.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_c1_options_complex_pitch_v2_1_37.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_c1_options_complex_pitch_v2_1_37.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_c1_options_complex_pitch_v2_1_37.buy_contracts = {}

-- Size: Buy Contracts
cboe_c1_options_complex_pitch_v2_1_37.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_c1_options_complex_pitch_v2_1_37.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_c1_options_complex_pitch_v2_1_37.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_c1_options_complex_pitch_v2_1_37.reference_price = {}

-- Size: Reference Price
cboe_c1_options_complex_pitch_v2_1_37.reference_price.size = 8

-- Display: Reference Price
cboe_c1_options_complex_pitch_v2_1_37.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_c1_options_complex_pitch_v2_1_37.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_c1_options_complex_pitch_v2_1_37.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_complex_pitch_v2_1_37.reference_price.translate(raw)
  local display = cboe_c1_options_complex_pitch_v2_1_37.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Auction Update Message
cboe_c1_options_complex_pitch_v2_1_37.auction_update_message = {}

-- Size: Auction Update Message
cboe_c1_options_complex_pitch_v2_1_37.auction_update_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.size + 
  cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type.size + 
  cboe_c1_options_complex_pitch_v2_1_37.reference_price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.buy_contracts.size + 
  cboe_c1_options_complex_pitch_v2_1_37.sell_contracts.size + 
  cboe_c1_options_complex_pitch_v2_1_37.indicative_price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.auction_only_price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.opening_condition.size + 
  cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price.size

-- Display: Auction Update Message
cboe_c1_options_complex_pitch_v2_1_37.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_c1_options_complex_pitch_v2_1_37.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id 8: 8 Byte Ascii String
  index, complex_instrument_id_8 = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.dissect(buffer, index, packet, parent)

  -- Auction Opening Type: 1 Byte Ascii String Enum with 3 values
  index, auction_opening_type = cboe_c1_options_complex_pitch_v2_1_37.auction_opening_type.dissect(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Signed Fixed Width Integer
  index, reference_price = cboe_c1_options_complex_pitch_v2_1_37.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: 4 Byte Unsigned Fixed Width Integer
  index, buy_contracts = cboe_c1_options_complex_pitch_v2_1_37.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: 4 Byte Unsigned Fixed Width Integer
  index, sell_contracts = cboe_c1_options_complex_pitch_v2_1_37.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Signed Fixed Width Integer
  index, indicative_price = cboe_c1_options_complex_pitch_v2_1_37.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Signed Fixed Width Integer
  index, auction_only_price = cboe_c1_options_complex_pitch_v2_1_37.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: 1 Byte Ascii String
  index, opening_condition = cboe_c1_options_complex_pitch_v2_1_37.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: 8 Byte Signed Fixed Width Integer
  index, composite_market_bid_price = cboe_c1_options_complex_pitch_v2_1_37.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: 8 Byte Signed Fixed Width Integer
  index, composite_market_offer_price = cboe_c1_options_complex_pitch_v2_1_37.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_c1_options_complex_pitch_v2_1_37.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Padding
cboe_c1_options_complex_pitch_v2_1_37.padding = {}

-- Size: Padding
cboe_c1_options_complex_pitch_v2_1_37.padding.size = 1

-- Display: Padding
cboe_c1_options_complex_pitch_v2_1_37.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect: Padding
cboe_c1_options_complex_pitch_v2_1_37.padding.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.padding.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1_options_complex_pitch_v2_1_37.padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.padding, range, value, display)

  return offset + length, value
end

-- Gth Trading Status
cboe_c1_options_complex_pitch_v2_1_37.gth_trading_status = {}

-- Size: Gth Trading Status
cboe_c1_options_complex_pitch_v2_1_37.gth_trading_status.size = 1

-- Display: Gth Trading Status
cboe_c1_options_complex_pitch_v2_1_37.gth_trading_status.display = function(value)
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
cboe_c1_options_complex_pitch_v2_1_37.gth_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.gth_trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.gth_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.gth_trading_status, range, value, display)

  return offset + length, value
end

-- Reserved
cboe_c1_options_complex_pitch_v2_1_37.reserved = {}

-- Size: Reserved
cboe_c1_options_complex_pitch_v2_1_37.reserved.size = 1

-- Display: Reserved
cboe_c1_options_complex_pitch_v2_1_37.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_c1_options_complex_pitch_v2_1_37.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1_options_complex_pitch_v2_1_37.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.reserved, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_c1_options_complex_pitch_v2_1_37.trading_status = {}

-- Size: Trading Status
cboe_c1_options_complex_pitch_v2_1_37.trading_status.size = 1

-- Display: Trading Status
cboe_c1_options_complex_pitch_v2_1_37.trading_status.display = function(value)
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
cboe_c1_options_complex_pitch_v2_1_37.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unused
cboe_c1_options_complex_pitch_v2_1_37.unused = {}

-- Size: Unused
cboe_c1_options_complex_pitch_v2_1_37.unused.size = 2

-- Display: Unused
cboe_c1_options_complex_pitch_v2_1_37.unused.display = function(value)
  return "Unused: "..value
end

-- Dissect: Unused
cboe_c1_options_complex_pitch_v2_1_37.unused.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.unused.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1_options_complex_pitch_v2_1_37.unused.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.unused, range, value, display)

  return offset + length, value
end

-- Complex Symbol Id
cboe_c1_options_complex_pitch_v2_1_37.complex_symbol_id = {}

-- Size: Complex Symbol Id
cboe_c1_options_complex_pitch_v2_1_37.complex_symbol_id.size = 6

-- Display: Complex Symbol Id
cboe_c1_options_complex_pitch_v2_1_37.complex_symbol_id.display = function(value)
  return "Complex Symbol Id: "..value
end

-- Dissect: Complex Symbol Id
cboe_c1_options_complex_pitch_v2_1_37.complex_symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.complex_symbol_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.complex_symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_symbol_id, range, value, display)

  return offset + length, value
end

-- Trading Status Message
cboe_c1_options_complex_pitch_v2_1_37.trading_status_message = {}

-- Size: Trading Status Message
cboe_c1_options_complex_pitch_v2_1_37.trading_status_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_symbol_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.unused.size + 
  cboe_c1_options_complex_pitch_v2_1_37.trading_status.size + 
  cboe_c1_options_complex_pitch_v2_1_37.reserved.size + 
  cboe_c1_options_complex_pitch_v2_1_37.gth_trading_status.size + 
  cboe_c1_options_complex_pitch_v2_1_37.padding.size

-- Display: Trading Status Message
cboe_c1_options_complex_pitch_v2_1_37.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_c1_options_complex_pitch_v2_1_37.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Symbol Id: 6 Byte Ascii String
  index, complex_symbol_id = cboe_c1_options_complex_pitch_v2_1_37.complex_symbol_id.dissect(buffer, index, packet, parent)

  -- Unused: 2 Byte
  index, unused = cboe_c1_options_complex_pitch_v2_1_37.unused.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 4 values
  index, trading_status = cboe_c1_options_complex_pitch_v2_1_37.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = cboe_c1_options_complex_pitch_v2_1_37.reserved.dissect(buffer, index, packet, parent)

  -- Gth Trading Status: 1 Byte Ascii String Enum with 3 values
  index, gth_trading_status = cboe_c1_options_complex_pitch_v2_1_37.gth_trading_status.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_c1_options_complex_pitch_v2_1_37.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_c1_options_complex_pitch_v2_1_37.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Execution Id
cboe_c1_options_complex_pitch_v2_1_37.execution_id = {}

-- Size: Execution Id
cboe_c1_options_complex_pitch_v2_1_37.execution_id.size = 8

-- Display: Execution Id
cboe_c1_options_complex_pitch_v2_1_37.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_c1_options_complex_pitch_v2_1_37.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_complex_pitch_v2_1_37.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_c1_options_complex_pitch_v2_1_37.auction_id = {}

-- Size: Auction Id
cboe_c1_options_complex_pitch_v2_1_37.auction_id.size = 8

-- Display: Auction Id
cboe_c1_options_complex_pitch_v2_1_37.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_c1_options_complex_pitch_v2_1_37.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_complex_pitch_v2_1_37.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Trade Message
cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.auction_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.execution_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity.size

-- Display: Auction Trade Message
cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c1_options_complex_pitch_v2_1_37.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1_options_complex_pitch_v2_1_37.execution_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_c1_options_complex_pitch_v2_1_37.price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c1_options_complex_pitch_v2_1_37.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.auction_id.size

-- Display: Auction Cancel Message
cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c1_options_complex_pitch_v2_1_37.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Id
cboe_c1_options_complex_pitch_v2_1_37.client_id = {}

-- Size: Client Id
cboe_c1_options_complex_pitch_v2_1_37.client_id.size = 4

-- Display: Client Id
cboe_c1_options_complex_pitch_v2_1_37.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_c1_options_complex_pitch_v2_1_37.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.client_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.client_id, range, value, display)

  return offset + length, value
end

-- Auction End Offset
cboe_c1_options_complex_pitch_v2_1_37.auction_end_offset = {}

-- Size: Auction End Offset
cboe_c1_options_complex_pitch_v2_1_37.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_c1_options_complex_pitch_v2_1_37.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_c1_options_complex_pitch_v2_1_37.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_c1_options_complex_pitch_v2_1_37.participant_id = {}

-- Size: Participant Id
cboe_c1_options_complex_pitch_v2_1_37.participant_id.size = 4

-- Display: Participant Id
cboe_c1_options_complex_pitch_v2_1_37.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_c1_options_complex_pitch_v2_1_37.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_c1_options_complex_pitch_v2_1_37.customer_indicator = {}

-- Size: Customer Indicator
cboe_c1_options_complex_pitch_v2_1_37.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_c1_options_complex_pitch_v2_1_37.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_c1_options_complex_pitch_v2_1_37.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_c1_options_complex_pitch_v2_1_37.side_indicator = {}

-- Size: Side Indicator
cboe_c1_options_complex_pitch_v2_1_37.side_indicator.size = 1

-- Display: Side Indicator
cboe_c1_options_complex_pitch_v2_1_37.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_c1_options_complex_pitch_v2_1_37.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_c1_options_complex_pitch_v2_1_37.auction_type = {}

-- Size: Auction Type
cboe_c1_options_complex_pitch_v2_1_37.auction_type.size = 1

-- Display: Auction Type
cboe_c1_options_complex_pitch_v2_1_37.auction_type.display = function(value)
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
cboe_c1_options_complex_pitch_v2_1_37.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Id
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id = {}

-- Size: Complex Instrument Id
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.size = 6

-- Display: Complex Instrument Id
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.display = function(value)
  return "Complex Instrument Id: "..value
end

-- Dissect: Complex Instrument Id
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_id, range, value, display)

  return offset + length, value
end

-- Auction Notification Message
cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.auction_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.auction_type.size + 
  cboe_c1_options_complex_pitch_v2_1_37.side_indicator.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity.size + 
  cboe_c1_options_complex_pitch_v2_1_37.customer_indicator.size + 
  cboe_c1_options_complex_pitch_v2_1_37.participant_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.auction_end_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.client_id.size

-- Display: Auction Notification Message
cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c1_options_complex_pitch_v2_1_37.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = cboe_c1_options_complex_pitch_v2_1_37.auction_type.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1_options_complex_pitch_v2_1_37.side_indicator.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_c1_options_complex_pitch_v2_1_37.price.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c1_options_complex_pitch_v2_1_37.quantity.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_c1_options_complex_pitch_v2_1_37.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_c1_options_complex_pitch_v2_1_37.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = cboe_c1_options_complex_pitch_v2_1_37.auction_end_offset.dissect(buffer, index, packet, parent)

  -- Client Id: 4 Byte Ascii String
  index, client_id = cboe_c1_options_complex_pitch_v2_1_37.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Condition
cboe_c1_options_complex_pitch_v2_1_37.trade_condition = {}

-- Size: Trade Condition
cboe_c1_options_complex_pitch_v2_1_37.trade_condition.size = 1

-- Display: Trade Condition
cboe_c1_options_complex_pitch_v2_1_37.trade_condition.display = function(value)
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
cboe_c1_options_complex_pitch_v2_1_37.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_c1_options_complex_pitch_v2_1_37.price_short = {}

-- Size: Price Short
cboe_c1_options_complex_pitch_v2_1_37.price_short.size = 2

-- Display: Price Short
cboe_c1_options_complex_pitch_v2_1_37.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_c1_options_complex_pitch_v2_1_37.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_c1_options_complex_pitch_v2_1_37.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_c1_options_complex_pitch_v2_1_37.price_short.translate(raw)
  local display = cboe_c1_options_complex_pitch_v2_1_37.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_c1_options_complex_pitch_v2_1_37.quantity_short = {}

-- Size: Quantity Short
cboe_c1_options_complex_pitch_v2_1_37.quantity_short.size = 2

-- Display: Quantity Short
cboe_c1_options_complex_pitch_v2_1_37.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_c1_options_complex_pitch_v2_1_37.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_c1_options_complex_pitch_v2_1_37.order_id = {}

-- Size: Order Id
cboe_c1_options_complex_pitch_v2_1_37.order_id.size = 8

-- Display: Order Id
cboe_c1_options_complex_pitch_v2_1_37.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_complex_pitch_v2_1_37.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Short Message
cboe_c1_options_complex_pitch_v2_1_37.trade_short_message = {}

-- Size: Trade Short Message
cboe_c1_options_complex_pitch_v2_1_37.trade_short_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.side_indicator.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity_short.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price_short.size + 
  cboe_c1_options_complex_pitch_v2_1_37.execution_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.trade_condition.size

-- Display: Trade Short Message
cboe_c1_options_complex_pitch_v2_1_37.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_c1_options_complex_pitch_v2_1_37.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1_options_complex_pitch_v2_1_37.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_c1_options_complex_pitch_v2_1_37.quantity_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Signed Fixed Width Integer
  index, price_short = cboe_c1_options_complex_pitch_v2_1_37.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1_options_complex_pitch_v2_1_37.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 14 values
  index, trade_condition = cboe_c1_options_complex_pitch_v2_1_37.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_c1_options_complex_pitch_v2_1_37.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_c1_options_complex_pitch_v2_1_37.trade_long_message = {}

-- Size: Trade Long Message
cboe_c1_options_complex_pitch_v2_1_37.trade_long_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.side_indicator.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.execution_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.trade_condition.size

-- Display: Trade Long Message
cboe_c1_options_complex_pitch_v2_1_37.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_c1_options_complex_pitch_v2_1_37.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1_options_complex_pitch_v2_1_37.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c1_options_complex_pitch_v2_1_37.quantity.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_c1_options_complex_pitch_v2_1_37.price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1_options_complex_pitch_v2_1_37.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 14 values
  index, trade_condition = cboe_c1_options_complex_pitch_v2_1_37.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_c1_options_complex_pitch_v2_1_37.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_c1_options_complex_pitch_v2_1_37.delete_order_message = {}

-- Size: Delete Order Message
cboe_c1_options_complex_pitch_v2_1_37.delete_order_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size

-- Display: Delete Order Message
cboe_c1_options_complex_pitch_v2_1_37.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_c1_options_complex_pitch_v2_1_37.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_c1_options_complex_pitch_v2_1_37.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity_short.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price_short.size + 
  cboe_c1_options_complex_pitch_v2_1_37.padding.size

-- Display: Modify Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_c1_options_complex_pitch_v2_1_37.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Signed Fixed Width Integer
  index, price_short = cboe_c1_options_complex_pitch_v2_1_37.price_short.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_c1_options_complex_pitch_v2_1_37.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.padding.size

-- Display: Modify Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c1_options_complex_pitch_v2_1_37.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_c1_options_complex_pitch_v2_1_37.price.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_c1_options_complex_pitch_v2_1_37.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Quantity Short
cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Reduce Size Short Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, canceled_quantity_short = cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Quantity
cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity = {}

-- Size: Canceled Quantity
cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity.size = 4

-- Display: Canceled Quantity
cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity.display = function(value)
  return "Canceled Quantity: "..value
end

-- Dissect: Canceled Quantity
cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.canceled_quantity, range, value, display)

  return offset + length, value
end

-- Reduce Size Long Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity.size

-- Display: Reduce Size Long Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_quantity = cboe_c1_options_complex_pitch_v2_1_37.canceled_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Remaining Quantity
cboe_c1_options_complex_pitch_v2_1_37.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_c1_options_complex_pitch_v2_1_37.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_c1_options_complex_pitch_v2_1_37.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_c1_options_complex_pitch_v2_1_37.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_c1_options_complex_pitch_v2_1_37.executed_quantity = {}

-- Size: Executed Quantity
cboe_c1_options_complex_pitch_v2_1_37.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_c1_options_complex_pitch_v2_1_37.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_c1_options_complex_pitch_v2_1_37.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed At Price Size Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.executed_quantity.size + 
  cboe_c1_options_complex_pitch_v2_1_37.remaining_quantity.size + 
  cboe_c1_options_complex_pitch_v2_1_37.execution_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.trade_condition.size

-- Display: Order Executed At Price Size Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_c1_options_complex_pitch_v2_1_37.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = cboe_c1_options_complex_pitch_v2_1_37.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1_options_complex_pitch_v2_1_37.execution_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_c1_options_complex_pitch_v2_1_37.price.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 14 values
  index, trade_condition = cboe_c1_options_complex_pitch_v2_1_37.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_at_price_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_message = {}

-- Size: Order Executed Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.executed_quantity.size + 
  cboe_c1_options_complex_pitch_v2_1_37.execution_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.trade_condition.size

-- Display: Order Executed Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_c1_options_complex_pitch_v2_1_37.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1_options_complex_pitch_v2_1_37.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 14 values
  index, trade_condition = cboe_c1_options_complex_pitch_v2_1_37.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_c1_options_complex_pitch_v2_1_37.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.side_indicator.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.reserved.size + 
  cboe_c1_options_complex_pitch_v2_1_37.participant_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.customer_indicator.size + 
  cboe_c1_options_complex_pitch_v2_1_37.client_id.size

-- Display: Add Order Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1_options_complex_pitch_v2_1_37.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c1_options_complex_pitch_v2_1_37.quantity.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id 8: 8 Byte Ascii String
  index, complex_instrument_id_8 = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id_8.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_c1_options_complex_pitch_v2_1_37.price.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = cboe_c1_options_complex_pitch_v2_1_37.reserved.dissect(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_c1_options_complex_pitch_v2_1_37.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_c1_options_complex_pitch_v2_1_37.customer_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: 4 Byte Ascii String
  index, client_id = cboe_c1_options_complex_pitch_v2_1_37.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_expanded_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.side_indicator.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity_short.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price_short.size + 
  cboe_c1_options_complex_pitch_v2_1_37.padding.size

-- Display: Add Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1_options_complex_pitch_v2_1_37.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_c1_options_complex_pitch_v2_1_37.quantity_short.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Signed Fixed Width Integer
  index, price_short = cboe_c1_options_complex_pitch_v2_1_37.price_short.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_c1_options_complex_pitch_v2_1_37.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.order_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.side_indicator.size + 
  cboe_c1_options_complex_pitch_v2_1_37.quantity.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.size + 
  cboe_c1_options_complex_pitch_v2_1_37.price.size + 
  cboe_c1_options_complex_pitch_v2_1_37.padding.size

-- Display: Add Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1_options_complex_pitch_v2_1_37.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1_options_complex_pitch_v2_1_37.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c1_options_complex_pitch_v2_1_37.quantity.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = cboe_c1_options_complex_pitch_v2_1_37.price.dissect(buffer, index, packet, parent)

  -- Padding: 1 Byte
  index, padding = cboe_c1_options_complex_pitch_v2_1_37.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying
cboe_c1_options_complex_pitch_v2_1_37.underlying = {}

-- Size: Underlying
cboe_c1_options_complex_pitch_v2_1_37.underlying.size = 8

-- Display: Underlying
cboe_c1_options_complex_pitch_v2_1_37.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_c1_options_complex_pitch_v2_1_37.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.underlying.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.underlying, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_c1_options_complex_pitch_v2_1_37.symbol_condition = {}

-- Size: Symbol Condition
cboe_c1_options_complex_pitch_v2_1_37.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c1_options_complex_pitch_v2_1_37.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c1_options_complex_pitch_v2_1_37.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c1_options_complex_pitch_v2_1_37.osi_symbol = {}

-- Size: Osi Symbol
cboe_c1_options_complex_pitch_v2_1_37.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c1_options_complex_pitch_v2_1_37.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c1_options_complex_pitch_v2_1_37.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.osi_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c1_options_complex_pitch_v2_1_37.feed_symbol = {}

-- Size: Feed Symbol
cboe_c1_options_complex_pitch_v2_1_37.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c1_options_complex_pitch_v2_1_37.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c1_options_complex_pitch_v2_1_37.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.feed_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Symbol Mapping Message
cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.feed_symbol.size + 
  cboe_c1_options_complex_pitch_v2_1_37.osi_symbol.size + 
  cboe_c1_options_complex_pitch_v2_1_37.symbol_condition.size + 
  cboe_c1_options_complex_pitch_v2_1_37.underlying.size

-- Display: Symbol Mapping Message
cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index, feed_symbol = cboe_c1_options_complex_pitch_v2_1_37.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index, osi_symbol = cboe_c1_options_complex_pitch_v2_1_37.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String Enum with 2 values
  index, symbol_condition = cboe_c1_options_complex_pitch_v2_1_37.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: 8 Byte Ascii String
  index, underlying = cboe_c1_options_complex_pitch_v2_1_37.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Security Type
cboe_c1_options_complex_pitch_v2_1_37.leg_security_type = {}

-- Size: Leg Security Type
cboe_c1_options_complex_pitch_v2_1_37.leg_security_type.size = 1

-- Display: Leg Security Type
cboe_c1_options_complex_pitch_v2_1_37.leg_security_type.display = function(value)
  if value == "O" then
    return "Leg Security Type: Option (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
cboe_c1_options_complex_pitch_v2_1_37.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Ratio
cboe_c1_options_complex_pitch_v2_1_37.leg_ratio = {}

-- Size: Leg Ratio
cboe_c1_options_complex_pitch_v2_1_37.leg_ratio.size = 4

-- Display: Leg Ratio
cboe_c1_options_complex_pitch_v2_1_37.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
cboe_c1_options_complex_pitch_v2_1_37.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = cboe_c1_options_complex_pitch_v2_1_37.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_c1_options_complex_pitch_v2_1_37.leg_symbol = {}

-- Size: Leg Symbol
cboe_c1_options_complex_pitch_v2_1_37.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_c1_options_complex_pitch_v2_1_37.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_c1_options_complex_pitch_v2_1_37.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.leg_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Complex Instrument Leg
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_leg = {}

-- Size: Complex Instrument Leg
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_leg.size =
  cboe_c1_options_complex_pitch_v2_1_37.leg_symbol.size + 
  cboe_c1_options_complex_pitch_v2_1_37.leg_ratio.size + 
  cboe_c1_options_complex_pitch_v2_1_37.leg_security_type.size

-- Display: Complex Instrument Leg
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Leg
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_leg.fields = function(buffer, offset, packet, parent, complex_instrument_leg_index)
  local index = offset

  -- Implicit Complex Instrument Leg Index
  if complex_instrument_leg_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_leg_index, complex_instrument_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: 8 Byte Ascii String
  index, leg_symbol = cboe_c1_options_complex_pitch_v2_1_37.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Signed Fixed Width Integer
  index, leg_ratio = cboe_c1_options_complex_pitch_v2_1_37.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Ascii String Enum with 2 values
  index, leg_security_type = cboe_c1_options_complex_pitch_v2_1_37.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Instrument Leg
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_leg.dissect = function(buffer, offset, packet, parent, complex_instrument_leg_index)
  if show.complex_instrument_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_leg, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_leg.fields(buffer, offset, packet, parent, complex_instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_leg.fields(buffer, offset, packet, parent, complex_instrument_leg_index)
  end
end

-- Leg Count
cboe_c1_options_complex_pitch_v2_1_37.leg_count = {}

-- Size: Leg Count
cboe_c1_options_complex_pitch_v2_1_37.leg_count.size = 1

-- Display: Leg Count
cboe_c1_options_complex_pitch_v2_1_37.leg_count.display = function(value)
  return "Leg Count: "..value
end

-- Dissect: Leg Count
cboe_c1_options_complex_pitch_v2_1_37.leg_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.leg_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.leg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.leg_count, range, value, display)

  return offset + length, value
end

-- Complex Auction Reserved Bytes
cboe_c1_options_complex_pitch_v2_1_37.complex_auction_reserved_bytes = {}

-- Size: Complex Auction Reserved Bytes
cboe_c1_options_complex_pitch_v2_1_37.complex_auction_reserved_bytes.size = 3

-- Display: Complex Auction Reserved Bytes
cboe_c1_options_complex_pitch_v2_1_37.complex_auction_reserved_bytes.display = function(value)
  return "Complex Auction Reserved Bytes: "..value
end

-- Dissect: Complex Auction Reserved Bytes
cboe_c1_options_complex_pitch_v2_1_37.complex_auction_reserved_bytes.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.complex_auction_reserved_bytes.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1_options_complex_pitch_v2_1_37.complex_auction_reserved_bytes.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_auction_reserved_bytes, range, value, display)

  return offset + length, value
end

-- Complex Auction Type
cboe_c1_options_complex_pitch_v2_1_37.complex_auction_type = {}

-- Size: Complex Auction Type
cboe_c1_options_complex_pitch_v2_1_37.complex_auction_type.size = 1

-- Display: Complex Auction Type
cboe_c1_options_complex_pitch_v2_1_37.complex_auction_type.display = function(value)
  return "Complex Auction Type: "..value
end

-- Dissect: Complex Auction Type
cboe_c1_options_complex_pitch_v2_1_37.complex_auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.complex_auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.complex_auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_auction_type, range, value, display)

  return offset + length, value
end

-- Complex Instrument Type
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type = {}

-- Size: Complex Instrument Type
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type.size =
  cboe_c1_options_complex_pitch_v2_1_37.complex_auction_type.size + 
  cboe_c1_options_complex_pitch_v2_1_37.complex_auction_reserved_bytes.size

-- Display: Complex Instrument Type
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type.display = function(buffer, offset, value, packet, parent)
  return "Complex Instrument Type: "..value
end

-- Dissect Fields: Complex Instrument Type
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Complex Auction Type: 1 Byte Ascii String
  index, complex_auction_type = cboe_c1_options_complex_pitch_v2_1_37.complex_auction_type.dissect(buffer, index, packet, parent)

  -- Complex Auction Reserved Bytes: 3 Byte
  index, complex_auction_reserved_bytes = cboe_c1_options_complex_pitch_v2_1_37.complex_auction_reserved_bytes.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Instrument Type
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type.dissect = function(buffer, offset, packet, parent)
  -- Optionally add element to protocol tree
  if show.complex_instrument_type then
    local length = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type.size(buffer, offset)
    local range = buffer(offset, length)
    local value = range:string()
    local display = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type.display(buffer, offset, value, packet, parent)
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_type, range, value, display)
  end

  return cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type.fields(buffer, offset, packet, parent)
end

-- Complex Instrument Underlying
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_underlying = {}

-- Size: Complex Instrument Underlying
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_underlying.size = 8

-- Display: Complex Instrument Underlying
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_underlying.display = function(value)
  return "Complex Instrument Underlying: "..value
end

-- Dissect: Complex Instrument Underlying
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_underlying.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_underlying, range, value, display)

  return offset + length, value
end

-- Complex Instrument Definition Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message = {}

-- Calculate size of: Complex Instrument Definition Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_complex_pitch_v2_1_37.time_offset.size

  index = index + cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.size

  index = index + cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_underlying.size

  index = index + cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type.size

  index = index + cboe_c1_options_complex_pitch_v2_1_37.leg_count.size

  -- Calculate field size from count
  local complex_instrument_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_instrument_leg_count * 13

  return index
end

-- Display: Complex Instrument Definition Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Instrument Definition Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Complex Instrument Id: 6 Byte Ascii String
  index, complex_instrument_id = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_id.dissect(buffer, index, packet, parent)

  -- Complex Instrument Underlying: 8 Byte Ascii String
  index, complex_instrument_underlying = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_underlying.dissect(buffer, index, packet, parent)

  -- Complex Instrument Type: Struct of 2 fields
  index, complex_instrument_type = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_type.dissect(buffer, index, packet, parent)

  -- Leg Count: 1 Byte Unsigned Fixed Width Integer
  index, leg_count = cboe_c1_options_complex_pitch_v2_1_37.leg_count.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Instrument Leg
  for complex_instrument_leg_index = 1, leg_count do
    index, complex_instrument_leg = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_leg.dissect(buffer, index, packet, parent, complex_instrument_leg_index)
  end

  return index
end

-- Dissect: Complex Instrument Definition Expanded Message
cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_instrument_definition_expanded_message then
    local length = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.complex_instrument_definition_expanded_message, range, display)
  end

  return cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message.fields(buffer, offset, packet, parent)
end

-- Transaction End Message
cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message = {}

-- Size: Transaction End Message
cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size

-- Display: Transaction End Message
cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End Message
cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End Message
cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message.dissect = function(buffer, offset, packet, parent)
  if show.transaction_end_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.transaction_end_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin
cboe_c1_options_complex_pitch_v2_1_37.transaction_begin = {}

-- Size: Transaction Begin
cboe_c1_options_complex_pitch_v2_1_37.transaction_begin.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size

-- Display: Transaction Begin
cboe_c1_options_complex_pitch_v2_1_37.transaction_begin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin
cboe_c1_options_complex_pitch_v2_1_37.transaction_begin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin
cboe_c1_options_complex_pitch_v2_1_37.transaction_begin.dissect = function(buffer, offset, packet, parent)
  if show.transaction_begin then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.transaction_begin, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.transaction_begin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.transaction_begin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.transaction_begin.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size

-- Display: Unit Clear Message
cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Epoch Time
cboe_c1_options_complex_pitch_v2_1_37.epoch_time = {}

-- Size: Epoch Time
cboe_c1_options_complex_pitch_v2_1_37.epoch_time.size = 4

-- Display: Epoch Time
cboe_c1_options_complex_pitch_v2_1_37.epoch_time.display = function(value)
  return "Epoch Time: "..value
end

-- Dissect: Epoch Time
cboe_c1_options_complex_pitch_v2_1_37.epoch_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.epoch_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.epoch_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.epoch_time, range, value, display)

  return offset + length, value
end

-- Time
cboe_c1_options_complex_pitch_v2_1_37.time = {}

-- Size: Time
cboe_c1_options_complex_pitch_v2_1_37.time.size = 4

-- Display: Time
cboe_c1_options_complex_pitch_v2_1_37.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c1_options_complex_pitch_v2_1_37.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.time, range, value, display)

  return offset + length, value
end

-- Time Message
cboe_c1_options_complex_pitch_v2_1_37.time_message = {}

-- Size: Time Message
cboe_c1_options_complex_pitch_v2_1_37.time_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.time.size + 
  cboe_c1_options_complex_pitch_v2_1_37.epoch_time.size

-- Display: Time Message
cboe_c1_options_complex_pitch_v2_1_37.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c1_options_complex_pitch_v2_1_37.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_c1_options_complex_pitch_v2_1_37.time.dissect(buffer, index, packet, parent)

  -- Epoch Time: 4 Byte Unsigned Fixed Width Integer
  index, epoch_time = cboe_c1_options_complex_pitch_v2_1_37.epoch_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_c1_options_complex_pitch_v2_1_37.time_message.dissect = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.time_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Date
cboe_c1_options_complex_pitch_v2_1_37.trade_date = {}

-- Size: Trade Date
cboe_c1_options_complex_pitch_v2_1_37.trade_date.size = 4

-- Display: Trade Date
cboe_c1_options_complex_pitch_v2_1_37.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_c1_options_complex_pitch_v2_1_37.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Midnight Reference
cboe_c1_options_complex_pitch_v2_1_37.midnight_reference = {}

-- Size: Midnight Reference
cboe_c1_options_complex_pitch_v2_1_37.midnight_reference.size = 4

-- Display: Midnight Reference
cboe_c1_options_complex_pitch_v2_1_37.midnight_reference.display = function(value)
  return "Midnight Reference: "..value
end

-- Dissect: Midnight Reference
cboe_c1_options_complex_pitch_v2_1_37.midnight_reference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.midnight_reference.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.midnight_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.midnight_reference, range, value, display)

  return offset + length, value
end

-- Time Reference Message
cboe_c1_options_complex_pitch_v2_1_37.time_reference_message = {}

-- Size: Time Reference Message
cboe_c1_options_complex_pitch_v2_1_37.time_reference_message.size =
  cboe_c1_options_complex_pitch_v2_1_37.midnight_reference.size + 
  cboe_c1_options_complex_pitch_v2_1_37.time.size + 
  cboe_c1_options_complex_pitch_v2_1_37.time_offset.size + 
  cboe_c1_options_complex_pitch_v2_1_37.trade_date.size

-- Display: Time Reference Message
cboe_c1_options_complex_pitch_v2_1_37.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
cboe_c1_options_complex_pitch_v2_1_37.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Midnight Reference: 4 Byte Unsigned Fixed Width Integer
  index, midnight_reference = cboe_c1_options_complex_pitch_v2_1_37.midnight_reference.dissect(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_c1_options_complex_pitch_v2_1_37.time.dissect(buffer, index, packet, parent)

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1_options_complex_pitch_v2_1_37.time_offset.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_c1_options_complex_pitch_v2_1_37.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
cboe_c1_options_complex_pitch_v2_1_37.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.time_reference_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.time_reference_message, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c1_options_complex_pitch_v2_1_37.payload = {}

-- Calculate runtime size of: Payload
cboe_c1_options_complex_pitch_v2_1_37.payload.size = function(buffer, offset, message_type)
  -- Size of Time Reference Message
  if message_type == 0xB1 then
    return cboe_c1_options_complex_pitch_v2_1_37.time_reference_message.size(buffer, offset)
  end
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_c1_options_complex_pitch_v2_1_37.time_message.size(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message.size(buffer, offset)
  end
  -- Size of Transaction Begin
  if message_type == 0xBC then
    return cboe_c1_options_complex_pitch_v2_1_37.transaction_begin.size(buffer, offset)
  end
  -- Size of Transaction End Message
  if message_type == 0xBD then
    return cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message.size(buffer, offset)
  end
  -- Size of Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message.size(buffer, offset)
  end
  -- Size of Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message.size(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x21 then
    return cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message.size(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message.size(buffer, offset)
  end
  -- Size of Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_c1_options_complex_pitch_v2_1_37.order_executed_message.size(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message.size(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message.size(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message.size(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message.size(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message.size(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_c1_options_complex_pitch_v2_1_37.delete_order_message.size(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x2A then
    return cboe_c1_options_complex_pitch_v2_1_37.trade_long_message.size(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_c1_options_complex_pitch_v2_1_37.trade_short_message.size(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == 0xAD then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message.size(buffer, offset)
  end
  -- Size of Auction Cancel Message
  if message_type == 0xAE then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message.size(buffer, offset)
  end
  -- Size of Auction Trade Message
  if message_type == 0xAF then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message.size(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_c1_options_complex_pitch_v2_1_37.trading_status_message.size(buffer, offset)
  end
  -- Size of Auction Update Message
  if message_type == 0xD1 then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_update_message.size(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message.size(buffer, offset)
  end
  -- Size of End Of Session Message
  if message_type == 0x2D then
    return cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_c1_options_complex_pitch_v2_1_37.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_c1_options_complex_pitch_v2_1_37.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Reference Message
  if message_type == 0xB1 then
    return cboe_c1_options_complex_pitch_v2_1_37.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c1_options_complex_pitch_v2_1_37.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_c1_options_complex_pitch_v2_1_37.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin
  if message_type == 0xBC then
    return cboe_c1_options_complex_pitch_v2_1_37.transaction_begin.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End Message
  if message_type == 0xBD then
    return cboe_c1_options_complex_pitch_v2_1_37.transaction_end_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Instrument Definition Expanded Message
  if message_type == 0x9A then
    return cboe_c1_options_complex_pitch_v2_1_37.complex_instrument_definition_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c1_options_complex_pitch_v2_1_37.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_c1_options_complex_pitch_v2_1_37.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_c1_options_complex_pitch_v2_1_37.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_c1_options_complex_pitch_v2_1_37.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_c1_options_complex_pitch_v2_1_37.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_c1_options_complex_pitch_v2_1_37.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_c1_options_complex_pitch_v2_1_37.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_c1_options_complex_pitch_v2_1_37.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_c1_options_complex_pitch_v2_1_37.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_c1_options_complex_pitch_v2_1_37.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_c1_options_complex_pitch_v2_1_37.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_c1_options_complex_pitch_v2_1_37.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_c1_options_complex_pitch_v2_1_37.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_c1_options_complex_pitch_v2_1_37.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0xD1 then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_c1_options_complex_pitch_v2_1_37.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_c1_options_complex_pitch_v2_1_37.end_of_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_c1_options_complex_pitch_v2_1_37.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_c1_options_complex_pitch_v2_1_37.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_c1_options_complex_pitch_v2_1_37.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_c1_options_complex_pitch_v2_1_37.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.payload, range, display)

  return cboe_c1_options_complex_pitch_v2_1_37.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
cboe_c1_options_complex_pitch_v2_1_37.message_type = {}

-- Size: Message Type
cboe_c1_options_complex_pitch_v2_1_37.message_type.size = 1

-- Display: Message Type
cboe_c1_options_complex_pitch_v2_1_37.message_type.display = function(value)
  if value == 0xB1 then
    return "Message Type: Time Reference Message (0xB1)"
  end
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
cboe_c1_options_complex_pitch_v2_1_37.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c1_options_complex_pitch_v2_1_37.message_length = {}

-- Size: Message Length
cboe_c1_options_complex_pitch_v2_1_37.message_length.size = 1

-- Display: Message Length
cboe_c1_options_complex_pitch_v2_1_37.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1_options_complex_pitch_v2_1_37.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_c1_options_complex_pitch_v2_1_37.message_header = {}

-- Size: Message Header
cboe_c1_options_complex_pitch_v2_1_37.message_header.size =
  cboe_c1_options_complex_pitch_v2_1_37.message_length.size + 
  cboe_c1_options_complex_pitch_v2_1_37.message_type.size

-- Display: Message Header
cboe_c1_options_complex_pitch_v2_1_37.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1_options_complex_pitch_v2_1_37.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1_options_complex_pitch_v2_1_37.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 26 values
  index, message_type = cboe_c1_options_complex_pitch_v2_1_37.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1_options_complex_pitch_v2_1_37.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message_header, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c1_options_complex_pitch_v2_1_37.message = {}

-- Display: Message
cboe_c1_options_complex_pitch_v2_1_37.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c1_options_complex_pitch_v2_1_37.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c1_options_complex_pitch_v2_1_37.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 26 branches
  index = cboe_c1_options_complex_pitch_v2_1_37.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c1_options_complex_pitch_v2_1_37.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.message, buffer(offset, 0))
    local current = cboe_c1_options_complex_pitch_v2_1_37.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c1_options_complex_pitch_v2_1_37.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c1_options_complex_pitch_v2_1_37.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequence
cboe_c1_options_complex_pitch_v2_1_37.sequence = {}

-- Size: Sequence
cboe_c1_options_complex_pitch_v2_1_37.sequence.size = 4

-- Display: Sequence
cboe_c1_options_complex_pitch_v2_1_37.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c1_options_complex_pitch_v2_1_37.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.sequence, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c1_options_complex_pitch_v2_1_37.unit = {}

-- Size: Unit
cboe_c1_options_complex_pitch_v2_1_37.unit.size = 1

-- Display: Unit
cboe_c1_options_complex_pitch_v2_1_37.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c1_options_complex_pitch_v2_1_37.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.unit, range, value, display)

  return offset + length, value
end

-- Count
cboe_c1_options_complex_pitch_v2_1_37.count = {}

-- Size: Count
cboe_c1_options_complex_pitch_v2_1_37.count.size = 1

-- Display: Count
cboe_c1_options_complex_pitch_v2_1_37.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_c1_options_complex_pitch_v2_1_37.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.count, range, value, display)

  return offset + length, value
end

-- Length
cboe_c1_options_complex_pitch_v2_1_37.length = {}

-- Size: Length
cboe_c1_options_complex_pitch_v2_1_37.length.size = 2

-- Display: Length
cboe_c1_options_complex_pitch_v2_1_37.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c1_options_complex_pitch_v2_1_37.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_complex_pitch_v2_1_37.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_complex_pitch_v2_1_37.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.length, range, value, display)

  return offset + length, value
end

-- Packet Header
cboe_c1_options_complex_pitch_v2_1_37.packet_header = {}

-- Size: Packet Header
cboe_c1_options_complex_pitch_v2_1_37.packet_header.size =
  cboe_c1_options_complex_pitch_v2_1_37.length.size + 
  cboe_c1_options_complex_pitch_v2_1_37.count.size + 
  cboe_c1_options_complex_pitch_v2_1_37.unit.size + 
  cboe_c1_options_complex_pitch_v2_1_37.sequence.size

-- Display: Packet Header
cboe_c1_options_complex_pitch_v2_1_37.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c1_options_complex_pitch_v2_1_37.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c1_options_complex_pitch_v2_1_37.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_c1_options_complex_pitch_v2_1_37.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c1_options_complex_pitch_v2_1_37.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_c1_options_complex_pitch_v2_1_37.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_c1_options_complex_pitch_v2_1_37.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37.fields.packet_header, buffer(offset, 0))
    local index = cboe_c1_options_complex_pitch_v2_1_37.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_complex_pitch_v2_1_37.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_complex_pitch_v2_1_37.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c1_options_complex_pitch_v2_1_37.packet = {}

-- Dissect Packet
cboe_c1_options_complex_pitch_v2_1_37.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c1_options_complex_pitch_v2_1_37.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_c1_options_complex_pitch_v2_1_37.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c1_options_complex_pitch_v2_1_37.init()
end

-- Dissector for Cboe C1 Options Complex Pitch 2.1.37
function omi_cboe_c1_options_complex_pitch_v2_1_37.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_c1_options_complex_pitch_v2_1_37.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c1_options_complex_pitch_v2_1_37, buffer(), omi_cboe_c1_options_complex_pitch_v2_1_37.description, "("..buffer:len().." Bytes)")
  return cboe_c1_options_complex_pitch_v2_1_37.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_c1_options_complex_pitch_v2_1_37)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_c1_options_complex_pitch_v2_1_37.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe C1 Options Complex Pitch 2.1.37
local function omi_cboe_c1_options_complex_pitch_v2_1_37_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c1_options_complex_pitch_v2_1_37.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c1_options_complex_pitch_v2_1_37
  omi_cboe_c1_options_complex_pitch_v2_1_37.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1 Options Complex Pitch 2.1.37
omi_cboe_c1_options_complex_pitch_v2_1_37:register_heuristic("udp", omi_cboe_c1_options_complex_pitch_v2_1_37_heuristic)

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
