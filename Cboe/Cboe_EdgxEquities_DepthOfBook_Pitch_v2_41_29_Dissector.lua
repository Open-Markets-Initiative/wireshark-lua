-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe EdgxEquities DepthOfBook Pitch 2.41.29 Protocol
local omi_cboe_edgxequities_depthofbook_pitch_v2_41_29 = Proto("Cboe.EdgxEquities.DepthOfBook.Pitch.v2.41.29.Lua", "Cboe EdgxEquities DepthOfBook Pitch 2.41.29")

-- Protocol table
local cboe_edgxequities_depthofbook_pitch_v2_41_29 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe EdgxEquities DepthOfBook Pitch 2.41.29 Fields
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.add_order_flags = ProtoField.new("Add Order Flags", "cboe.edgxequities.depthofbook.pitch.v2.41.29.addorderflags", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.canceled_quantity = ProtoField.new("Canceled Quantity", "cboe.edgxequities.depthofbook.pitch.v2.41.29.canceledquantity", ftypes.UINT32)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.canceled_quantity_short = ProtoField.new("Canceled Quantity Short", "cboe.edgxequities.depthofbook.pitch.v2.41.29.canceledquantityshort", ftypes.UINT16)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.count = ProtoField.new("Count", "cboe.edgxequities.depthofbook.pitch.v2.41.29.count", ftypes.UINT8)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.customer_indicator = ProtoField.new("Customer Indicator", "cboe.edgxequities.depthofbook.pitch.v2.41.29.customerindicator", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.display = ProtoField.new("Display", "cboe.edgxequities.depthofbook.pitch.v2.41.29.display", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.executed_quantity = ProtoField.new("Executed Quantity", "cboe.edgxequities.depthofbook.pitch.v2.41.29.executedquantity", ftypes.UINT32)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.execution_id = ProtoField.new("Execution Id", "cboe.edgxequities.depthofbook.pitch.v2.41.29.executionid", ftypes.UINT64)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.length = ProtoField.new("Length", "cboe.edgxequities.depthofbook.pitch.v2.41.29.length", ftypes.UINT16)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message = ProtoField.new("Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.message", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message_header = ProtoField.new("Message Header", "cboe.edgxequities.depthofbook.pitch.v2.41.29.messageheader", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message_length = ProtoField.new("Message Length", "cboe.edgxequities.depthofbook.pitch.v2.41.29.messagelength", ftypes.UINT8)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message_type = ProtoField.new("Message Type", "cboe.edgxequities.depthofbook.pitch.v2.41.29.messagetype", ftypes.UINT8)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.order_id = ProtoField.new("Order Id", "cboe.edgxequities.depthofbook.pitch.v2.41.29.orderid", ftypes.UINT64)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.packet = ProtoField.new("Packet", "cboe.edgxequities.depthofbook.pitch.v2.41.29.packet", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.packet_header = ProtoField.new("Packet Header", "cboe.edgxequities.depthofbook.pitch.v2.41.29.packetheader", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.padding = ProtoField.new("Padding", "cboe.edgxequities.depthofbook.pitch.v2.41.29.padding", ftypes.BYTES)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.participant_id = ProtoField.new("Participant Id", "cboe.edgxequities.depthofbook.pitch.v2.41.29.participantid", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.price = ProtoField.new("Price", "cboe.edgxequities.depthofbook.pitch.v2.41.29.price", ftypes.DOUBLE)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.price_short = ProtoField.new("Price Short", "cboe.edgxequities.depthofbook.pitch.v2.41.29.priceshort", ftypes.DOUBLE)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.quantity = ProtoField.new("Quantity", "cboe.edgxequities.depthofbook.pitch.v2.41.29.quantity", ftypes.UINT32)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.quantity_short = ProtoField.new("Quantity Short", "cboe.edgxequities.depthofbook.pitch.v2.41.29.quantityshort", ftypes.UINT16)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.reg_sho_action = ProtoField.new("Reg Sho Action", "cboe.edgxequities.depthofbook.pitch.v2.41.29.regshoaction", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.remaining_quantity = ProtoField.new("Remaining Quantity", "cboe.edgxequities.depthofbook.pitch.v2.41.29.remainingquantity", ftypes.UINT32)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.reserved_flags = ProtoField.new("Reserved Flags", "cboe.edgxequities.depthofbook.pitch.v2.41.29.reservedflags", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.sequence = ProtoField.new("Sequence", "cboe.edgxequities.depthofbook.pitch.v2.41.29.sequence", ftypes.UINT32)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.side_indicator = ProtoField.new("Side Indicator", "cboe.edgxequities.depthofbook.pitch.v2.41.29.sideindicator", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.symbol = ProtoField.new("Symbol", "cboe.edgxequities.depthofbook.pitch.v2.41.29.symbol", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.symbol_extended = ProtoField.new("Symbol Extended", "cboe.edgxequities.depthofbook.pitch.v2.41.29.symbolextended", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.time = ProtoField.new("Time", "cboe.edgxequities.depthofbook.pitch.v2.41.29.time", ftypes.UINT32)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.time_offset = ProtoField.new("Time Offset", "cboe.edgxequities.depthofbook.pitch.v2.41.29.timeoffset", ftypes.UINT32)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.timestamp = ProtoField.new("Timestamp", "cboe.edgxequities.depthofbook.pitch.v2.41.29.timestamp", ftypes.UINT32)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trading_status = ProtoField.new("Trading Status", "cboe.edgxequities.depthofbook.pitch.v2.41.29.tradingstatus", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.unit = ProtoField.new("Unit", "cboe.edgxequities.depthofbook.pitch.v2.41.29.unit", ftypes.UINT8)

-- Cboe EdgxEquities Pitch DepthOfBook 2.41.29 Application Messages
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.add_order_expanded_message = ProtoField.new("Add Order Expanded Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.addorderexpandedmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.add_order_long_message = ProtoField.new("Add Order Long Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.addorderlongmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.add_order_short_message = ProtoField.new("Add Order Short Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.addordershortmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.delete_order_message = ProtoField.new("Delete Order Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.deleteordermessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.end_of_session = ProtoField.new("End Of Session", "cboe.edgxequities.depthofbook.pitch.v2.41.29.endofsession", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.modify_order_long_message = ProtoField.new("Modify Order Long Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.modifyorderlongmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.modify_order_short_message = ProtoField.new("Modify Order Short Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.modifyordershortmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.order_executed_at_price_size_message = ProtoField.new("Order Executed At Price Size Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.orderexecutedatpricesizemessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.order_executed_message = ProtoField.new("Order Executed Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.orderexecutedmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.reduce_size_long_message = ProtoField.new("Reduce Size Long Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.reducesizelongmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.reduce_size_short_message = ProtoField.new("Reduce Size Short Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.reducesizeshortmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.time_message = ProtoField.new("Time Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.timemessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.tradebreakmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trade_expanded_message = ProtoField.new("Trade Expanded Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.tradeexpandedmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trade_long_message = ProtoField.new("Trade Long Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.tradelongmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trade_short_message = ProtoField.new("Trade Short Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.tradeshortmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trading_status_message = ProtoField.new("Trading Status Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.tradingstatusmessage", ftypes.STRING)
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.unit_clear_message = ProtoField.new("Unit Clear Message", "cboe.edgxequities.depthofbook.pitch.v2.41.29.unitclearmessage", ftypes.STRING)

-- Cboe EdgxEquities DepthOfBook Pitch 2.41.29 generated fields
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message_index = ProtoField.new("Message Index", "cboe.edgxequities.depthofbook.pitch.v2.41.29.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe EdgxEquities DepthOfBook Pitch 2.41.29 Element Dissection Options
show.application_messages = true
show.add_order_flags = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe EdgxEquities DepthOfBook Pitch 2.41.29 Show Options
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_add_order_flags = Pref.bool("Show Add Order Flags", show.add_order_flags, "Parse and add Add Order Flags to protocol tree")
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs_changed()

  -- Check if show options have changed
  if show.add_order_flags ~= omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_add_order_flags then
    show.add_order_flags = omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_add_order_flags
  end
  if show.application_messages ~= omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_application_messages then
    show.application_messages = omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_message then
    show.message = omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_message
  end
  if show.message_header ~= omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_message_header then
    show.message_header = omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_packet then
    show.packet = omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_packet_header then
    show.packet_header = omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_message_index then
    show.message_index = omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.prefs.show_message_index
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
-- Cboe EdgxEquities DepthOfBook Pitch 2.41.29 Fields
-----------------------------------------------------------------------

-- Canceled Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity = {}

-- Size: Canceled Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity.size = 4

-- Display: Canceled Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity.display = function(value)
  return "Canceled Quantity: "..value
end

-- Dissect: Canceled Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.canceled_quantity, range, value, display)

  return offset + length, value
end

-- Canceled Quantity Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity_short = {}

-- Size: Canceled Quantity Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity_short.size = 2

-- Display: Canceled Quantity Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity_short.display = function(value)
  return "Canceled Quantity Short: "..value
end

-- Dissect: Canceled Quantity Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.canceled_quantity_short, range, value, display)

  return offset + length, value
end

-- Count
cboe_edgxequities_depthofbook_pitch_v2_41_29.count = {}

-- Size: Count
cboe_edgxequities_depthofbook_pitch_v2_41_29.count.size = 1

-- Display: Count
cboe_edgxequities_depthofbook_pitch_v2_41_29.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_edgxequities_depthofbook_pitch_v2_41_29.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.count, range, value, display)

  return offset + length, value
end

-- Customer Indicator
cboe_edgxequities_depthofbook_pitch_v2_41_29.customer_indicator = {}

-- Size: Customer Indicator
cboe_edgxequities_depthofbook_pitch_v2_41_29.customer_indicator.size = 1

-- Display: Customer Indicator
cboe_edgxequities_depthofbook_pitch_v2_41_29.customer_indicator.display = function(value)
  return "Customer Indicator: "..value
end

-- Dissect: Customer Indicator
cboe_edgxequities_depthofbook_pitch_v2_41_29.customer_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.customer_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.customer_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.customer_indicator, range, value, display)

  return offset + length, value
end

-- Executed Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity = {}

-- Size: Executed Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity.size = 4

-- Display: Executed Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id = {}

-- Size: Execution Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.size = 8

-- Display: Execution Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Length
cboe_edgxequities_depthofbook_pitch_v2_41_29.length = {}

-- Size: Length
cboe_edgxequities_depthofbook_pitch_v2_41_29.length.size = 2

-- Display: Length
cboe_edgxequities_depthofbook_pitch_v2_41_29.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_edgxequities_depthofbook_pitch_v2_41_29.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.length, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_length = {}

-- Size: Message Length
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_length.size = 1

-- Display: Message Length
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_type = {}

-- Size: Message Type
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_type.size = 1

-- Display: Message Type
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_type.display = function(value)
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
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id = {}

-- Size: Order Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size = 8

-- Display: Order Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.order_id, range, value, display)

  return offset + length, value
end

-- Padding
cboe_edgxequities_depthofbook_pitch_v2_41_29.padding = {}

-- Size: Padding
cboe_edgxequities_depthofbook_pitch_v2_41_29.padding.size = 2

-- Display: Padding
cboe_edgxequities_depthofbook_pitch_v2_41_29.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect: Padding
cboe_edgxequities_depthofbook_pitch_v2_41_29.padding.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.padding.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.padding.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.padding, range, value, display)

  return offset + length, value
end

-- Participant Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.participant_id = {}

-- Size: Participant Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.participant_id.size = 4

-- Display: Participant Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
cboe_edgxequities_depthofbook_pitch_v2_41_29.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Price
cboe_edgxequities_depthofbook_pitch_v2_41_29.price = {}

-- Size: Price
cboe_edgxequities_depthofbook_pitch_v2_41_29.price.size = 8

-- Display: Price
cboe_edgxequities_depthofbook_pitch_v2_41_29.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_edgxequities_depthofbook_pitch_v2_41_29.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_edgxequities_depthofbook_pitch_v2_41_29.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = cboe_edgxequities_depthofbook_pitch_v2_41_29.price.translate(raw)
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.price, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short = {}

-- Size: Price Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.size = 2

-- Display: Price Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Price Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.translate(raw)
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity = {}

-- Size: Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.size = 4

-- Display: Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.quantity, range, value, display)

  return offset + length, value
end

-- Quantity Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short = {}

-- Size: Quantity Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.size = 2

-- Display: Quantity Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.display = function(value)
  return "Quantity Short: "..value
end

-- Dissect: Quantity Short
cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.quantity_short, range, value, display)

  return offset + length, value
end

-- Reg Sho Action
cboe_edgxequities_depthofbook_pitch_v2_41_29.reg_sho_action = {}

-- Size: Reg Sho Action
cboe_edgxequities_depthofbook_pitch_v2_41_29.reg_sho_action.size = 1

-- Display: Reg Sho Action
cboe_edgxequities_depthofbook_pitch_v2_41_29.reg_sho_action.display = function(value)
  if value == "0" then
    return "Reg Sho Action: No Price Test In Effect (0)"
  end
  if value == "1" then
    return "Reg Sho Action: Reg Sho Price Test Restriction In Effect (1)"
  end

  return "Reg Sho Action: Unknown("..value..")"
end

-- Dissect: Reg Sho Action
cboe_edgxequities_depthofbook_pitch_v2_41_29.reg_sho_action.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.reg_sho_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.reg_sho_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.reg_sho_action, range, value, display)

  return offset + length, value
end

-- Remaining Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.remaining_quantity = {}

-- Size: Remaining Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.remaining_quantity.size = 4

-- Display: Remaining Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.remaining_quantity.display = function(value)
  return "Remaining Quantity: "..value
end

-- Dissect: Remaining Quantity
cboe_edgxequities_depthofbook_pitch_v2_41_29.remaining_quantity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.remaining_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.remaining_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.remaining_quantity, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_edgxequities_depthofbook_pitch_v2_41_29.sequence = {}

-- Size: Sequence
cboe_edgxequities_depthofbook_pitch_v2_41_29.sequence.size = 4

-- Display: Sequence
cboe_edgxequities_depthofbook_pitch_v2_41_29.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_edgxequities_depthofbook_pitch_v2_41_29.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.sequence, range, value, display)

  return offset + length, value
end

-- Side Indicator
cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator = {}

-- Size: Side Indicator
cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.size = 1

-- Display: Side Indicator
cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.display = function(value)
  if value == "B" then
    return "Side Indicator: Buy Order (B)"
  end
  if value == "S" then
    return "Side Indicator: Sell Order (S)"
  end

  return "Side Indicator: Unknown("..value..")"
end

-- Dissect: Side Indicator
cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.side_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol = {}

-- Size: Symbol
cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.size = 6

-- Display: Symbol
cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Extended
cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended = {}

-- Size: Symbol Extended
cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.size = 8

-- Display: Symbol Extended
cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.display = function(value)
  return "Symbol Extended: "..value
end

-- Dissect: Symbol Extended
cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.symbol_extended, range, value, display)

  return offset + length, value
end

-- Time
cboe_edgxequities_depthofbook_pitch_v2_41_29.time = {}

-- Size: Time
cboe_edgxequities_depthofbook_pitch_v2_41_29.time.size = 4

-- Display: Time
cboe_edgxequities_depthofbook_pitch_v2_41_29.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
cboe_edgxequities_depthofbook_pitch_v2_41_29.time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.time, range, value, display)

  return offset + length, value
end

-- Time Offset
cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset = {}

-- Size: Time Offset
cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size = 4

-- Display: Time Offset
cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.display = function(value)
  return "Time Offset: "..value
end

-- Dissect: Time Offset
cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.time_offset, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_edgxequities_depthofbook_pitch_v2_41_29.timestamp = {}

-- Size: Timestamp
cboe_edgxequities_depthofbook_pitch_v2_41_29.timestamp.size = 4

-- Display: Timestamp
cboe_edgxequities_depthofbook_pitch_v2_41_29.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_edgxequities_depthofbook_pitch_v2_41_29.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trading Status
cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status = {}

-- Size: Trading Status
cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status.size = 1

-- Display: Trading Status
cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status.display = function(value)
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
cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unit
cboe_edgxequities_depthofbook_pitch_v2_41_29.unit = {}

-- Size: Unit
cboe_edgxequities_depthofbook_pitch_v2_41_29.unit.size = 1

-- Display: Unit
cboe_edgxequities_depthofbook_pitch_v2_41_29.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_edgxequities_depthofbook_pitch_v2_41_29.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_edgxequities_depthofbook_pitch_v2_41_29.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.unit, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe EdgxEquities DepthOfBook Pitch 2.41.29
-----------------------------------------------------------------------

-- Trading Status Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status_message = {}

-- Size: Trading Status Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.reg_sho_action.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.padding.size

-- Display: Trading Status Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Printable ASCII
  index, symbol_extended = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status.dissect(buffer, index, packet, parent)

  -- Reg Sho Action: Alphanumeric
  index, reg_sho_action = cboe_edgxequities_depthofbook_pitch_v2_41_29.reg_sho_action.dissect(buffer, index, packet, parent)

  -- Padding: Reserved
  index, padding = cboe_edgxequities_depthofbook_pitch_v2_41_29.padding.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trading_status_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Session
cboe_edgxequities_depthofbook_pitch_v2_41_29.end_of_session = {}

-- Size: End Of Session
cboe_edgxequities_depthofbook_pitch_v2_41_29.end_of_session.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.timestamp.size

-- Display: End Of Session
cboe_edgxequities_depthofbook_pitch_v2_41_29.end_of_session.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Session
cboe_edgxequities_depthofbook_pitch_v2_41_29.end_of_session.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Binary
  index, timestamp = cboe_edgxequities_depthofbook_pitch_v2_41_29.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Session
cboe_edgxequities_depthofbook_pitch_v2_41_29.end_of_session.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.end_of_session, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.end_of_session.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.end_of_session.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.end_of_session.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_break_message = {}

-- Size: Trade Break Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_break_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.size

-- Display: Trade Break Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_expanded_message = {}

-- Size: Trade Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_expanded_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.price.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.size

-- Display: Trade Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Printable ASCII
  index, symbol_extended = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_edgxequities_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trade_expanded_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_short_message = {}

-- Size: Trade Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_short_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.size

-- Display: Trade Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trade_short_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_long_message = {}

-- Size: Trade Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_long_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.price.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.size

-- Display: Trade Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_edgxequities_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.trade_long_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.delete_order_message = {}

-- Size: Delete Order Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.delete_order_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size

-- Display: Delete Order Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.delete_order_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_short_message = {}

-- Size: Modify Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_short_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_flags.size

-- Display: Modify Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.dissect(buffer, index, packet, parent)

  -- Modify Order Flags
  index, modify_order_flags = cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.modify_order_short_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_long_message = {}

-- Size: Modify Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_long_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.price.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_flags.size

-- Display: Modify Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_edgxequities_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Modify Order Flags
  index, modify_order_flags = cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.modify_order_long_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_short_message = {}

-- Size: Reduce Size Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_short_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity_short.size

-- Display: Reduce Size Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity Short: Binary
  index, canceled_quantity_short = cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.reduce_size_short_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Reduce Size Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_long_message = {}

-- Size: Reduce Size Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_long_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity.size

-- Display: Reduce Size Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reduce Size Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Canceled Quantity: Binary
  index, canceled_quantity = cboe_edgxequities_depthofbook_pitch_v2_41_29.canceled_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reduce Size Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.reduce_size_long_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed At Price Size Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message = {}

-- Size: Order Executed At Price Size Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.remaining_quantity.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.price.size

-- Display: Order Executed At Price Size Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed At Price Size Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity.dissect(buffer, index, packet, parent)

  -- Remaining Quantity: Binary
  index, remaining_quantity = cboe_edgxequities_depthofbook_pitch_v2_41_29.remaining_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_edgxequities_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed At Price Size Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.order_executed_at_price_size_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_message = {}

-- Size: Order Executed Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.size

-- Display: Order Executed Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Binary
  index, executed_quantity = cboe_edgxequities_depthofbook_pitch_v2_41_29.executed_quantity.dissect(buffer, index, packet, parent)

  -- Execution Id: Binary
  index, execution_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.order_executed_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Flags
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags = {}

-- Size: Add Order Flags
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.size = 1

-- Display: Add Order Flags
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Display flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Display"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Order Flags
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.bits = function(range, value, packet, parent)

  -- Display: 1 Bit
  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.display, range, value)

  -- Reserved Flags: 7 Bit
  parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.reserved_flags, range, value)
end

-- Dissect: Add Order Flags
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.add_order_flags, range, display)

  if show.add_order_flags then
    cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_expanded_message = {}

-- Size: Add Order Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_expanded_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.price.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.participant_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.customer_indicator.size

-- Display: Add Order Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_expanded_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_expanded_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Symbol Extended: Printable ASCII
  index, symbol_extended = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol_extended.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_edgxequities_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 2 fields
  index, add_order_flags = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.dissect(buffer, index, packet, parent)

  -- Participant Id: Alphanumeric
  index, participant_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.participant_id.dissect(buffer, index, packet, parent)

  -- Customer Indicator: Alphanumeric
  index, customer_indicator = cboe_edgxequities_depthofbook_pitch_v2_41_29.customer_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Expanded Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_expanded_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.add_order_expanded_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_expanded_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_expanded_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_expanded_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_short_message = {}

-- Size: Add Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_short_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.size

-- Display: Add Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity Short: Binary
  index, quantity_short = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity_short.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.dissect(buffer, index, packet, parent)

  -- Price Short: Binary Short Price
  index, price_short = cboe_edgxequities_depthofbook_pitch_v2_41_29.price_short.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 2 fields
  index, add_order_flags = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.add_order_short_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_long_message = {}

-- Size: Add Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_long_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.price.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.size

-- Display: Add Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_long_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_long_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_edgxequities_depthofbook_pitch_v2_41_29.order_id.dissect(buffer, index, packet, parent)

  -- Side Indicator: Alphanumeric
  index, side_indicator = cboe_edgxequities_depthofbook_pitch_v2_41_29.side_indicator.dissect(buffer, index, packet, parent)

  -- Quantity: Binary
  index, quantity = cboe_edgxequities_depthofbook_pitch_v2_41_29.quantity.dissect(buffer, index, packet, parent)

  -- Symbol: Printable ASCII
  index, symbol = cboe_edgxequities_depthofbook_pitch_v2_41_29.symbol.dissect(buffer, index, packet, parent)

  -- Price: Binary Long Price
  index, price = cboe_edgxequities_depthofbook_pitch_v2_41_29.price.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 2 fields
  index, add_order_flags = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_long_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.add_order_long_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_long_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_long_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_long_message.fields(buffer, offset, packet, parent)
  end
end

-- Unit Clear Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.unit_clear_message = {}

-- Size: Unit Clear Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.unit_clear_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.size

-- Display: Unit Clear Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.unit_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Clear Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.unit_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time Offset: Binary
  index, time_offset = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_offset.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Clear Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.unit_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.unit_clear_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.unit_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.unit_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.unit_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.time_message = {}

-- Size: Time Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.time_message.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.time.size

-- Display: Time Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: Binary
  index, time = cboe_edgxequities_depthofbook_pitch_v2_41_29.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.time_message, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_edgxequities_depthofbook_pitch_v2_41_29.payload = {}

-- Dissect: Payload
cboe_edgxequities_depthofbook_pitch_v2_41_29.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x20 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unit Clear Message
  if message_type == 0x97 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.unit_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Message
  if message_type == 0x21 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Message
  if message_type == 0x22 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Expanded Message
  if message_type == 0x2F then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.add_order_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x23 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed At Price Size Message
  if message_type == 0x24 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.order_executed_at_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Long Message
  if message_type == 0x25 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reduce Size Short Message
  if message_type == 0x26 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.reduce_size_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Long Message
  if message_type == 0x27 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Short Message
  if message_type == 0x28 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.modify_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 0x29 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Long Message
  if message_type == 0x2A then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_long_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Short Message
  if message_type == 0x2B then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Expanded Message
  if message_type == 0x30 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_expanded_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if message_type == 0x2C then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if message_type == 0x2D then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if message_type == 0x31 then
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_header = {}

-- Size: Message Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_header.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.message_length.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.message_type.size

-- Display: Message Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_edgxequities_depthofbook_pitch_v2_41_29.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, message_type = cboe_edgxequities_depthofbook_pitch_v2_41_29.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message_header, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.message = {}

-- Display: Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_edgxequities_depthofbook_pitch_v2_41_29.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 18 branches
  index = cboe_edgxequities_depthofbook_pitch_v2_41_29.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_edgxequities_depthofbook_pitch_v2_41_29.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.message, buffer(offset, 0))
    local current = cboe_edgxequities_depthofbook_pitch_v2_41_29.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_edgxequities_depthofbook_pitch_v2_41_29.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.packet_header = {}

-- Size: Packet Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.packet_header.size =
  cboe_edgxequities_depthofbook_pitch_v2_41_29.length.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.count.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.unit.size + 
  cboe_edgxequities_depthofbook_pitch_v2_41_29.sequence.size

-- Display: Packet Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_edgxequities_depthofbook_pitch_v2_41_29.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_edgxequities_depthofbook_pitch_v2_41_29.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_edgxequities_depthofbook_pitch_v2_41_29.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_edgxequities_depthofbook_pitch_v2_41_29.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_edgxequities_depthofbook_pitch_v2_41_29.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.fields.packet_header, buffer(offset, 0))
    local index = cboe_edgxequities_depthofbook_pitch_v2_41_29.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_edgxequities_depthofbook_pitch_v2_41_29.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_edgxequities_depthofbook_pitch_v2_41_29.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_edgxequities_depthofbook_pitch_v2_41_29.packet = {}

-- Dissect Packet
cboe_edgxequities_depthofbook_pitch_v2_41_29.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_edgxequities_depthofbook_pitch_v2_41_29.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_edgxequities_depthofbook_pitch_v2_41_29.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.init()
end

-- Dissector for Cboe EdgxEquities DepthOfBook Pitch 2.41.29
function omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_edgxequities_depthofbook_pitch_v2_41_29, buffer(), omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.description, "("..buffer:len().." Bytes)")
  return cboe_edgxequities_depthofbook_pitch_v2_41_29.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_edgxequities_depthofbook_pitch_v2_41_29)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of Udp packet
cboe_edgxequities_depthofbook_pitch_v2_41_29.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe EdgxEquities DepthOfBook Pitch 2.41.29 (Udp)
local function omi_cboe_edgxequities_depthofbook_pitch_v2_41_29_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_edgxequities_depthofbook_pitch_v2_41_29.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_edgxequities_depthofbook_pitch_v2_41_29
  omi_cboe_edgxequities_depthofbook_pitch_v2_41_29.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe EdgxEquities DepthOfBook Pitch 2.41.29
omi_cboe_edgxequities_depthofbook_pitch_v2_41_29:register_heuristic("udp", omi_cboe_edgxequities_depthofbook_pitch_v2_41_29_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
