-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Options DepthOfBook Pitch 2.39.4 Protocol
local cboe_options_depthofbook_pitch_v2_39_4 = Proto("Cboe.Options.DepthOfBook.Pitch.v2.39.4.Lua", "Cboe Options DepthOfBook Pitch 2.39.4")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Options DepthOfBook Pitch 2.39.4 Fields
cboe_options_depthofbook_pitch_v2_39_4.fields.add_flags = ProtoField.new("Add Flags", "cboe.options.depthofbook.pitch.v2.39.4.addflags", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.options.depthofbook.pitch.v2.39.4.addorderexpandedmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.options.depthofbook.pitch.v2.39.4.addorderlongmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.options.depthofbook.pitch.v2.39.4.addordershortmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.options.depthofbook.pitch.v2.39.4.auctioncancelmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.options.depthofbook.pitch.v2.39.4.auctionendoffset", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.auction_id = ProtoField.new("Auction Id", "cboe.options.depthofbook.pitch.v2.39.4.auctionid", ftypes.UINT64)
cboe_options_depthofbook_pitch_v2_39_4.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.options.depthofbook.pitch.v2.39.4.auctionnotificationmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.options.depthofbook.pitch.v2.39.4.auctiononlyprice", ftypes.UINT64)
cboe_options_depthofbook_pitch_v2_39_4.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.options.depthofbook.pitch.v2.39.4.auctionsummarymessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.options.depthofbook.pitch.v2.39.4.auctiontrademessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.auction_type = ProtoField.new("Auction Type", "cboe.options.depthofbook.pitch.v2.39.4.auctiontype", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.options.depthofbook.pitch.v2.39.4.auctionupdatemessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.options.depthofbook.pitch.v2.39.4.buyshares", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.canceled_long_quantity = ProtoField.new("Canceled Long Quantity", "cboe.options.depthofbook.pitch.v2.39.4.canceledlongquantity", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.canceled_short_quantity = ProtoField.new("Canceled Short Quantity", "cboe.options.depthofbook.pitch.v2.39.4.canceledshortquantity", ftypes.UINT16)
cboe_options_depthofbook_pitch_v2_39_4.fields.contracts = ProtoField.new("Contracts", "cboe.options.depthofbook.pitch.v2.39.4.contracts", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.count = ProtoField.new("Count", "cboe.options.depthofbook.pitch.v2.39.4.count", ftypes.UINT8)
cboe_options_depthofbook_pitch_v2_39_4.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.options.depthofbook.pitch.v2.39.4.customerindicator", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.options.depthofbook.pitch.v2.39.4.deleteordermessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.display = ProtoField.new("Display", "cboe.options.depthofbook.pitch.v2.39.4.display", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
cboe_options_depthofbook_pitch_v2_39_4.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.options.depthofbook.pitch.v2.39.4.endofsessionmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.options.depthofbook.pitch.v2.39.4.executedquantity", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.execution_id = ProtoField.new("Execution Id", "cboe.options.depthofbook.pitch.v2.39.4.executionid", ftypes.UINT64)
cboe_options_depthofbook_pitch_v2_39_4.fields.expanded_symbol = ProtoField.new("Expanded Symbol", "cboe.options.depthofbook.pitch.v2.39.4.expandedsymbol", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.options.depthofbook.pitch.v2.39.4.feedsymbol", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.options.depthofbook.pitch.v2.39.4.indicativeprice", ftypes.UINT64)
cboe_options_depthofbook_pitch_v2_39_4.fields.length = ProtoField.new("Length", "cboe.options.depthofbook.pitch.v2.39.4.length", ftypes.UINT16)
cboe_options_depthofbook_pitch_v2_39_4.fields.long_price = ProtoField.new("Long Price", "cboe.options.depthofbook.pitch.v2.39.4.longprice", ftypes.UINT64)
cboe_options_depthofbook_pitch_v2_39_4.fields.long_quantity = ProtoField.new("Long Quantity", "cboe.options.depthofbook.pitch.v2.39.4.longquantity", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.maintain_priority = ProtoField.new("Maintain Priority", "cboe.options.depthofbook.pitch.v2.39.4.maintainpriority", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cboe_options_depthofbook_pitch_v2_39_4.fields.message = ProtoField.new("Message", "cboe.options.depthofbook.pitch.v2.39.4.message", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.message_header = ProtoField.new("Message Header", "cboe.options.depthofbook.pitch.v2.39.4.messageheader", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.message_length = ProtoField.new("Message Length", "cboe.options.depthofbook.pitch.v2.39.4.messagelength", ftypes.UINT8)
cboe_options_depthofbook_pitch_v2_39_4.fields.message_type = ProtoField.new("Message Type", "cboe.options.depthofbook.pitch.v2.39.4.messagetype", ftypes.UINT8)
cboe_options_depthofbook_pitch_v2_39_4.fields.modify_flags = ProtoField.new("Modify Flags", "cboe.options.depthofbook.pitch.v2.39.4.modifyflags", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.options.depthofbook.pitch.v2.39.4.modifyorderlongmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.options.depthofbook.pitch.v2.39.4.modifyordershortmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.options.depthofbook.pitch.v2.39.4.orderexecutedatpricesizemessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.options.depthofbook.pitch.v2.39.4.orderexecutedmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.order_id = ProtoField.new("Order Id", "cboe.options.depthofbook.pitch.v2.39.4.orderid", ftypes.UINT64)
cboe_options_depthofbook_pitch_v2_39_4.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.options.depthofbook.pitch.v2.39.4.osisymbol", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.packet = ProtoField.new("Packet", "cboe.options.depthofbook.pitch.v2.39.4.packet", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.options.depthofbook.pitch.v2.39.4.packetheader", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.participant_id = ProtoField.new("Participant Id", "cboe.options.depthofbook.pitch.v2.39.4.participantid", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.payload = ProtoField.new("Payload", "cboe.options.depthofbook.pitch.v2.39.4.payload", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.options.depthofbook.pitch.v2.39.4.reducesizelongmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.options.depthofbook.pitch.v2.39.4.reducesizeshortmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.reference_price = ProtoField.new("Reference Price", "cboe.options.depthofbook.pitch.v2.39.4.referenceprice", ftypes.UINT64)
cboe_options_depthofbook_pitch_v2_39_4.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.options.depthofbook.pitch.v2.39.4.regshoaction", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.options.depthofbook.pitch.v2.39.4.remainingquantity", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.options.depthofbook.pitch.v2.39.4.reserved1", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.options.depthofbook.pitch.v2.39.4.reserved2", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_6 = ProtoField.new("Reserved 6", "cboe.options.depthofbook.pitch.v2.39.4.reserved6", ftypes.UINT8, nil, base.DEC, "0xFC")
cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_7 = ProtoField.new("Reserved 7", "cboe.options.depthofbook.pitch.v2.39.4.reserved7", ftypes.UINT8, nil, base.DEC, "0xFE")
cboe_options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.options.depthofbook.pitch.v2.39.4.retailpriceimprovement", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "cboe.options.depthofbook.pitch.v2.39.4.retailpriceimprovementmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.options.depthofbook.pitch.v2.39.4.sellshares", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.sequence = ProtoField.new("Sequence", "cboe.options.depthofbook.pitch.v2.39.4.sequence", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.shares = ProtoField.new("Shares", "cboe.options.depthofbook.pitch.v2.39.4.shares", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.short_price = ProtoField.new("Short Price", "cboe.options.depthofbook.pitch.v2.39.4.shortprice", ftypes.UINT16)
cboe_options_depthofbook_pitch_v2_39_4.fields.short_quantity = ProtoField.new("Short Quantity", "cboe.options.depthofbook.pitch.v2.39.4.shortquantity", ftypes.UINT16)
cboe_options_depthofbook_pitch_v2_39_4.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.options.depthofbook.pitch.v2.39.4.sideindicator", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.options.depthofbook.pitch.v2.39.4.stocksymbol", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.symbol = ProtoField.new("Symbol", "cboe.options.depthofbook.pitch.v2.39.4.symbol", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.options.depthofbook.pitch.v2.39.4.symbolcondition", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.options.depthofbook.pitch.v2.39.4.symbolmappingmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.time = ProtoField.new("Time", "cboe.options.depthofbook.pitch.v2.39.4.time", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.time_message = ProtoField.new("Time Message", "cboe.options.depthofbook.pitch.v2.39.4.timemessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.time_offset = ProtoField.new("Time Offset", "cboe.options.depthofbook.pitch.v2.39.4.timeoffset", ftypes.UINT32)
cboe_options_depthofbook_pitch_v2_39_4.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.options.depthofbook.pitch.v2.39.4.tradebreakmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.options.depthofbook.pitch.v2.39.4.tradecondition", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.options.depthofbook.pitch.v2.39.4.tradeexpandedmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.options.depthofbook.pitch.v2.39.4.tradelongmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.options.depthofbook.pitch.v2.39.4.tradeshortmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.trading_status = ProtoField.new("Trading Status", "cboe.options.depthofbook.pitch.v2.39.4.tradingstatus", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.options.depthofbook.pitch.v2.39.4.tradingstatusmessage", ftypes.STRING)
cboe_options_depthofbook_pitch_v2_39_4.fields.unit = ProtoField.new("Unit", "cboe.options.depthofbook.pitch.v2.39.4.unit", ftypes.UINT8)
cboe_options_depthofbook_pitch_v2_39_4.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.options.depthofbook.pitch.v2.39.4.unitclearmessage", ftypes.STRING)

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
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_flags = Pref.bool("Show Add Flags", show.add_flags, "Parse and add Add Flags to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_expanded_message = Pref.bool("Show Add Order Expanded Message", show.add_order_expanded_message, "Parse and add Add Order Expanded Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_cancel_message = Pref.bool("Show Auction Cancel Message", show.auction_cancel_message, "Parse and add Auction Cancel Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_notification_message = Pref.bool("Show Auction Notification Message", show.auction_notification_message, "Parse and add Auction Notification Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_end_of_session_message = Pref.bool("Show End Of Session Message", show.end_of_session_message, "Parse and add End Of Session Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_flags = Pref.bool("Show Modify Flags", show.modify_flags, "Parse and add Modify Flags to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_retail_price_improvement_message = Pref.bool("Show Retail Price Improvement Message", show.retail_price_improvement_message, "Parse and add Retail Price Improvement Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_symbol_mapping_message = Pref.bool("Show Symbol Mapping Message", show.symbol_mapping_message, "Parse and add Symbol Mapping Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_expanded_message = Pref.bool("Show Trade Expanded Message", show.trade_expanded_message, "Parse and add Trade Expanded Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_options_depthofbook_pitch_v2_39_4.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_options_depthofbook_pitch_v2_39_4.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_flags ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_flags then
    show.add_flags = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_flags
    changed = true
  end
  if show.add_order_expanded_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_expanded_message then
    show.add_order_expanded_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_expanded_message
    changed = true
  end
  if show.add_order_long_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_long_message then
    show.add_order_long_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_short_message then
    show.add_order_short_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_cancel_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_cancel_message then
    show.auction_cancel_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_cancel_message
    changed = true
  end
  if show.auction_notification_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_notification_message then
    show.auction_notification_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_notification_message
    changed = true
  end
  if show.auction_summary_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_summary_message then
    show.auction_summary_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_trade_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_trade_message then
    show.auction_trade_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_trade_message
    changed = true
  end
  if show.auction_update_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_update_message then
    show.auction_update_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_auction_update_message
    changed = true
  end
  if show.delete_order_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_delete_order_message then
    show.delete_order_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_session_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_end_of_session_message then
    show.end_of_session_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_end_of_session_message
    changed = true
  end
  if show.message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message then
    show.message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message_header then
    show.message_header = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_message_header
    changed = true
  end
  if show.modify_flags ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_flags then
    show.modify_flags = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_flags
    changed = true
  end
  if show.modify_order_long_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_long_message then
    show.modify_order_long_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_short_message then
    show.modify_order_short_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_message then
    show.order_executed_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet then
    show.packet = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet_header then
    show.packet_header = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.retail_price_improvement_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_retail_price_improvement_message then
    show.retail_price_improvement_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_retail_price_improvement_message
    changed = true
  end
  if show.symbol_mapping_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_symbol_mapping_message then
    show.symbol_mapping_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_symbol_mapping_message
    changed = true
  end
  if show.time_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_time_message then
    show.time_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_time_message
    changed = true
  end
  if show.trade_break_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_break_message then
    show.trade_break_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_expanded_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_expanded_message then
    show.trade_expanded_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_expanded_message
    changed = true
  end
  if show.trade_long_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_long_message then
    show.trade_long_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_short_message then
    show.trade_short_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trading_status_message then
    show.trading_status_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_trading_status_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_unit_clear_message
    changed = true
  end
  if show.payload ~= cboe_options_depthofbook_pitch_v2_39_4.prefs.show_payload then
    show.payload = cboe_options_depthofbook_pitch_v2_39_4.prefs.show_payload
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

-- Size: Retail Price Improvement
size_of.retail_price_improvement = 1

-- Display: Retail Price Improvement
display.retail_price_improvement = function(value)
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
dissect.retail_price_improvement = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.retail_price_improvement)
  local value = range:string()
  local display = display.retail_price_improvement(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement, range, value, display)

  return offset + size_of.retail_price_improvement
end

-- Size: Expanded Symbol
size_of.expanded_symbol = 8

-- Display: Expanded Symbol
display.expanded_symbol = function(value)
  return "Expanded Symbol: "..value
end

-- Dissect: Expanded Symbol
dissect.expanded_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expanded_symbol)
  local value = range:string()
  local display = display.expanded_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.expanded_symbol, range, value, display)

  return offset + size_of.expanded_symbol
end

-- Size: Time Offset
size_of.time_offset = 4

-- Display: Time Offset
display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
dissect.time_offset = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.time_offset)
  local value = range:le_uint()
  local display = display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.time_offset, range, value, display)

  return offset + size_of.time_offset
end

-- Display: Retail Price Improvement Message
display.retail_price_improvement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
dissect.retail_price_improvement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index = dissect.expanded_symbol(buffer, index, packet, parent)

  -- Retail Price Improvement: 1 Byte Ascii String Enum with 4 values
  index = dissect.retail_price_improvement(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
dissect.retail_price_improvement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retail_price_improvement_message then
    local range = buffer(offset, 13)
    local display = display.retail_price_improvement_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement_message, range, display)
  end

  return dissect.retail_price_improvement_message_fields(buffer, offset, packet, parent)
end

-- Size: Contracts
size_of.contracts = 4

-- Display: Contracts
display.contracts = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
dissect.contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contracts)
  local value = range:le_uint()
  local display = display.contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.contracts, range, value, display)

  return offset + size_of.contracts
end

-- Size: Long Price
size_of.long_price = 8

-- Display: Long Price
display.long_price = function(value)
  return "Long Price: "..value
end

-- Dissect: Long Price
dissect.long_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.long_price)
  local value = range:le_uint64()
  local display = display.long_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.long_price, range, value, display)

  return offset + size_of.long_price
end

-- Size: Execution Id
size_of.execution_id = 8

-- Display: Execution Id
display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
dissect.execution_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.execution_id)
  local value = range:le_uint64()
  local display = display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.execution_id, range, value, display)

  return offset + size_of.execution_id
end

-- Size: Auction Id
size_of.auction_id = 8

-- Display: Auction Id
display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
dissect.auction_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_id)
  local value = range:le_uint64()
  local display = display.auction_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.auction_id, range, value, display)

  return offset + size_of.auction_id
end

-- Display: Auction Trade Message
display.auction_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Trade Message
dissect.auction_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.auction_id(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.execution_id(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.long_price(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
dissect.auction_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_trade_message then
    local range = buffer(offset, 32)
    local display = display.auction_trade_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.auction_trade_message, range, display)
  end

  return dissect.auction_trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Auction Cancel Message
display.auction_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Cancel Message
dissect.auction_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
dissect.auction_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_cancel_message then
    local range = buffer(offset, 12)
    local display = display.auction_cancel_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.auction_cancel_message, range, display)
  end

  return dissect.auction_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Auction End Offset
size_of.auction_end_offset = 4

-- Display: Auction End Offset
display.auction_end_offset = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
dissect.auction_end_offset = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_end_offset)
  local value = range:le_uint()
  local display = display.auction_end_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.auction_end_offset, range, value, display)

  return offset + size_of.auction_end_offset
end

-- Size: Participant Id
size_of.participant_id = 4

-- Display: Participant Id
display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
dissect.participant_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.participant_id)
  local value = range:string()
  local display = display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.participant_id, range, value, display)

  return offset + size_of.participant_id
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
  local range = buffer(offset, size_of.customer_indicator)
  local value = range:string()
  local display = display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.customer_indicator, range, value, display)

  return offset + size_of.customer_indicator
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
  local range = buffer(offset, size_of.side_indicator)
  local value = range:string()
  local display = display.side_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.side_indicator, range, value, display)

  return offset + size_of.side_indicator
