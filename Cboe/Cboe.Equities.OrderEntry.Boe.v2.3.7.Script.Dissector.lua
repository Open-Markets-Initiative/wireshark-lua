-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Equities OrderEntry Boe 2.3.7 Protocol
local cboe_equities_orderentry_boe_v2_3_7 = Proto("Cboe.Equities.OrderEntry.Boe.v2.3.7.Lua", "Cboe Equities OrderEntry Boe 2.3.7")

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

-- Cboe Equities OrderEntry Boe 2.3.7 Fields
cboe_equities_orderentry_boe_v2_3_7.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.equities.orderentry.boe.v2.3.7.clordid", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.flags = ProtoField.new("Flags", "cboe.equities.orderentry.boe.v2.3.7.flags", ftypes.UINT8)
cboe_equities_orderentry_boe_v2_3_7.fields.last_received_sequence_number = ProtoField.new("Last Received Sequence Number", "cboe.equities.orderentry.boe.v2.3.7.lastreceivedsequencenumber", ftypes.UINT32)
cboe_equities_orderentry_boe_v2_3_7.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.equities.orderentry.boe.v2.3.7.loginrequestmessage", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.equities.orderentry.boe.v2.3.7.loginresponsemessage", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.equities.orderentry.boe.v2.3.7.loginresponsestatus", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.equities.orderentry.boe.v2.3.7.loginresponsetext", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.logout_message = ProtoField.new("Logout Message", "cboe.equities.orderentry.boe.v2.3.7.logoutmessage", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.equities.orderentry.boe.v2.3.7.logoutreason", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.equities.orderentry.boe.v2.3.7.logoutreasontext", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.equities.orderentry.boe.v2.3.7.matchingunit", ftypes.UINT8)
cboe_equities_orderentry_boe_v2_3_7.fields.message = ProtoField.new("Message", "cboe.equities.orderentry.boe.v2.3.7.message", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.message_header = ProtoField.new("Message Header", "cboe.equities.orderentry.boe.v2.3.7.messageheader", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.message_length = ProtoField.new("Message Length", "cboe.equities.orderentry.boe.v2.3.7.messagelength", ftypes.UINT16)
cboe_equities_orderentry_boe_v2_3_7.fields.message_type = ProtoField.new("Message Type", "cboe.equities.orderentry.boe.v2.3.7.messagetype", ftypes.UINT8)
cboe_equities_orderentry_boe_v2_3_7.fields.new_order_message = ProtoField.new("New Order Message", "cboe.equities.orderentry.boe.v2.3.7.newordermessage", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.no_unspecified_unit_replay = ProtoField.new("No Unspecified Unit Replay", "cboe.equities.orderentry.boe.v2.3.7.nounspecifiedunitreplay", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.number_of_param_groups = ProtoField.new("Number Of Param Groups", "cboe.equities.orderentry.boe.v2.3.7.numberofparamgroups", ftypes.UINT8)
cboe_equities_orderentry_boe_v2_3_7.fields.number_of_return_bitfields = ProtoField.new("Number Of Return Bitfields", "cboe.equities.orderentry.boe.v2.3.7.numberofreturnbitfields", ftypes.UINT8)
cboe_equities_orderentry_boe_v2_3_7.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.equities.orderentry.boe.v2.3.7.numberofunits", ftypes.UINT8)
cboe_equities_orderentry_boe_v2_3_7.fields.order_qty = ProtoField.new("Order Qty", "cboe.equities.orderentry.boe.v2.3.7.orderqty", ftypes.UINT32)
cboe_equities_orderentry_boe_v2_3_7.fields.packet = ProtoField.new("Packet", "cboe.equities.orderentry.boe.v2.3.7.packet", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.param_group = ProtoField.new("Param Group", "cboe.equities.orderentry.boe.v2.3.7.paramgroup", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.param_group_length = ProtoField.new("Param Group Length", "cboe.equities.orderentry.boe.v2.3.7.paramgrouplength", ftypes.UINT16)
cboe_equities_orderentry_boe_v2_3_7.fields.param_group_type = ProtoField.new("Param Group Type", "cboe.equities.orderentry.boe.v2.3.7.paramgrouptype", ftypes.UINT8)
cboe_equities_orderentry_boe_v2_3_7.fields.param_header = ProtoField.new("Param Header", "cboe.equities.orderentry.boe.v2.3.7.paramheader", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.parameter = ProtoField.new("Parameter", "cboe.equities.orderentry.boe.v2.3.7.parameter", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.password = ProtoField.new("Password", "cboe.equities.orderentry.boe.v2.3.7.password", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.return_bitfield = ProtoField.new("Return Bitfield", "cboe.equities.orderentry.boe.v2.3.7.returnbitfield", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.return_bitfields = ProtoField.new("Return Bitfields", "cboe.equities.orderentry.boe.v2.3.7.returnbitfields", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.equities.orderentry.boe.v2.3.7.sequencenumber", ftypes.UINT32)
cboe_equities_orderentry_boe_v2_3_7.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.equities.orderentry.boe.v2.3.7.sessionsubid", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.side = ProtoField.new("Side", "cboe.equities.orderentry.boe.v2.3.7.side", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.equities.orderentry.boe.v2.3.7.startofmessage", ftypes.UINT16)
cboe_equities_orderentry_boe_v2_3_7.fields.unit_number = ProtoField.new("Unit Number", "cboe.equities.orderentry.boe.v2.3.7.unitnumber", ftypes.UINT8)
cboe_equities_orderentry_boe_v2_3_7.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.equities.orderentry.boe.v2.3.7.unitsequence", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.unit_sequences = ProtoField.new("Unit Sequences", "cboe.equities.orderentry.boe.v2.3.7.unitsequences", ftypes.STRING)
cboe_equities_orderentry_boe_v2_3_7.fields.username = ProtoField.new("Username", "cboe.equities.orderentry.boe.v2.3.7.username", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Equities OrderEntry Boe 2.3.7 Element Dissection Options
show.login_request_message = true
show.login_response_message = true
show.logout_message = true
show.message_header = true
show.new_order_message = true
show.packet = true
show.param_group = true
show.param_header = true
show.return_bitfield = true
show.return_bitfields = true
show.unit_sequence = true
show.unit_sequences = true
show.message = false
show.parameter = false

-- Register Cboe Equities OrderEntry Boe 2.3.7 Show Options
cboe_equities_orderentry_boe_v2_3_7.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_login_response_message = Pref.bool("Show Login Response Message", show.login_response_message, "Parse and add Login Response Message to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_param_group = Pref.bool("Show Param Group", show.param_group, "Parse and add Param Group to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_param_header = Pref.bool("Show Param Header", show.param_header, "Parse and add Param Header to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_return_bitfield = Pref.bool("Show Return Bitfield", show.return_bitfield, "Parse and add Return Bitfield to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_return_bitfields = Pref.bool("Show Return Bitfields", show.return_bitfields, "Parse and add Return Bitfields to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_unit_sequence = Pref.bool("Show Unit Sequence", show.unit_sequence, "Parse and add Unit Sequence to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_unit_sequences = Pref.bool("Show Unit Sequences", show.unit_sequences, "Parse and add Unit Sequences to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_equities_orderentry_boe_v2_3_7.prefs.show_parameter = Pref.bool("Show Parameter", show.parameter, "Parse and add Parameter to protocol tree")

-- Handle changed preferences
function cboe_equities_orderentry_boe_v2_3_7.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.login_request_message ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_login_request_message then
    show.login_request_message = cboe_equities_orderentry_boe_v2_3_7.prefs.show_login_request_message
    changed = true
  end
  if show.login_response_message ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_login_response_message then
    show.login_response_message = cboe_equities_orderentry_boe_v2_3_7.prefs.show_login_response_message
    changed = true
  end
  if show.logout_message ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_logout_message then
    show.logout_message = cboe_equities_orderentry_boe_v2_3_7.prefs.show_logout_message
    changed = true
  end
  if show.message_header ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_message_header then
    show.message_header = cboe_equities_orderentry_boe_v2_3_7.prefs.show_message_header
    changed = true
  end
  if show.new_order_message ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_new_order_message then
    show.new_order_message = cboe_equities_orderentry_boe_v2_3_7.prefs.show_new_order_message
    changed = true
  end
  if show.packet ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_packet then
    show.packet = cboe_equities_orderentry_boe_v2_3_7.prefs.show_packet
    changed = true
  end
  if show.param_group ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_param_group then
    show.param_group = cboe_equities_orderentry_boe_v2_3_7.prefs.show_param_group
    changed = true
  end
  if show.param_header ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_param_header then
    show.param_header = cboe_equities_orderentry_boe_v2_3_7.prefs.show_param_header
    changed = true
  end
  if show.return_bitfield ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_return_bitfield then
    show.return_bitfield = cboe_equities_orderentry_boe_v2_3_7.prefs.show_return_bitfield
    changed = true
  end
  if show.return_bitfields ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_return_bitfields then
    show.return_bitfields = cboe_equities_orderentry_boe_v2_3_7.prefs.show_return_bitfields
    changed = true
  end
  if show.unit_sequence ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_unit_sequence then
    show.unit_sequence = cboe_equities_orderentry_boe_v2_3_7.prefs.show_unit_sequence
    changed = true
  end
  if show.unit_sequences ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_unit_sequences then
    show.unit_sequences = cboe_equities_orderentry_boe_v2_3_7.prefs.show_unit_sequences
    changed = true
  end
  if show.message ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_message then
    show.message = cboe_equities_orderentry_boe_v2_3_7.prefs.show_message
    changed = true
  end
  if show.parameter ~= cboe_equities_orderentry_boe_v2_3_7.prefs.show_parameter then
    show.parameter = cboe_equities_orderentry_boe_v2_3_7.prefs.show_parameter
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Equities OrderEntry Boe 2.3.7
-----------------------------------------------------------------------

-- Size: Order Qty
size_of.order_qty = 4

-- Display: Order Qty
display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
dissect.order_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_qty)
  local value = range:le_uint()
  local display = display.order_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.order_qty, range, value, display)

  return offset + size_of.order_qty
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  return "Side: "..value
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.side, range, value, display)

  return offset + size_of.side
end

-- Size: Cl Ord Id
size_of.cl_ord_id = 20

-- Display: Cl Ord Id
display.cl_ord_id = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cl_ord_id)
  local value = range:string()
  local display = display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.cl_ord_id, range, value, display)

  return offset + size_of.cl_ord_id
end

-- Display: New Order Message
display.new_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Message
dissect.new_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index = dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
dissect.new_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_message then
    local range = buffer(offset, 25)
    local display = display.new_order_message(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.new_order_message, range, display)
  end

  return dissect.new_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
size_of.sequence_number = 4

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence_number)
  local value = range:le_uint()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.sequence_number, range, value, display)

  return offset + size_of.sequence_number
end

-- Size: Unit Number
size_of.unit_number = 1

-- Display: Unit Number
display.unit_number = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
dissect.unit_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit_number)
  local value = range:le_uint()
  local display = display.unit_number(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.unit_number, range, value, display)

  return offset + size_of.unit_number
end

-- Display: Unit Sequence
display.unit_sequence = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Sequence
dissect.unit_sequence_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index = dissect.unit_number(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
dissect.unit_sequence = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_sequence then
    local range = buffer(offset, 5)
    local display = display.unit_sequence(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.unit_sequence, range, display)
  end

  return dissect.unit_sequence_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Units
size_of.number_of_units = 1

-- Display: Number Of Units
display.number_of_units = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
dissect.number_of_units = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.number_of_units)
  local value = range:le_uint()
  local display = display.number_of_units(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.number_of_units, range, value, display)

  return offset + size_of.number_of_units
end

-- Size: Last Received Sequence Number
size_of.last_received_sequence_number = 4

-- Display: Last Received Sequence Number
display.last_received_sequence_number = function(value)
  return "Last Received Sequence Number: "..value
end

-- Dissect: Last Received Sequence Number
dissect.last_received_sequence_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_received_sequence_number)
  local value = range:le_uint()
  local display = display.last_received_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.last_received_sequence_number, range, value, display)

  return offset + size_of.last_received_sequence_number
end

-- Size: Logout Reason Text
size_of.logout_reason_text = 60

-- Display: Logout Reason Text
display.logout_reason_text = function(value)
  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
dissect.logout_reason_text = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.logout_reason_text)
  local value = range:string()
  local display = display.logout_reason_text(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.logout_reason_text, range, value, display)

  return offset + size_of.logout_reason_text
end

-- Size: Logout Reason
size_of.logout_reason = 1

-- Display: Logout Reason
display.logout_reason = function(value)
  return "Logout Reason: "..value
end

-- Dissect: Logout Reason
dissect.logout_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.logout_reason)
  local value = range:string()
  local display = display.logout_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.logout_reason, range, value, display)

  return offset + size_of.logout_reason
end

-- Calculate runtime size: Logout Message
size_of.logout_message = function(buffer, offset)
  local index = 0

  index = index + 66

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Logout Message
display.logout_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Message
dissect.logout_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String
  index = dissect.logout_reason(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index = dissect.logout_reason_text(buffer, index, packet, parent)

  -- Last Received Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_received_sequence_number(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_units(buffer, index, packet, parent)

  -- Unit Sequence: Struct of 2 fields
  local unit_sequence_count = buffer(index - 1, 1):le_uint()
  for i = 1, unit_sequence_count do
    index = dissect.unit_sequence(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Logout Message
dissect.logout_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.logout_message then
    local length = size_of.logout_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logout_message(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.logout_message, range, display)
  end

  return dissect.logout_message_fields(buffer, offset, packet, parent)
end

-- Size: Flags
size_of.flags = 1

-- Display: Flags
display.flags = function(value)
  return "Flags: "..value
end

-- Dissect: Flags
dissect.flags = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.flags)
  local value = range:le_uint()
  local display = display.flags(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.flags, range, value, display)

  return offset + size_of.flags
end

-- Display: Return Bitfield
display.return_bitfield = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Return Bitfield
dissect.return_bitfield_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Flags: 1 Byte Unsigned Fixed Width Integer
  index = dissect.flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Return Bitfield
dissect.return_bitfield = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.return_bitfield then
    local range = buffer(offset, 1)
    local display = display.return_bitfield(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.return_bitfield, range, display)
  end

  return dissect.return_bitfield_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Return Bitfields
size_of.number_of_return_bitfields = 1

-- Display: Number Of Return Bitfields
display.number_of_return_bitfields = function(value)
  return "Number Of Return Bitfields: "..value
end

-- Dissect: Number Of Return Bitfields
dissect.number_of_return_bitfields = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.number_of_return_bitfields)
  local value = range:le_uint()
  local display = display.number_of_return_bitfields(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.number_of_return_bitfields, range, value, display)

  return offset + size_of.number_of_return_bitfields
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  if value == 0x37 then
    return "Message Type: Login Request Message (0x37)"
  end
  if value == 0x02 then
    return "Message Type: Logout Request Message (0x02)"
  end
  if value == 0x03 then
    return "Message Type: Client Heartbeat Message (0x03)"
  end
  if value == 0x24 then
    return "Message Type: Login Response Message (0x24)"
  end
  if value == 0x02 then
    return "Message Type: Logout Message (0x02)"
  end
  if value == 0x09 then
    return "Message Type: Server Heartbeat Message (0x09)"
  end
  if value == 0x13 then
    return "Message Type: Replay Complete Message (0x13)"
  end
  if value == 0x38 then
    return "Message Type: New Order Message (0x38)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_type)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.message_type, range, value, display)

  return offset + size_of.message_type
end

-- Calculate runtime size: Return Bitfields
size_of.return_bitfields = function(buffer, offset)
  local index = 0

  index = index + 2

  -- Calculate field size from count
  local return_bitfield_count = buffer(offset + index - 1, 1):le_uint()
  index = index + return_bitfield_count * 1

  return index
end

-- Display: Return Bitfields
display.return_bitfields = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Return Bitfields
dissect.return_bitfields_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index = dissect.message_type(buffer, index, packet, parent)

  -- Number Of Return Bitfields: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_return_bitfields(buffer, index, packet, parent)

  -- Return Bitfield: Struct of 1 fields
  local return_bitfield_count = buffer(index - 1, 1):le_uint()
  for i = 1, return_bitfield_count do
    index = dissect.return_bitfield(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Return Bitfields
dissect.return_bitfields = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.return_bitfields then
    local length = size_of.return_bitfields(buffer, offset)
    local range = buffer(offset, length)
    local display = display.return_bitfields(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.return_bitfields, range, display)
  end

  return dissect.return_bitfields_fields(buffer, offset, packet, parent)
end

-- Size: No Unspecified Unit Replay
size_of.no_unspecified_unit_replay = 1

-- Display: No Unspecified Unit Replay
display.no_unspecified_unit_replay = function(value)
  if value == "0" then
    return "No Unspecified Unit Replay: False (0)"
  end
  if value == "1" then
    return "No Unspecified Unit Replay: True (1)"
  end
  if value == "T" then
    return "No Unspecified Unit Replay: Test (T)"
  end
  if value == "U" then
    return "No Unspecified Unit Replay: User Requested (U)"
  end
  if value == "E" then
    return "No Unspecified Unit Replay: End Of Day (E)"
  end
  if value == "A" then
    return "No Unspecified Unit Replay: Administrative (A)"
  end
  if value == "!" then
    return "No Unspecified Unit Replay: Protocol Violation (!)"
  end
  if value == "1" then
    return "No Unspecified Unit Replay: Buy (1)"
  end
  if value == "2" then
    return "No Unspecified Unit Replay: Sell (2)"
  end
  if value == "5" then
    return "No Unspecified Unit Replay: Sell Short (5)"
  end
  if value == "6" then
    return "No Unspecified Unit Replay: Sell Short Exempt (6)"
  end

  return "No Unspecified Unit Replay: Unknown("..value..")"
end

-- Dissect: No Unspecified Unit Replay
dissect.no_unspecified_unit_replay = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.no_unspecified_unit_replay)
  local value = range:string()
  local display = display.no_unspecified_unit_replay(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.no_unspecified_unit_replay, range, value, display)

  return offset + size_of.no_unspecified_unit_replay
end

-- Calculate runtime size: Unit Sequences
size_of.unit_sequences = function(buffer, offset)
  local index = 0

  index = index + 2

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Unit Sequences
display.unit_sequences = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Sequences
dissect.unit_sequences_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- No Unspecified Unit Replay: 1 Byte Ascii String Enum with 11 values
  index = dissect.no_unspecified_unit_replay(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_units(buffer, index, packet, parent)

  -- Unit Sequence: Struct of 2 fields
  local unit_sequence_count = buffer(index - 1, 1):le_uint()
  for i = 1, unit_sequence_count do
    index = dissect.unit_sequence(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Unit Sequences
dissect.unit_sequences = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.unit_sequences then
    local length = size_of.unit_sequences(buffer, offset)
    local range = buffer(offset, length)
    local display = display.unit_sequences(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.unit_sequences, range, display)
  end

  return dissect.unit_sequences_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Parameter
size_of.parameter = function(buffer, offset, paramgrouptype)
  -- Size of Unit Sequences
  if paramgrouptype == 0x80 then
    return size_of.unit_sequences(buffer, offset)
  end
  -- Size of Return Bitfields
  if paramgrouptype == 0x81 then
    return size_of.return_bitfields(buffer, offset)
  end

  return 0
end

-- Display: Parameter
display.parameter = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Parameter
dissect.parameter_branches = function(buffer, offset, packet, parent, paramgrouptype)
  -- Dissect Unit Sequences
  if paramgrouptype == 0x80 then
    return dissect.unit_sequences(buffer, offset, packet, parent)
  end
  -- Dissect Return Bitfields
  if paramgrouptype == 0x81 then
    return dissect.return_bitfields(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Parameter
dissect.parameter = function(buffer, offset, packet, parent, code)
  if not show.parameter then
    return dissect.parameter_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.parameter(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.parameter(buffer, packet, parent)
  local element = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.parameter, range, display)

  return dissect.parameter_branches(buffer, offset, packet, parent, code)
end

-- Size: Param Group Type
size_of.param_group_type = 1

-- Display: Param Group Type
display.param_group_type = function(value)
  if value == 0x80 then
    return "Param Group Type: Unit Sequences (0x80)"
  end
  if value == 0x81 then
    return "Param Group Type: Return Bitfields (0x81)"
  end

  return "Param Group Type: Unknown("..value..")"
end

-- Dissect: Param Group Type
dissect.param_group_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.param_group_type)
  local value = range:le_uint()
  local display = display.param_group_type(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.param_group_type, range, value, display)

  return offset + size_of.param_group_type
end

-- Size: Param Group Length
size_of.param_group_length = 2

-- Display: Param Group Length
display.param_group_length = function(value)
  return "Param Group Length: "..value
end

-- Dissect: Param Group Length
dissect.param_group_length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.param_group_length)
  local value = range:le_uint()
  local display = display.param_group_length(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.param_group_length, range, value, display)

  return offset + size_of.param_group_length
end

-- Display: Param Header
display.param_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Param Header
dissect.param_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Param Group Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.param_group_length(buffer, index, packet, parent)

  -- Param Group Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.param_group_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Param Header
dissect.param_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.param_header then
    local range = buffer(offset, 3)
    local display = display.param_header(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.param_header, range, display)
  end

  return dissect.param_header_fields(buffer, offset, packet, parent)
end

-- Size Of: Param Group
size_of.param_group = function(buffer, offset)
  return buffer(offset, size_of.param_group_length):le_uint()
end

-- Display: Param Group
display.param_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Param Group
dissect.param_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Param Header: Struct of 2 fields
  index = dissect.param_header(buffer, index, packet, parent)

  -- Parameter: Runtime Type with 2 branches
  local code = buffer(index - 1, 1):le_uint()
  index = dissect.parameter(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Param Group
dissect.param_group = function(buffer, offset, packet, parent)
  -- Parse runtime struct size
  local length = size_of.param_group(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.param_group then
    local range = buffer(offset, length)
    local display = display.param_group(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.param_group, range, display)
  end

  dissect.param_group_fields(buffer, offset, packet, parent)
  return offset + length
end

-- Size: Number Of Param Groups
size_of.number_of_param_groups = 1

-- Display: Number Of Param Groups
display.number_of_param_groups = function(value)
  return "Number Of Param Groups: "..value
end

-- Dissect: Number Of Param Groups
dissect.number_of_param_groups = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.number_of_param_groups)
  local value = range:le_uint()
  local display = display.number_of_param_groups(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.number_of_param_groups, range, value, display)

  return offset + size_of.number_of_param_groups
end

-- Size: Login Response Text
size_of.login_response_text = 60

-- Display: Login Response Text
display.login_response_text = function(value)
  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
dissect.login_response_text = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.login_response_text)
  local value = range:string()
  local display = display.login_response_text(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.login_response_text, range, value, display)

  return offset + size_of.login_response_text
end

-- Size: Login Response Status
size_of.login_response_status = 1

-- Display: Login Response Status
display.login_response_status = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized (N)"
  end
  if value == "D" then
    return "Login Response Status: Session Is Disabled (D)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end
  if value == "Q" then
    return "Login Response Status: Sequence Ahead In Login Message (Q)"
  end
  if value == "I" then
    return "Login Response Status: Invalid Unit Given In Login Message (I)"
  end
  if value == "F" then
    return "Login Response Status: Invalid Return Bit Field In Login Message (F)"
  end
  if value == "M" then
    return "Login Response Status: Invalid Login Request Message Structure (M)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
dissect.login_response_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.login_response_status)
  local value = range:string()
  local display = display.login_response_status(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.login_response_status, range, value, display)

  return offset + size_of.login_response_status
end

-- Calculate runtime size: Login Response Message
size_of.login_response_message = function(buffer, offset)
  local index = 0

  index = index + 67

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  index = index + 1

  -- Parse runtime size of: Param Group
  index = index + buffer(offset + index - 0, 2):le_uint()

  return index
end

-- Display: Login Response Message
display.login_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Response Message
dissect.login_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 9 values
  index = dissect.login_response_status(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index = dissect.login_response_text(buffer, index, packet, parent)

  -- No Unspecified Unit Replay: 1 Byte Ascii String Enum with 11 values
  index = dissect.no_unspecified_unit_replay(buffer, index, packet, parent)

  -- Last Received Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_received_sequence_number(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_units(buffer, index, packet, parent)

  -- Unit Sequence: Struct of 2 fields
  local unit_sequence_count = buffer(index - 1, 1):le_uint()
  for i = 1, unit_sequence_count do
    index = dissect.unit_sequence(buffer, index, packet, parent)
  end

  -- Number Of Param Groups: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_param_groups(buffer, index, packet, parent)

  -- Param Group: Struct of 2 fields
  local param_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, param_group_count do
    index = dissect.param_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Login Response Message
dissect.login_response_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_response_message then
    local length = size_of.login_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.login_response_message(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.login_response_message, range, display)
  end

  return dissect.login_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Password
size_of.password = 10

-- Display: Password
display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
dissect.password = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.password)
  local value = range:string()
  local display = display.password(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.password, range, value, display)

  return offset + size_of.password
end

-- Size: Username
size_of.username = 4

-- Display: Username
display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
dissect.username = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.username)
  local value = range:string()
  local display = display.username(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.username, range, value, display)

  return offset + size_of.username
end

-- Size: Session Sub Id
size_of.session_sub_id = 4

-- Display: Session Sub Id
display.session_sub_id = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
dissect.session_sub_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session_sub_id)
  local value = range:string()
  local display = display.session_sub_id(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.session_sub_id, range, value, display)

  return offset + size_of.session_sub_id
end

-- Calculate runtime size: Login Request Message
size_of.login_request_message = function(buffer, offset)
  local index = 0

  index = index + 19

  -- Parse runtime size of: Param Group
  index = index + buffer(offset + index - 0, 2):le_uint()

  return index
end

-- Display: Login Request Message
display.login_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request Message
dissect.login_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: 4 Byte Ascii String
  index = dissect.session_sub_id(buffer, index, packet, parent)

  -- Username: 4 Byte Ascii String
  index = dissect.username(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index = dissect.password(buffer, index, packet, parent)

  -- Number Of Param Groups: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_param_groups(buffer, index, packet, parent)

  -- Param Group: Struct of 2 fields
  local param_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, param_group_count do
    index = dissect.param_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Login Request Message
dissect.login_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_request_message then
    local length = size_of.login_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.login_request_message(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.login_request_message, range, display)
  end

  return dissect.login_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Message
size_of.message = function(buffer, offset, messagetype)
  -- Size of Login Request Message
  if messagetype == 0x37 then
    return size_of.login_request_message(buffer, offset)
  end
  -- Size of Logout Request Message
  if messagetype == 0x02 then
    return 0
  end
  -- Size of Client Heartbeat Message
  if messagetype == 0x03 then
    return 0
  end
  -- Size of Login Response Message
  if messagetype == 0x24 then
    return size_of.login_response_message(buffer, offset)
  end
  -- Size of Logout Message
  if messagetype == 0x02 then
    return size_of.logout_message(buffer, offset)
  end
  -- Size of Server Heartbeat Message
  if messagetype == 0x09 then
    return 0
  end
  -- Size of Replay Complete Message
  if messagetype == 0x13 then
    return 0
  end
  -- Size of New Order Message
  if messagetype == 0x38 then
    return 25
  end

  return 0
end

-- Display: Message
display.message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message
dissect.message_branches = function(buffer, offset, packet, parent, messagetype)
  -- Dissect Login Request Message
  if messagetype == 0x37 then
    return dissect.login_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if messagetype == 0x02 then
  end
  -- Dissect Client Heartbeat Message
  if messagetype == 0x03 then
  end
  -- Dissect Login Response Message
  if messagetype == 0x24 then
    return dissect.login_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if messagetype == 0x02 then
    return dissect.logout_message(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Message
  if messagetype == 0x09 then
  end
  -- Dissect Replay Complete Message
  if messagetype == 0x13 then
  end
  -- Dissect New Order Message
  if messagetype == 0x38 then
    return dissect.new_order_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent, code)
  if not show.message then
    return dissect.message_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.message(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.message(buffer, packet, parent)
  local element = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.message, range, display)

  return dissect.message_branches(buffer, offset, packet, parent, code)
end

-- Size: Matching Unit
size_of.matching_unit = 1

-- Display: Matching Unit
display.matching_unit = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
dissect.matching_unit = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.matching_unit)
  local value = range:le_uint()
  local display = display.matching_unit(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.matching_unit, range, value, display)

  return offset + size_of.matching_unit
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_length)
  local value = range:le_uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.message_length, range, value, display)

  return offset + size_of.message_length
end

-- Size: Start Of Message
size_of.start_of_message = 2

-- Display: Start Of Message
display.start_of_message = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
dissect.start_of_message = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.start_of_message)
  local value = range:le_uint()
  local display = display.start_of_message(value, buffer, offset, packet, parent)

  parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.start_of_message, range, value, display)

  return offset + size_of.start_of_message
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index = dissect.start_of_message(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index = dissect.message_type(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index = dissect.matching_unit(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 10)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_equities_orderentry_boe_v2_3_7.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 5 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Message: Runtime Type with 8 branches
  local code = buffer(index - 6, 1):le_uint()
  index = dissect.message(buffer, index, packet, parent, code)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_equities_orderentry_boe_v2_3_7.init()
end

-- Dissector for Cboe Equities OrderEntry Boe 2.3.7
function cboe_equities_orderentry_boe_v2_3_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_equities_orderentry_boe_v2_3_7.name

  -- Dissect protocol
  local protocol = parent:add(cboe_equities_orderentry_boe_v2_3_7, buffer(), cboe_equities_orderentry_boe_v2_3_7.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, cboe_equities_orderentry_boe_v2_3_7)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_equities_orderentry_boe_v2_3_7_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Equities OrderEntry Boe 2.3.7
local function cboe_equities_orderentry_boe_v2_3_7_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_equities_orderentry_boe_v2_3_7_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_equities_orderentry_boe_v2_3_7
  cboe_equities_orderentry_boe_v2_3_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Equities OrderEntry Boe 2.3.7
cboe_equities_orderentry_boe_v2_3_7:register_heuristic("tcp", cboe_equities_orderentry_boe_v2_3_7_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.3.7
--   Date: Wednesday, August 7, 2019
--   Specification: Cboe_US_Equities_BOE_Specification.pdf
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
