-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1Options DepthOfBook Pitch 2.39.4 Protocol
local omi_cboe_c1options_depthofbook_pitch_v2_39_4 = Proto("Cboe.C1Options.DepthOfBook.Pitch.v2.39.4.Lua", "Cboe C1Options DepthOfBook Pitch 2.39.4")

-- Protocol table
local cboe_c1options_depthofbook_pitch_v2_39_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1Options DepthOfBook Pitch 2.39.4 Fields
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.add_flags = ProtoField.new("Add Flags", "cboe.c1options.depthofbook.pitch.v2.39.4.addflags", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_end_offset = ProtoField.new("Auction End Offset", "cboe.c1options.depthofbook.pitch.v2.39.4.auctionendoffset", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_id = ProtoField.new("Auction Id", "cboe.c1options.depthofbook.pitch.v2.39.4.auctionid", ftypes.UINT64)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_only_price = ProtoField.new("Auction Only Price", "cboe.c1options.depthofbook.pitch.v2.39.4.auctiononlyprice", ftypes.DOUBLE)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_type = ProtoField.new("Auction Type", "cboe.c1options.depthofbook.pitch.v2.39.4.auctiontype", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.buy_shares = ProtoField.new("Buy Shares", "cboe.c1options.depthofbook.pitch.v2.39.4.buyshares", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.canceled_long_quantity = ProtoField.new("Canceled Long Quantity", "cboe.c1options.depthofbook.pitch.v2.39.4.canceledlongquantity", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.canceled_short_quantity = ProtoField.new("Canceled Short Quantity", "cboe.c1options.depthofbook.pitch.v2.39.4.canceledshortquantity", ftypes.UINT16)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.contracts = ProtoField.new("Contracts", "cboe.c1options.depthofbook.pitch.v2.39.4.contracts", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.count = ProtoField.new("Count", "cboe.c1options.depthofbook.pitch.v2.39.4.count", ftypes.UINT8)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.c1options.depthofbook.pitch.v2.39.4.customerindicator", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.display = ProtoField.new("Display", "cboe.c1options.depthofbook.pitch.v2.39.4.display", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.c1options.depthofbook.pitch.v2.39.4.executedquantity", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.execution_id = ProtoField.new("Execution Id", "cboe.c1options.depthofbook.pitch.v2.39.4.executionid", ftypes.UINT64)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.expanded_symbol = ProtoField.new("Expanded Symbol", "cboe.c1options.depthofbook.pitch.v2.39.4.expandedsymbol", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.feed_symbol = ProtoField.new("Feed Symbol", "cboe.c1options.depthofbook.pitch.v2.39.4.feedsymbol", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.indicative_price = ProtoField.new("Indicative Price", "cboe.c1options.depthofbook.pitch.v2.39.4.indicativeprice", ftypes.DOUBLE)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.length = ProtoField.new("Length", "cboe.c1options.depthofbook.pitch.v2.39.4.length", ftypes.UINT16)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.long_price = ProtoField.new("Long Price", "cboe.c1options.depthofbook.pitch.v2.39.4.longprice", ftypes.DOUBLE)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.long_quantity = ProtoField.new("Long Quantity", "cboe.c1options.depthofbook.pitch.v2.39.4.longquantity", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.maintain_priority = ProtoField.new("Maintain Priority", "cboe.c1options.depthofbook.pitch.v2.39.4.maintainpriority", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message = ProtoField.new("Message", "cboe.c1options.depthofbook.pitch.v2.39.4.message", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message_header = ProtoField.new("Message Header", "cboe.c1options.depthofbook.pitch.v2.39.4.messageheader", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message_length = ProtoField.new("Message Length", "cboe.c1options.depthofbook.pitch.v2.39.4.messagelength", ftypes.UINT8)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message_type = ProtoField.new("Message Type", "cboe.c1options.depthofbook.pitch.v2.39.4.messagetype", ftypes.UINT8)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.modify_flags = ProtoField.new("Modify Flags", "cboe.c1options.depthofbook.pitch.v2.39.4.modifyflags", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.order_id = ProtoField.new("Order Id", "cboe.c1options.depthofbook.pitch.v2.39.4.orderid", ftypes.UINT64)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.osi_symbol = ProtoField.new("Osi Symbol", "cboe.c1options.depthofbook.pitch.v2.39.4.osisymbol", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.packet = ProtoField.new("Packet", "cboe.c1options.depthofbook.pitch.v2.39.4.packet", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.packet_header = ProtoField.new("Packet Header", "cboe.c1options.depthofbook.pitch.v2.39.4.packetheader", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.participant_id = ProtoField.new("Participant Id", "cboe.c1options.depthofbook.pitch.v2.39.4.participantid", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reference_price = ProtoField.new("Reference Price", "cboe.c1options.depthofbook.pitch.v2.39.4.referenceprice", ftypes.DOUBLE)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.c1options.depthofbook.pitch.v2.39.4.regshoaction", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.c1options.depthofbook.pitch.v2.39.4.remainingquantity", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.c1options.depthofbook.pitch.v2.39.4.reserved1", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reserved_2 = ProtoField.new("Reserved 2", "cboe.c1options.depthofbook.pitch.v2.39.4.reserved2", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reserved_6 = ProtoField.new("Reserved 6", "cboe.c1options.depthofbook.pitch.v2.39.4.reserved6", ftypes.UINT8, nil, base.DEC, 0x3F)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reserved_7 = ProtoField.new("Reserved 7", "cboe.c1options.depthofbook.pitch.v2.39.4.reserved7", ftypes.UINT8, nil, base.DEC, 0x7F)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement = ProtoField.new("Retail Price Improvement", "cboe.c1options.depthofbook.pitch.v2.39.4.retailpriceimprovement", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.sell_shares = ProtoField.new("Sell Shares", "cboe.c1options.depthofbook.pitch.v2.39.4.sellshares", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.sequence = ProtoField.new("Sequence", "cboe.c1options.depthofbook.pitch.v2.39.4.sequence", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.shares = ProtoField.new("Shares", "cboe.c1options.depthofbook.pitch.v2.39.4.shares", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.short_price = ProtoField.new("Short Price", "cboe.c1options.depthofbook.pitch.v2.39.4.shortprice", ftypes.DOUBLE)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.short_quantity = ProtoField.new("Short Quantity", "cboe.c1options.depthofbook.pitch.v2.39.4.shortquantity", ftypes.UINT16)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.c1options.depthofbook.pitch.v2.39.4.sideindicator", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.c1options.depthofbook.pitch.v2.39.4.stocksymbol", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.symbol = ProtoField.new("Symbol", "cboe.c1options.depthofbook.pitch.v2.39.4.symbol", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.symbol_condition = ProtoField.new("Symbol Condition", "cboe.c1options.depthofbook.pitch.v2.39.4.symbolcondition", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.time = ProtoField.new("Time", "cboe.c1options.depthofbook.pitch.v2.39.4.time", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.time_offset = ProtoField.new("Time Offset", "cboe.c1options.depthofbook.pitch.v2.39.4.timeoffset", ftypes.UINT32)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.c1options.depthofbook.pitch.v2.39.4.tradecondition", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trading_status = ProtoField.new("Trading Status", "cboe.c1options.depthofbook.pitch.v2.39.4.tradingstatus", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.unit = ProtoField.new("Unit", "cboe.c1options.depthofbook.pitch.v2.39.4.unit", ftypes.UINT8)

-- Cboe C1Options Pitch DepthOfBook 2.39.4 Application Messages
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.c1options.depthofbook.pitch.v2.39.4.addorderexpandedmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.c1options.depthofbook.pitch.v2.39.4.addorderlongmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.c1options.depthofbook.pitch.v2.39.4.addordershortmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_cancel_message = ProtoField.new("Auction Cancel Message", "cboe.c1options.depthofbook.pitch.v2.39.4.auctioncancelmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_notification_message = ProtoField.new("Auction Notification Message", "cboe.c1options.depthofbook.pitch.v2.39.4.auctionnotificationmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_summary_message = ProtoField.new("Auction Summary Message", "cboe.c1options.depthofbook.pitch.v2.39.4.auctionsummarymessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "cboe.c1options.depthofbook.pitch.v2.39.4.auctiontrademessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_update_message = ProtoField.new("Auction Update Message", "cboe.c1options.depthofbook.pitch.v2.39.4.auctionupdatemessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.c1options.depthofbook.pitch.v2.39.4.deleteordermessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.end_of_session_message = ProtoField.new("End Of Session Message", "cboe.c1options.depthofbook.pitch.v2.39.4.endofsessionmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.c1options.depthofbook.pitch.v2.39.4.modifyorderlongmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.c1options.depthofbook.pitch.v2.39.4.modifyordershortmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.c1options.depthofbook.pitch.v2.39.4.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.c1options.depthofbook.pitch.v2.39.4.orderexecutedmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.c1options.depthofbook.pitch.v2.39.4.reducesizelongmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.c1options.depthofbook.pitch.v2.39.4.reducesizeshortmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "cboe.c1options.depthofbook.pitch.v2.39.4.retailpriceimprovementmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.symbol_mapping_message = ProtoField.new("Symbol Mapping Message", "cboe.c1options.depthofbook.pitch.v2.39.4.symbolmappingmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.time_message = ProtoField.new("Time Message", "cboe.c1options.depthofbook.pitch.v2.39.4.timemessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.c1options.depthofbook.pitch.v2.39.4.tradebreakmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.c1options.depthofbook.pitch.v2.39.4.tradeexpandedmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.c1options.depthofbook.pitch.v2.39.4.tradelongmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.c1options.depthofbook.pitch.v2.39.4.tradeshortmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.c1options.depthofbook.pitch.v2.39.4.tradingstatusmessage", ftypes.STRING)
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.c1options.depthofbook.pitch.v2.39.4.unitclearmessage", ftypes.STRING)

-- Cboe C1Options DepthOfBook Pitch 2.39.4 generated fields
omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message_index = ProtoField.new("Message Index", "cboe.c1options.depthofbook.pitch.v2.39.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C1Options DepthOfBook Pitch 2.39.4 Element Dissection Options
show.add_flags = true
show.application_messages = true
show.message = true
show.message_header = true
show.modify_flags = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe C1Options DepthOfBook Pitch 2.39.4 Show Options
omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_add_flags = Pref.bool("Show Add Flags", show.add_flags, "Parse and add Add Flags to protocol tree")
omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_modify_flags = Pref.bool("Show Modify Flags", show.modify_flags, "Parse and add Modify Flags to protocol tree")
omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs_changed()

  -- Check if show options have changed
  if show.add_flags ~= omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_add_flags then
    show.add_flags = omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_add_flags
  end
  if show.application_messages ~= omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_application_messages then
    show.application_messages = omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_message then
    show.message = omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_message
  end
  if show.message_header ~= omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_message_header then
    show.message_header = omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_message_header
  end
  if show.modify_flags ~= omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_modify_flags then
    show.modify_flags = omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_modify_flags
  end
  if show.packet ~= omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_packet then
    show.packet = omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_packet_header then
    show.packet_header = omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_message_index then
    show.message_index = omi_cboe_c1options_depthofbook_pitch_v2_39_4.prefs.show_message_index
  end
end


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
-- Cboe C1Options DepthOfBook Pitch 2.39.4 Fields
-----------------------------------------------------------------------

-- Auction End Offset
cboe_c1options_depthofbook_pitch_v2_39_4.auction_end_offset = {}

-- Size: Auction End Offset
cboe_c1options_depthofbook_pitch_v2_39_4.auction_end_offset.size = 4

-- Display: Auction End Offset
cboe_c1options_depthofbook_pitch_v2_39_4.auction_end_offset.display = function(value)
  return "Auction End Offset: "..value
end

-- Dissect: Auction End Offset
cboe_c1options_depthofbook_pitch_v2_39_4.auction_end_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.auction_end_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.auction_end_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_end_offset, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_c1options_depthofbook_pitch_v2_39_4.auction_id = {}

-- Size: Auction Id
cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.size = 8

-- Display: Auction Id
cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Only Price
cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price = {}

-- Size: Auction Only Price
cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price.size = 8

-- Display: Auction Only Price
cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price.display = function(value)
  return "Auction Only Price: "..value
end

-- Translate: Auction Only Price
cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Only Price
cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price.translate(raw)
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_only_price, range, value, display)

  return offset + length, value
end

-- Auction Type
cboe_c1options_depthofbook_pitch_v2_39_4.auction_type = {}

-- Size: Auction Type
cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.size = 1

-- Display: Auction Type
cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.display = function(value)
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
cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Buy Shares
cboe_c1options_depthofbook_pitch_v2_39_4.buy_shares = {}

-- Size: Buy Shares
cboe_c1options_depthofbook_pitch_v2_39_4.buy_shares.size = 4

-- Display: Buy Shares
cboe_c1options_depthofbook_pitch_v2_39_4.buy_shares.display = function(value)
  return "Buy Shares: "..value
end

-- Dissect: Buy Shares
cboe_c1options_depthofbook_pitch_v2_39_4.buy_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.buy_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.buy_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.buy_shares, range, value, display)

  return offset + length, value
end

-- Canceled Long Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.canceled_long_quantity = {}

-- Size: Canceled Long Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.canceled_long_quantity.size = 4

-- Display: Canceled Long Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.canceled_long_quantity.display = function(value)
  return "Canceled Long Quantity: "..value
end

-- Dissect: Canceled Long Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.canceled_long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.canceled_long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.canceled_long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.canceled_long_quantity, range, value, display)

  return offset + length, value
end

-- Canceled Short Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.canceled_short_quantity = {}

-- Size: Canceled Short Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.canceled_short_quantity.size = 2

-- Display: Canceled Short Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.canceled_short_quantity.display = function(value)
  return "Canceled Short Quantity: "..value
end

-- Dissect: Canceled Short Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.canceled_short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.canceled_short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.canceled_short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.canceled_short_quantity, range, value, display)

  return offset + length, value
end

-- Contracts
cboe_c1options_depthofbook_pitch_v2_39_4.contracts = {}

-- Size: Contracts
cboe_c1options_depthofbook_pitch_v2_39_4.contracts.size = 4

-- Display: Contracts
cboe_c1options_depthofbook_pitch_v2_39_4.contracts.display = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
cboe_c1options_depthofbook_pitch_v2_39_4.contracts.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.contracts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.contracts.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.contracts, range, value, display)

  return offset + length, value
end

-- Count
cboe_c1options_depthofbook_pitch_v2_39_4.count = {}

-- Size: Count
cboe_c1options_depthofbook_pitch_v2_39_4.count.size = 1

-- Display: Count
cboe_c1options_depthofbook_pitch_v2_39_4.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_c1options_depthofbook_pitch_v2_39_4.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator = {}

-- Size: Customer Indicator
cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator.display = function(value)
  if value == "N" then
    return "Customer Indicator: Non Customer (N)"
  end
  if value == "C" then
    return "Customer Indicator: Customer (C)"
  end

  return "Customer Indicator: Unknown("..value..")"
end

-- Dissect: Customer Indicator
cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity = {}

-- Size: Executed Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_c1options_depthofbook_pitch_v2_39_4.execution_id = {}

-- Size: Execution Id
cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.size = 8

-- Display: Execution Id
cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Expanded Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol = {}

-- Size: Expanded Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.size = 8

-- Display: Expanded Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.display = function(value)
  return "Expanded Symbol: "..value
end

-- Dissect: Expanded Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.expanded_symbol, range, value, display)

  return offset + length, value
end

-- Feed Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.feed_symbol = {}

-- Size: Feed Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.feed_symbol.size = 6

-- Display: Feed Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.feed_symbol.display = function(value)
  return "Feed Symbol: "..value
end

-- Dissect: Feed Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.feed_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.feed_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.feed_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.feed_symbol, range, value, display)

  return offset + length, value
end

-- Indicative Price
cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price = {}

-- Size: Indicative Price
cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price.size = 8

-- Display: Indicative Price
cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price.display = function(value)
  return "Indicative Price: "..value
end

-- Translate: Indicative Price
cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Price
cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price.translate(raw)
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.indicative_price, range, value, display)

  return offset + length, value
end

-- Length
cboe_c1options_depthofbook_pitch_v2_39_4.length = {}

-- Size: Length
cboe_c1options_depthofbook_pitch_v2_39_4.length.size = 2

-- Display: Length
cboe_c1options_depthofbook_pitch_v2_39_4.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_c1options_depthofbook_pitch_v2_39_4.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.length, range, value, display)

  return offset + length, value
end

-- Long Price
cboe_c1options_depthofbook_pitch_v2_39_4.long_price = {}

-- Size: Long Price
cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size = 8

-- Display: Long Price
cboe_c1options_depthofbook_pitch_v2_39_4.long_price.display = function(value)
  return "Long Price: "..value
end

-- Translate: Long Price
cboe_c1options_depthofbook_pitch_v2_39_4.long_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Long Price
cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.translate(raw)
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.long_price, range, value, display)

  return offset + length, value
end

-- Long Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity = {}

-- Size: Long Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.size = 4

-- Display: Long Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.display = function(value)
  return "Long Quantity: "..value
end

-- Dissect: Long Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.long_quantity, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c1options_depthofbook_pitch_v2_39_4.message_length = {}

-- Size: Message Length
cboe_c1options_depthofbook_pitch_v2_39_4.message_length.size = 1

-- Display: Message Length
cboe_c1options_depthofbook_pitch_v2_39_4.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1options_depthofbook_pitch_v2_39_4.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_c1options_depthofbook_pitch_v2_39_4.message_type = {}

-- Size: Message Type
cboe_c1options_depthofbook_pitch_v2_39_4.message_type.size = 1

-- Display: Message Type
cboe_c1options_depthofbook_pitch_v2_39_4.message_type.display = function(value)
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
cboe_c1options_depthofbook_pitch_v2_39_4.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_c1options_depthofbook_pitch_v2_39_4.order_id = {}

-- Size: Order Id
cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size = 8

-- Display: Order Id
cboe_c1options_depthofbook_pitch_v2_39_4.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.order_id, range, value, display)

  return offset + length, value
end

-- Osi Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.osi_symbol = {}

-- Size: Osi Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.osi_symbol.size = 21

-- Display: Osi Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.osi_symbol.display = function(value)
  return "Osi Symbol: "..value
end

-- Dissect: Osi Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.osi_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.osi_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.osi_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.osi_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_c1options_depthofbook_pitch_v2_39_4.participant_id = {}

-- Size: Participant Id
cboe_c1options_depthofbook_pitch_v2_39_4.participant_id.size = 4

-- Display: Participant Id
cboe_c1options_depthofbook_pitch_v2_39_4.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_c1options_depthofbook_pitch_v2_39_4.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Reference Price
cboe_c1options_depthofbook_pitch_v2_39_4.reference_price = {}

-- Size: Reference Price
cboe_c1options_depthofbook_pitch_v2_39_4.reference_price.size = 8

-- Display: Reference Price
cboe_c1options_depthofbook_pitch_v2_39_4.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
cboe_c1options_depthofbook_pitch_v2_39_4.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
cboe_c1options_depthofbook_pitch_v2_39_4.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_c1options_depthofbook_pitch_v2_39_4.reference_price.translate(raw)
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_c1options_depthofbook_pitch_v2_39_4.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_c1options_depthofbook_pitch_v2_39_4.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_c1options_depthofbook_pitch_v2_39_4.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_c1options_depthofbook_pitch_v2_39_4.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_c1options_depthofbook_pitch_v2_39_4.reserved_1 = {}

-- Size: Reserved 1
cboe_c1options_depthofbook_pitch_v2_39_4.reserved_1.size = 1

-- Display: Reserved 1
cboe_c1options_depthofbook_pitch_v2_39_4.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_c1options_depthofbook_pitch_v2_39_4.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
cboe_c1options_depthofbook_pitch_v2_39_4.reserved_2 = {}

-- Size: Reserved 2
cboe_c1options_depthofbook_pitch_v2_39_4.reserved_2.size = 1

-- Display: Reserved 2
cboe_c1options_depthofbook_pitch_v2_39_4.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
cboe_c1options_depthofbook_pitch_v2_39_4.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.reserved_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Retail Price Improvement
cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement = {}

-- Size: Retail Price Improvement
cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement.size = 1

-- Display: Retail Price Improvement
cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement.display = function(value)
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
cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement, range, value, display)

  return offset + length, value
end

-- Sell Shares
cboe_c1options_depthofbook_pitch_v2_39_4.sell_shares = {}

-- Size: Sell Shares
cboe_c1options_depthofbook_pitch_v2_39_4.sell_shares.size = 4

-- Display: Sell Shares
cboe_c1options_depthofbook_pitch_v2_39_4.sell_shares.display = function(value)
  return "Sell Shares: "..value
end

-- Dissect: Sell Shares
cboe_c1options_depthofbook_pitch_v2_39_4.sell_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.sell_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.sell_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.sell_shares, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_c1options_depthofbook_pitch_v2_39_4.sequence = {}

-- Size: Sequence
cboe_c1options_depthofbook_pitch_v2_39_4.sequence.size = 4

-- Display: Sequence
cboe_c1options_depthofbook_pitch_v2_39_4.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_c1options_depthofbook_pitch_v2_39_4.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.sequence, range, value, display)

  return offset + length, value
end

-- Shares
cboe_c1options_depthofbook_pitch_v2_39_4.shares = {}

-- Size: Shares
cboe_c1options_depthofbook_pitch_v2_39_4.shares.size = 4

-- Display: Shares
cboe_c1options_depthofbook_pitch_v2_39_4.shares.display = function(value)
  return "Shares: "..value
end

-- Dissect: Shares
cboe_c1options_depthofbook_pitch_v2_39_4.shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.shares, range, value, display)

  return offset + length, value
end

-- Short Price
cboe_c1options_depthofbook_pitch_v2_39_4.short_price = {}

-- Size: Short Price
cboe_c1options_depthofbook_pitch_v2_39_4.short_price.size = 2

-- Display: Short Price
cboe_c1options_depthofbook_pitch_v2_39_4.short_price.display = function(value)
  return "Short Price: "..value
end

-- Translate: Short Price
cboe_c1options_depthofbook_pitch_v2_39_4.short_price.translate = function(raw)
  return raw/100
end

-- Dissect: Short Price
cboe_c1options_depthofbook_pitch_v2_39_4.short_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.short_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_c1options_depthofbook_pitch_v2_39_4.short_price.translate(raw)
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.short_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.short_price, range, value, display)

  return offset + length, value
end

-- Short Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity = {}

-- Size: Short Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.size = 2

-- Display: Short Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.display = function(value)
  return "Short Quantity: "..value
end

-- Dissect: Short Quantity
cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.short_quantity, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator = {}

-- Size: Side Indicator
cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.size = 1

-- Display: Side Indicator
cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol = {}

-- Size: Stock Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.symbol = {}

-- Size: Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.symbol.size = 6

-- Display: Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c1options_depthofbook_pitch_v2_39_4.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Condition
cboe_c1options_depthofbook_pitch_v2_39_4.symbol_condition = {}

-- Size: Symbol Condition
cboe_c1options_depthofbook_pitch_v2_39_4.symbol_condition.size = 1

-- Display: Symbol Condition
cboe_c1options_depthofbook_pitch_v2_39_4.symbol_condition.display = function(value)
  if value == "N" then
    return "Symbol Condition: Normal (N)"
  end
  if value == "C" then
    return "Symbol Condition: Closing Only (C)"
  end

  return "Symbol Condition: Unknown("..value..")"
end

-- Dissect: Symbol Condition
cboe_c1options_depthofbook_pitch_v2_39_4.symbol_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.symbol_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.symbol_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.symbol_condition, range, value, display)

  return offset + length, value
end

-- Time
cboe_c1options_depthofbook_pitch_v2_39_4.time = {}

-- Size: Time
cboe_c1options_depthofbook_pitch_v2_39_4.time.size = 4

-- Display: Time
cboe_c1options_depthofbook_pitch_v2_39_4.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_c1options_depthofbook_pitch_v2_39_4.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_c1options_depthofbook_pitch_v2_39_4.time_offset = {}

-- Size: Time Offset
cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size = 4

-- Display: Time Offset
cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Trade Condition
cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition = {}

-- Size: Trade Condition
cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.size = 1

-- Display: Trade Condition
cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.display = function(value)
  if value == " " then
    return "Trade Condition: Normal Trade (<whitespace>)"
  end
  if value == "S" then
    return "Trade Condition: Spread Trade (S)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_c1options_depthofbook_pitch_v2_39_4.trading_status = {}

-- Size: Trading Status
cboe_c1options_depthofbook_pitch_v2_39_4.trading_status.size = 1

-- Display: Trading Status
cboe_c1options_depthofbook_pitch_v2_39_4.trading_status.display = function(value)
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
cboe_c1options_depthofbook_pitch_v2_39_4.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_c1options_depthofbook_pitch_v2_39_4.unit = {}

-- Size: Unit
cboe_c1options_depthofbook_pitch_v2_39_4.unit.size = 1

-- Display: Unit
cboe_c1options_depthofbook_pitch_v2_39_4.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_c1options_depthofbook_pitch_v2_39_4.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1options_depthofbook_pitch_v2_39_4.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe C1Options DepthOfBook Pitch 2.39.4
-----------------------------------------------------------------------

-- Retail Price Improvement Message
cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement_message = {}

-- Size: Retail Price Improvement Message
cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement.size

-- Display: Retail Price Improvement Message
cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index, expanded_symbol = cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Retail Price Improvement: 1 Byte Ascii String Enum with 4 values
  index, retail_price_improvement = cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.retail_price_improvement_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Trade Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_trade_message = {}

-- Size: Auction Trade Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_trade_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.contracts.size

-- Display: Auction Trade Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_c1options_depthofbook_pitch_v2_39_4.contracts.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_trade_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Cancel Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_cancel_message = {}

-- Size: Auction Cancel Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_cancel_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.size

-- Display: Auction Cancel Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Cancel Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Cancel Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_cancel_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.auction_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.auction_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Notification Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_notification_message = {}

-- Size: Auction Notification Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_notification_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.contracts.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.participant_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.auction_end_offset.size

-- Display: Auction Notification Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Notification Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c1options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c1options_depthofbook_pitch_v2_39_4.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index, auction_type = cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Contracts: 4 Byte Unsigned Fixed Width Integer
  index, contracts = cboe_c1options_depthofbook_pitch_v2_39_4.contracts.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator.dissect(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_c1options_depthofbook_pitch_v2_39_4.participant_id.dissect(buffer, index, packet, parent)

  -- Auction End Offset: 4 Byte Unsigned Fixed Width Integer
  index, auction_end_offset = cboe_c1options_depthofbook_pitch_v2_39_4.auction_end_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Notification Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_notification_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.auction_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.auction_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Summary Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_summary_message = {}

-- Size: Auction Summary Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_summary_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.shares.size

-- Display: Auction Summary Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Summary Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Stock Symbol: 8 Byte Ascii String
  index, stock_symbol = cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index, auction_type = cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Shares: 4 Byte Unsigned Fixed Width Integer
  index, shares = cboe_c1options_depthofbook_pitch_v2_39_4.shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Summary Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_summary_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.auction_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.auction_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Update Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_update_message = {}

-- Size: Auction Update Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_update_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.reference_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.buy_shares.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.sell_shares.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price.size

-- Display: Auction Update Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Update Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Stock Symbol: 8 Byte Ascii String
  index, stock_symbol = cboe_c1options_depthofbook_pitch_v2_39_4.stock_symbol.dissect(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index, auction_type = cboe_c1options_depthofbook_pitch_v2_39_4.auction_type.dissect(buffer, index, packet, parent)

  -- Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, reference_price = cboe_c1options_depthofbook_pitch_v2_39_4.reference_price.dissect(buffer, index, packet, parent)

  -- Buy Shares: 4 Byte Unsigned Fixed Width Integer
  index, buy_shares = cboe_c1options_depthofbook_pitch_v2_39_4.buy_shares.dissect(buffer, index, packet, parent)

  -- Sell Shares: 4 Byte Unsigned Fixed Width Integer
  index, sell_shares = cboe_c1options_depthofbook_pitch_v2_39_4.sell_shares.dissect(buffer, index, packet, parent)

  -- Indicative Price: 8 Byte Unsigned Fixed Width Integer
  index, indicative_price = cboe_c1options_depthofbook_pitch_v2_39_4.indicative_price.dissect(buffer, index, packet, parent)

  -- Auction Only Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_only_price = cboe_c1options_depthofbook_pitch_v2_39_4.auction_only_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Update Message
cboe_c1options_depthofbook_pitch_v2_39_4.auction_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.auction_update_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.auction_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.auction_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
cboe_c1options_depthofbook_pitch_v2_39_4.trading_status_message = {}

-- Size: Trading Status Message
cboe_c1options_depthofbook_pitch_v2_39_4.trading_status_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.trading_status.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.reg_sho_action.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.reserved_1.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.reserved_2.size

-- Display: Trading Status Message
cboe_c1options_depthofbook_pitch_v2_39_4.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_c1options_depthofbook_pitch_v2_39_4.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index, expanded_symbol = cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 5 values
  index, trading_status = cboe_c1options_depthofbook_pitch_v2_39_4.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 2 values
  index, reg_sho_action = cboe_c1options_depthofbook_pitch_v2_39_4.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = cboe_c1options_depthofbook_pitch_v2_39_4.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: 1 Byte Ascii String
  index, reserved_2 = cboe_c1options_depthofbook_pitch_v2_39_4.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_c1options_depthofbook_pitch_v2_39_4.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Mapping Message
cboe_c1options_depthofbook_pitch_v2_39_4.symbol_mapping_message = {}

-- Size: Symbol Mapping Message
cboe_c1options_depthofbook_pitch_v2_39_4.symbol_mapping_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.feed_symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.osi_symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.symbol_condition.size

-- Display: Symbol Mapping Message
cboe_c1options_depthofbook_pitch_v2_39_4.symbol_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Mapping Message
cboe_c1options_depthofbook_pitch_v2_39_4.symbol_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Feed Symbol: 6 Byte Ascii String
  index, feed_symbol = cboe_c1options_depthofbook_pitch_v2_39_4.feed_symbol.dissect(buffer, index, packet, parent)

  -- Osi Symbol: 21 Byte Ascii String
  index, osi_symbol = cboe_c1options_depthofbook_pitch_v2_39_4.osi_symbol.dissect(buffer, index, packet, parent)

  -- Symbol Condition: 1 Byte Ascii String Enum with 2 values
  index, symbol_condition = cboe_c1options_depthofbook_pitch_v2_39_4.symbol_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Mapping Message
cboe_c1options_depthofbook_pitch_v2_39_4.symbol_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.symbol_mapping_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.symbol_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.symbol_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.symbol_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session Message
cboe_c1options_depthofbook_pitch_v2_39_4.end_of_session_message = {}

-- Size: End Of Session Message
cboe_c1options_depthofbook_pitch_v2_39_4.end_of_session_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size

-- Display: End Of Session Message
cboe_c1options_depthofbook_pitch_v2_39_4.end_of_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session Message
cboe_c1options_depthofbook_pitch_v2_39_4.end_of_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session Message
cboe_c1options_depthofbook_pitch_v2_39_4.end_of_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.end_of_session_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.end_of_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.end_of_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.end_of_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_break_message = {}

-- Size: Trade Break Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_break_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.size

-- Display: Trade Break Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_expanded_message = {}

-- Size: Trade Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_expanded_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Trade Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index, expanded_symbol = cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_short_message = {}

-- Size: Trade Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_short_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.short_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Trade Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c1options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_c1options_depthofbook_pitch_v2_39_4.short_price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_long_message = {}

-- Size: Trade Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_long_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Trade Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c1options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_c1options_depthofbook_pitch_v2_39_4.delete_order_message = {}

-- Size: Delete Order Message
cboe_c1options_depthofbook_pitch_v2_39_4.delete_order_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size

-- Display: Delete Order Message
cboe_c1options_depthofbook_pitch_v2_39_4.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_c1options_depthofbook_pitch_v2_39_4.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_c1options_depthofbook_pitch_v2_39_4.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Flags
cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags = {}

-- Size: Modify Flags
cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.size = 1

-- Display: Modify Flags
cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Maintain Priority flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Maintain Priority"
  end
  -- Is Display flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Display"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Flags
cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.bits = function(range, value, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reserved_6, range, value)

  -- Maintain Priority: 1 Bit Enum with 2 values
  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.maintain_priority, range, value)

  -- Display: 1 Bit Enum with 2 values
  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.display, range, value)
end

-- Dissect: Modify Flags
cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.modify_flags, range, display)

  if show.modify_flags then
    cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_short_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.short_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.size

-- Display: Modify Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_c1options_depthofbook_pitch_v2_39_4.short_price.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_long_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.size

-- Display: Modify Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Modify Flags: Struct of 3 fields
  index, modify_flags = cboe_c1options_depthofbook_pitch_v2_39_4.modify_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_short_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.canceled_short_quantity.size

-- Display: Reduce Size Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, canceled_short_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.canceled_short_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_long_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.canceled_long_quantity.size

-- Display: Reduce Size Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_long_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.canceled_long_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.remaining_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Order Executed At Price Size Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_message = {}

-- Size: Order Executed Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.size

-- Display: Order Executed Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_c1options_depthofbook_pitch_v2_39_4.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index, trade_condition = cboe_c1options_depthofbook_pitch_v2_39_4.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Flags
cboe_c1options_depthofbook_pitch_v2_39_4.add_flags = {}

-- Size: Add Flags
cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.size = 1

-- Display: Add Flags
cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Display flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Display"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Flags
cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.bits = function(range, value, packet, parent)

  -- Reserved 7: 7 Bit
  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.reserved_7, range, value)

  -- Display: 1 Bit Enum with 2 values
  parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.display, range, value)
end

-- Dissect: Add Flags
cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.add_flags, range, display)

  if show.add_flags then
    cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_expanded_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.participant_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator.size

-- Display: Add Order Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Expanded Symbol: 8 Byte Ascii String
  index, expanded_symbol = cboe_c1options_depthofbook_pitch_v2_39_4.expanded_symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_c1options_depthofbook_pitch_v2_39_4.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String Enum with 2 values
  index, customer_indicator = cboe_c1options_depthofbook_pitch_v2_39_4.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_short_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.short_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.size

-- Display: Add Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Short Quantity: 2 Byte Unsigned Fixed Width Integer
  index, short_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.short_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c1options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Short Price: 2 Byte Unsigned Fixed Width Integer
  index, short_price = cboe_c1options_depthofbook_pitch_v2_39_4.short_price.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_long_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.order_id.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.symbol.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.long_price.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.size

-- Display: Add Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c1options_depthofbook_pitch_v2_39_4.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_c1options_depthofbook_pitch_v2_39_4.side_indicator.dissect(buffer, index, packet, parent)

  -- Long Quantity: 4 Byte Unsigned Fixed Width Integer
  index, long_quantity = cboe_c1options_depthofbook_pitch_v2_39_4.long_quantity.dissect(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_c1options_depthofbook_pitch_v2_39_4.symbol.dissect(buffer, index, packet, parent)

  -- Long Price: 8 Byte Unsigned Fixed Width Integer
  index, long_price = cboe_c1options_depthofbook_pitch_v2_39_4.long_price.dissect(buffer, index, packet, parent)

  -- Add Flags: Struct of 2 fields
  index, add_flags = cboe_c1options_depthofbook_pitch_v2_39_4.add_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_c1options_depthofbook_pitch_v2_39_4.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_c1options_depthofbook_pitch_v2_39_4.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_c1options_depthofbook_pitch_v2_39_4.unit_clear_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.size

-- Display: Unit Clear Message
cboe_c1options_depthofbook_pitch_v2_39_4.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_c1options_depthofbook_pitch_v2_39_4.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_c1options_depthofbook_pitch_v2_39_4.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_c1options_depthofbook_pitch_v2_39_4.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_c1options_depthofbook_pitch_v2_39_4.time_message = {}

-- Size: Time Message
cboe_c1options_depthofbook_pitch_v2_39_4.time_message.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.time.size

-- Display: Time Message
cboe_c1options_depthofbook_pitch_v2_39_4.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_c1options_depthofbook_pitch_v2_39_4.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_c1options_depthofbook_pitch_v2_39_4.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_c1options_depthofbook_pitch_v2_39_4.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.time_message, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_c1options_depthofbook_pitch_v2_39_4.payload = {}

-- Dissect: Payload
cboe_c1options_depthofbook_pitch_v2_39_4.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_c1options_depthofbook_pitch_v2_39_4.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_c1options_depthofbook_pitch_v2_39_4.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_c1options_depthofbook_pitch_v2_39_4.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Expanded Message
  if message_type == 0x30 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.trade_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_c1options_depthofbook_pitch_v2_39_4.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if message_type == 0x2D then
    return cboe_c1options_depthofbook_pitch_v2_39_4.end_of_session_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Mapping Message
  if message_type == 0x2E then
    return cboe_c1options_depthofbook_pitch_v2_39_4.symbol_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Update Message
  if message_type == 0x95 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Summary Message
  if message_type == 0x96 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Notification Message
  if message_type == 0xAD then
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Cancel Message
  if message_type == 0xAE then
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0xAF then
    return cboe_c1options_depthofbook_pitch_v2_39_4.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if message_type == 0x98 then
    return cboe_c1options_depthofbook_pitch_v2_39_4.retail_price_improvement_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_c1options_depthofbook_pitch_v2_39_4.message_header = {}

-- Size: Message Header
cboe_c1options_depthofbook_pitch_v2_39_4.message_header.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.message_length.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.message_type.size

-- Display: Message Header
cboe_c1options_depthofbook_pitch_v2_39_4.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1options_depthofbook_pitch_v2_39_4.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1options_depthofbook_pitch_v2_39_4.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 25 values
  index, message_type = cboe_c1options_depthofbook_pitch_v2_39_4.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1options_depthofbook_pitch_v2_39_4.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message_header, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_c1options_depthofbook_pitch_v2_39_4.message = {}

-- Display: Message
cboe_c1options_depthofbook_pitch_v2_39_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_c1options_depthofbook_pitch_v2_39_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_c1options_depthofbook_pitch_v2_39_4.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 25 branches
  index = cboe_c1options_depthofbook_pitch_v2_39_4.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_c1options_depthofbook_pitch_v2_39_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.message, buffer(offset, 0))
    local current = cboe_c1options_depthofbook_pitch_v2_39_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_c1options_depthofbook_pitch_v2_39_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_c1options_depthofbook_pitch_v2_39_4.packet_header = {}

-- Size: Packet Header
cboe_c1options_depthofbook_pitch_v2_39_4.packet_header.size =
  cboe_c1options_depthofbook_pitch_v2_39_4.length.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.count.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.unit.size + 
  cboe_c1options_depthofbook_pitch_v2_39_4.sequence.size

-- Display: Packet Header
cboe_c1options_depthofbook_pitch_v2_39_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_c1options_depthofbook_pitch_v2_39_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_c1options_depthofbook_pitch_v2_39_4.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_c1options_depthofbook_pitch_v2_39_4.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_c1options_depthofbook_pitch_v2_39_4.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_c1options_depthofbook_pitch_v2_39_4.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_c1options_depthofbook_pitch_v2_39_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4.fields.packet_header, buffer(offset, 0))
    local index = cboe_c1options_depthofbook_pitch_v2_39_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1options_depthofbook_pitch_v2_39_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1options_depthofbook_pitch_v2_39_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c1options_depthofbook_pitch_v2_39_4.packet = {}

-- Verify required size of Udp packet
cboe_c1options_depthofbook_pitch_v2_39_4.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_c1options_depthofbook_pitch_v2_39_4.packet_header.size
end

-- Dissect Packet
cboe_c1options_depthofbook_pitch_v2_39_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_c1options_depthofbook_pitch_v2_39_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_c1options_depthofbook_pitch_v2_39_4.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c1options_depthofbook_pitch_v2_39_4.init()
end

-- Dissector for Cboe C1Options DepthOfBook Pitch 2.39.4
function omi_cboe_c1options_depthofbook_pitch_v2_39_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_c1options_depthofbook_pitch_v2_39_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c1options_depthofbook_pitch_v2_39_4, buffer(), omi_cboe_c1options_depthofbook_pitch_v2_39_4.description, "("..buffer:len().." Bytes)")
  return cboe_c1options_depthofbook_pitch_v2_39_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe C1Options DepthOfBook Pitch 2.39.4 (Udp)
local function omi_cboe_c1options_depthofbook_pitch_v2_39_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c1options_depthofbook_pitch_v2_39_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c1options_depthofbook_pitch_v2_39_4
  omi_cboe_c1options_depthofbook_pitch_v2_39_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1Options DepthOfBook Pitch 2.39.4
omi_cboe_c1options_depthofbook_pitch_v2_39_4:register_heuristic("udp", omi_cboe_c1options_depthofbook_pitch_v2_39_4_udp_heuristic)

-- Register Cboe C1Options DepthOfBook Pitch 2.39.4 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_c1options_depthofbook_pitch_v2_39_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