end

-- Size: Auction Type
size_of.auction_type = 1

-- Display: Auction Type
display.auction_type = function(value)
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
dissect.auction_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_type)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.auction_type, range, value, display)

  return offset + size_of.auction_type
end

-- Size: Symbol
size_of.symbol = 6

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.symbol, range, value, display)

  return offset + size_of.symbol
end

-- Display: Auction Notification Message
display.auction_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Notification Message
dissect.auction_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.auction_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index = dissect.auction_type(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.side_indicator(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.long_price(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index = dissect.contracts(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.customer_indicator(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.auction_end_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
dissect.auction_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_notification_message then
    local range = buffer(offset, 41)
    local display = display.auction_notification_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.auction_notification_message, range, display)
  end

  return dissect.auction_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Shares
size_of.shares = 4

-- Display: Shares
display.shares = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
dissect.shares = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.shares)
  local value = range:le_uint()
  local display = display.shares(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.shares, range, value, display)

  return offset + size_of.shares
end

-- Size: Stock Symbol
size_of.stock_symbol = 8

-- Display: Stock Symbol
display.stock_symbol = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
dissect.stock_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.stock_symbol)
  local value = range:string()
  local display = display.stock_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.stock_symbol, range, value, display)

  return offset + size_of.stock_symbol
end

-- Display: Auction Summary Message
display.auction_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Summary Message
dissect.auction_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Stock Symbol: 8 Byte Ascii String
  index = dissect.stock_symbol(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index = dissect.auction_type(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.long_price(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.shares(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
dissect.auction_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_summary_message then
    local range = buffer(offset, 25)
    local display = display.auction_summary_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.auction_summary_message, range, display)
  end

  return dissect.auction_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Auction Only Price
size_of.auction_only_price = 8

-- Display: Auction Only Price
display.auction_only_price = function(value)
  return "Auction Only Price: "..value
end

-- Dissect: Auction Only Price
dissect.auction_only_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_only_price)
  local value = range:le_uint64()
  local display = display.auction_only_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.auction_only_price, range, value, display)

  return offset + size_of.auction_only_price
end

-- Size: Indicative Price
size_of.indicative_price = 8

-- Display: Indicative Price
display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
dissect.indicative_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.indicative_price)
  local value = range:le_uint64()
  local display = display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.indicative_price, range, value, display)

  return offset + size_of.indicative_price
