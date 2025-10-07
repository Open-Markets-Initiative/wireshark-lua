-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C2 Options DepthOfBook Pitch 2.41.29 Protocol
local omi_cboe_c2_options_depthofbook_pitch_v2_41_29 = Proto("Cboe.C2.Options.DepthOfBook.Pitch.v2.41.29.Lua", "Cboe C2 Options DepthOfBook Pitch 2.41.29")

-- Protocol table
local cboe_c2_options_depthofbook_pitch_v2_41_29 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C2 Options DepthOfBook Pitch 2.41.29 Fields
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.add_order_flags = ProtoField.new("Add Order Flags", "cboe.c2.options.depthofbook.pitch.v2.41.29.addorderflags", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.aon = ProtoField.new("Aon", "cboe.c2.options.depthofbook.pitch.v2.41.29.aon", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.c2.options.depthofbook.pitch.v2.41.29.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_summary_type = ProtoField.new("Auction Summary Type", "cboe.c2.options.depthofbook.pitch.v2.41.29.auctionsummarytype", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_type = ProtoField.new("Auction Type", "cboe.c2.options.depthofbook.pitch.v2.41.29.auctiontype", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.buy_contracts = ProtoField.new("Buy Contracts", "cboe.c2.options.depthofbook.pitch.v2.41.29.buycontracts", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.canceled_quantity = ProtoField.new("Canceled Quantity", "cboe.c2.options.depthofbook.pitch.v2.41.29.canceledquantity", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.c2.options.depthofbook.pitch.v2.41.29.canceledquantityshort", ftypes.UINT16)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.client_id = ProtoField.new("Client Id", "cboe.c2.options.depthofbook.pitch.v2.41.29.clientid", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.composite_market_bid_price = ProtoField.new("Composite Market Bid Price", "cboe.c2.options.depthofbook.pitch.v2.41.29.compositemarketbidprice", ftypes.DOUBLE)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.composite_market_offer_price = ProtoField.new("Composite Market Offer Price", "cboe.c2.options.depthofbook.pitch.v2.41.29.compositemarketofferprice", ftypes.DOUBLE)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.count = ProtoField.new("Count", "cboe.c2.options.depthofbook.pitch.v2.41.29.count", ftypes.UINT8)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.c2.options.depthofbook.pitch.v2.41.29.customerindicator", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.display = ProtoField.new("Display", "cboe.c2.options.depthofbook.pitch.v2.41.29.display", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.c2.options.depthofbook.pitch.v2.41.29.executedquantity", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.execution_id = ProtoField.new("Execution Id", "cboe.c2.options.depthofbook.pitch.v2.41.29.executionid", ftypes.UINT64)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c2.options.depthofbook.pitch.v2.41.29.feedsymbol", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.c2.options.depthofbook.pitch.v2.41.29.indicativeprice", ftypes.DOUBLE)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.length = ProtoField.new("Length", "cboe.c2.options.depthofbook.pitch.v2.41.29.length", ftypes.UINT16)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message = ProtoField.new("Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.message", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message_header = ProtoField.new("Message Header", "cboe.c2.options.depthofbook.pitch.v2.41.29.messageheader", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message_length = ProtoField.new("Message Length", "cboe.c2.options.depthofbook.pitch.v2.41.29.messagelength", ftypes.UINT8)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message_type = ProtoField.new("Message Type", "cboe.c2.options.depthofbook.pitch.v2.41.29.messagetype", ftypes.UINT8)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.multiplier = ProtoField.new("Multiplier", "cboe.c2.options.depthofbook.pitch.v2.41.29.multiplier", ftypes.DOUBLE)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.opening_condition = ProtoField.new("Opening Condition", "cboe.c2.options.depthofbook.pitch.v2.41.29.openingcondition", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.order_id = ProtoField.new("Order Id", "cboe.c2.options.depthofbook.pitch.v2.41.29.orderid", ftypes.UINT64)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c2.options.depthofbook.pitch.v2.41.29.osisymbol", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.packet = ProtoField.new("Packet", "cboe.c2.options.depthofbook.pitch.v2.41.29.packet", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.packet_header = ProtoField.new("Packet Header", "cboe.c2.options.depthofbook.pitch.v2.41.29.packetheader", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.participant_id = ProtoField.new("Participant Id", "cboe.c2.options.depthofbook.pitch.v2.41.29.participantid", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.payload = ProtoField.new("Payload", "cboe.c2.options.depthofbook.pitch.v2.41.29.payload", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.price = ProtoField.new("Price", "cboe.c2.options.depthofbook.pitch.v2.41.29.price", ftypes.DOUBLE)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.price_short = ProtoField.new("Price Short", "cboe.c2.options.depthofbook.pitch.v2.41.29.priceshort", ftypes.DOUBLE)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.quantity = ProtoField.new("Quantity", "cboe.c2.options.depthofbook.pitch.v2.41.29.quantity", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.c2.options.depthofbook.pitch.v2.41.29.quantityshort", ftypes.UINT16)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reference_price = ProtoField.new("Reference Price", "cboe.c2.options.depthofbook.pitch.v2.41.29.referenceprice", ftypes.UINT64)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.c2.options.depthofbook.pitch.v2.41.29.remainingquantity", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.c2.options.depthofbook.pitch.v2.41.29.reserved2", ftypes.BYTES)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_3 = ProtoField.new("Reserved 3", "cboe.c2.options.depthofbook.pitch.v2.41.29.reserved3", ftypes.BYTES)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_bit_1 = ProtoField.new("Reserved Bit 1", "cboe.c2.options.depthofbook.pitch.v2.41.29.reservedbit1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_bit_2 = ProtoField.new("Reserved Bit 2", "cboe.c2.options.depthofbook.pitch.v2.41.29.reservedbit2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.c2.options.depthofbook.pitch.v2.41.29.reservedflags", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.sell_contracts = ProtoField.new("Sell Contracts", "cboe.c2.options.depthofbook.pitch.v2.41.29.sellcontracts", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.sequence = ProtoField.new("Sequence", "cboe.c2.options.depthofbook.pitch.v2.41.29.sequence", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.shares_contracts = ProtoField.new("Shares Contracts", "cboe.c2.options.depthofbook.pitch.v2.41.29.sharescontracts", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.c2.options.depthofbook.pitch.v2.41.29.sideindicator", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.symbol = ProtoField.new("Symbol", "cboe.c2.options.depthofbook.pitch.v2.41.29.symbol", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c2.options.depthofbook.pitch.v2.41.29.symbolcondition", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.c2.options.depthofbook.pitch.v2.41.29.symbolextended", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.time = ProtoField.new("Time", "cboe.c2.options.depthofbook.pitch.v2.41.29.time", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.time_offset = ProtoField.new("Time Offset", "cboe.c2.options.depthofbook.pitch.v2.41.29.timeoffset", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.timestamp = ProtoField.new("Timestamp", "cboe.c2.options.depthofbook.pitch.v2.41.29.timestamp", ftypes.UINT32)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.c2.options.depthofbook.pitch.v2.41.29.tradecondition", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trading_status = ProtoField.new("Trading Status", "cboe.c2.options.depthofbook.pitch.v2.41.29.tradingstatus", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.underlying = ProtoField.new("Underlying", "cboe.c2.options.depthofbook.pitch.v2.41.29.underlying", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.unit = ProtoField.new("Unit", "cboe.c2.options.depthofbook.pitch.v2.41.29.unit", ftypes.UINT8)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.width_type = ProtoField.new("Width Type", "cboe.c2.options.depthofbook.pitch.v2.41.29.widthtype", ftypes.STRING)

-- Cboe C2 Options DepthOfBook Pitch 2.41.29 messages
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.addorderexpandedmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.addorderlongmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.addordershortmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.auctionsummarymessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.auctionupdatemessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.deleteordermessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.end_of_session = ProtoField.new("End Of Session", "cboe.c2.options.depthofbook.pitch.v2.41.29.endofsession", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.modifyorderlongmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.modifyordershortmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.orderexecutedmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.reducesizelongmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.reducesizeshortmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.symbolmappingmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.time_message = ProtoField.new("Time Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.timemessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.tradebreakmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.tradeexpandedmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.tradelongmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.tradeshortmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.tradingstatusmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.transaction_begin = ProtoField.new("Transaction Begin", "cboe.c2.options.depthofbook.pitch.v2.41.29.transactionbegin", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.transaction_end = ProtoField.new("Transaction End", "cboe.c2.options.depthofbook.pitch.v2.41.29.transactionend", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.c2.options.depthofbook.pitch.v2.41.29.unitclearmessage", ftypes.STRING)
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.width_update = ProtoField.new("Width Update", "cboe.c2.options.depthofbook.pitch.v2.41.29.widthupdate", ftypes.STRING)

-- Cboe C2 Options DepthOfBook Pitch 2.41.29 generated fields
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message_index = ProtoField.new("Message Index", "cboe.c2.options.depthofbook.pitch.v2.41.29.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C2 Options DepthOfBook Pitch 2.41.29 Element Dissection Options
show.add_order_expanded_message = true
show.add_order_flags = true
show.add_order_long_message = true
show.add_order_short_message = true
show.auction_summary_message = true
show.auction_update_message = true
show.delete_order_message = true
show.end_of_session = true
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
show.trade_break_message = true
show.trade_expanded_message = true
show.trade_long_message = true
show.trade_short_message = true
show.trading_status_message = true
show.transaction_begin = true
show.transaction_end = true
show.unit_clear_message = true
show.width_update = true
show.payload = false

-- Register Cboe C2 Options DepthOfBook Pitch 2.41.29 Show Options
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_expanded_message = Pref.bool("Show Add Order Expanded Message", show.add_order_expanded_message, "Parse and add Add Order Expanded Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_flags = Pref.bool("Show Add Order Flags", show.add_order_flags, "Parse and add Add Order Flags to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_end_of_session = Pref.bool("Show End Of Session", show.end_of_session, "Parse and add End Of Session to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_symbol_mapping_message = Pref.bool("Show Symbol Mapping Message", show.symbol_mapping_message, "Parse and add Symbol Mapping Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_expanded_message = Pref.bool("Show Trade Expanded Message", show.trade_expanded_message, "Parse and add Trade Expanded Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_transaction_begin = Pref.bool("Show Transaction Begin", show.transaction_begin, "Parse and add Transaction Begin to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_transaction_end = Pref.bool("Show Transaction End", show.transaction_end, "Parse and add Transaction End to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_width_update = Pref.bool("Show Width Update", show.width_update, "Parse and add Width Update to protocol tree")
omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_expanded_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_expanded_message then
    show.add_order_expanded_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_expanded_message
    changed = true
  end
  if show.add_order_flags ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_flags then
    show.add_order_flags = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_flags
    changed = true
  end
  if show.add_order_long_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_long_message then
    show.add_order_long_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_short_message then
    show.add_order_short_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_summary_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_auction_summary_message then
    show.auction_summary_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_update_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_auction_update_message then
    show.auction_update_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_auction_update_message
    changed = true
  end
  if show.delete_order_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_delete_order_message then
    show.delete_order_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_session ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_end_of_session then
    show.end_of_session = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_end_of_session
    changed = true
  end
  if show.message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_message then
    show.message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_message_header then
    show.message_header = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_modify_order_long_message then
    show.modify_order_long_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_modify_order_short_message then
    show.modify_order_short_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_order_executed_message then
    show.order_executed_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_packet then
    show.packet = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_packet_header then
    show.packet_header = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.symbol_mapping_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_symbol_mapping_message then
    show.symbol_mapping_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_symbol_mapping_message
    changed = true
  end
  if show.time_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_time_message then
    show.time_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_time_message
    changed = true
  end
  if show.trade_break_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_break_message then
    show.trade_break_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_expanded_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_expanded_message then
    show.trade_expanded_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_expanded_message
    changed = true
  end
  if show.trade_long_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_long_message then
    show.trade_long_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_short_message then
    show.trade_short_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trading_status_message then
    show.trading_status_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_trading_status_message
    changed = true
  end
  if show.transaction_begin ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_transaction_begin then
    show.transaction_begin = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_transaction_begin
    changed = true
  end
  if show.transaction_end ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_transaction_end then
    show.transaction_end = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_transaction_end
    changed = true
  end
  if show.unit_clear_message ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_unit_clear_message then
    show.unit_clear_message = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_unit_clear_message
    changed = true
  end
  if show.width_update ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_width_update then
    show.width_update = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_width_update
    changed = true
  end
  if show.payload ~= omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_payload then
    show.payload = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe C2 Options DepthOfBook Pitch 2.41.29
-----------------------------------------------------------------------

-- Shares Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.shares_contracts = {}

-- Size: Shares Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.shares_contracts.size = 4

-- Display: Shares Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.shares_contracts.display = function(value)
  return "Shares Contracts: "..value
end

-- Dissect: Shares Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.shares_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.shares_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.shares_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.shares_contracts, range, value, display)

  return offset + length, value
end

-- Price
cboe_c2_options_depthofbook_pitch_v2_41_29.price = {}

-- Size: Price
cboe_c2_options_depthofbook_pitch_v2_41_29.price.size = 8

-- Display: Price
cboe_c2_options_depthofbook_pitch_v2_41_29.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_c2_options_depthofbook_pitch_v2_41_29.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_c2_options_depthofbook_pitch_v2_41_29.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c2_options_depthofbook_pitch_v2_41_29.price.translate(raw)
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.price, range, value, display)

  return offset + length, value
end

-- Auction Summary Type
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_type = {}

-- Size: Auction Summary Type
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_type.size = 1

-- Display: Auction Summary Type
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_type.display = function(value)
  return "Auction Summary Type: "..value
end

-- Dissect: Auction Summary Type
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_summary_type, range, value, display)

  return offset + length, value
end

-- Symbol Extended
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended = {}

-- Size: Symbol Extended
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.size = 8

-- Display: Symbol Extended
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.display = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset = {}

-- Size: Time Offset
cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size = 4

-- Display: Time Offset
cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Auction Summary Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_type.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.shares_contracts.size

-- Display: Auction Summary Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Extended: 8 Byte Ascii String
  index, symbol_extended = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.dissect(buffer, index, packet, parent)

  -- Auction Summary Type: 1 Byte Ascii String
  index, auction_summary_type = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_type.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c2_options_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Shares Contracts: 4 Byte Unsigned Fixed Width Integer
  index, shares_contracts = cboe_c2_options_depthofbook_pitch_v2_41_29.shares_contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Composite Market Offer Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price = {}

-- Size: Composite Market Offer Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price.size = 8

-- Display: Composite Market Offer Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price.display = function(value)
  return "Composite Market Offer Price: "..value
end

-- Translate: Composite Market Offer Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Offer Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price.translate(raw)
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.composite_market_offer_price, range, value, display)

  return offset + length, value
end

-- Composite Market Bid Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price = {}

-- Size: Composite Market Bid Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price.size = 8

-- Display: Composite Market Bid Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price.display = function(value)
  return "Composite Market Bid Price: "..value
end

-- Translate: Composite Market Bid Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Composite Market Bid Price
cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price.translate(raw)
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.composite_market_bid_price, range, value, display)

  return offset + length, value
end

-- Opening Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.opening_condition = {}

-- Size: Opening Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.opening_condition.size = 1

-- Display: Opening Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.opening_condition.display = function(value)
  return "Opening Condition: "..value
end

-- Dissect: Opening Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.opening_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.opening_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.opening_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.opening_condition, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price = {}

-- Size: Auction Only Price
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price.translate(raw)
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price = {}

-- Size: Indicative Price
cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price.size = 8

-- Display: Indicative Price
cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price.translate(raw)
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Sell Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.sell_contracts = {}

-- Size: Sell Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.sell_contracts.size = 4

-- Display: Sell Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.sell_contracts.display = function(value)
  return "Sell Contracts: "..value
end

-- Dissect: Sell Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.sell_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.sell_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.sell_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.sell_contracts, range, value, display)

  return offset + length, value
end

-- Buy Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.buy_contracts = {}

-- Size: Buy Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.buy_contracts.size = 4

-- Display: Buy Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.buy_contracts.display = function(value)
  return "Buy Contracts: "..value
end

-- Dissect: Buy Contracts
cboe_c2_options_depthofbook_pitch_v2_41_29.buy_contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.buy_contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.buy_contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.buy_contracts, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_c2_options_depthofbook_pitch_v2_41_29.reference_price = {}

-- Size: Reference Price
cboe_c2_options_depthofbook_pitch_v2_41_29.reference_price.size = 8

-- Display: Reference Price
cboe_c2_options_depthofbook_pitch_v2_41_29.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
cboe_c2_options_depthofbook_pitch_v2_41_29.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.reference_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_type = {}

-- Size: Auction Type
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_type.size = 1

-- Display: Auction Type
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_type.display = function(value)
  if value == "H" then
    return "Auction Type: Halt Re Opening (H)"
  end
  if value == "V" then
    return "Auction Type: Volitility Opening (V)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "I" then
    return "Auction Type: Ipo Auction (I)"
  end
  if value == "M" then
    return "Auction Type: Cboe Market Close (M)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Auction Update Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message = {}

-- Size: Auction Update Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.auction_type.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.reference_price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.buy_contracts.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.sell_contracts.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.opening_condition.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price.size

-- Display: Auction Update Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Extended: 8 Byte Ascii String
  index, symbol_extended = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 6 values
  index, auction_type = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = cboe_c2_options_depthofbook_pitch_v2_41_29.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Contracts: 4 Byte Unsigned Fixed Width Integer
  index, buy_contracts = cboe_c2_options_depthofbook_pitch_v2_41_29.buy_contracts.dissect(buffer, index, packet, parent)

  -- Sell Contracts: 4 Byte Unsigned Fixed Width Integer
  index, sell_contracts = cboe_c2_options_depthofbook_pitch_v2_41_29.sell_contracts.dissect(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Unsigned Fixed Width Integer
  index, indicative_price = cboe_c2_options_depthofbook_pitch_v2_41_29.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_only_price = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_only_price.dissect(buffer, index, packet, parent)

  -- Opening Condition: 1 Byte Ascii String
  index, opening_condition = cboe_c2_options_depthofbook_pitch_v2_41_29.opening_condition.dissect(buffer, index, packet, parent)

  -- Composite Market Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, composite_market_bid_price = cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_bid_price.dissect(buffer, index, packet, parent)

  -- Composite Market Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, composite_market_offer_price = cboe_c2_options_depthofbook_pitch_v2_41_29.composite_market_offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Multiplier
cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier = {}

-- Size: Multiplier
cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier.size = 4

-- Display: Multiplier
cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier.display = function(value)
  return "Multiplier: "..value
end

-- Translate: Multiplier
cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier.translate = function(raw)
  return raw/10
end

-- Dissect: Multiplier
cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier.translate(raw)
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.multiplier, range, value, display)

  return offset + length, value
end

-- Width Type
cboe_c2_options_depthofbook_pitch_v2_41_29.width_type = {}

-- Size: Width Type
cboe_c2_options_depthofbook_pitch_v2_41_29.width_type.size = 1

-- Display: Width Type
cboe_c2_options_depthofbook_pitch_v2_41_29.width_type.display = function(value)
  return "Width Type: "..value
end

-- Dissect: Width Type
cboe_c2_options_depthofbook_pitch_v2_41_29.width_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.width_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.width_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.width_type, range, value, display)

  return offset + length, value
end

-- Underlying
cboe_c2_options_depthofbook_pitch_v2_41_29.underlying = {}

-- Size: Underlying
cboe_c2_options_depthofbook_pitch_v2_41_29.underlying.size = 8

-- Display: Underlying
cboe_c2_options_depthofbook_pitch_v2_41_29.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
cboe_c2_options_depthofbook_pitch_v2_41_29.underlying.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.underlying.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.underlying, range, value, display)

  return offset + length, value
end

-- Width Update
cboe_c2_options_depthofbook_pitch_v2_41_29.width_update = {}

-- Size: Width Update
cboe_c2_options_depthofbook_pitch_v2_41_29.width_update.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.underlying.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.width_type.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier.size

-- Display: Width Update
cboe_c2_options_depthofbook_pitch_v2_41_29.width_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Width Update
cboe_c2_options_depthofbook_pitch_v2_41_29.width_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Underlying: 8 Byte Ascii String
  index, underlying = cboe_c2_options_depthofbook_pitch_v2_41_29.underlying.dissect(buffer, index, packet, parent)

  -- Width Type: 1 Byte Ascii String
  index, width_type = cboe_c2_options_depthofbook_pitch_v2_41_29.width_type.dissect(buffer, index, packet, parent)

  -- Multiplier: 4 Byte Unsigned Fixed Width Integer
  index, multiplier = cboe_c2_options_depthofbook_pitch_v2_41_29.multiplier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Width Update
cboe_c2_options_depthofbook_pitch_v2_41_29.width_update.dissect = function(buffer, offset, packet, parent)
  if show.width_update then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.width_update, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.width_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.width_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.width_update.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 3
cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_3 = {}

-- Size: Reserved 3
cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_3.size = 3

-- Display: Reserved 3
cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status = {}

-- Size: Trading Status
cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status.size = 1

-- Display: Trading Status
cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "L" then
    return "Trading Status: Curb Trading (L)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "R" then
    return "Trading Status: Opening Rotation (R)"
  end
  if value == "T" then
    return "Trading Status: Rth Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_2 = {}

-- Size: Reserved 2
cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_2.size = 2

-- Display: Reserved 2
cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol = {}

-- Size: Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.size = 6

-- Display: Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.symbol, range, value, display)

  return offset + length, value
end

-- Trading Status Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message = {}

-- Size: Trading Status Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_2.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_3.size

-- Display: Trading Status Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_2.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 5 values
  index, trading_status = cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status.dissect(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte
  index, reserved_3 = cboe_c2_options_depthofbook_pitch_v2_41_29.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_condition = {}

-- Size: Symbol Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.osi_symbol = {}

-- Size: Osi Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.osi_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.feed_symbol = {}

-- Size: Feed Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c2_options_depthofbook_pitch_v2_41_29.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.feed_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Symbol Mapping Message
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.feed_symbol.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.osi_symbol.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_condition.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.underlying.size

-- Display: Symbol Mapping Message
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index, feed_symbol = cboe_c2_options_depthofbook_pitch_v2_41_29.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index, osi_symbol = cboe_c2_options_depthofbook_pitch_v2_41_29.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String Enum with 2 values
  index, symbol_condition = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_condition.dissect(buffer, index, packet, parent)

  -- Underlying: 8 Byte Ascii String
  index, underlying = cboe_c2_options_depthofbook_pitch_v2_41_29.underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp
cboe_c2_options_depthofbook_pitch_v2_41_29.timestamp = {}

-- Size: Timestamp
cboe_c2_options_depthofbook_pitch_v2_41_29.timestamp.size = 4

-- Display: Timestamp
cboe_c2_options_depthofbook_pitch_v2_41_29.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_c2_options_depthofbook_pitch_v2_41_29.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.timestamp, range, value, display)

  return offset + length, value
end

-- End Of Session
cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session = {}

-- Size: End Of Session
cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.timestamp.size

-- Display: End Of Session
cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session
cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_c2_options_depthofbook_pitch_v2_41_29.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session
cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session.dissect = function(buffer, offset, packet, parent)
  if show.end_of_session then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.end_of_session, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session.fields(buffer, offset, packet, parent)
  end
end

-- Execution Id
cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id = {}

-- Size: Execution Id
cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.size = 8

-- Display: Execution Id
cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Trade Break Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message = {}

-- Size: Trade Break Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.size

-- Display: Trade Break Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.quantity = {}

-- Size: Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.size = 4

-- Display: Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.quantity, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator = {}

-- Size: Side Indicator
cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.size = 1

-- Display: Side Indicator
cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_c2_options_depthofbook_pitch_v2_41_29.order_id = {}

-- Size: Order Id
cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size = 8

-- Display: Order Id
cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message = {}

-- Size: Trade Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.size

-- Display: Trade Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Symbol Extended: 8 Byte Ascii String
  index, symbol_extended = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c2_options_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_expanded_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition = {}

-- Size: Trade Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.size = 1

-- Display: Trade Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.display = function(value)
  if value == "a" then
    return "Trade Condition: Single Leg Auction Non Iso (a)"
  end
  if value == "b" then
    return "Trade Condition: Single Leg Auction Iso (b)"
  end
  if value == "c" then
    return "Trade Condition: Single Leg Cross Non Iso (c)"
  end
  if value == "d" then
    return "Trade Condition: Single Leg Cross Iso (d)"
  end
  if value == "e" then
    return "Trade Condition: Single Leg Floor Trade (e)"
  end
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
    return "Trade Condition: Complex Electronic Trade Against Single Legs (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex With Stock Options Auction Trade (k)"
  end
  if value == "m" then
    return "Trade Condition: Complex Floor Trade Against Single Legs (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex With Stock Electronic Trade (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex With Stock Cross (o)"
  end
  if value == "p" then
    return "Trade Condition: Complex With Stock Floor Trade (p)"
  end
  if value == "t" then
    return "Trade Condition: Complex Floor Trade Of Proprietary Products Marked As Combo Order (t)"
  end
  if value == "u" then
    return "Trade Condition: Multilateral Compression Trade Of Proprietary Products (u)"
  end
  if value == "v" then
    return "Trade Condition: Extended Hours Trade (v)"
  end
  if value == "I" then
    return "Trade Condition: Electronic Trade (I)"
  end
  if value == "K" then
    return "Trade Condition: Cabinet Order (K)"
  end
  if value == "O" then
    return "Trade Condition: Opening Trade (O)"
  end
  if value == "S" then
    return "Trade Condition: Iso (S)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_c2_options_depthofbook_pitch_v2_41_29.price_short = {}

-- Size: Price Short
cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.size = 2

-- Display: Price Short
cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.translate(raw)
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short = {}

-- Size: Quantity Short
cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.size = 2

-- Display: Quantity Short
cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Trade Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message = {}

-- Size: Trade Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.size

-- Display: Trade Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 21 values
  index, trade_condition = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message = {}

-- Size: Trade Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.size

-- Display: Trade Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c2_options_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 21 values
  index, trade_condition = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message = {}

-- Size: Delete Order Message
cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size

-- Display: Delete Order Message
cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_flags.size

-- Display: Modify Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.dissect(buffer, index, packet, parent)

  -- Modify Order Flags
  index, modify_order_flags = cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_flags.size

-- Display: Modify Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c2_options_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Modify Order Flags
  index, modify_order_flags = cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Quantity Short
cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Reduce Size Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, canceled_quantity_short = cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity = {}

-- Size: Canceled Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity.size = 4

-- Display: Canceled Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity.display = function(value)
  return "Canceled Quantity: "..value
end

-- Dissect: Canceled Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.canceled_quantity, range, value, display)

  return offset + length, value
end

-- Reduce Size Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity.size

-- Display: Reduce Size Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_quantity = cboe_c2_options_depthofbook_pitch_v2_41_29.canceled_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Remaining Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity = {}

-- Size: Executed Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed At Price Size Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.remaining_quantity.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.size

-- Display: Order Executed At Price Size Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = cboe_c2_options_depthofbook_pitch_v2_41_29.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c2_options_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 21 values
  index, trade_condition = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_at_price_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message = {}

-- Size: Order Executed Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.size

-- Display: Order Executed Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_c2_options_depthofbook_pitch_v2_41_29.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c2_options_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 21 values
  index, trade_condition = cboe_c2_options_depthofbook_pitch_v2_41_29.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Id
cboe_c2_options_depthofbook_pitch_v2_41_29.client_id = {}

-- Size: Client Id
cboe_c2_options_depthofbook_pitch_v2_41_29.client_id.size = 4

-- Display: Client Id
cboe_c2_options_depthofbook_pitch_v2_41_29.client_id.display = function(value)
  return "Client Id: "..value
end

-- Dissect: Client Id
cboe_c2_options_depthofbook_pitch_v2_41_29.client_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.client_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.client_id, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_c2_options_depthofbook_pitch_v2_41_29.customer_indicator = {}

-- Size: Customer Indicator
cboe_c2_options_depthofbook_pitch_v2_41_29.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_c2_options_depthofbook_pitch_v2_41_29.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_c2_options_depthofbook_pitch_v2_41_29.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_c2_options_depthofbook_pitch_v2_41_29.participant_id = {}

-- Size: Participant Id
cboe_c2_options_depthofbook_pitch_v2_41_29.participant_id.size = 4

-- Display: Participant Id
cboe_c2_options_depthofbook_pitch_v2_41_29.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_c2_options_depthofbook_pitch_v2_41_29.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Add Order Flags
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags = {}

-- Size: Add Order Flags
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.size = 1

-- Display: Add Order Flags
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Aon flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Aon|"
  end
  -- Is Reserved Bit 2 flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Reserved Bit 2|"
  end
  -- Is Reserved Bit 1 flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Reserved Bit 1|"
  end
  -- Is Display flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Display|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Add Order Flags
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved Flags: 4 Bit
  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_flags, buffer(offset, 1))

  -- Aon: 1 Bit
  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.aon, buffer(offset, 1))

  -- Reserved Bit 2: 1 Bit
  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_bit_2, buffer(offset, 1))

  -- Reserved Bit 1: 1 Bit
  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.reserved_bit_1, buffer(offset, 1))

  -- Display: 1 Bit
  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.display, buffer(offset, 1))
end

-- Dissect: Add Order Flags
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.display(range, packet, parent)
  local element = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.add_order_flags, range, display)

  if show.add_order_flags then
    cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Add Order Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.participant_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.customer_indicator.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.client_id.size

-- Display: Add Order Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Symbol Extended: 8 Byte Ascii String
  index, symbol_extended = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_extended.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c2_options_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 5 fields
  index, add_order_flags = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_c2_options_depthofbook_pitch_v2_41_29.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_c2_options_depthofbook_pitch_v2_41_29.customer_indicator.dissect(buffer, index, packet, parent)

  -- Client Id: 4 Byte Ascii String
  index, client_id = cboe_c2_options_depthofbook_pitch_v2_41_29.client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_expanded_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.size

-- Display: Add Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_c2_options_depthofbook_pitch_v2_41_29.price_short.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 5 fields
  index, add_order_flags = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.price.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.size

-- Display: Add Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c2_options_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_c2_options_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c2_options_depthofbook_pitch_v2_41_29.symbol.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_c2_options_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 5 fields
  index, add_order_flags = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Transaction End
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end = {}

-- Size: Transaction End
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size

-- Display: Transaction End
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction End
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction End
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end.dissect = function(buffer, offset, packet, parent)
  if show.transaction_end then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.transaction_end, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end.fields(buffer, offset, packet, parent)
  end
end

-- Transaction Begin
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin = {}

-- Size: Transaction Begin
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size

-- Display: Transaction Begin
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Transaction Begin
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Transaction Begin
cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin.dissect = function(buffer, offset, packet, parent)
  if show.transaction_begin then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.transaction_begin, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.size

-- Display: Unit Clear Message
cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c2_options_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time
cboe_c2_options_depthofbook_pitch_v2_41_29.time = {}

-- Size: Time
cboe_c2_options_depthofbook_pitch_v2_41_29.time.size = 4

-- Display: Time
cboe_c2_options_depthofbook_pitch_v2_41_29.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c2_options_depthofbook_pitch_v2_41_29.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.time, range, value, display)

  return offset + length, value
end

-- Time Message
cboe_c2_options_depthofbook_pitch_v2_41_29.time_message = {}

-- Size: Time Message
cboe_c2_options_depthofbook_pitch_v2_41_29.time_message.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.time.size

-- Display: Time Message
cboe_c2_options_depthofbook_pitch_v2_41_29.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c2_options_depthofbook_pitch_v2_41_29.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_c2_options_depthofbook_pitch_v2_41_29.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_c2_options_depthofbook_pitch_v2_41_29.time_message.dissect = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.time_message, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c2_options_depthofbook_pitch_v2_41_29.payload = {}

-- Calculate runtime size of: Payload
cboe_c2_options_depthofbook_pitch_v2_41_29.payload.size = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.time_message.size(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message.size(buffer, offset)
  end
  -- Size of Transaction Begin
  if message_type == 0xBC then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin.size(buffer, offset)
  end
  -- Size of Transaction End
  if message_type == 0xBD then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end.size(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x21 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message.size(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message.size(buffer, offset)
  end
  -- Size of Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message.size(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.size(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message.size(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message.size(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message.size(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message.size(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message.size(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x2A then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message.size(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message.size(buffer, offset)
  end
  -- Size of Trade Expanded Message
  if message_type == 0x30 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message.size(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0x2C then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message.size(buffer, offset)
  end
  -- Size of End Of Session
  if message_type == 0x2D then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session.size(buffer, offset)
  end
  -- Size of Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message.size(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message.size(buffer, offset)
  end
  -- Size of Width Update
  if message_type == 0xD2 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.width_update.size(buffer, offset)
  end
  -- Size of Auction Update Message
  if message_type == 0xD1 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message.size(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_c2_options_depthofbook_pitch_v2_41_29.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_c2_options_depthofbook_pitch_v2_41_29.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction Begin
  if message_type == 0xBC then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_begin.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Transaction End
  if message_type == 0xBD then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.transaction_end.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Expanded Message
  if message_type == 0x30 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_type == 0x2D then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Width Update
  if message_type == 0xD2 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.width_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0xD1 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.auction_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_c2_options_depthofbook_pitch_v2_41_29.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_c2_options_depthofbook_pitch_v2_41_29.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_c2_options_depthofbook_pitch_v2_41_29.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.payload, range, display)

  return cboe_c2_options_depthofbook_pitch_v2_41_29.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
cboe_c2_options_depthofbook_pitch_v2_41_29.message_type = {}

-- Size: Message Type
cboe_c2_options_depthofbook_pitch_v2_41_29.message_type.size = 1

-- Display: Message Type
cboe_c2_options_depthofbook_pitch_v2_41_29.message_type.display = function(value)
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
    return "Message Type: Transaction End (0xBD)"
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
  if value == 0x30 then
    return "Message Type: Trade Expanded Message (0x30)"
  end
  if value == 0x2C then
    return "Message Type: Trade Break Message (0x2C)"
  end
  if value == 0x2D then
    return "Message Type: End Of Session (0x2D)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0xD2 then
    return "Message Type: Width Update (0xD2)"
  end
  if value == 0xD1 then
    return "Message Type: Auction Update Message (0xD1)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_c2_options_depthofbook_pitch_v2_41_29.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c2_options_depthofbook_pitch_v2_41_29.message_length = {}

-- Size: Message Length
cboe_c2_options_depthofbook_pitch_v2_41_29.message_length.size = 1

-- Display: Message Length
cboe_c2_options_depthofbook_pitch_v2_41_29.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c2_options_depthofbook_pitch_v2_41_29.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_c2_options_depthofbook_pitch_v2_41_29.message_header = {}

-- Size: Message Header
cboe_c2_options_depthofbook_pitch_v2_41_29.message_header.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.message_length.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.message_type.size

-- Display: Message Header
cboe_c2_options_depthofbook_pitch_v2_41_29.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c2_options_depthofbook_pitch_v2_41_29.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c2_options_depthofbook_pitch_v2_41_29.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, message_type = cboe_c2_options_depthofbook_pitch_v2_41_29.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c2_options_depthofbook_pitch_v2_41_29.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message_header, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c2_options_depthofbook_pitch_v2_41_29.message = {}

-- Display: Message
cboe_c2_options_depthofbook_pitch_v2_41_29.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c2_options_depthofbook_pitch_v2_41_29.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c2_options_depthofbook_pitch_v2_41_29.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 24 branches
  index = cboe_c2_options_depthofbook_pitch_v2_41_29.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c2_options_depthofbook_pitch_v2_41_29.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.message, buffer(offset, 0))
    local current = cboe_c2_options_depthofbook_pitch_v2_41_29.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c2_options_depthofbook_pitch_v2_41_29.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequence
cboe_c2_options_depthofbook_pitch_v2_41_29.sequence = {}

-- Size: Sequence
cboe_c2_options_depthofbook_pitch_v2_41_29.sequence.size = 4

-- Display: Sequence
cboe_c2_options_depthofbook_pitch_v2_41_29.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c2_options_depthofbook_pitch_v2_41_29.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.sequence, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c2_options_depthofbook_pitch_v2_41_29.unit = {}

-- Size: Unit
cboe_c2_options_depthofbook_pitch_v2_41_29.unit.size = 1

-- Display: Unit
cboe_c2_options_depthofbook_pitch_v2_41_29.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c2_options_depthofbook_pitch_v2_41_29.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.unit, range, value, display)

  return offset + length, value
end

-- Count
cboe_c2_options_depthofbook_pitch_v2_41_29.count = {}

-- Size: Count
cboe_c2_options_depthofbook_pitch_v2_41_29.count.size = 1

-- Display: Count
cboe_c2_options_depthofbook_pitch_v2_41_29.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_c2_options_depthofbook_pitch_v2_41_29.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.count, range, value, display)

  return offset + length, value
end

-- Length
cboe_c2_options_depthofbook_pitch_v2_41_29.length = {}

-- Size: Length
cboe_c2_options_depthofbook_pitch_v2_41_29.length.size = 2

-- Display: Length
cboe_c2_options_depthofbook_pitch_v2_41_29.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c2_options_depthofbook_pitch_v2_41_29.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_depthofbook_pitch_v2_41_29.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_depthofbook_pitch_v2_41_29.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.length, range, value, display)

  return offset + length, value
end

-- Packet Header
cboe_c2_options_depthofbook_pitch_v2_41_29.packet_header = {}

-- Size: Packet Header
cboe_c2_options_depthofbook_pitch_v2_41_29.packet_header.size =
  cboe_c2_options_depthofbook_pitch_v2_41_29.length.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.count.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.unit.size + 
  cboe_c2_options_depthofbook_pitch_v2_41_29.sequence.size

-- Display: Packet Header
cboe_c2_options_depthofbook_pitch_v2_41_29.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c2_options_depthofbook_pitch_v2_41_29.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c2_options_depthofbook_pitch_v2_41_29.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_c2_options_depthofbook_pitch_v2_41_29.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c2_options_depthofbook_pitch_v2_41_29.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_c2_options_depthofbook_pitch_v2_41_29.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_c2_options_depthofbook_pitch_v2_41_29.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29.fields.packet_header, buffer(offset, 0))
    local index = cboe_c2_options_depthofbook_pitch_v2_41_29.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c2_options_depthofbook_pitch_v2_41_29.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c2_options_depthofbook_pitch_v2_41_29.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c2_options_depthofbook_pitch_v2_41_29.packet = {}

-- Dissect Packet
cboe_c2_options_depthofbook_pitch_v2_41_29.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c2_options_depthofbook_pitch_v2_41_29.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_c2_options_depthofbook_pitch_v2_41_29.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c2_options_depthofbook_pitch_v2_41_29.init()
end

-- Dissector for Cboe C2 Options DepthOfBook Pitch 2.41.29
function omi_cboe_c2_options_depthofbook_pitch_v2_41_29.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_c2_options_depthofbook_pitch_v2_41_29.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c2_options_depthofbook_pitch_v2_41_29, buffer(), omi_cboe_c2_options_depthofbook_pitch_v2_41_29.description, "("..buffer:len().." Bytes)")
  return cboe_c2_options_depthofbook_pitch_v2_41_29.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_c2_options_depthofbook_pitch_v2_41_29)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_c2_options_depthofbook_pitch_v2_41_29.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe C2 Options DepthOfBook Pitch 2.41.29
local function omi_cboe_c2_options_depthofbook_pitch_v2_41_29_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c2_options_depthofbook_pitch_v2_41_29.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c2_options_depthofbook_pitch_v2_41_29
  omi_cboe_c2_options_depthofbook_pitch_v2_41_29.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C2 Options DepthOfBook Pitch 2.41.29
omi_cboe_c2_options_depthofbook_pitch_v2_41_29:register_heuristic("udp", omi_cboe_c2_options_depthofbook_pitch_v2_41_29_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.41.29
--   Date: Wednesday, April 20, 2022
--   Specification: US_EQUITIES_OPTIONS_MULTICAST_PITCH_SPECIFICATION.pdf
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
