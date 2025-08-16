-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Edgx Equities DepthOfBook Pitch 2.41.29 Protocol
local cboe_edgx_equities_depthofbook_pitch_v2_41_29 = Proto("Cboe.Edgx.Equities.DepthOfBook.Pitch.v2.41.29.Lua", "Cboe Edgx Equities DepthOfBook Pitch 2.41.29")

-- Component Tables
local show = {}
local format = {}
local cboe_edgx_equities_depthofbook_pitch_v2_41_29_display = {}
local cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect = {}
local cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Edgx Equities DepthOfBook Pitch 2.41.29 Fields
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.add_order_flags = ProtoField.new("Add Order Flags", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.addorderflags", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.canceled_quantity = ProtoField.new("Canceled Quantity", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.canceledquantity", ftypes.UINT32)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.canceledquantityshort", ftypes.UINT16)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.count = ProtoField.new("Count", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.count", ftypes.UINT8)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.customerindicator", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.display = ProtoField.new("Display", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.display", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.executedquantity", ftypes.UINT32)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.execution_id = ProtoField.new("Execution Id", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.executionid", ftypes.UINT64)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.length = ProtoField.new("Length", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.length", ftypes.UINT16)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.message = ProtoField.new("Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.message", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.message_header = ProtoField.new("Message Header", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.messageheader", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.message_length = ProtoField.new("Message Length", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.messagelength", ftypes.UINT8)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.message_type = ProtoField.new("Message Type", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.messagetype", ftypes.UINT8)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.order_id = ProtoField.new("Order Id", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.orderid", ftypes.UINT64)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.packet = ProtoField.new("Packet", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.packet", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.packet_header = ProtoField.new("Packet Header", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.packetheader", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.padding = ProtoField.new("Padding", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.padding", ftypes.BYTES)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.participant_id = ProtoField.new("Participant Id", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.participantid", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.payload = ProtoField.new("Payload", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.payload", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.price = ProtoField.new("Price", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.price", ftypes.DOUBLE)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.price_short = ProtoField.new("Price Short", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.priceshort", ftypes.DOUBLE)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.quantity = ProtoField.new("Quantity", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.quantity", ftypes.UINT32)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.quantityshort", ftypes.UINT16)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.regshoaction", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.remainingquantity", ftypes.UINT32)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.reservedflags", ftypes.UINT8, nil, base.DEC, 0xFE)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.sequence = ProtoField.new("Sequence", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.sequence", ftypes.UINT32)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.sideindicator", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.symbol = ProtoField.new("Symbol", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.symbol", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.symbolextended", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.time = ProtoField.new("Time", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.time", ftypes.UINT32)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.time_offset = ProtoField.new("Time Offset", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.timeoffset", ftypes.UINT32)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.timestamp = ProtoField.new("Timestamp", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.timestamp", ftypes.UINT32)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_condition = ProtoField.new("Trade Condition", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.tradecondition", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trading_status = ProtoField.new("Trading Status", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.tradingstatus", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.unit = ProtoField.new("Unit", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.unit", ftypes.UINT8)

-- Cboe Edgx Equities DepthOfBook Pitch 2.41.29 messages
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.addorderexpandedmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.addorderlongmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.addordershortmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.deleteordermessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.end_of_session = ProtoField.new("End Of Session", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.endofsession", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.modifyorderlongmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.modifyordershortmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.orderexecutedatpricesizemessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.orderexecutedmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.reducesizelongmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.reducesizeshortmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.time_message = ProtoField.new("Time Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.timemessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.tradebreakmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.tradeexpandedmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.tradelongmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.tradeshortmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.tradingstatusmessage", ftypes.STRING)
cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.edgx.equities.depthofbook.pitch.v2.41.29.unitclearmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Edgx Equities DepthOfBook Pitch 2.41.29 Element Dissection Options
show.add_order_expanded_message = true
show.add_order_flags = true
show.add_order_long_message = true
show.add_order_short_message = true
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
show.time_message = true
show.trade_break_message = true
show.trade_expanded_message = true
show.trade_long_message = true
show.trade_short_message = true
show.trading_status_message = true
show.unit_clear_message = true
show.payload = false

-- Register Cboe Edgx Equities DepthOfBook Pitch 2.41.29 Show Options
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_expanded_message = Pref.bool("Show Add Order Expanded Message", show.add_order_expanded_message, "Parse and add Add Order Expanded Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_flags = Pref.bool("Show Add Order Flags", show.add_order_flags, "Parse and add Add Order Flags to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_long_message = Pref.bool("Show Add Order Long Message", show.add_order_long_message, "Parse and add Add Order Long Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_short_message = Pref.bool("Show Add Order Short Message", show.add_order_short_message, "Parse and add Add Order Short Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_end_of_session = Pref.bool("Show End Of Session", show.end_of_session, "Parse and add End Of Session to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_modify_order_long_message = Pref.bool("Show Modify Order Long Message", show.modify_order_long_message, "Parse and add Modify Order Long Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_modify_order_short_message = Pref.bool("Show Modify Order Short Message", show.modify_order_short_message, "Parse and add Modify Order Short Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_order_executed_at_price_size_message = Pref.bool("Show Order Executed At Price Size Message", show.order_executed_at_price_size_message, "Parse and add Order Executed At Price Size Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_long_message = Pref.bool("Show Reduce Size Long Message", show.reduce_size_long_message, "Parse and add Reduce Size Long Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_short_message = Pref.bool("Show Reduce Size Short Message", show.reduce_size_short_message, "Parse and add Reduce Size Short Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_break_message = Pref.bool("Show Trade Break Message", show.trade_break_message, "Parse and add Trade Break Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_expanded_message = Pref.bool("Show Trade Expanded Message", show.trade_expanded_message, "Parse and add Trade Expanded Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_long_message = Pref.bool("Show Trade Long Message", show.trade_long_message, "Parse and add Trade Long Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_short_message = Pref.bool("Show Trade Short Message", show.trade_short_message, "Parse and add Trade Short Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_unit_clear_message = Pref.bool("Show Unit Clear Message", show.unit_clear_message, "Parse and add Unit Clear Message to protocol tree")
cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_expanded_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_expanded_message then
    show.add_order_expanded_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_expanded_message
    changed = true
  end
  if show.add_order_flags ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_flags then
    show.add_order_flags = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_flags
    changed = true
  end
  if show.add_order_long_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_long_message then
    show.add_order_long_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_long_message
    changed = true
  end
  if show.add_order_short_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_short_message then
    show.add_order_short_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_add_order_short_message
    changed = true
  end
  if show.delete_order_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_delete_order_message then
    show.delete_order_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_delete_order_message
    changed = true
  end
  if show.end_of_session ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_end_of_session then
    show.end_of_session = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_end_of_session
    changed = true
  end
  if show.message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_message then
    show.message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_message_header then
    show.message_header = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_message_header
    changed = true
  end
  if show.modify_order_long_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_modify_order_long_message then
    show.modify_order_long_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_modify_order_long_message
    changed = true
  end
  if show.modify_order_short_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_modify_order_short_message then
    show.modify_order_short_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_modify_order_short_message
    changed = true
  end
  if show.order_executed_at_price_size_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_order_executed_at_price_size_message then
    show.order_executed_at_price_size_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_order_executed_at_price_size_message
    changed = true
  end
  if show.order_executed_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_order_executed_message then
    show.order_executed_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_order_executed_message
    changed = true
  end
  if show.packet ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_packet then
    show.packet = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_packet_header then
    show.packet_header = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_packet_header
    changed = true
  end
  if show.reduce_size_long_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_long_message then
    show.reduce_size_long_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_long_message
    changed = true
  end
  if show.reduce_size_short_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_short_message then
    show.reduce_size_short_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_reduce_size_short_message
    changed = true
  end
  if show.time_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_time_message then
    show.time_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_time_message
    changed = true
  end
  if show.trade_break_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_break_message then
    show.trade_break_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_break_message
    changed = true
  end
  if show.trade_expanded_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_expanded_message then
    show.trade_expanded_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_expanded_message
    changed = true
  end
  if show.trade_long_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_long_message then
    show.trade_long_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_long_message
    changed = true
  end
  if show.trade_short_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_short_message then
    show.trade_short_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trade_short_message
    changed = true
  end
  if show.trading_status_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trading_status_message then
    show.trading_status_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_trading_status_message
    changed = true
  end
  if show.unit_clear_message ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_unit_clear_message then
    show.unit_clear_message = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_unit_clear_message
    changed = true
  end
  if show.payload ~= cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_payload then
    show.payload = cboe_edgx_equities_depthofbook_pitch_v2_41_29.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Edgx Equities DepthOfBook Pitch 2.41.29
-----------------------------------------------------------------------

-- Size: Padding
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.padding = 2

-- Display: Padding
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.padding = function(value)
  return "Padding: "..value
end

-- Dissect: Padding
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.padding = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.padding
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.padding(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.padding, range, value, display)

  return offset + length, value
end

-- Size: Reg Sho Action
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.reg_sho_action = 1

-- Display: Reg Sho Action
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.reg_sho_action = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reg_sho_action = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.reg_sho_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.reg_sho_action(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trading_status = 1

-- Display: Trading Status
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trading_status = function(value)
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
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Symbol Extended
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol_extended = 8

-- Display: Symbol Extended
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.symbol_extended = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.symbol_extended = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol_extended
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.symbol_extended(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Size: Time Offset
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset = 4

-- Display: Time Offset
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.time_offset = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.time_offset(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trading Status Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trading_status_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol_extended

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trading_status

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.reg_sho_action

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.padding

  return index
end

-- Display: Trading Status Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trading_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Symbol Extended: 8 Byte Ascii String
  index, symbol_extended = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.symbol_extended(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 5 values
  index, trading_status = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trading_status(buffer, index, packet, parent)

  -- Reg Sho Action: 1 Byte Ascii String Enum with 2 values
  index, reg_sho_action = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reg_sho_action(buffer, index, packet, parent)

  -- Padding: 2 Byte
  index, padding = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.padding(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trading_status_message = function(buffer, offset, packet, parent)
  if show.trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trading_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trading_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trading_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Timestamp
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.timestamp = 4

-- Display: Timestamp
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Session
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.end_of_session = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.timestamp

  return index
end

-- Display: End Of Session
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.end_of_session = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.end_of_session_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.end_of_session = function(buffer, offset, packet, parent)
  if show.end_of_session then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.end_of_session, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.end_of_session_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.end_of_session(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.end_of_session_fields(buffer, offset, packet, parent)
  end
end

-- Size: Execution Id
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.execution_id = 8

-- Display: Execution Id
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Break Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_break_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.execution_id

  return index
end

-- Display: Trade Break Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_break_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_break_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_break_message = function(buffer, offset, packet, parent)
  if show.trade_break_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_break_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_break_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_break_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Price
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price = 8

-- Display: Price
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity = 4

-- Display: Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Side Indicator
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.side_indicator = 1

-- Display: Side Indicator
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.side_indicator = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.side_indicator = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.side_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.side_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Id
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id = 8

-- Display: Order Id
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Expanded Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_expanded_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.side_indicator

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol_extended

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.execution_id

  return index
end

-- Display: Trade Expanded Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_expanded_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity(buffer, index, packet, parent)

  -- Symbol Extended: 8 Byte Ascii String
  index, symbol_extended = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.symbol_extended(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_expanded_message = function(buffer, offset, packet, parent)
  if show.trade_expanded_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_expanded_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_expanded_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_expanded_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Price Short
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price_short = 2

-- Display: Price Short
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.price_short = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
translate.price_short = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price_short = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price_short
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.price_short(raw)
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.price_short(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.price_short, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol = 6

-- Display: Symbol
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Quantity Short
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity_short = 2

-- Display: Quantity Short
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.quantity_short = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity_short = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.side_indicator

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity_short

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price_short

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.execution_id

  return index
end

-- Display: Trade Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity_short(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.symbol(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price_short(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_short_message = function(buffer, offset, packet, parent)
  if show.trade_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_short_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_short_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_short_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Trade Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.side_indicator

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.execution_id

  return index
end

-- Display: Trade Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.symbol(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_long_message = function(buffer, offset, packet, parent)
  if show.trade_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_long_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_long_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_long_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Delete Order Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.delete_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  return index
end

-- Display: Delete Order Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.delete_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.delete_order_message = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.delete_order_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.delete_order_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.delete_order_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Modify Order Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.modify_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity_short

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price_short

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.modify_order_flags

  return index
end

-- Display: Modify Order Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.modify_order_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity_short(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price_short(buffer, index, packet, parent)

  -- Modify Order Flags
  index, modify_order_flags = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_short_message = function(buffer, offset, packet, parent)
  if show.modify_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_short_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.modify_order_short_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_short_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Modify Order Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.modify_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.modify_order_flags

  return index
end

-- Display: Modify Order Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.modify_order_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price(buffer, index, packet, parent)

  -- Modify Order Flags
  index, modify_order_flags = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_long_message = function(buffer, offset, packet, parent)
  if show.modify_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_long_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.modify_order_long_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_long_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Canceled Quantity Short
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.canceled_quantity_short = 2

-- Display: Canceled Quantity Short
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.canceled_quantity_short = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.canceled_quantity_short = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.canceled_quantity_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.canceled_quantity_short(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.reduce_size_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.canceled_quantity_short

  return index
end

-- Display: Reduce Size Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.reduce_size_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, canceled_quantity_short = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.canceled_quantity_short(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_short_message = function(buffer, offset, packet, parent)
  if show.reduce_size_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_short_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.reduce_size_short_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_short_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Canceled Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.canceled_quantity = 4

-- Display: Canceled Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.canceled_quantity = function(value)
  return "Canceled Quantity: "..value
end

-- Dissect: Canceled Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.canceled_quantity = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.canceled_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.canceled_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.canceled_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reduce Size Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.reduce_size_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.canceled_quantity

  return index
end

-- Display: Reduce Size Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.reduce_size_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Canceled Quantity: 4 Byte Unsigned Fixed Width Integer
  index, canceled_quantity = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.canceled_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_long_message = function(buffer, offset, packet, parent)
  if show.reduce_size_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_long_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.reduce_size_long_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_long_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Remaining Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.remaining_quantity = 4

-- Display: Remaining Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.remaining_quantity = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.remaining_quantity = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.remaining_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.remaining_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Size: Executed Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.executed_quantity = 4

-- Display: Executed Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed At Price Size Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_executed_at_price_size_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.executed_quantity

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.remaining_quantity

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.execution_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price

  return index
end

-- Display: Order Executed At Price Size Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.order_executed_at_price_size_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_at_price_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.executed_quantity(buffer, index, packet, parent)

  -- Remaining Quantity: 4 Byte Unsigned Fixed Width Integer
  index, remaining_quantity = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.remaining_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.execution_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_at_price_size_message = function(buffer, offset, packet, parent)
  if show.order_executed_at_price_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.order_executed_at_price_size_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_at_price_size_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Condition
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_condition = 1

-- Display: Trade Condition
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_condition = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.executed_quantity

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.execution_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_condition

  return index
end

-- Display: Order Executed Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.order_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.executed_quantity(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String
  index, trade_condition = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_message = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.order_executed_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Customer Indicator
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.customer_indicator = 1

-- Display: Customer Indicator
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.customer_indicator = function(value)
  return "Customer Indicator: "..value
end

-- Dissect: Customer Indicator
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.customer_indicator = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.customer_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.customer_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.participant_id = 4

-- Display: Participant Id
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Add Order Flags
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_flags = 1

-- Display: Add Order Flags
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.add_order_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Display flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Display|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Add Order Flags
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_flags_bits = function(buffer, offset, packet, parent)

  -- Reserved Flags: 7 Bit
  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.reserved_flags, buffer(offset, 1))

  -- Display: 1 Bit
  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.display, buffer(offset, 1))
end

-- Dissect: Add Order Flags
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.add_order_flags(range, packet, parent)
  local element = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.add_order_flags, range, display)

  if show.add_order_flags then
    cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Add Order Expanded Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_expanded_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.side_indicator

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol_extended

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_flags

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.participant_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.customer_indicator

  return index
end

-- Display: Add Order Expanded Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.add_order_expanded_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_expanded_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity(buffer, index, packet, parent)

  -- Symbol Extended: 8 Byte Ascii String
  index, symbol_extended = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.symbol_extended(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 2 fields
  index, add_order_flags = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_flags(buffer, index, packet, parent)

  -- Participant Id: 4 Byte Ascii String
  index, participant_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.participant_id(buffer, index, packet, parent)

  -- Customer Indicator: 1 Byte Ascii String
  index, customer_indicator = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.customer_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_expanded_message = function(buffer, offset, packet, parent)
  if show.add_order_expanded_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_expanded_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.add_order_expanded_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_expanded_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Add Order Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.side_indicator

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity_short

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price_short

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_flags

  return index
end

-- Display: Add Order Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.add_order_short_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity Short: 2 Byte Unsigned Fixed Width Integer
  index, quantity_short = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity_short(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.symbol(buffer, index, packet, parent)

  -- Price Short: 2 Byte Unsigned Fixed Width Integer
  index, price_short = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price_short(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 2 fields
  index, add_order_flags = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_short_message = function(buffer, offset, packet, parent)
  if show.add_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_short_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.add_order_short_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_short_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Add Order Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_long_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_id

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.side_indicator

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.quantity

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.symbol

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.price

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_flags

  return index
end

-- Display: Add Order Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.add_order_long_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_long_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_id(buffer, index, packet, parent)

  -- Side Indicator: 1 Byte Ascii String Enum with 2 values
  index, side_indicator = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.side_indicator(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.quantity(buffer, index, packet, parent)

  -- Symbol: 6 Byte Ascii String
  index, symbol = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.symbol(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.price(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 2 fields
  index, add_order_flags = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_long_message = function(buffer, offset, packet, parent)
  if show.add_order_long_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_long_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.add_order_long_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_long_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Unit Clear Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.unit_clear_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_offset

  return index
end

-- Display: Unit Clear Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.unit_clear_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.unit_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: 4 Byte Unsigned Fixed Width Integer
  index, time_offset = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_offset(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.unit_clear_message = function(buffer, offset, packet, parent)
  if show.unit_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.unit_clear_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.unit_clear_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.unit_clear_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Time
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time = 4

-- Display: Time
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.time(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time

  return index
end

-- Display: Time Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.time_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_message = function(buffer, offset, packet, parent)
  if show.time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.time_message, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.time_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x20 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.time_message(buffer, offset)
  end
  -- Size of Unit Clear Message
  if message_type == 0x97 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.unit_clear_message(buffer, offset)
  end
  -- Size of Add Order Long Message
  if message_type == 0x21 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_long_message(buffer, offset)
  end
  -- Size of Add Order Short Message
  if message_type == 0x22 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_short_message(buffer, offset)
  end
  -- Size of Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.add_order_expanded_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x23 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.order_executed_at_price_size_message(buffer, offset)
  end
  -- Size of Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.reduce_size_long_message(buffer, offset)
  end
  -- Size of Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.reduce_size_short_message(buffer, offset)
  end
  -- Size of Modify Order Long Message
  if message_type == 0x27 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.modify_order_long_message(buffer, offset)
  end
  -- Size of Modify Order Short Message
  if message_type == 0x28 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.modify_order_short_message(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == 0x29 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.delete_order_message(buffer, offset)
  end
  -- Size of Trade Long Message
  if message_type == 0x2A then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_long_message(buffer, offset)
  end
  -- Size of Trade Short Message
  if message_type == 0x2B then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_short_message(buffer, offset)
  end
  -- Size of Trade Expanded Message
  if message_type == 0x30 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_expanded_message(buffer, offset)
  end
  -- Size of Trade Break Message
  if message_type == 0x2C then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trade_break_message(buffer, offset)
  end
  -- Size of End Of Session
  if message_type == 0x2D then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.end_of_session(buffer, offset)
  end
  -- Size of Trading Status Message
  if message_type == 0x31 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.trading_status_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.unit_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.add_order_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.order_executed_at_price_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.reduce_size_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.modify_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_long_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Expanded Message
  if message_type == 0x30 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_expanded_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trade_break_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_type == 0x2D then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.end_of_session(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.trading_status_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.payload, range, display)

  return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.message_type = 1

-- Display: Message Type
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.message_type = function(value)
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

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.message_length = 1

-- Display: Message Length
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.message_length

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.message_type

  return index
end

-- Display: Message Header
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, message_type = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.message_header, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 18 branches
  index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.message(buffer, packet, parent)
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.message, range, display)
  end

  cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Sequence
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.sequence = 4

-- Display: Sequence
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.unit = 1

-- Display: Unit
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.count = 1

-- Display: Count
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.length = 2

-- Display: Length
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.length

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.count

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.unit

  index = index + cboe_edgx_equities_depthofbook_pitch_v2_41_29_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29.fields.packet_header, buffer(offset, 0))
    local index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgx_equities_depthofbook_pitch_v2_41_29_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Message: Struct of 2 fields
    index = cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_edgx_equities_depthofbook_pitch_v2_41_29.init()
end

-- Dissector for Cboe Edgx Equities DepthOfBook Pitch 2.41.29
function cboe_edgx_equities_depthofbook_pitch_v2_41_29.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_edgx_equities_depthofbook_pitch_v2_41_29.name

  -- Dissect protocol
  local protocol = parent:add(cboe_edgx_equities_depthofbook_pitch_v2_41_29, buffer(), cboe_edgx_equities_depthofbook_pitch_v2_41_29.description, "("..buffer:len().." Bytes)")
  return cboe_edgx_equities_depthofbook_pitch_v2_41_29_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_edgx_equities_depthofbook_pitch_v2_41_29)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_edgx_equities_depthofbook_pitch_v2_41_29_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Edgx Equities DepthOfBook Pitch 2.41.29
local function cboe_edgx_equities_depthofbook_pitch_v2_41_29_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_edgx_equities_depthofbook_pitch_v2_41_29_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_edgx_equities_depthofbook_pitch_v2_41_29
  cboe_edgx_equities_depthofbook_pitch_v2_41_29.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Edgx Equities DepthOfBook Pitch 2.41.29
cboe_edgx_equities_depthofbook_pitch_v2_41_29:register_heuristic("udp", cboe_edgx_equities_depthofbook_pitch_v2_41_29_heuristic)

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