end

-- Size: Sell Shares
size_of.sell_shares = 4

-- Display: Sell Shares
display.sell_shares = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
dissect.sell_shares = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sell_shares)
  local value = range:le_uint()
  local display = display.sell_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.sell_shares, range, value, display)

  return offset + size_of.sell_shares
end

-- Size: Buy Shares
size_of.buy_shares = 4

-- Display: Buy Shares
display.buy_shares = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
dissect.buy_shares = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.buy_shares)
  local value = range:le_uint()
  local display = display.buy_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.buy_shares, range, value, display)

  return offset + size_of.buy_shares
end

-- Size: Reference Price
size_of.reference_price = 8

-- Display: Reference Price
display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
dissect.reference_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_price)
  local value = range:le_uint64()
  local display = display.reference_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.reference_price, range, value, display)

  return offset + size_of.reference_price
end

-- Display: Auction Update Message
display.auction_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Update Message
dissect.auction_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Stock Symbol: 8 Byte Ascii String
  index = dissect.stock_symbol(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index = dissect.auction_type(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reference_price(buffer, index, packet, parent)

  -- Buy Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.buy_shares(buffer, index, packet, parent)

  -- Sell Shares: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sell_shares(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.indicative_price(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.auction_only_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
dissect.auction_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_update_message then
    local range = buffer(offset, 45)
    local display = display.auction_update_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.auction_update_message, range, display)
  end

  return dissect.auction_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 2
size_of.reserved_2 = 1

-- Display: Reserved 2
display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
dissect.reserved_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_2)
  local value = range:string()
  local display = display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_2, range, value, display)

  return offset + size_of.reserved_2
end

-- Size: Reserved 1
size_of.reserved_1 = 1

-- Display: Reserved 1
display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
dissect.reserved_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_1)
  local value = range:string()
  local display = display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_1, range, value, display)

  return offset + size_of.reserved_1
