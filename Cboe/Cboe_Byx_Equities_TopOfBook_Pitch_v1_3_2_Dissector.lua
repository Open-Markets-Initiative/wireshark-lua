-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Byx Equities TopOfBook Pitch 1.3.2 Protocol
local cboe_byx_equities_topofbook_pitch_v1_3_2 = Proto("Cboe.Byx.Equities.TopOfBook.Pitch.v1.3.2.Lua", "Cboe Byx Equities TopOfBook Pitch 1.3.2")

-- Component Tables
local show = {}
local format = {}
local cboe_byx_equities_topofbook_pitch_v1_3_2_display = {}
local cboe_byx_equities_topofbook_pitch_v1_3_2_dissect = {}
local cboe_byx_equities_topofbook_pitch_v1_3_2_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Byx Equities TopOfBook Pitch 1.3.2 Fields
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.add_order_flags = ProtoField.new("Add Order Flags", "cboe.byx.equities.topofbook.pitch.v1.3.2.addorderflags", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.byx.equities.topofbook.pitch.v1.3.2.auctiononlyprice", ftypes.UINT64)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_opening_type = ProtoField.new("Auction Opening Type", "cboe.byx.equities.topofbook.pitch.v1.3.2.auctionopeningtype", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_type = ProtoField.new("Auction Type", "cboe.byx.equities.topofbook.pitch.v1.3.2.auctiontype", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.byx.equities.topofbook.pitch.v1.3.2.buyshares", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.canceled_quantity = ProtoField.new("Canceled Quantity", "cboe.byx.equities.topofbook.pitch.v1.3.2.canceledquantity", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.byx.equities.topofbook.pitch.v1.3.2.canceledquantityshort", ftypes.UINT16)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.count = ProtoField.new("Count", "cboe.byx.equities.topofbook.pitch.v1.3.2.count", ftypes.UINT8)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.byx.equities.topofbook.pitch.v1.3.2.customerindicator", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.display = ProtoField.new("Display", "cboe.byx.equities.topofbook.pitch.v1.3.2.display", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.byx.equities.topofbook.pitch.v1.3.2.executedquantity", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.execution_id = ProtoField.new("Execution Id", "cboe.byx.equities.topofbook.pitch.v1.3.2.executionid", ftypes.UINT64)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.byx.equities.topofbook.pitch.v1.3.2.indicativeprice", ftypes.UINT64)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.length = ProtoField.new("Length", "cboe.byx.equities.topofbook.pitch.v1.3.2.length", ftypes.UINT16)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message = ProtoField.new("Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.message", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message_header = ProtoField.new("Message Header", "cboe.byx.equities.topofbook.pitch.v1.3.2.messageheader", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message_length = ProtoField.new("Message Length", "cboe.byx.equities.topofbook.pitch.v1.3.2.messagelength", ftypes.UINT8)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message_type = ProtoField.new("Message Type", "cboe.byx.equities.topofbook.pitch.v1.3.2.messagetype", ftypes.UINT8)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.order_id = ProtoField.new("Order Id", "cboe.byx.equities.topofbook.pitch.v1.3.2.orderid", ftypes.UINT64)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.packet = ProtoField.new("Packet", "cboe.byx.equities.topofbook.pitch.v1.3.2.packet", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.packet_header = ProtoField.new("Packet Header", "cboe.byx.equities.topofbook.pitch.v1.3.2.packetheader", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.padding = ProtoField.new("Padding", "cboe.byx.equities.topofbook.pitch.v1.3.2.padding", ftypes.BYTES)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.participant_id = ProtoField.new("Participant Id", "cboe.byx.equities.topofbook.pitch.v1.3.2.participantid", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.payload = ProtoField.new("Payload", "cboe.byx.equities.topofbook.pitch.v1.3.2.payload", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.price = ProtoField.new("Price", "cboe.byx.equities.topofbook.pitch.v1.3.2.price", ftypes.DOUBLE)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.price_short = ProtoField.new("Price Short", "cboe.byx.equities.topofbook.pitch.v1.3.2.priceshort", ftypes.DOUBLE)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.quantity = ProtoField.new("Quantity", "cboe.byx.equities.topofbook.pitch.v1.3.2.quantity", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.byx.equities.topofbook.pitch.v1.3.2.quantityshort", ftypes.UINT16)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reference_price = ProtoField.new("Reference Price", "cboe.byx.equities.topofbook.pitch.v1.3.2.referenceprice", ftypes.UINT64)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.byx.equities.topofbook.pitch.v1.3.2.regshoaction", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.byx.equities.topofbook.pitch.v1.3.2.remainingquantity", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.byx.equities.topofbook.pitch.v1.3.2.reservedflags", ftypes.UINT8, nil, base.DEC, 0xFE)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.byx.equities.topofbook.pitch.v1.3.2.retailpriceimprovement", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.byx.equities.topofbook.pitch.v1.3.2.sellshares", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.sequence = ProtoField.new("Sequence", "cboe.byx.equities.topofbook.pitch.v1.3.2.sequence", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.shares_contracts = ProtoField.new("Shares Contracts", "cboe.byx.equities.topofbook.pitch.v1.3.2.sharescontracts", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.byx.equities.topofbook.pitch.v1.3.2.sideindicator", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.symbol_printable_ascii_6 = ProtoField.new("Symbol Printable Ascii 6", "cboe.byx.equities.topofbook.pitch.v1.3.2.symbolprintableascii6", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.symbol_printable_ascii_8 = ProtoField.new("Symbol Printable Ascii 8", "cboe.byx.equities.topofbook.pitch.v1.3.2.symbolprintableascii8", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.time = ProtoField.new("Time", "cboe.byx.equities.topofbook.pitch.v1.3.2.time", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.time_offset = ProtoField.new("Time Offset", "cboe.byx.equities.topofbook.pitch.v1.3.2.timeoffset", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.timestamp = ProtoField.new("Timestamp", "cboe.byx.equities.topofbook.pitch.v1.3.2.timestamp", ftypes.UINT32)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trading_status = ProtoField.new("Trading Status", "cboe.byx.equities.topofbook.pitch.v1.3.2.tradingstatus", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.unit = ProtoField.new("Unit", "cboe.byx.equities.topofbook.pitch.v1.3.2.unit", ftypes.UINT8)

-- Cboe Byx Equities TopOfBook Pitch 1.3.2 messages
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.addorderexpandedmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.addorderlongmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.addordershortmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.auctionsummarymessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.auctionupdatemessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.deleteordermessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.end_of_session = ProtoField.new("End Of Session", "cboe.byx.equities.topofbook.pitch.v1.3.2.endofsession", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.modifyorderlongmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.modifyordershortmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.orderexecutedatpricesizemessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.orderexecutedmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.reducesizelongmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.reducesizeshortmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.retailpriceimprovementmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.time_message = ProtoField.new("Time Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.timemessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.tradebreakmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.tradeexpandedmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.tradelongmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.tradeshortmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.tradingstatusmessage", ftypes.STRING)
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.byx.equities.topofbook.pitch.v1.3.2.unitclearmessage", ftypes.STRING)

-- Cboe Byx Equities TopOfBook Pitch 1.3.2 generated fields
cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message_index = ProtoField.new("Message Index", "cboe.byx.equities.topofbook.pitch.v1.3.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Byx Equities TopOfBook Pitch 1.3.2 Element Dissection Options
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
show.retail_price_improvement_message = true
show.time_message = true
show.trade_break_message = true
show.trade_expanded_message = true
show.trade_long_message = true
show.trade_short_message = true
show.trading_status_message = true
show.unit_clear_message = true
show.payload = false

-- Register Cboe Byx Equities TopOfBook Pitch 1.3.2 Show Options
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_expanded_message = Pref.bool("Show Add Order Expanded Message", show.add_order_expanded_message, "Parse and add Add Order Expanded Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_flags = Pref.bool("Show Add Order Flags", show.add_order_flags, "Parse and add Add Order Flags to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_auction_summary_message = Pref.bool("Show Auction Summary Message", show.auction_summary_message, "Parse and add Auction Summary Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_auction_update_message = Pref.bool("Show Auction Update Message", show.auction_update_message, "Parse and add Auction Update Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_end_of_session = Pref.bool("Show End Of Session", show.end_of_session, "Parse and add End Of Session to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_retail_price_improvement_message = Pref.bool("Show Retail Price Improvement Message", show.retail_price_improvement_message, "Parse and add Retail Price Improvement Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_expanded_message = Pref.bool("Show Trade Expanded Message", show.trade_expanded_message, "Parse and add Trade Expanded Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_byx_equities_topofbook_pitch_v1_3_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_expanded_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_expanded_message then
    show.add_order_expanded_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_expanded_message
    changed = true
  end
  if show.add_order_flags ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_flags then
    show.add_order_flags = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_flags
    changed = true
  end
  if show.add_order_long_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_long_message then
    show.add_order_long_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_short_message then
    show.add_order_short_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_add_order_short_message
    changed = true
  end
  if show.auction_summary_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_auction_summary_message then
    show.auction_summary_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_auction_summary_message
    changed = true
  end
  if show.auction_update_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_auction_update_message then
    show.auction_update_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_auction_update_message
    changed = true
  end
  if show.delete_order_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_delete_order_message then
    show.delete_order_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_session ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_end_of_session then
    show.end_of_session = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_end_of_session
    changed = true
  end
  if show.message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_message then
    show.message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_message_header then
    show.message_header = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_modify_order_long_message then
    show.modify_order_long_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_modify_order_short_message then
    show.modify_order_short_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_order_executed_message then
    show.order_executed_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_packet then
    show.packet = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_packet_header then
    show.packet_header = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.retail_price_improvement_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_retail_price_improvement_message then
    show.retail_price_improvement_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_retail_price_improvement_message
    changed = true
  end
  if show.time_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_time_message then
    show.time_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_time_message
    changed = true
  end
  if show.trade_break_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_break_message then
    show.trade_break_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_expanded_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_expanded_message then
    show.trade_expanded_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_expanded_message
    changed = true
  end
  if show.trade_long_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_long_message then
    show.trade_long_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_short_message then
    show.trade_short_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trading_status_message then
    show.trading_status_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_trading_status_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_unit_clear_message
    changed = true
  end
  if show.payload ~= cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_payload then
    show.payload = cboe_byx_equities_topofbook_pitch_v1_3_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Byx Equities TopOfBook Pitch 1.3.2
-----------------------------------------------------------------------

-- Size: Retail Price Improvement
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.retail_price_improvement = 1

-- Display: Retail Price Improvement
cboe_byx_equities_topofbook_pitch_v1_3_2_display.retail_price_improvement = function(value)
  if value == "B" then
    return "Retail Price Improvement: Buy Side Rpi (B)"
  end
  if value == "S" then
    return "Retail Price Improvement: Sell Side Rpi (S)"
  end
  if value == "A" then
    return "Retail Price Improvement: Buy And Sell Rpi (A)"
  end
  if value == "N" then
    return "Retail Price Improvement: No Rpi (N)"
  end

  return "Retail Price Improvement: Unknown("..value..")"
end

-- Dissect: Retail Price Improvement
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.retail_price_improvement = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.retail_price_improvement
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.retail_price_improvement(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Size: Symbol Printable Ascii 8
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_8 = 8

-- Display: Symbol Printable Ascii 8
cboe_byx_equities_topofbook_pitch_v1_3_2_display.symbol_printable_ascii_8 = function(value)
  return "Symbol Printable Ascii 8: "..value
end

-- Dissect: Symbol Printable Ascii 8
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_8 = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.symbol_printable_ascii_8(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.symbol_printable_ascii_8, range, value, display)

  return offset + length, value
end

-- Size: Time Offset
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset = 4

-- Display: Time Offset
cboe_byx_equities_topofbook_pitch_v1_3_2_display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retail Price Improvement Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.retail_price_improvement_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_8

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.retail_price_improvement

  return index
end

-- Display: Retail Price Improvement Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.retail_price_improvement_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.retail_price_improvement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: 8 Byte Ascii String
  index, symbol_printable_ascii_8 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_8(buffer, index, packet, parent)

  -- Retail Price Improvement: 1 Byte Ascii String Enum with 4 values
  index, retail_price_improvement = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.retail_price_improvement(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.retail_price_improvement_message = function(buffer, offset, packet, parent)
  if show.retail_price_improvement_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.retail_price_improvement_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.retail_price_improvement_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.retail_price_improvement_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Shares Contracts
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.shares_contracts = 4

-- Display: Shares Contracts
cboe_byx_equities_topofbook_pitch_v1_3_2_display.shares_contracts = function(value)
  return "Shares Contracts: "..value
end

-- Dissect: Shares Contracts
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.shares_contracts = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.shares_contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.shares_contracts(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.shares_contracts, range, value, display)

  return offset + length, value
end

-- Size: Price
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price = 8

-- Display: Price
cboe_byx_equities_topofbook_pitch_v1_3_2_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Auction Opening Type
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_opening_type = 1

-- Display: Auction Opening Type
cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_opening_type = function(value)
  return "Auction Opening Type: "..value
end

-- Dissect: Auction Opening Type
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_opening_type = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_opening_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_opening_type(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_opening_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Summary Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_summary_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_8

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_opening_type

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.shares_contracts

  return index
end

-- Display: Auction Summary Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: 8 Byte Ascii String
  index, symbol_printable_ascii_8 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_8(buffer, index, packet, parent)

  -- Auction Opening Type: 1 Byte Ascii String
  index, auction_opening_type = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_opening_type(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Shares Contracts: 4 Byte Unsigned Fixed Width Integer
  index, shares_contracts = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.shares_contracts(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_summary_message = function(buffer, offset, packet, parent)
  if show.auction_summary_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_summary_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_summary_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_summary_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Auction Only Price
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_only_price = 8

-- Display: Auction Only Price
cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_only_price = function(value)
  return "Auction Only Price: "..value
end

-- Dissect: Auction Only Price
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_only_price = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_only_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_only_price(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Size: Indicative Price
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.indicative_price = 8

-- Display: Indicative Price
cboe_byx_equities_topofbook_pitch_v1_3_2_display.indicative_price = function(value)
  return "Indicative Price: "..value
end

-- Dissect: Indicative Price
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.indicative_price = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.indicative_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.indicative_price(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Size: Sell Shares
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.sell_shares = 4

-- Display: Sell Shares
cboe_byx_equities_topofbook_pitch_v1_3_2_display.sell_shares = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.sell_shares = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.sell_shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.sell_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Size: Buy Shares
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.buy_shares = 4

-- Display: Buy Shares
cboe_byx_equities_topofbook_pitch_v1_3_2_display.buy_shares = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.buy_shares = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.buy_shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.buy_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reference_price = 8

-- Display: Reference Price
cboe_byx_equities_topofbook_pitch_v1_3_2_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reference_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_type = 1

-- Display: Auction Type
cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
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
  if value == "V" then
    return "Auction Type: Volitility Auction (V)"
  end
  if value == "P" then
    return "Auction Type: Periodic Auction (P)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Update Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_8

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_type

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reference_price

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.buy_shares

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.sell_shares

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.indicative_price

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_only_price

  return index
end

-- Display: Auction Update Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: 8 Byte Ascii String
  index, symbol_printable_ascii_8 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_8(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index, auction_type = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_type(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reference_price(buffer, index, packet, parent)

  -- Buy Shares: 4 Byte Unsigned Fixed Width Integer
  index, buy_shares = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.buy_shares(buffer, index, packet, parent)

  -- Sell Shares: 4 Byte Unsigned Fixed Width Integer
  index, sell_shares = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.sell_shares(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Unsigned Fixed Width Integer
  index, indicative_price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.indicative_price(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_only_price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_only_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_update_message = function(buffer, offset, packet, parent)
  if show.auction_update_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_update_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.auction_update_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_update_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Padding
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.padding = 2

-- Display: Padding
cboe_byx_equities_topofbook_pitch_v1_3_2_display.padding = function(value)
  return "Padding: "..value
end

-- Dissect: Padding
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.padding = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.padding
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.padding(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.padding, range, value, display)

  return offset + length, value
end

-- Size: Reg Sho Action
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
cboe_byx_equities_topofbook_pitch_v1_3_2_display.reg_sho_action = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trading_status = 1

-- Display: Trading Status
cboe_byx_equities_topofbook_pitch_v1_3_2_display.trading_status = function(value)
  if value == "A" then
    return "Trading Status: Accepting Orders For Queuing (A)"
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
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_8

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trading_status

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reg_sho_action

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.padding

  return index
end

-- Display: Trading Status Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.trading_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: 8 Byte Ascii String
  index, symbol_printable_ascii_8 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_8(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 5 values
  index, trading_status = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trading_status(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 2 values
  index, reg_sho_action = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reg_sho_action(buffer, index, packet, parent)

  -- Padding: 2 Byte
  index, padding = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trading_status_message = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trading_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.trading_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trading_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Timestamp
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.timestamp = 4

-- Display: Timestamp
cboe_byx_equities_topofbook_pitch_v1_3_2_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Session
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.end_of_session = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.timestamp

  return index
end

-- Display: End Of Session
cboe_byx_equities_topofbook_pitch_v1_3_2_display.end_of_session = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.end_of_session_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.end_of_session = function(buffer, offset, packet, parent)
  if show.end_of_session then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.end_of_session, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.end_of_session_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.end_of_session(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.end_of_session_fields(buffer, offset, packet, element)
  end
end

-- Size: Execution Id
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.execution_id = 8

-- Display: Execution Id
cboe_byx_equities_topofbook_pitch_v1_3_2_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Break Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trade_break_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.execution_id

  return index
end

-- Display: Trade Break Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.trade_break_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_break_message = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_break_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.trade_break_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_break_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity = 4

-- Display: Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Side Indicator
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.side_indicator = 1

-- Display: Side Indicator
cboe_byx_equities_topofbook_pitch_v1_3_2_display.side_indicator = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.side_indicator = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.side_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.side_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Id
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id = 8

-- Display: Order Id
cboe_byx_equities_topofbook_pitch_v1_3_2_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Expanded Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trade_expanded_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.side_indicator

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_8

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.execution_id

  return index
end

-- Display: Trade Expanded Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.trade_expanded_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: 8 Byte Ascii String
  index, symbol_printable_ascii_8 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_8(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_expanded_message = function(buffer, offset, packet, parent)
  if show.trade_expanded_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_expanded_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.trade_expanded_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_expanded_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Price Short
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price_short = 2

-- Display: Price Short
cboe_byx_equities_topofbook_pitch_v1_3_2_display.price_short = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
translate.price_short = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price_short = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price_short
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.price_short(raw)
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.price_short(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.price_short, range, value, display)

  return offset + length, value
end

-- Size: Symbol Printable Ascii 6
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_6 = 6

-- Display: Symbol Printable Ascii 6
cboe_byx_equities_topofbook_pitch_v1_3_2_display.symbol_printable_ascii_6 = function(value)
  return "Symbol Printable Ascii 6: "..value
end

-- Dissect: Symbol Printable Ascii 6
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_6 = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.symbol_printable_ascii_6(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.symbol_printable_ascii_6, range, value, display)

  return offset + length, value
end

-- Size: Quantity Short
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity_short = 2

-- Display: Quantity Short
cboe_byx_equities_topofbook_pitch_v1_3_2_display.quantity_short = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity_short = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trade_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.side_indicator

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity_short

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_6

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price_short

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.execution_id

  return index
end

-- Display: Trade Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.trade_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity_short(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: 6 Byte Ascii String
  index, symbol_printable_ascii_6 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_6(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price_short(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_short_message = function(buffer, offset, packet, parent)
  if show.trade_short_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_short_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.trade_short_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_short_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Trade Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trade_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.side_indicator

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_6

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.execution_id

  return index
end

-- Display: Trade Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.trade_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: 6 Byte Ascii String
  index, symbol_printable_ascii_6 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_6(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_long_message = function(buffer, offset, packet, parent)
  if show.trade_long_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_long_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.trade_long_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_long_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Delete Order Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  return index
end

-- Display: Delete Order Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.delete_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.delete_order_message = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.delete_order_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.delete_order_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.delete_order_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Modify Order Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.modify_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity_short

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price_short

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.modify_order_flags

  return index
end

-- Display: Modify Order Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.modify_order_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity_short(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price_short(buffer, index, packet, parent)

  -- Modify Order Flags
  index, modify_order_flags = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_short_message = function(buffer, offset, packet, parent)
  if show.modify_order_short_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_short_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.modify_order_short_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_short_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Modify Order Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.modify_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.modify_order_flags

  return index
end

-- Display: Modify Order Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.modify_order_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Modify Order Flags
  index, modify_order_flags = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_long_message = function(buffer, offset, packet, parent)
  if show.modify_order_long_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_long_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.modify_order_long_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_long_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Canceled Quantity Short
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.canceled_quantity_short = 2

-- Display: Canceled Quantity Short
cboe_byx_equities_topofbook_pitch_v1_3_2_display.canceled_quantity_short = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.canceled_quantity_short = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.canceled_quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.canceled_quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reduce_size_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.canceled_quantity_short

  return index
end

-- Display: Reduce Size Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.reduce_size_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, canceled_quantity_short = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.canceled_quantity_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_short_message = function(buffer, offset, packet, parent)
  if show.reduce_size_short_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_short_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.reduce_size_short_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_short_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Canceled Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.canceled_quantity = 4

-- Display: Canceled Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_display.canceled_quantity = function(value)
  return "Canceled Quantity: "..value
end

-- Dissect: Canceled Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.canceled_quantity = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.canceled_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.canceled_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.canceled_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reduce_size_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.canceled_quantity

  return index
end

-- Display: Reduce Size Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.reduce_size_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_quantity = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.canceled_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_long_message = function(buffer, offset, packet, parent)
  if show.reduce_size_long_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_long_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.reduce_size_long_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_long_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Remaining Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.remaining_quantity = 4

-- Display: Remaining Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_display.remaining_quantity = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.remaining_quantity = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.remaining_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.remaining_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Size: Executed Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.executed_quantity = 4

-- Display: Executed Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed At Price Size Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_executed_at_price_size_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.executed_quantity

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.remaining_quantity

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.execution_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price

  return index
end

-- Display: Order Executed At Price Size Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.order_executed_at_price_size_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_at_price_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.executed_quantity(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.remaining_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_at_price_size_message = function(buffer, offset, packet, parent)
  if show.order_executed_at_price_size_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.order_executed_at_price_size_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Executed Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.executed_quantity

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.execution_id

  return index
end

-- Display: Order Executed Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.order_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.executed_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_message = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.order_executed_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Customer Indicator
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.customer_indicator = 1

-- Display: Customer Indicator
cboe_byx_equities_topofbook_pitch_v1_3_2_display.customer_indicator = function(value)
  return "Customer Indicator: "..value
end

-- Dissect: Customer Indicator
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.customer_indicator = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.customer_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.participant_id = 4

-- Display: Participant Id
cboe_byx_equities_topofbook_pitch_v1_3_2_display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Add Order Flags
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_flags = 1

-- Display: Add Order Flags
cboe_byx_equities_topofbook_pitch_v1_3_2_display.add_order_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Display flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Display|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Add Order Flags
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved Flags: 7 Bit
  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.reserved_flags, buffer(offset, 1))

  -- Display: 1 Bit
  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.display, buffer(offset, 1))
end

-- Dissect: Add Order Flags
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.add_order_flags(range, packet, parent)
  local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.add_order_flags, range, display)

  if show.add_order_flags then
    cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Add Order Expanded Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_expanded_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.side_indicator

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_8

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_flags

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.participant_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.customer_indicator

  return index
end

-- Display: Add Order Expanded Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.add_order_expanded_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Symbol Printable Ascii 8: 8 Byte Ascii String
  index, symbol_printable_ascii_8 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_8(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 2 fields
  index, add_order_flags = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_flags(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.participant_id(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String
  index, customer_indicator = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.customer_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_expanded_message = function(buffer, offset, packet, parent)
  if show.add_order_expanded_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_expanded_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.add_order_expanded_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_expanded_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Add Order Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.side_indicator

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity_short

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_6

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price_short

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_flags

  return index
end

-- Display: Add Order Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.add_order_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity_short(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: 6 Byte Ascii String
  index, symbol_printable_ascii_6 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_6(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price_short(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 2 fields
  index, add_order_flags = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_short_message = function(buffer, offset, packet, parent)
  if show.add_order_short_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_short_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.add_order_short_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_short_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Add Order Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_id

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.side_indicator

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.quantity

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.symbol_printable_ascii_6

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.price

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_flags

  return index
end

-- Display: Add Order Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.add_order_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.quantity(buffer, index, packet, parent)

  -- Symbol Printable Ascii 6: 6 Byte Ascii String
  index, symbol_printable_ascii_6 = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.symbol_printable_ascii_6(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.price(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 2 fields
  index, add_order_flags = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_long_message = function(buffer, offset, packet, parent)
  if show.add_order_long_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_long_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.add_order_long_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_long_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Unit Clear Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.unit_clear_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_offset

  return index
end

-- Display: Unit Clear Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.unit_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.unit_clear_message = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.unit_clear_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.unit_clear_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.unit_clear_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Time
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time = 4

-- Display: Time
cboe_byx_equities_topofbook_pitch_v1_3_2_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time

  return index
end

-- Display: Time Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.time_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_message = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.time_message, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.time_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.time_message(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.unit_clear_message(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x21 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_long_message(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_short_message(buffer, offset)
  end
  -- Size of Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.add_order_expanded_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.order_executed_at_price_size_message(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reduce_size_long_message(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.reduce_size_short_message(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.modify_order_long_message(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.modify_order_short_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.delete_order_message(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x2A then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trade_long_message(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trade_short_message(buffer, offset)
  end
  -- Size of Trade Expanded Message
  if message_type == 0x30 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trade_expanded_message(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0x2C then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trade_break_message(buffer, offset)
  end
  -- Size of End Of Session
  if message_type == 0x2D then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.end_of_session(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.trading_status_message(buffer, offset)
  end
  -- Size of Auction Update Message
  if message_type == 0x95 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_update_message(buffer, offset)
  end
  -- Size of Auction Summary Message
  if message_type == 0x96 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.auction_summary_message(buffer, offset)
  end
  -- Size of Retail Price Improvement Message
  if message_type == 0x98 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.retail_price_improvement_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_byx_equities_topofbook_pitch_v1_3_2_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.add_order_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.order_executed_at_price_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.reduce_size_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.modify_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Expanded Message
  if message_type == 0x30 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_type == 0x2D then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.end_of_session(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0x95 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.auction_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if message_type == 0x98 then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.retail_price_improvement_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.payload, range, display)

  return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.message_type = 1

-- Display: Message Type
cboe_byx_equities_topofbook_pitch_v1_3_2_display.message_type = function(value)
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
    return "Message Type: End Of Session (0x2D)"
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
  if value == 0x98 then
    return "Message Type: Retail Price Improvement Message (0x98)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.message_length = 1

-- Display: Message Length
cboe_byx_equities_topofbook_pitch_v1_3_2_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.message_length

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.message_type

  return index
end

-- Display: Message Header
cboe_byx_equities_topofbook_pitch_v1_3_2_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 21 values
  index, message_type = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message_header, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
cboe_byx_equities_topofbook_pitch_v1_3_2_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 21 branches
  index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.message, buffer(offset, 0))
    local current = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Sequence
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.sequence = 4

-- Display: Sequence
cboe_byx_equities_topofbook_pitch_v1_3_2_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.unit = 1

-- Display: Unit
cboe_byx_equities_topofbook_pitch_v1_3_2_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.count = 1

-- Display: Count
cboe_byx_equities_topofbook_pitch_v1_3_2_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.length = 2

-- Display: Length
cboe_byx_equities_topofbook_pitch_v1_3_2_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.length

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.count

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.unit

  index = index + cboe_byx_equities_topofbook_pitch_v1_3_2_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_byx_equities_topofbook_pitch_v1_3_2_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2.fields.packet_header, buffer(offset, 0))
    local index = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_byx_equities_topofbook_pitch_v1_3_2_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_byx_equities_topofbook_pitch_v1_3_2.init()
end

-- Dissector for Cboe Byx Equities TopOfBook Pitch 1.3.2
function cboe_byx_equities_topofbook_pitch_v1_3_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_byx_equities_topofbook_pitch_v1_3_2.name

  -- Dissect protocol
  local protocol = parent:add(cboe_byx_equities_topofbook_pitch_v1_3_2, buffer(), cboe_byx_equities_topofbook_pitch_v1_3_2.description, "("..buffer:len().." Bytes)")
  return cboe_byx_equities_topofbook_pitch_v1_3_2_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_byx_equities_topofbook_pitch_v1_3_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_byx_equities_topofbook_pitch_v1_3_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Byx Equities TopOfBook Pitch 1.3.2
local function cboe_byx_equities_topofbook_pitch_v1_3_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_byx_equities_topofbook_pitch_v1_3_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_byx_equities_topofbook_pitch_v1_3_2
  cboe_byx_equities_topofbook_pitch_v1_3_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Byx Equities TopOfBook Pitch 1.3.2
cboe_byx_equities_topofbook_pitch_v1_3_2:register_heuristic("udp", cboe_byx_equities_topofbook_pitch_v1_3_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3.2
--   Date: Wednesday, July 14, 2021
--   Specification: Cboe_US_Equities_TOP_Specification.pdf
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
