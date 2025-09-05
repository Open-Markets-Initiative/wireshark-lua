-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Options DepthOfBook Pitch 2.39.4 Protocol
local omi_cboe_options_depthofbook_pitch_v2_39_4 = Proto("Cboe.Options.DepthOfBook.Pitch.v2.39.4.Lua", "Cboe Options DepthOfBook Pitch 2.39.4")

-- Protocol table
local cboe_options_depthofbook_pitch_v2_39_4 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Options DepthOfBook Pitch 2.39.4 Fields
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.add_flags = ProtoField.new("Add Flags", "cboe.options.depthofbook.pitch.v2.39.4.addflags", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.options.depthofbook.pitch.v2.39.4.auctionendoffset", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_id = ProtoField.new("Auction Id", "cboe.options.depthofbook.pitch.v2.39.4.auctionid", ftypes.UINT64)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.options.depthofbook.pitch.v2.39.4.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_type = ProtoField.new("Auction Type", "cboe.options.depthofbook.pitch.v2.39.4.auctiontype", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.options.depthofbook.pitch.v2.39.4.buyshares", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.canceled_long_quantity = ProtoField.new("Canceled Long Quantity", "cboe.options.depthofbook.pitch.v2.39.4.canceledlongquantity", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.canceled_short_quantity = ProtoField.new("Canceled Short Quantity", "cboe.options.depthofbook.pitch.v2.39.4.canceledshortquantity", ftypes.UINT16)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.contracts = ProtoField.new("Contracts", "cboe.options.depthofbook.pitch.v2.39.4.contracts", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.count = ProtoField.new("Count", "cboe.options.depthofbook.pitch.v2.39.4.count", ftypes.UINT8)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.options.depthofbook.pitch.v2.39.4.customerindicator", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.display = ProtoField.new("Display", "cboe.options.depthofbook.pitch.v2.39.4.display", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.options.depthofbook.pitch.v2.39.4.executedquantity", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.execution_id = ProtoField.new("Execution Id", "cboe.options.depthofbook.pitch.v2.39.4.executionid", ftypes.UINT64)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.expanded_symbol = ProtoField.new("Expanded Symbol", "cboe.options.depthofbook.pitch.v2.39.4.expandedsymbol", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.options.depthofbook.pitch.v2.39.4.feedsymbol", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.options.depthofbook.pitch.v2.39.4.indicativeprice", ftypes.DOUBLE)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.length = ProtoField.new("Length", "cboe.options.depthofbook.pitch.v2.39.4.length", ftypes.UINT16)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.long_price = ProtoField.new("Long Price", "cboe.options.depthofbook.pitch.v2.39.4.longprice", ftypes.DOUBLE)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.long_quantity = ProtoField.new("Long Quantity", "cboe.options.depthofbook.pitch.v2.39.4.longquantity", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.maintain_priority = ProtoField.new("Maintain Priority", "cboe.options.depthofbook.pitch.v2.39.4.maintainpriority", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message = ProtoField.new("Message", "cboe.options.depthofbook.pitch.v2.39.4.message", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message_header = ProtoField.new("Message Header", "cboe.options.depthofbook.pitch.v2.39.4.messageheader", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message_length = ProtoField.new("Message Length", "cboe.options.depthofbook.pitch.v2.39.4.messagelength", ftypes.UINT8)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message_type = ProtoField.new("Message Type", "cboe.options.depthofbook.pitch.v2.39.4.messagetype", ftypes.UINT8)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.modify_flags = ProtoField.new("Modify Flags", "cboe.options.depthofbook.pitch.v2.39.4.modifyflags", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.order_id = ProtoField.new("Order Id", "cboe.options.depthofbook.pitch.v2.39.4.orderid", ftypes.UINT64)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.options.depthofbook.pitch.v2.39.4.osisymbol", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.packet = ProtoField.new("Packet", "cboe.options.depthofbook.pitch.v2.39.4.packet", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.options.depthofbook.pitch.v2.39.4.packetheader", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.participant_id = ProtoField.new("Participant Id", "cboe.options.depthofbook.pitch.v2.39.4.participantid", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.payload = ProtoField.new("Payload", "cboe.options.depthofbook.pitch.v2.39.4.payload", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reference_price = ProtoField.new("Reference Price", "cboe.options.depthofbook.pitch.v2.39.4.referenceprice", ftypes.DOUBLE)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.options.depthofbook.pitch.v2.39.4.regshoaction", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.options.depthofbook.pitch.v2.39.4.remainingquantity", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.options.depthofbook.pitch.v2.39.4.reserved1", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.options.depthofbook.pitch.v2.39.4.reserved2", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_6 = ProtoField.new("Reserved 6", "cboe.options.depthofbook.pitch.v2.39.4.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_7 = ProtoField.new("Reserved 7", "cboe.options.depthofbook.pitch.v2.39.4.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.options.depthofbook.pitch.v2.39.4.retailpriceimprovement", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.options.depthofbook.pitch.v2.39.4.sellshares", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.sequence = ProtoField.new("Sequence", "cboe.options.depthofbook.pitch.v2.39.4.sequence", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.shares = ProtoField.new("Shares", "cboe.options.depthofbook.pitch.v2.39.4.shares", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.short_price = ProtoField.new("Short Price", "cboe.options.depthofbook.pitch.v2.39.4.shortprice", ftypes.DOUBLE)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.short_quantity = ProtoField.new("Short Quantity", "cboe.options.depthofbook.pitch.v2.39.4.shortquantity", ftypes.UINT16)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.options.depthofbook.pitch.v2.39.4.sideindicator", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.options.depthofbook.pitch.v2.39.4.stocksymbol", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.symbol = ProtoField.new("Symbol", "cboe.options.depthofbook.pitch.v2.39.4.symbol", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.options.depthofbook.pitch.v2.39.4.symbolcondition", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.time = ProtoField.new("Time", "cboe.options.depthofbook.pitch.v2.39.4.time", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.time_offset = ProtoField.new("Time Offset", "cboe.options.depthofbook.pitch.v2.39.4.timeoffset", ftypes.UINT32)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.options.depthofbook.pitch.v2.39.4.tradecondition", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trading_status = ProtoField.new("Trading Status", "cboe.options.depthofbook.pitch.v2.39.4.tradingstatus", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.unit = ProtoField.new("Unit", "cboe.options.depthofbook.pitch.v2.39.4.unit", ftypes.UINT8)

-- Cboe Options DepthOfBook Pitch 2.39.4 messages
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.options.depthofbook.pitch.v2.39.4.addorderexpandedmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.options.depthofbook.pitch.v2.39.4.addorderlongmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.options.depthofbook.pitch.v2.39.4.addordershortmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.options.depthofbook.pitch.v2.39.4.auctioncancelmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.options.depthofbook.pitch.v2.39.4.auctionnotificationmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.options.depthofbook.pitch.v2.39.4.auctionsummarymessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.options.depthofbook.pitch.v2.39.4.auctiontrademessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.options.depthofbook.pitch.v2.39.4.auctionupdatemessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.options.depthofbook.pitch.v2.39.4.deleteordermessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.options.depthofbook.pitch.v2.39.4.endofsessionmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.options.depthofbook.pitch.v2.39.4.modifyorderlongmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.options.depthofbook.pitch.v2.39.4.modifyordershortmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.options.depthofbook.pitch.v2.39.4.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.options.depthofbook.pitch.v2.39.4.orderexecutedmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.options.depthofbook.pitch.v2.39.4.reducesizelongmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.options.depthofbook.pitch.v2.39.4.reducesizeshortmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "cboe.options.depthofbook.pitch.v2.39.4.retailpriceimprovementmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.options.depthofbook.pitch.v2.39.4.symbolmappingmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.time_message = ProtoField.new("Time Message", "cboe.options.depthofbook.pitch.v2.39.4.timemessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.options.depthofbook.pitch.v2.39.4.tradebreakmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.options.depthofbook.pitch.v2.39.4.tradeexpandedmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.options.depthofbook.pitch.v2.39.4.tradelongmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.options.depthofbook.pitch.v2.39.4.tradeshortmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.options.depthofbook.pitch.v2.39.4.tradingstatusmessage", ftypes.STRING)
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.options.depthofbook.pitch.v2.39.4.unitclearmessage", ftypes.STRING)

-- Cboe Options DepthOfBook Pitch 2.39.4 generated fields
omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message_index = ProtoField.new("Message Index", "cboe.options.depthofbook.pitch.v2.39.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Options DepthOfBook Pitch 2.39.4 Element Dissection Options
show.add_flags = true
show.add_order_expanded_message = true
show.add_order_long_message = true
show.add_order_short_message = true
show.auction_cancel_message = true
show.auction_notification_message = true
show.auction_summary_message = true
show.auction_trade_message = true
show.auction_update_message = true
show.delete_order_message = true
show.end_of_session_message = true
show.message = true
show.message_header = true
show.modify_flags = true
show.modify_order_long_message = true
show.modify_order_short_message = true
show.order_executed_at_price_size_message = true
show.order_executed_message = true
show.packet = true
show.packet_header = true
show.reduce_size_long_message = true
show.reduce_size_short_message = true
show.retail_price_improvement_message = true
show.symbol_mapping_message = true
show.time_message = true
show.trade_break_message = true
show.trade_expanded_message = true
show.trade_long_message = true
show.trade_short_message = true
show.trading_status_message = true
show.unit_clear_message = true
show.payload = false

-- Register Cboe Options DepthOfBook Pitch 2.39.4 Show Options
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_flags = Pref.bool("Show Add Flags", show.add_flags, "Parse and add Add Flags to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_expanded_message = Pref.bool("Show Add Order Expanded Message", show.add_order_expanded_message, "Parse and add Add Order Expanded Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_flags = Pref.bool("Show Modify Flags", show.modify_flags, "Parse and add Modify Flags to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_retail_price_improvement_message = Pref.bool("Show Retail Price Improvement Message", show.retail_price_improvement_message, "Parse and add Retail Price Improvement Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_symbol_mapping_message = Pref.bool("Show Symbol Mapping Message", show.symbol_mapping_message, "Parse and add Symbol Mapping Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_expanded_message = Pref.bool("Show Trade Expanded Message", show.trade_expanded_message, "Parse and add Trade Expanded Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_cboe_options_depthofbook_pitch_v2_39_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_flags ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_flags then
    show.add_flags = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_flags
    changed = true
  end
  if show.add_order_expanded_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_expanded_message then
    show.add_order_expanded_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_expanded_message
    changed = true
  end
  if show.add_order_long_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_long_message then
    show.add_order_long_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_short_message then
    show.add_order_short_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_cancel_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_cancel_message then
    show.auction_cancel_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_notification_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_notification_message then
    show.auction_notification_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_summary_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_summary_message then
    show.auction_summary_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_trade_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_trade_message then
    show.auction_trade_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_trade_message
    changed = true
  end
  if show.auction_update_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_update_message then
    show.auction_update_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_update_message
    changed = true
  end
  if show.delete_order_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_delete_order_message then
    show.delete_order_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_session_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_end_of_session_message then
    show.end_of_session_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_end_of_session_message
    changed = true
  end
  if show.message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message then
    show.message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message_header then
    show.message_header = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message_header
    changed = true
  end
  if show.modify_flags ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_flags then
    show.modify_flags = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_flags
    changed = true
  end
  if show.modify_order_long_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_long_message then
    show.modify_order_long_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_short_message then
    show.modify_order_short_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_message then
    show.order_executed_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet then
    show.packet = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet_header then
    show.packet_header = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.retail_price_improvement_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_retail_price_improvement_message then
    show.retail_price_improvement_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_retail_price_improvement_message
    changed = true
  end
  if show.symbol_mapping_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_symbol_mapping_message then
    show.symbol_mapping_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_symbol_mapping_message
    changed = true
  end
  if show.time_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_time_message then
    show.time_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_time_message
    changed = true
  end
  if show.trade_break_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_break_message then
    show.trade_break_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_expanded_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_expanded_message then
    show.trade_expanded_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_expanded_message
    changed = true
  end
  if show.trade_long_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_long_message then
    show.trade_long_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_short_message then
    show.trade_short_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trading_status_message then
    show.trading_status_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trading_status_message
    changed = true
  end
  if show.unit_clear_message ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_unit_clear_message then
    show.unit_clear_message = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_unit_clear_message
    changed = true
  end
  if show.payload ~= omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_payload then
    show.payload = omi_cboe_options_depthofbook_pitch_v2_39_4.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Options DepthOfBook Pitch 2.39.4
-----------------------------------------------------------------------

-- Retail Price Improvement
cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement.display = function(value)
  if value == "B" then
    return "Retail Price Improvement: Buy Side (B)"
  end
  if value == "S" then
    return "Retail Price Improvement: Sell Side (S)"
  end
  if value == "A" then
    return "Retail Price Improvement: Buy And Sell (A)"
  end
  if value == "N" then
    return "Retail Price Improvement: No Rpi (N)"
  end

  return "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Expanded Symbol
cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol = {}

-- Size: Expanded Symbol
cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.size = 8

-- Display: Expanded Symbol
cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.display = function(value)
  return "Expanded Symbol: "..value
end

-- Dissect: Expanded Symbol
cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.expanded_symbol, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_options_depthofbook_pitch_v2_39_4.time_offset = {}

-- Size: Time Offset
cboe_options_depthofbook_pitch_v2_39_4.time_offset.size = 4

-- Display: Time Offset
cboe_options_depthofbook_pitch_v2_39_4.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement Message
cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message = {}

-- Calculate size of: Retail Price Improvement Message
cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement.size

  return index
end

-- Display: Retail Price Improvement Message
cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index, expanded_symbol = cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: 1 Byte Ascii String Enum with 4 values
  index, retail_price_improvement = cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.retail_price_improvement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Contracts
cboe_options_depthofbook_pitch_v2_39_4.contracts = {}

-- Size: Contracts
cboe_options_depthofbook_pitch_v2_39_4.contracts.size = 4

-- Display: Contracts
cboe_options_depthofbook_pitch_v2_39_4.contracts.display = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
cboe_options_depthofbook_pitch_v2_39_4.contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.contracts, range, value, display)

  return offset + length, value
end

-- Long Price
cboe_options_depthofbook_pitch_v2_39_4.long_price = {}

-- Size: Long Price
cboe_options_depthofbook_pitch_v2_39_4.long_price.size = 8

-- Display: Long Price
cboe_options_depthofbook_pitch_v2_39_4.long_price.display = function(value)
  return "Long Price: "..value
end

-- Translate: Long Price
cboe_options_depthofbook_pitch_v2_39_4.long_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Long Price
cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.long_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_options_depthofbook_pitch_v2_39_4.long_price.translate(raw)
  local display = cboe_options_depthofbook_pitch_v2_39_4.long_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.long_price, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_options_depthofbook_pitch_v2_39_4.execution_id = {}

-- Size: Execution Id
cboe_options_depthofbook_pitch_v2_39_4.execution_id.size = 8

-- Display: Execution Id
cboe_options_depthofbook_pitch_v2_39_4.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_options_depthofbook_pitch_v2_39_4.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_options_depthofbook_pitch_v2_39_4.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_options_depthofbook_pitch_v2_39_4.auction_id = {}

-- Size: Auction Id
cboe_options_depthofbook_pitch_v2_39_4.auction_id.size = 8

-- Display: Auction Id
cboe_options_depthofbook_pitch_v2_39_4.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_options_depthofbook_pitch_v2_39_4.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_options_depthofbook_pitch_v2_39_4.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Trade Message
cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message = {}

-- Calculate size of: Auction Trade Message
cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.auction_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.execution_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.contracts.size

  return index
end

-- Display: Auction Trade Message
cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_options_depthofbook_pitch_v2_39_4.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_options_depthofbook_pitch_v2_39_4.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message = {}

-- Calculate size of: Auction Cancel Message
cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.auction_id.size

  return index
end

-- Display: Auction Cancel Message
cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_options_depthofbook_pitch_v2_39_4.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction End Offset
cboe_options_depthofbook_pitch_v2_39_4.auction_end_offset = {}

-- Size: Auction End Offset
cboe_options_depthofbook_pitch_v2_39_4.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_options_depthofbook_pitch_v2_39_4.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_options_depthofbook_pitch_v2_39_4.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_options_depthofbook_pitch_v2_39_4.participant_id = {}

-- Size: Participant Id
cboe_options_depthofbook_pitch_v2_39_4.participant_id.size = 4

-- Display: Participant Id
cboe_options_depthofbook_pitch_v2_39_4.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_options_depthofbook_pitch_v2_39_4.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_options_depthofbook_pitch_v2_39_4.customer_indicator = {}

-- Size: Customer Indicator
cboe_options_depthofbook_pitch_v2_39_4.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_options_depthofbook_pitch_v2_39_4.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_options_depthofbook_pitch_v2_39_4.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_options_depthofbook_pitch_v2_39_4.side_indicator = {}

-- Size: Side Indicator
cboe_options_depthofbook_pitch_v2_39_4.side_indicator.size = 1

-- Display: Side Indicator
cboe_options_depthofbook_pitch_v2_39_4.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_options_depthofbook_pitch_v2_39_4.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_options_depthofbook_pitch_v2_39_4.auction_type = {}

-- Size: Auction Type
cboe_options_depthofbook_pitch_v2_39_4.auction_type.size = 1

-- Display: Auction Type
cboe_options_depthofbook_pitch_v2_39_4.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "C" then
    return "Auction Type: Closing (C)"
  end
  if value == "H" then
    return "Auction Type: Halt (H)"
  end
  if value == "I" then
    return "Auction Type: Ipo (I)"
  end
  if value == "M" then
    return "Auction Type: Close (M)"
  end
  if value == "T" then
    return "Auction Type: Sum (T)"
  end
  if value == "B" then
    return "Auction Type: Bam (B)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_options_depthofbook_pitch_v2_39_4.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_options_depthofbook_pitch_v2_39_4.symbol = {}

-- Size: Symbol
cboe_options_depthofbook_pitch_v2_39_4.symbol.size = 6

-- Display: Symbol
cboe_options_depthofbook_pitch_v2_39_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_options_depthofbook_pitch_v2_39_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Auction Notification Message
cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message = {}

-- Calculate size of: Auction Notification Message
cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.auction_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.auction_type.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.side_indicator.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.contracts.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.customer_indicator.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.participant_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.auction_end_offset.size

  return index
end

-- Display: Auction Notification Message
cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_options_depthofbook_pitch_v2_39_4.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index, auction_type = cboe_options_depthofbook_pitch_v2_39_4.auction_type.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_options_depthofbook_pitch_v2_39_4.contracts.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_options_depthofbook_pitch_v2_39_4.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_options_depthofbook_pitch_v2_39_4.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = cboe_options_depthofbook_pitch_v2_39_4.auction_end_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Shares
cboe_options_depthofbook_pitch_v2_39_4.shares = {}

-- Size: Shares
cboe_options_depthofbook_pitch_v2_39_4.shares.size = 4

-- Display: Shares
cboe_options_depthofbook_pitch_v2_39_4.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
cboe_options_depthofbook_pitch_v2_39_4.shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.shares, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_options_depthofbook_pitch_v2_39_4.stock_symbol = {}

-- Size: Stock Symbol
cboe_options_depthofbook_pitch_v2_39_4.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_options_depthofbook_pitch_v2_39_4.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_options_depthofbook_pitch_v2_39_4.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.stock_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Auction Summary Message
cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message = {}

-- Calculate size of: Auction Summary Message
cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.stock_symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.auction_type.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.shares.size

  return index
end

-- Display: Auction Summary Message
cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Stock Symbol: 8 Byte Ascii String
  index, stock_symbol = cboe_options_depthofbook_pitch_v2_39_4.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index, auction_type = cboe_options_depthofbook_pitch_v2_39_4.auction_type.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = cboe_options_depthofbook_pitch_v2_39_4.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Only Price
cboe_options_depthofbook_pitch_v2_39_4.auction_only_price = {}

-- Size: Auction Only Price
cboe_options_depthofbook_pitch_v2_39_4.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_options_depthofbook_pitch_v2_39_4.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_options_depthofbook_pitch_v2_39_4.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_options_depthofbook_pitch_v2_39_4.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_options_depthofbook_pitch_v2_39_4.auction_only_price.translate(raw)
  local display = cboe_options_depthofbook_pitch_v2_39_4.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_options_depthofbook_pitch_v2_39_4.indicative_price = {}

-- Size: Indicative Price
cboe_options_depthofbook_pitch_v2_39_4.indicative_price.size = 8

-- Display: Indicative Price
cboe_options_depthofbook_pitch_v2_39_4.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_options_depthofbook_pitch_v2_39_4.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_options_depthofbook_pitch_v2_39_4.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_options_depthofbook_pitch_v2_39_4.indicative_price.translate(raw)
  local display = cboe_options_depthofbook_pitch_v2_39_4.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_options_depthofbook_pitch_v2_39_4.sell_shares = {}

-- Size: Sell Shares
cboe_options_depthofbook_pitch_v2_39_4.sell_shares.size = 4

-- Display: Sell Shares
cboe_options_depthofbook_pitch_v2_39_4.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_options_depthofbook_pitch_v2_39_4.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.sell_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_options_depthofbook_pitch_v2_39_4.buy_shares = {}

-- Size: Buy Shares
cboe_options_depthofbook_pitch_v2_39_4.buy_shares.size = 4

-- Display: Buy Shares
cboe_options_depthofbook_pitch_v2_39_4.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_options_depthofbook_pitch_v2_39_4.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.buy_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_options_depthofbook_pitch_v2_39_4.reference_price = {}

-- Size: Reference Price
cboe_options_depthofbook_pitch_v2_39_4.reference_price.size = 8

-- Display: Reference Price
cboe_options_depthofbook_pitch_v2_39_4.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_options_depthofbook_pitch_v2_39_4.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_options_depthofbook_pitch_v2_39_4.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_options_depthofbook_pitch_v2_39_4.reference_price.translate(raw)
  local display = cboe_options_depthofbook_pitch_v2_39_4.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Auction Update Message
cboe_options_depthofbook_pitch_v2_39_4.auction_update_message = {}

-- Calculate size of: Auction Update Message
cboe_options_depthofbook_pitch_v2_39_4.auction_update_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.stock_symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.auction_type.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.reference_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.buy_shares.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.sell_shares.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.indicative_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.auction_only_price.size

  return index
end

-- Display: Auction Update Message
cboe_options_depthofbook_pitch_v2_39_4.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_options_depthofbook_pitch_v2_39_4.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Stock Symbol: 8 Byte Ascii String
  index, stock_symbol = cboe_options_depthofbook_pitch_v2_39_4.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index, auction_type = cboe_options_depthofbook_pitch_v2_39_4.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = cboe_options_depthofbook_pitch_v2_39_4.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Shares: 4 Byte Unsigned Fixed Width Integer
  index, buy_shares = cboe_options_depthofbook_pitch_v2_39_4.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: 4 Byte Unsigned Fixed Width Integer
  index, sell_shares = cboe_options_depthofbook_pitch_v2_39_4.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Unsigned Fixed Width Integer
  index, indicative_price = cboe_options_depthofbook_pitch_v2_39_4.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_only_price = cboe_options_depthofbook_pitch_v2_39_4.auction_only_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_options_depthofbook_pitch_v2_39_4.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 2
cboe_options_depthofbook_pitch_v2_39_4.reserved_2 = {}

-- Size: Reserved 2
cboe_options_depthofbook_pitch_v2_39_4.reserved_2.size = 1

-- Display: Reserved 2
cboe_options_depthofbook_pitch_v2_39_4.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_options_depthofbook_pitch_v2_39_4.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_options_depthofbook_pitch_v2_39_4.reserved_1 = {}

-- Size: Reserved 1
cboe_options_depthofbook_pitch_v2_39_4.reserved_1.size = 1

-- Display: Reserved 1
cboe_options_depthofbook_pitch_v2_39_4.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_options_depthofbook_pitch_v2_39_4.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_options_depthofbook_pitch_v2_39_4.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_options_depthofbook_pitch_v2_39_4.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_options_depthofbook_pitch_v2_39_4.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_options_depthofbook_pitch_v2_39_4.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_options_depthofbook_pitch_v2_39_4.trading_status = {}

-- Size: Trading Status
cboe_options_depthofbook_pitch_v2_39_4.trading_status.size = 1

-- Display: Trading Status
cboe_options_depthofbook_pitch_v2_39_4.trading_status.display = function(value)
  if value == "A" then
    return "Trading Status: Accepting Orders (A)"
  end
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "Q" then
    return "Trading Status: Quote Only (Q)"
  end
  if value == "S" then
    return "Trading Status: Exchange Specific Suspension (S)"
  end
  if value == "T" then
    return "Trading Status: Trading (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
cboe_options_depthofbook_pitch_v2_39_4.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Trading Status Message
cboe_options_depthofbook_pitch_v2_39_4.trading_status_message = {}

-- Calculate size of: Trading Status Message
cboe_options_depthofbook_pitch_v2_39_4.trading_status_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.trading_status.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.reg_sho_action.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.reserved_1.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.reserved_2.size

  return index
end

-- Display: Trading Status Message
cboe_options_depthofbook_pitch_v2_39_4.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_options_depthofbook_pitch_v2_39_4.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index, expanded_symbol = cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 5 values
  index, trading_status = cboe_options_depthofbook_pitch_v2_39_4.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 2 values
  index, reg_sho_action = cboe_options_depthofbook_pitch_v2_39_4.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = cboe_options_depthofbook_pitch_v2_39_4.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: 1 Byte Ascii String
  index, reserved_2 = cboe_options_depthofbook_pitch_v2_39_4.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_options_depthofbook_pitch_v2_39_4.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Condition
cboe_options_depthofbook_pitch_v2_39_4.symbol_condition = {}

-- Size: Symbol Condition
cboe_options_depthofbook_pitch_v2_39_4.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_options_depthofbook_pitch_v2_39_4.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_options_depthofbook_pitch_v2_39_4.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_options_depthofbook_pitch_v2_39_4.osi_symbol = {}

-- Size: Osi Symbol
cboe_options_depthofbook_pitch_v2_39_4.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_options_depthofbook_pitch_v2_39_4.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_options_depthofbook_pitch_v2_39_4.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.osi_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_options_depthofbook_pitch_v2_39_4.feed_symbol = {}

-- Size: Feed Symbol
cboe_options_depthofbook_pitch_v2_39_4.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_options_depthofbook_pitch_v2_39_4.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_options_depthofbook_pitch_v2_39_4.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.feed_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Symbol Mapping Message
cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message = {}

-- Calculate size of: Symbol Mapping Message
cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.feed_symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.osi_symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.symbol_condition.size

  return index
end

-- Display: Symbol Mapping Message
cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index, feed_symbol = cboe_options_depthofbook_pitch_v2_39_4.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index, osi_symbol = cboe_options_depthofbook_pitch_v2_39_4.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String Enum with 2 values
  index, symbol_condition = cboe_options_depthofbook_pitch_v2_39_4.symbol_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message = {}

-- Calculate size of: End Of Session Message
cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  return index
end

-- Display: End Of Session Message
cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_session_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_options_depthofbook_pitch_v2_39_4.trade_break_message = {}

-- Calculate size of: Trade Break Message
cboe_options_depthofbook_pitch_v2_39_4.trade_break_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.execution_id.size

  return index
end

-- Display: Trade Break Message
cboe_options_depthofbook_pitch_v2_39_4.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_options_depthofbook_pitch_v2_39_4.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_options_depthofbook_pitch_v2_39_4.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Condition
cboe_options_depthofbook_pitch_v2_39_4.trade_condition = {}

-- Size: Trade Condition
cboe_options_depthofbook_pitch_v2_39_4.trade_condition.size = 1

-- Display: Trade Condition
cboe_options_depthofbook_pitch_v2_39_4.trade_condition.display = function(value)
  if value == " " then
    return "Trade Condition: Normal Trade (<whitespace>)"
  end
  if value == "S" then
    return "Trade Condition: Spread Trade (S)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_options_depthofbook_pitch_v2_39_4.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_options_depthofbook_pitch_v2_39_4.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Long Quantity
cboe_options_depthofbook_pitch_v2_39_4.long_quantity = {}

-- Size: Long Quantity
cboe_options_depthofbook_pitch_v2_39_4.long_quantity.size = 4

-- Display: Long Quantity
cboe_options_depthofbook_pitch_v2_39_4.long_quantity.display = function(value)
  return "Long Quantity: "..value
end

-- Dissect: Long Quantity
cboe_options_depthofbook_pitch_v2_39_4.long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.long_quantity, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_options_depthofbook_pitch_v2_39_4.order_id = {}

-- Size: Order Id
cboe_options_depthofbook_pitch_v2_39_4.order_id.size = 8

-- Display: Order Id
cboe_options_depthofbook_pitch_v2_39_4.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_options_depthofbook_pitch_v2_39_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Trade Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message = {}

-- Calculate size of: Trade Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.side_indicator.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.execution_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.trade_condition.size

  return index
end

-- Display: Trade Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index, expanded_symbol = cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_expanded_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Price
cboe_options_depthofbook_pitch_v2_39_4.short_price = {}

-- Size: Short Price
cboe_options_depthofbook_pitch_v2_39_4.short_price.size = 2

-- Display: Short Price
cboe_options_depthofbook_pitch_v2_39_4.short_price.display = function(value)
  return "Short Price: "..value
end

-- Translate: Short Price
cboe_options_depthofbook_pitch_v2_39_4.short_price.translate = function(raw)
  return raw/100
end

-- Dissect: Short Price
cboe_options_depthofbook_pitch_v2_39_4.short_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.short_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_options_depthofbook_pitch_v2_39_4.short_price.translate(raw)
  local display = cboe_options_depthofbook_pitch_v2_39_4.short_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.short_price, range, value, display)

  return offset + length, value
end

-- Short Quantity
cboe_options_depthofbook_pitch_v2_39_4.short_quantity = {}

-- Size: Short Quantity
cboe_options_depthofbook_pitch_v2_39_4.short_quantity.size = 2

-- Display: Short Quantity
cboe_options_depthofbook_pitch_v2_39_4.short_quantity.display = function(value)
  return "Short Quantity: "..value
end

-- Dissect: Short Quantity
cboe_options_depthofbook_pitch_v2_39_4.short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.short_quantity, range, value, display)

  return offset + length, value
end

-- Trade Short Message
cboe_options_depthofbook_pitch_v2_39_4.trade_short_message = {}

-- Calculate size of: Trade Short Message
cboe_options_depthofbook_pitch_v2_39_4.trade_short_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.side_indicator.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.short_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.short_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.execution_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.trade_condition.size

  return index
end

-- Display: Trade Short Message
cboe_options_depthofbook_pitch_v2_39_4.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_options_depthofbook_pitch_v2_39_4.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_options_depthofbook_pitch_v2_39_4.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_options_depthofbook_pitch_v2_39_4.short_price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_options_depthofbook_pitch_v2_39_4.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_options_depthofbook_pitch_v2_39_4.trade_long_message = {}

-- Calculate size of: Trade Long Message
cboe_options_depthofbook_pitch_v2_39_4.trade_long_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.side_indicator.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.execution_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.trade_condition.size

  return index
end

-- Display: Trade Long Message
cboe_options_depthofbook_pitch_v2_39_4.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_options_depthofbook_pitch_v2_39_4.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_options_depthofbook_pitch_v2_39_4.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_options_depthofbook_pitch_v2_39_4.delete_order_message = {}

-- Calculate size of: Delete Order Message
cboe_options_depthofbook_pitch_v2_39_4.delete_order_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  return index
end

-- Display: Delete Order Message
cboe_options_depthofbook_pitch_v2_39_4.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_options_depthofbook_pitch_v2_39_4.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_options_depthofbook_pitch_v2_39_4.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
cboe_options_depthofbook_pitch_v2_39_4.modify_flags = {}

-- Size: Modify Flags
cboe_options_depthofbook_pitch_v2_39_4.modify_flags.size = 1

-- Display: Modify Flags
cboe_options_depthofbook_pitch_v2_39_4.modify_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Maintain Priority flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Maintain Priority|"
  end
  -- Is Display flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Display|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Modify Flags
cboe_options_depthofbook_pitch_v2_39_4.modify_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_6, buffer(offset, 1))

  -- Maintain Priority: 1 Bit Enum with 2 values
  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.maintain_priority, buffer(offset, 1))

  -- Display: 1 Bit Enum with 2 values
  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.display, buffer(offset, 1))
end

-- Dissect: Modify Flags
cboe_options_depthofbook_pitch_v2_39_4.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_options_depthofbook_pitch_v2_39_4.modify_flags.display(range, packet, parent)
  local element = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.modify_flags, range, display)

  if show.modify_flags then
    cboe_options_depthofbook_pitch_v2_39_4.modify_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Modify Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message = {}

-- Calculate size of: Modify Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.short_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.short_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.modify_flags.size

  return index
end

-- Display: Modify Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_options_depthofbook_pitch_v2_39_4.short_quantity.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_options_depthofbook_pitch_v2_39_4.short_price.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_options_depthofbook_pitch_v2_39_4.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message = {}

-- Calculate size of: Modify Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.modify_flags.size

  return index
end

-- Display: Modify Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_options_depthofbook_pitch_v2_39_4.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Short Quantity
cboe_options_depthofbook_pitch_v2_39_4.canceled_short_quantity = {}

-- Size: Canceled Short Quantity
cboe_options_depthofbook_pitch_v2_39_4.canceled_short_quantity.size = 2

-- Display: Canceled Short Quantity
cboe_options_depthofbook_pitch_v2_39_4.canceled_short_quantity.display = function(value)
  return "Canceled Short Quantity: "..value
end

-- Dissect: Canceled Short Quantity
cboe_options_depthofbook_pitch_v2_39_4.canceled_short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.canceled_short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.canceled_short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.canceled_short_quantity, range, value, display)

  return offset + length, value
end

-- Reduce Size Short Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message = {}

-- Calculate size of: Reduce Size Short Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.canceled_short_quantity.size

  return index
end

-- Display: Reduce Size Short Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, canceled_short_quantity = cboe_options_depthofbook_pitch_v2_39_4.canceled_short_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Canceled Long Quantity
cboe_options_depthofbook_pitch_v2_39_4.canceled_long_quantity = {}

-- Size: Canceled Long Quantity
cboe_options_depthofbook_pitch_v2_39_4.canceled_long_quantity.size = 4

-- Display: Canceled Long Quantity
cboe_options_depthofbook_pitch_v2_39_4.canceled_long_quantity.display = function(value)
  return "Canceled Long Quantity: "..value
end

-- Dissect: Canceled Long Quantity
cboe_options_depthofbook_pitch_v2_39_4.canceled_long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.canceled_long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.canceled_long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.canceled_long_quantity, range, value, display)

  return offset + length, value
end

-- Reduce Size Long Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message = {}

-- Calculate size of: Reduce Size Long Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.canceled_long_quantity.size

  return index
end

-- Display: Reduce Size Long Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_long_quantity = cboe_options_depthofbook_pitch_v2_39_4.canceled_long_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.reduce_size_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Remaining Quantity
cboe_options_depthofbook_pitch_v2_39_4.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_options_depthofbook_pitch_v2_39_4.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_options_depthofbook_pitch_v2_39_4.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_options_depthofbook_pitch_v2_39_4.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_options_depthofbook_pitch_v2_39_4.executed_quantity = {}

-- Size: Executed Quantity
cboe_options_depthofbook_pitch_v2_39_4.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_options_depthofbook_pitch_v2_39_4.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_options_depthofbook_pitch_v2_39_4.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed At Price Size Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message = {}

-- Calculate size of: Order Executed At Price Size Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.executed_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.remaining_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.execution_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.trade_condition.size

  return index
end

-- Display: Order Executed At Price Size Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_options_depthofbook_pitch_v2_39_4.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = cboe_options_depthofbook_pitch_v2_39_4.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_at_price_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_message = {}

-- Calculate size of: Order Executed Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.executed_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.execution_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.trade_condition.size

  return index
end

-- Display: Order Executed Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_options_depthofbook_pitch_v2_39_4.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_options_depthofbook_pitch_v2_39_4.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_options_depthofbook_pitch_v2_39_4.add_flags = {}

-- Size: Add Flags
cboe_options_depthofbook_pitch_v2_39_4.add_flags.size = 1

-- Display: Add Flags
cboe_options_depthofbook_pitch_v2_39_4.add_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Display flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Display|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Add Flags
cboe_options_depthofbook_pitch_v2_39_4.add_flags.bits = function(buffer, offset, packet, parent)

  -- Reserved 7: 7 Bit
  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_7, buffer(offset, 1))

  -- Display: 1 Bit Enum with 2 values
  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.display, buffer(offset, 1))
end

-- Dissect: Add Flags
cboe_options_depthofbook_pitch_v2_39_4.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_options_depthofbook_pitch_v2_39_4.add_flags.display(range, packet, parent)
  local element = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.add_flags, range, display)

  if show.add_flags then
    cboe_options_depthofbook_pitch_v2_39_4.add_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Add Order Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message = {}

-- Calculate size of: Add Order Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.side_indicator.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.add_flags.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.participant_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.customer_indicator.size

  return index
end

-- Display: Add Order Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index, expanded_symbol = cboe_options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_options_depthofbook_pitch_v2_39_4.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_options_depthofbook_pitch_v2_39_4.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_options_depthofbook_pitch_v2_39_4.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_expanded_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message = {}

-- Calculate size of: Add Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.side_indicator.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.short_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.short_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.add_flags.size

  return index
end

-- Display: Add Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_options_depthofbook_pitch_v2_39_4.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_options_depthofbook_pitch_v2_39_4.short_price.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_options_depthofbook_pitch_v2_39_4.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message = {}

-- Calculate size of: Add Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.order_id.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.side_indicator.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_quantity.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.symbol.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.long_price.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.add_flags.size

  return index
end

-- Display: Add Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_options_depthofbook_pitch_v2_39_4.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message = {}

-- Calculate size of: Unit Clear Message
cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time_offset.size

  return index
end

-- Display: Unit Clear Message
cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time
cboe_options_depthofbook_pitch_v2_39_4.time = {}

-- Size: Time
cboe_options_depthofbook_pitch_v2_39_4.time.size = 4

-- Display: Time
cboe_options_depthofbook_pitch_v2_39_4.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_options_depthofbook_pitch_v2_39_4.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.time, range, value, display)

  return offset + length, value
end

-- Time Message
cboe_options_depthofbook_pitch_v2_39_4.time_message = {}

-- Calculate size of: Time Message
cboe_options_depthofbook_pitch_v2_39_4.time_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.time.size

  return index
end

-- Display: Time Message
cboe_options_depthofbook_pitch_v2_39_4.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_options_depthofbook_pitch_v2_39_4.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_options_depthofbook_pitch_v2_39_4.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_options_depthofbook_pitch_v2_39_4.time_message.dissect = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.time_message, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_options_depthofbook_pitch_v2_39_4.payload = {}

-- Calculate runtime size of: Payload
cboe_options_depthofbook_pitch_v2_39_4.payload.size = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_options_depthofbook_pitch_v2_39_4.time_message.size(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message.size(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x21 then
    return cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message.size(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message.size(buffer, offset)
  end
  -- Size of Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_options_depthofbook_pitch_v2_39_4.order_executed_message.size(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.size(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message.size(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message.size(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message.size(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message.size(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_options_depthofbook_pitch_v2_39_4.delete_order_message.size(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x2A then
    return cboe_options_depthofbook_pitch_v2_39_4.trade_long_message.size(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_options_depthofbook_pitch_v2_39_4.trade_short_message.size(buffer, offset)
  end
  -- Size of Trade Expanded Message
  if message_type == 0x30 then
    return cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message.size(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0x2C then
    return cboe_options_depthofbook_pitch_v2_39_4.trade_break_message.size(buffer, offset)
  end
  -- Size of End Of Session Message
  if message_type == 0x2D then
    return cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message.size(buffer, offset)
  end
  -- Size of Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message.size(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_options_depthofbook_pitch_v2_39_4.trading_status_message.size(buffer, offset)
  end
  -- Size of Auction Update Message
  if message_type == 0x95 then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_update_message.size(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message.size(buffer, offset)
  end
  -- Size of Auction Notification Message
  if message_type == 0xAD then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message.size(buffer, offset)
  end
  -- Size of Auction Cancel Message
  if message_type == 0xAE then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message.size(buffer, offset)
  end
  -- Size of Auction Trade Message
  if message_type == 0xAF then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message.size(buffer, offset)
  end
  -- Size of Retail Price Improvement Message
  if message_type == 0x98 then
    return cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_options_depthofbook_pitch_v2_39_4.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_options_depthofbook_pitch_v2_39_4.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_options_depthofbook_pitch_v2_39_4.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_options_depthofbook_pitch_v2_39_4.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_options_depthofbook_pitch_v2_39_4.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_options_depthofbook_pitch_v2_39_4.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_options_depthofbook_pitch_v2_39_4.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_options_depthofbook_pitch_v2_39_4.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_options_depthofbook_pitch_v2_39_4.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_options_depthofbook_pitch_v2_39_4.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_options_depthofbook_pitch_v2_39_4.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_options_depthofbook_pitch_v2_39_4.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_options_depthofbook_pitch_v2_39_4.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_options_depthofbook_pitch_v2_39_4.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_options_depthofbook_pitch_v2_39_4.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Expanded Message
  if message_type == 0x30 then
    return cboe_options_depthofbook_pitch_v2_39_4.trade_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_options_depthofbook_pitch_v2_39_4.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_options_depthofbook_pitch_v2_39_4.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_options_depthofbook_pitch_v2_39_4.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_options_depthofbook_pitch_v2_39_4.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0x95 then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_options_depthofbook_pitch_v2_39_4.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if message_type == 0x98 then
    return cboe_options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_options_depthofbook_pitch_v2_39_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_options_depthofbook_pitch_v2_39_4.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_options_depthofbook_pitch_v2_39_4.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_options_depthofbook_pitch_v2_39_4.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.payload, range, display)

  return cboe_options_depthofbook_pitch_v2_39_4.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
cboe_options_depthofbook_pitch_v2_39_4.message_type = {}

-- Size: Message Type
cboe_options_depthofbook_pitch_v2_39_4.message_type.size = 1

-- Display: Message Type
cboe_options_depthofbook_pitch_v2_39_4.message_type.display = function(value)
  if value == 0x20 then
    return "Message Type: Time Message (0x20)"
  end
  if value == 0x97 then
    return "Message Type: Unit Clear Message (0x97)"
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
    return "Message Type: End Of Session Message (0x2D)"
  end
  if value == 0x2E then
    return "Message Type: Symbol Mapping Message (0x2E)"
  end
  if value == 0x31 then
    return "Message Type: Trading Status Message (0x31)"
  end
  if value == 0x95 then
    return "Message Type: Auction Update Message (0x95)"
  end
  if value == 0x96 then
    return "Message Type: Auction Summary Message (0x96)"
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
  if value == 0x98 then
    return "Message Type: Retail Price Improvement Message (0x98)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_options_depthofbook_pitch_v2_39_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_options_depthofbook_pitch_v2_39_4.message_length = {}

-- Size: Message Length
cboe_options_depthofbook_pitch_v2_39_4.message_length.size = 1

-- Display: Message Length
cboe_options_depthofbook_pitch_v2_39_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_options_depthofbook_pitch_v2_39_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_options_depthofbook_pitch_v2_39_4.message_header = {}

-- Calculate size of: Message Header
cboe_options_depthofbook_pitch_v2_39_4.message_header.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.message_length.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.message_type.size

  return index
end

-- Display: Message Header
cboe_options_depthofbook_pitch_v2_39_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_options_depthofbook_pitch_v2_39_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_options_depthofbook_pitch_v2_39_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = cboe_options_depthofbook_pitch_v2_39_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_options_depthofbook_pitch_v2_39_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message_header, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_options_depthofbook_pitch_v2_39_4.message = {}

-- Display: Message
cboe_options_depthofbook_pitch_v2_39_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_options_depthofbook_pitch_v2_39_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_options_depthofbook_pitch_v2_39_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = cboe_options_depthofbook_pitch_v2_39_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_options_depthofbook_pitch_v2_39_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.message, buffer(offset, 0))
    local current = cboe_options_depthofbook_pitch_v2_39_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_options_depthofbook_pitch_v2_39_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_options_depthofbook_pitch_v2_39_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequence
cboe_options_depthofbook_pitch_v2_39_4.sequence = {}

-- Size: Sequence
cboe_options_depthofbook_pitch_v2_39_4.sequence.size = 4

-- Display: Sequence
cboe_options_depthofbook_pitch_v2_39_4.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_options_depthofbook_pitch_v2_39_4.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.sequence, range, value, display)

  return offset + length, value
end

-- Unit
cboe_options_depthofbook_pitch_v2_39_4.unit = {}

-- Size: Unit
cboe_options_depthofbook_pitch_v2_39_4.unit.size = 1

-- Display: Unit
cboe_options_depthofbook_pitch_v2_39_4.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_options_depthofbook_pitch_v2_39_4.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.unit, range, value, display)

  return offset + length, value
end

-- Count
cboe_options_depthofbook_pitch_v2_39_4.count = {}

-- Size: Count
cboe_options_depthofbook_pitch_v2_39_4.count.size = 1

-- Display: Count
cboe_options_depthofbook_pitch_v2_39_4.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_options_depthofbook_pitch_v2_39_4.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.count, range, value, display)

  return offset + length, value
end

-- Length
cboe_options_depthofbook_pitch_v2_39_4.length = {}

-- Size: Length
cboe_options_depthofbook_pitch_v2_39_4.length.size = 2

-- Display: Length
cboe_options_depthofbook_pitch_v2_39_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_options_depthofbook_pitch_v2_39_4.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_options_depthofbook_pitch_v2_39_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_options_depthofbook_pitch_v2_39_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.length, range, value, display)

  return offset + length, value
end

-- Packet Header
cboe_options_depthofbook_pitch_v2_39_4.packet_header = {}

-- Calculate size of: Packet Header
cboe_options_depthofbook_pitch_v2_39_4.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + cboe_options_depthofbook_pitch_v2_39_4.length.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.count.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.unit.size

  index = index + cboe_options_depthofbook_pitch_v2_39_4.sequence.size

  return index
end

-- Display: Packet Header
cboe_options_depthofbook_pitch_v2_39_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_options_depthofbook_pitch_v2_39_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_options_depthofbook_pitch_v2_39_4.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_options_depthofbook_pitch_v2_39_4.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_options_depthofbook_pitch_v2_39_4.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_options_depthofbook_pitch_v2_39_4.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_options_depthofbook_pitch_v2_39_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4.fields.packet_header, buffer(offset, 0))
    local index = cboe_options_depthofbook_pitch_v2_39_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_options_depthofbook_pitch_v2_39_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_options_depthofbook_pitch_v2_39_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_options_depthofbook_pitch_v2_39_4.packet = {}

-- Dissect Packet
cboe_options_depthofbook_pitch_v2_39_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_options_depthofbook_pitch_v2_39_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_options_depthofbook_pitch_v2_39_4.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_options_depthofbook_pitch_v2_39_4.init()
end

-- Dissector for Cboe Options DepthOfBook Pitch 2.39.4
function omi_cboe_options_depthofbook_pitch_v2_39_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_options_depthofbook_pitch_v2_39_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_options_depthofbook_pitch_v2_39_4, buffer(), omi_cboe_options_depthofbook_pitch_v2_39_4.description, "("..buffer:len().." Bytes)")
  return cboe_options_depthofbook_pitch_v2_39_4.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_options_depthofbook_pitch_v2_39_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_options_depthofbook_pitch_v2_39_4.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Options DepthOfBook Pitch 2.39.4
local function omi_cboe_options_depthofbook_pitch_v2_39_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_options_depthofbook_pitch_v2_39_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_options_depthofbook_pitch_v2_39_4
  omi_cboe_options_depthofbook_pitch_v2_39_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Options DepthOfBook Pitch 2.39.4
omi_cboe_options_depthofbook_pitch_v2_39_4:register_heuristic("udp", omi_cboe_options_depthofbook_pitch_v2_39_4_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.39.4
--   Date: Tuesday, August 21, 2018
--   Specification: BATS_US_EQUITIES_OPTIONS_MULTICAST_PITCH_SPECIFICATION.pdf
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