end

-- Size: Reg Sho Action
size_of.reg_sho_action = 1

-- Display: Reg Sho Action
display.reg_sho_action = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reg_sho_action)
  local value = range:string()
  local display = display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.reg_sho_action, range, value, display)

  return offset + size_of.reg_sho_action
end

-- Size: Trading Status
size_of.trading_status = 1

-- Display: Trading Status
display.trading_status = function(value)
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
dissect.trading_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_status)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.trading_status, range, value, display)

  return offset + size_of.trading_status
end

-- Display: Trading Status Message
display.trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Status Message
dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index = dissect.expanded_symbol(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 5 values
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 2 values
  index = dissect.reg_sho_action(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Reserved 2: 1 Byte Ascii String
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
dissect.trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_status_message then
    local range = buffer(offset, 16)
    local display = display.trading_status_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.trading_status_message, range, display)
  end

  return dissect.trading_status_message_fields(buffer, offset, packet, parent)
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
  local range = buffer(offset, size_of.symbol_condition)
  local value = range:string()
  local display = display.symbol_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.symbol_condition, range, value, display)

  return offset + size_of.symbol_condition
end

-- Size: Osi Symbol
size_of.osi_symbol = 21

-- Display: Osi Symbol
display.osi_symbol = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
dissect.osi_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.osi_symbol)
  local value = range:string()
  local display = display.osi_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.osi_symbol, range, value, display)

  return offset + size_of.osi_symbol
end

-- Size: Feed Symbol
size_of.feed_symbol = 6

-- Display: Feed Symbol
display.feed_symbol = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
dissect.feed_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.feed_symbol)
  local value = range:string()
  local display = display.feed_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.feed_symbol, range, value, display)

  return offset + size_of.feed_symbol
end

-- Display: Symbol Mapping Message
display.symbol_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
dissect.symbol_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index = dissect.feed_symbol(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index = dissect.osi_symbol(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.symbol_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
dissect.symbol_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_mapping_message then
    local range = buffer(offset, 28)
    local display = display.symbol_mapping_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.symbol_mapping_message, range, display)
  end

  return dissect.symbol_mapping_message_fields(buffer, offset, packet, parent)
end

-- Display: End Of Session Message
display.end_of_session_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Session Message
dissect.end_of_session_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
dissect.end_of_session_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_session_message then
    local range = buffer(offset, 4)
    local display = display.end_of_session_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.end_of_session_message, range, display)
  end

  return dissect.end_of_session_message_fields(buffer, offset, packet, parent)
end

-- Display: Trade Break Message
display.trade_break_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Break Message
dissect.trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
dissect.trade_break_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_break_message then
    local range = buffer(offset, 12)
    local display = display.trade_break_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.trade_break_message, range, display)
  end

  return dissect.trade_break_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Condition
size_of.trade_condition = 1

-- Display: Trade Condition
display.trade_condition = function(value)
  if value == "" then
    return "Trade Condition: Normal Trade (<whitespace>)"
  end
  if value == "S" then
    return "Trade Condition: Spread Trade (S)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_condition)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.trade_condition, range, value, display)

  return offset + size_of.trade_condition
end

-- Size: Long Quantity
size_of.long_quantity = 4

-- Display: Long Quantity
display.long_quantity = function(value)
  return "Long Quantity: "..value
end

-- Dissect: Long Quantity
dissect.long_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.long_quantity)
  local value = range:le_uint()
  local display = display.long_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.long_quantity, range, value, display)

  return offset + size_of.long_quantity
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_id)
  local value = range:le_uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.order_id, range, value, display)

  return offset + size_of.order_id
end

-- Display: Trade Expanded Message
display.trade_expanded_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Expanded Message
dissect.trade_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.side_indicator(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.long_quantity(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index = dissect.expanded_symbol(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.long_price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
dissect.trade_expanded_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_expanded_message then
    local range = buffer(offset, 42)
    local display = display.trade_expanded_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.trade_expanded_message, range, display)
  end

  return dissect.trade_expanded_message_fields(buffer, offset, packet, parent)
end

-- Size: Short Price
size_of.short_price = 2

-- Display: Short Price
display.short_price = function(value)
  return "Short Price: "..value
end

-- Dissect: Short Price
dissect.short_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.short_price)
  local value = range:le_uint()
  local display = display.short_price(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.short_price, range, value, display)

  return offset + size_of.short_price
end

-- Size: Short Quantity
size_of.short_quantity = 2

-- Display: Short Quantity
display.short_quantity = function(value)
  return "Short Quantity: "..value
end

-- Dissect: Short Quantity
dissect.short_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.short_quantity)
  local value = range:le_uint()
  local display = display.short_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.short_quantity, range, value, display)

  return offset + size_of.short_quantity
end

-- Display: Trade Short Message
display.trade_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Short Message
dissect.trade_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.side_indicator(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index = dissect.short_quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.short_price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
dissect.trade_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_short_message then
    local range = buffer(offset, 32)
    local display = display.trade_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.trade_short_message, range, display)
  end

  return dissect.trade_short_message_fields(buffer, offset, packet, parent)
end

-- Display: Trade Long Message
display.trade_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Long Message
dissect.trade_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.side_indicator(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.long_quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.long_price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
dissect.trade_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_long_message then
    local range = buffer(offset, 40)
    local display = display.trade_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.trade_long_message, range, display)
  end

  return dissect.trade_long_message_fields(buffer, offset, packet, parent)
end

-- Display: Delete Order Message
display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local range = buffer(offset, 12)
    local display = display.delete_order_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.delete_order_message, range, display)
  end

  return dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Display: Modify Flags
display.modify_flags = function(buffer, packet, parent)
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
dissect.modify_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_6, buffer(offset, 1))

  -- Maintain Priority: 1 Bit Enum with 2 values
  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.maintain_priority, buffer(offset, 1))

  -- Display: 1 Bit Enum with 2 values
  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.display, buffer(offset, 1))
end

-- Dissect: Modify Flags
dissect.modify_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.modify_flags(range, packet, parent)
  local element = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.modify_flags, range, display)

  if show.modify_flags then
    dissect.modify_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1
end

-- Display: Modify Order Short Message
display.modify_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Short Message
dissect.modify_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index = dissect.short_quantity(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.short_price(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index = dissect.modify_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
dissect.modify_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_short_message then
    local range = buffer(offset, 17)
    local display = display.modify_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.modify_order_short_message, range, display)
  end

  return dissect.modify_order_short_message_fields(buffer, offset, packet, parent)
end

-- Display: Modify Order Long Message
display.modify_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Long Message
dissect.modify_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.long_quantity(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.long_price(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index = dissect.modify_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
dissect.modify_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_long_message then
    local range = buffer(offset, 25)
    local display = display.modify_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.modify_order_long_message, range, display)
  end

  return dissect.modify_order_long_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Short Quantity
size_of.canceled_short_quantity = 2

-- Display: Canceled Short Quantity
display.canceled_short_quantity = function(value)
  return "Canceled Short Quantity: "..value
end

-- Dissect: Canceled Short Quantity
dissect.canceled_short_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.canceled_short_quantity)
  local value = range:le_uint()
  local display = display.canceled_short_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.canceled_short_quantity, range, value, display)

  return offset + size_of.canceled_short_quantity
end

-- Display: Reduce Size Short Message
display.reduce_size_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
dissect.reduce_size_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Canceled Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index = dissect.canceled_short_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
dissect.reduce_size_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_short_message then
    local range = buffer(offset, 14)
    local display = display.reduce_size_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.reduce_size_short_message, range, display)
  end

  return dissect.reduce_size_short_message_fields(buffer, offset, packet, parent)
end

-- Size: Canceled Long Quantity
size_of.canceled_long_quantity = 4

-- Display: Canceled Long Quantity
display.canceled_long_quantity = function(value)
  return "Canceled Long Quantity: "..value
end

-- Dissect: Canceled Long Quantity
dissect.canceled_long_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.canceled_long_quantity)
  local value = range:le_uint()
  local display = display.canceled_long_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.canceled_long_quantity, range, value, display)

  return offset + size_of.canceled_long_quantity
end

-- Display: Reduce Size Long Message
display.reduce_size_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
dissect.reduce_size_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Canceled Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.canceled_long_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
dissect.reduce_size_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reduce_size_long_message then
    local range = buffer(offset, 16)
    local display = display.reduce_size_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.reduce_size_long_message, range, display)
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
  local range = buffer(offset, size_of.remaining_quantity)
  local value = range:le_uint()
  local display = display.remaining_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.remaining_quantity, range, value, display)

  return offset + size_of.remaining_quantity
end

-- Size: Executed Quantity
size_of.executed_quantity = 4

-- Display: Executed Quantity
display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
dissect.executed_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.executed_quantity)
  local value = range:le_uint()
  local display = display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.executed_quantity, range, value, display)

  return offset + size_of.executed_quantity
end

-- Display: Order Executed At Price Size Message
display.order_executed_at_price_size_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
dissect.order_executed_at_price_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_quantity(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.remaining_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.execution_id(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.long_price(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
dissect.order_executed_at_price_size_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_at_price_size_message then
    local range = buffer(offset, 37)
    local display = display.order_executed_at_price_size_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.order_executed_at_price_size_message, range, display)
  end

  return dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, parent)
end

-- Display: Order Executed Message
display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.executed_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local range = buffer(offset, 25)
    local display = display.order_executed_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.order_executed_message, range, display)
  end

  return dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Display: Add Flags
display.add_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Display flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Display|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Add Flags
dissect.add_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved 7: 7 Bit
  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.reserved_7, buffer(offset, 1))

  -- Display: 1 Bit Enum with 2 values
  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.display, buffer(offset, 1))
end

-- Dissect: Add Flags
dissect.add_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.add_flags(range, packet, parent)
  local element = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.add_flags, range, display)

  if show.add_flags then
    dissect.add_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1
end

-- Display: Add Order Expanded Message
display.add_order_expanded_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
dissect.add_order_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.side_indicator(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.long_quantity(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index = dissect.expanded_symbol(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.long_price(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index = dissect.add_flags(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.customer_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
dissect.add_order_expanded_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_expanded_message then
    local range = buffer(offset, 39)
    local display = display.add_order_expanded_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_expanded_message, range, display)
  end

  return dissect.add_order_expanded_message_fields(buffer, offset, packet, parent)
end

-- Display: Add Order Short Message
display.add_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Short Message
dissect.add_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.side_indicator(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index = dissect.short_quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index = dissect.short_price(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index = dissect.add_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
dissect.add_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_short_message then
    local range = buffer(offset, 24)
    local display = display.add_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_short_message, range, display)
  end

  return dissect.add_order_short_message_fields(buffer, offset, packet, parent)
end

-- Display: Add Order Long Message
display.add_order_long_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Long Message
dissect.add_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index = dissect.side_indicator(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.long_quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.long_price(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index = dissect.add_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
dissect.add_order_long_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_long_message then
    local range = buffer(offset, 32)
    local display = display.add_order_long_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.add_order_long_message, range, display)
  end

  return dissect.add_order_long_message_fields(buffer, offset, packet, parent)
end

-- Display: Unit Clear Message
display.unit_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Clear Message
dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
dissect.unit_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_clear_message then
    local range = buffer(offset, 4)
    local display = display.unit_clear_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.unit_clear_message, range, display)
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
  local range = buffer(offset, size_of.time)
  local value = range:le_uint()
  local display = display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.time, range, value, display)

  return offset + size_of.time
end

-- Display: Time Message
display.time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Message
dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
dissect.time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_message then
    local range = buffer(offset, 4)
    local display = display.time_message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.time_message, range, display)
  end

  return dissect.time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Time Message
  if code == 0x20 then
    return 4
  end
  -- Size of Unit Clear Message
  if code == 0x97 then
    return 4
  end
  -- Size of Add Order Long Message
  if code == 0x21 then
    return 32
  end
  -- Size of Add Order Short Message
  if code == 0x22 then
    return 24
  end
  -- Size of Add Order Expanded Message
  if code == 0x2F then
    return 39
  end
  -- Size of Order Executed Message
  if code == 0x23 then
    return 25
  end
  -- Size of Order Executed At Price Size Message
  if code == 0x24 then
    return 37
  end
  -- Size of Reduce Size Long Message
  if code == 0x25 then
    return 16
  end
  -- Size of Reduce Size Short Message
  if code == 0x26 then
    return 14
  end
  -- Size of Modify Order Long Message
  if code == 0x27 then
    return 25
  end
  -- Size of Modify Order Short Message
  if code == 0x28 then
    return 17
  end
  -- Size of Delete Order Message
  if code == 0x29 then
    return 12
  end
  -- Size of Trade Long Message
  if code == 0x2A then
    return 40
  end
  -- Size of Trade Short Message
  if code == 0x2B then
    return 32
  end
  -- Size of Trade Expanded Message
  if code == 0x30 then
    return 42
  end
  -- Size of Trade Break Message
  if code == 0x2C then
    return 12
  end
  -- Size of End Of Session Message
  if code == 0x2D then
    return 4
  end
  -- Size of Symbol Mapping Message
  if code == 0x2E then
    return 28
  end
  -- Size of Trading Status Message
  if code == 0x31 then
    return 16
  end
  -- Size of Auction Update Message
  if code == 0x95 then
    return 45
  end
  -- Size of Auction Summary Message
  if code == 0x96 then
    return 25
  end
  -- Size of Auction Notification Message
  if code == 0xAD then
    return 41
  end
  -- Size of Auction Cancel Message
  if code == 0xAE then
    return 12
  end
  -- Size of Auction Trade Message
  if code == 0xAF then
    return 32
  end
  -- Size of Retail Price Improvement Message
  if code == 0x98 then
    return 13
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(buffer, offset, packet, parent, code)
  -- Dissect Time Message
  if code == 0x20 then
    return dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if code == 0x97 then
    return dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if code == 0x21 then
    return dissect.add_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if code == 0x22 then
    return dissect.add_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if code == 0x2F then
    return dissect.add_order_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if code == 0x23 then
    return dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if code == 0x24 then
    return dissect.order_executed_at_price_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if code == 0x25 then
    return dissect.reduce_size_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if code == 0x26 then
    return dissect.reduce_size_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if code == 0x27 then
    return dissect.modify_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if code == 0x28 then
    return dissect.modify_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if code == 0x29 then
    return dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if code == 0x2A then
    return dissect.trade_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if code == 0x2B then
    return dissect.trade_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Expanded Message
  if code == 0x30 then
    return dissect.trade_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if code == 0x2C then
    return dissect.trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if code == 0x2D then
    return dissect.end_of_session_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if code == 0x2E then
    return dissect.symbol_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if code == 0x31 then
    return dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if code == 0x95 then
    return dissect.auction_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if code == 0x96 then
    return dissect.auction_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if code == 0xAD then
    return dissect.auction_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if code == 0xAE then
    return dissect.auction_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if code == 0xAF then
    return dissect.auction_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if code == 0x98 then
    return dissect.retail_price_improvement_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, code)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.message_type, range, value, display)

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
  local range = buffer(offset, size_of.message_length)
  local value = range:le_uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.message_length, range, value, display)

  return offset + size_of.message_length
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index = dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 2)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 2

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
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 25 branches
  local code = buffer(index - 1, 1):le_uint()
  index = dissect.payload(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.message, range, display)
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
  local range = buffer(offset, size_of.sequence)
  local value = range:le_uint()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.sequence, range, value, display)

  return offset + size_of.sequence
end

-- Size: Unit
size_of.unit = 1

-- Display: Unit
display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
dissect.unit = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit)
  local value = range:le_uint()
  local display = display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.unit, range, value, display)

  return offset + size_of.unit
end

-- Size: Count
size_of.count = 1

-- Display: Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.count, range, value, display)

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
  local range = buffer(offset, size_of.length)
  local value = range:le_uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.length, range, value, display)

  return offset + size_of.length
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index = dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index = dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 8)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(cboe_options_depthofbook_pitch_v2_39_4.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end


  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_options_depthofbook_pitch_v2_39_4.init()
end

-- Dissector for Cboe Options DepthOfBook Pitch 2.39.4
function cboe_options_depthofbook_pitch_v2_39_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_options_depthofbook_pitch_v2_39_4.name

  -- Dissect protocol
  local protocol = parent:add(cboe_options_depthofbook_pitch_v2_39_4, buffer(), cboe_options_depthofbook_pitch_v2_39_4.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_options_depthofbook_pitch_v2_39_4)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_options_depthofbook_pitch_v2_39_4_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Options DepthOfBook Pitch 2.39.4
local function cboe_options_depthofbook_pitch_v2_39_4_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_options_depthofbook_pitch_v2_39_4_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_options_depthofbook_pitch_v2_39_4
  cboe_options_depthofbook_pitch_v2_39_4.dissector(buffer, packet, parent)

  return true
end

-- Register Cboe Options DepthOfBook Pitch 2.39.4 Heuristic
cboe_options_depthofbook_pitch_v2_39_4:register_heuristic("udp", cboe_options_depthofbook_pitch_v2_39_4_heuristic)

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
--   Compiler: 1.1
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
