-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Coinbase Derivatives OrdersApi Sbe 1.3 Protocol
local coinbase_derivatives_ordersapi_sbe_v1_3 = Proto("Coinbase.Derivatives.OrdersApi.Sbe.v1.3.Lua", "Coinbase Derivatives OrdersApi Sbe 1.3")

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

-- Coinbase Derivatives OrdersApi Sbe 1.3 Fields
coinbase_derivatives_ordersapi_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "coinbase.derivatives.ordersapi.sbe.v1.3.blocklength", ftypes.UINT16)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.correlation_id = ProtoField.new("Correlation Id", "coinbase.derivatives.ordersapi.sbe.v1.3.correlationid", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.flags = ProtoField.new("Flags", "coinbase.derivatives.ordersapi.sbe.v1.3.flags", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.from_sequence_number = ProtoField.new("From Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.3.fromsequencenumber", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.gap_fill_message = ProtoField.new("Gap Fill Message", "coinbase.derivatives.ordersapi.sbe.v1.3.gapfillmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.heartbeat_interval_seconds = ProtoField.new("Heartbeat Interval Seconds", "coinbase.derivatives.ordersapi.sbe.v1.3.heartbeatintervalseconds", ftypes.INT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "coinbase.derivatives.ordersapi.sbe.v1.3.heartbeatmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_processed_seq_no = ProtoField.new("Last Processed Seq No", "coinbase.derivatives.ordersapi.sbe.v1.3.lastprocessedseqno", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.logged_out_message = ProtoField.new("Logged Out Message", "coinbase.derivatives.ordersapi.sbe.v1.3.loggedoutmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.logon_conf_message = ProtoField.new("Logon Conf Message", "coinbase.derivatives.ordersapi.sbe.v1.3.logonconfmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.logon_message = ProtoField.new("Logon Message", "coinbase.derivatives.ordersapi.sbe.v1.3.logonmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.logout_message = ProtoField.new("Logout Message", "coinbase.derivatives.ordersapi.sbe.v1.3.logoutmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.message_header = ProtoField.new("Message Header", "coinbase.derivatives.ordersapi.sbe.v1.3.messageheader", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "coinbase.derivatives.ordersapi.sbe.v1.3.messagelength", ftypes.UINT16)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_sequence_number = ProtoField.new("New Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.3.newsequencenumber", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.packet = ProtoField.new("Packet", "coinbase.derivatives.ordersapi.sbe.v1.3.packet", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.padding = ProtoField.new("Padding", "coinbase.derivatives.ordersapi.sbe.v1.3.padding", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.password = ProtoField.new("Password", "coinbase.derivatives.ordersapi.sbe.v1.3.password", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.payload = ProtoField.new("Payload", "coinbase.derivatives.ordersapi.sbe.v1.3.payload", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.protocol_id = ProtoField.new("Protocol Id", "coinbase.derivatives.ordersapi.sbe.v1.3.protocolid", ftypes.UINT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.reason = ProtoField.new("Reason", "coinbase.derivatives.ordersapi.sbe.v1.3.reason", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.resend_request_message = ProtoField.new("Resend Request Message", "coinbase.derivatives.ordersapi.sbe.v1.3.resendrequestmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.reserved = ProtoField.new("Reserved", "coinbase.derivatives.ordersapi.sbe.v1.3.reserved", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.reset_seq_num = ProtoField.new("Reset Seq Num", "coinbase.derivatives.ordersapi.sbe.v1.3.resetseqnum", ftypes.INT8)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "coinbase.derivatives.ordersapi.sbe.v1.3.sbemessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "coinbase.derivatives.ordersapi.sbe.v1.3.schemaid", ftypes.UINT16)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.send_time_epoch_nanos = ProtoField.new("Send Time Epoch Nanos", "coinbase.derivatives.ordersapi.sbe.v1.3.sendtimeepochnanos", ftypes.INT64)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.3.sequencenumber", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "coinbase.derivatives.ordersapi.sbe.v1.3.templateid", ftypes.UINT16)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.test_request_message = ProtoField.new("Test Request Message", "coinbase.derivatives.ordersapi.sbe.v1.3.testrequestmessage", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.to_sequence_number = ProtoField.new("To Sequence Number", "coinbase.derivatives.ordersapi.sbe.v1.3.tosequencenumber", ftypes.UINT32)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.username = ProtoField.new("Username", "coinbase.derivatives.ordersapi.sbe.v1.3.username", ftypes.STRING)
coinbase_derivatives_ordersapi_sbe_v1_3.fields.version = ProtoField.new("Version", "coinbase.derivatives.ordersapi.sbe.v1.3.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Coinbase Derivatives OrdersApi Sbe 1.3 Element Dissection Options
show.gap_fill_message = true
show.heartbeat_message = true
show.logged_out_message = true
show.logon_conf_message = true
show.logon_message = true
show.logout_message = true
show.message_header = true
show.packet = true
show.resend_request_message = true
show.sbe_message = true
show.test_request_message = true
show.payload = false

-- Register Coinbase Derivatives OrdersApi Sbe 1.3 Show Options
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_gap_fill_message = Pref.bool("Show Gap Fill Message", show.gap_fill_message, "Parse and add Gap Fill Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_heartbeat_message = Pref.bool("Show Heartbeat Message", show.heartbeat_message, "Parse and add Heartbeat Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logged_out_message = Pref.bool("Show Logged Out Message", show.logged_out_message, "Parse and add Logged Out Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_conf_message = Pref.bool("Show Logon Conf Message", show.logon_conf_message, "Parse and add Logon Conf Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_resend_request_message = Pref.bool("Show Resend Request Message", show.resend_request_message, "Parse and add Resend Request Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_test_request_message = Pref.bool("Show Test Request Message", show.test_request_message, "Parse and add Test Request Message to protocol tree")
coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function coinbase_derivatives_ordersapi_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.gap_fill_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_gap_fill_message then
    show.gap_fill_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_gap_fill_message
    changed = true
  end
  if show.heartbeat_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_heartbeat_message then
    show.heartbeat_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_heartbeat_message
    changed = true
  end
  if show.logged_out_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logged_out_message then
    show.logged_out_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logged_out_message
    changed = true
  end
  if show.logon_conf_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_conf_message then
    show.logon_conf_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_conf_message
    changed = true
  end
  if show.logon_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_message then
    show.logon_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logon_message
    changed = true
  end
  if show.logout_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logout_message then
    show.logout_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_logout_message
    changed = true
  end
  if show.message_header ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_message_header then
    show.message_header = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_message_header
    changed = true
  end
  if show.packet ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_packet then
    show.packet = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.resend_request_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_resend_request_message then
    show.resend_request_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_resend_request_message
    changed = true
  end
  if show.sbe_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.test_request_message ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_test_request_message then
    show.test_request_message = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_test_request_message
    changed = true
  end
  if show.payload ~= coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_payload then
    show.payload = coinbase_derivatives_ordersapi_sbe_v1_3.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Coinbase Derivatives OrdersApi Sbe 1.3
-----------------------------------------------------------------------

-- Display: Padding
display.padding = function(value)
  return "Padding: "..value
end

-- Dissect runtime sized field: Padding
dissect.padding = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = display.padding(value, buffer, offset, packet, parent, size)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.padding, range, value, display)

  return offset + size
end

-- Size: New Sequence Number
size_of.new_sequence_number = 4

-- Display: New Sequence Number
display.new_sequence_number = function(value)
  return "New Sequence Number: "..value
end

-- Dissect: New Sequence Number
dissect.new_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.new_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.new_sequence_number(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.new_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Gap Fill Message
size_of.gap_fill_message = function(buffer, offset)
  local index = 0

  index = index + size_of.new_sequence_number

  -- Parse runtime size of: Padding
  index = index + buffer(offset + index - 34, 2):le_uint()

  return index
end

-- Display: Gap Fill Message
display.gap_fill_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gap Fill Message
dissect.gap_fill_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, new_sequence_number = dissect.new_sequence_number(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 30, 2):le_uint()

  -- Runtime Size Of: Padding
  local size_of_padding = message_length - (index - offset)

  -- Padding: 4 Byte Unsigned Fixed Width Integer
  index = dissect.padding(buffer, index, packet, parent, size_of_padding)

  return index
end

-- Dissect: Gap Fill Message
dissect.gap_fill_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.gap_fill_message then
    local length = size_of.gap_fill_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.gap_fill_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.gap_fill_message, range, display)
  end

  return dissect.gap_fill_message_fields(buffer, offset, packet, parent)
end

-- Size: To Sequence Number
size_of.to_sequence_number = 4

-- Display: To Sequence Number
display.to_sequence_number = function(value)
  return "To Sequence Number: "..value
end

-- Dissect: To Sequence Number
dissect.to_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.to_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.to_sequence_number(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.to_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: From Sequence Number
size_of.from_sequence_number = 4

-- Display: From Sequence Number
display.from_sequence_number = function(value)
  return "From Sequence Number: "..value
end

-- Dissect: From Sequence Number
dissect.from_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.from_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.from_sequence_number(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.from_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Resend Request Message
size_of.resend_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.from_sequence_number

  index = index + size_of.to_sequence_number

  return index
end

-- Display: Resend Request Message
display.resend_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Resend Request Message
dissect.resend_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, from_sequence_number = dissect.from_sequence_number(buffer, index, packet, parent)

  -- To Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, to_sequence_number = dissect.to_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Request Message
dissect.resend_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.resend_request_message then
    local length = size_of.resend_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.resend_request_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.resend_request_message, range, display)
  end

  return dissect.resend_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Correlation Id
size_of.correlation_id = 8

-- Display: Correlation Id
display.correlation_id = function(value)
  return "Correlation Id: "..value
end

-- Dissect: Correlation Id
dissect.correlation_id = function(buffer, offset, packet, parent)
  local length = size_of.correlation_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.correlation_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.correlation_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Test Request Message
size_of.test_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.correlation_id

  return index
end

-- Display: Test Request Message
display.test_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Test Request Message
dissect.test_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = dissect.correlation_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Request Message
dissect.test_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.test_request_message then
    local length = size_of.test_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.test_request_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.test_request_message, range, display)
  end

  return dissect.test_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat Message
size_of.heartbeat_message = function(buffer, offset)
  local index = 0

  index = index + size_of.correlation_id

  return index
end

-- Display: Heartbeat Message
display.heartbeat_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat Message
dissect.heartbeat_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: 8 Byte Signed Fixed Width Integer
  index, correlation_id = dissect.correlation_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
dissect.heartbeat_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat_message then
    local length = size_of.heartbeat_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.heartbeat_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.heartbeat_message, range, display)
  end

  return dissect.heartbeat_message_fields(buffer, offset, packet, parent)
end

-- Size: Reason
size_of.reason = 64

-- Display: Reason
display.reason = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason: No Value"
  end

  return "Reason: "..value
end

-- Dissect: Reason
dissect.reason = function(buffer, offset, packet, parent)
  local length = size_of.reason
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = display.reason(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logged Out Message
size_of.logged_out_message = function(buffer, offset)
  local index = 0

  index = index + size_of.reason

  return index
end

-- Display: Logged Out Message
display.logged_out_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logged Out Message
dissect.logged_out_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 64 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Logged Out Message
dissect.logged_out_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logged_out_message then
    local length = size_of.logged_out_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logged_out_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.logged_out_message, range, display)
  end

  return dissect.logged_out_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logout Message
size_of.logout_message = function(buffer, offset)
  local index = 0

  index = index + size_of.reason

  return index
end

-- Display: Logout Message
display.logout_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Message
dissect.logout_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 64 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
dissect.logout_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_message then
    local length = size_of.logout_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logout_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.logout_message, range, display)
  end

  return dissect.logout_message_fields(buffer, offset, packet, parent)
end

-- Size: Heartbeat Interval Seconds
size_of.heartbeat_interval_seconds = 4

-- Display: Heartbeat Interval Seconds
display.heartbeat_interval_seconds = function(value)
  return "Heartbeat Interval Seconds: "..value
end

-- Dissect: Heartbeat Interval Seconds
dissect.heartbeat_interval_seconds = function(buffer, offset, packet, parent)
  local length = size_of.heartbeat_interval_seconds
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.heartbeat_interval_seconds(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.heartbeat_interval_seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Conf Message
size_of.logon_conf_message = function(buffer, offset)
  local index = 0

  index = index + size_of.heartbeat_interval_seconds

  return index
end

-- Display: Logon Conf Message
display.logon_conf_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Conf Message
dissect.logon_conf_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heartbeat Interval Seconds: 4 Byte Signed Fixed Width Integer
  index, heartbeat_interval_seconds = dissect.heartbeat_interval_seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Conf Message
dissect.logon_conf_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_conf_message then
    local length = size_of.logon_conf_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logon_conf_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.logon_conf_message, range, display)
  end

  return dissect.logon_conf_message_fields(buffer, offset, packet, parent)
end

-- Size: Reset Seq Num
size_of.reset_seq_num = 1

-- Display: Reset Seq Num
display.reset_seq_num = function(value)
  if value == 0 then
    return "Reset Seq Num: False (0)"
  end
  if value == 1 then
    return "Reset Seq Num: True (1)"
  end

  return "Reset Seq Num: Unknown("..value..")"
end

-- Dissect: Reset Seq Num
dissect.reset_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.reset_seq_num
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.reset_seq_num(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.reset_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Password
size_of.password = 32

-- Display: Password
display.password = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
dissect.password = function(buffer, offset, packet, parent)
  local length = size_of.password
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = display.password(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.password, range, value, display)

  return offset + length, value
end

-- Size: Username
size_of.username = 16

-- Display: Username
display.username = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
dissect.username = function(buffer, offset, packet, parent)
  local length = size_of.username
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = display.username(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.username, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Message
size_of.logon_message = function(buffer, offset)
  local index = 0

  index = index + size_of.username

  index = index + size_of.password

  index = index + size_of.reset_seq_num

  return index
end

-- Display: Logon Message
display.logon_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Message
dissect.logon_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 16 Byte Ascii String
  index, username = dissect.username(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = dissect.password(buffer, index, packet, parent)

  -- Reset Seq Num: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, reset_seq_num = dissect.reset_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
dissect.logon_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_message then
    local length = size_of.logon_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logon_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.logon_message, range, display)
  end

  return dissect.logon_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of Logon Message
  if template_id == 100 then
    return size_of.logon_message(buffer, offset)
  end
  -- Size of Logon Conf Message
  if template_id == 200 then
    return size_of.logon_conf_message(buffer, offset)
  end
  -- Size of Logout Message
  if template_id == 101 then
    return size_of.logout_message(buffer, offset)
  end
  -- Size of Logged Out Message
  if template_id == 201 then
    return size_of.logged_out_message(buffer, offset)
  end
  -- Size of Heartbeat Message
  if template_id == 10 then
    return size_of.heartbeat_message(buffer, offset)
  end
  -- Size of Test Request Message
  if template_id == 11 then
    return size_of.test_request_message(buffer, offset)
  end
  -- Size of Resend Request Message
  if template_id == 102 then
    return size_of.resend_request_message(buffer, offset)
  end
  -- Size of Gap Fill Message
  if template_id == 202 then
    return size_of.gap_fill_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Logon Message
  if template_id == 100 then
    return dissect.logon_message(buffer, offset, packet, parent)
  end
  -- Dissect Logon Conf Message
  if template_id == 200 then
    return dissect.logon_conf_message(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 101 then
    return dissect.logout_message(buffer, offset, packet, parent)
  end
  -- Dissect Logged Out Message
  if template_id == 201 then
    return dissect.logged_out_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 10 then
    return dissect.heartbeat_message(buffer, offset, packet, parent)
  end
  -- Dissect Test Request Message
  if template_id == 11 then
    return dissect.test_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Resend Request Message
  if template_id == 102 then
    return dissect.resend_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Gap Fill Message
  if template_id == 202 then
    return dissect.gap_fill_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
size_of.version = 2

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
size_of.schema_id = 2

-- Display: Schema Id
display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
dissect.schema_id = function(buffer, offset, packet, parent)
  local length = size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.schema_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
  if value == 100 then
    return "Template Id: Logon Message (100)"
  end
  if value == 200 then
    return "Template Id: Logon Conf Message (200)"
  end
  if value == 101 then
    return "Template Id: Logout Message (101)"
  end
  if value == 201 then
    return "Template Id: Logged Out Message (201)"
  end
  if value == 10 then
    return "Template Id: Heartbeat Message (10)"
  end
  if value == 11 then
    return "Template Id: Test Request Message (11)"
  end
  if value == 102 then
    return "Template Id: Resend Request Message (102)"
  end
  if value == 202 then
    return "Template Id: Gap Fill Message (202)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
size_of.block_length = 2

-- Display: Block Length
display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
dissect.block_length = function(buffer, offset, packet, parent)
  local length = size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_length(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Size: Send Time Epoch Nanos
size_of.send_time_epoch_nanos = 8

-- Display: Send Time Epoch Nanos
display.send_time_epoch_nanos = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time Epoch Nanos: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time Epoch Nanos
dissect.send_time_epoch_nanos = function(buffer, offset, packet, parent)
  local length = size_of.send_time_epoch_nanos
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.send_time_epoch_nanos(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.send_time_epoch_nanos, range, value, display)

  return offset + length, value
end

-- Size: Reserved
size_of.reserved = 4

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Last Processed Seq No
size_of.last_processed_seq_no = 4

-- Display: Last Processed Seq No
display.last_processed_seq_no = function(value)
  return "Last Processed Seq No: "..value
end

-- Dissect: Last Processed Seq No
dissect.last_processed_seq_no = function(buffer, offset, packet, parent)
  local length = size_of.last_processed_seq_no
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_processed_seq_no(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.last_processed_seq_no, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
size_of.sequence_number = 4

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 2

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

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Flags
size_of.flags = 1

-- Display: Flags
display.flags = function(value)
  return "Flags: "..value
end

-- Dissect: Flags
dissect.flags = function(buffer, offset, packet, parent)
  local length = size_of.flags
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.flags(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.flags, range, value, display)

  return offset + length, value
end

-- Size: Protocol Id
size_of.protocol_id = 1

-- Display: Protocol Id
display.protocol_id = function(value)
  return "Protocol Id: "..value
end

-- Dissect: Protocol Id
dissect.protocol_id = function(buffer, offset, packet, parent)
  local length = size_of.protocol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.protocol_id(value, buffer, offset, packet, parent)

  parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.protocol_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.protocol_id

  index = index + size_of.flags

  index = index + size_of.message_length

  index = index + size_of.sequence_number

  index = index + size_of.last_processed_seq_no

  index = index + size_of.reserved

  index = index + size_of.send_time_epoch_nanos

  index = index + size_of.block_length

  index = index + size_of.template_id

  index = index + size_of.schema_id

  index = index + size_of.version

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Id: 1 Byte Unsigned Fixed Width Integer
  index, protocol_id = dissect.protocol_id(buffer, index, packet, parent)

  -- Flags: 1 Byte Unsigned Fixed Width Integer
  index, flags = dissect.flags(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = dissect.sequence_number(buffer, index, packet, parent)

  -- Last Processed Seq No: 4 Byte Unsigned Fixed Width Integer
  index, last_processed_seq_no = dissect.last_processed_seq_no(buffer, index, packet, parent)

  -- Reserved: 4 Byte Unsigned Fixed Width Integer
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Send Time Epoch Nanos: 8 Byte Signed Fixed Width Integer
  index, send_time_epoch_nanos = dissect.send_time_epoch_nanos(buffer, index, packet, parent)

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, template_id = dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Sbe Message
display.sbe_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sbe Message
dissect.sbe_message_fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Message Header: Struct of 11 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 8 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  -- Dependency element: Message Length
  local message_length = buffer(offset + 2, 2):le_uint()

  -- Runtime Size Of: Padding
  local size_of_padding = message_length - (index - offset)

  -- Padding: 4 Byte Unsigned Fixed Width Integer
  index = dissect.padding(buffer, index, packet, parent, size_of_padding)

  return index
end

-- Dissect: Sbe Message
dissect.sbe_message = function(buffer, offset, packet, parent, size_of_sbe_message)
  -- Optionally add struct element to protocol tree
  if show.sbe_message then
    local range = buffer(offset, size_of_sbe_message)
    local display = display.sbe_message(buffer, packet, parent)
    parent = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3.fields.sbe_message, range, display)
  end

  dissect.sbe_message_fields(buffer, offset, packet, parent, size_of_sbe_message)

  return offset + size_of_sbe_message
end

-- Remaining Bytes For: Sbe Message
local sbe_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < size_of.message_header(buffer, index) then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 2, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sbe_message = sbe_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = dissect.sbe_message(buffer, index, packet, parent, size_of_sbe_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function coinbase_derivatives_ordersapi_sbe_v1_3.init()
end

-- Dissector for Coinbase Derivatives OrdersApi Sbe 1.3
function coinbase_derivatives_ordersapi_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = coinbase_derivatives_ordersapi_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(coinbase_derivatives_ordersapi_sbe_v1_3, buffer(), coinbase_derivatives_ordersapi_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, coinbase_derivatives_ordersapi_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.coinbase_derivatives_ordersapi_sbe_v1_3_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(28, 2):le_uint()

  if value == 1100 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(30, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Dissector Heuristic for Coinbase Derivatives OrdersApi Sbe 1.3
local function coinbase_derivatives_ordersapi_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.coinbase_derivatives_ordersapi_sbe_v1_3_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = coinbase_derivatives_ordersapi_sbe_v1_3
  coinbase_derivatives_ordersapi_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Coinbase Derivatives OrdersApi Sbe 1.3
coinbase_derivatives_ordersapi_sbe_v1_3:register_heuristic("tcp", coinbase_derivatives_ordersapi_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Coinbase
--   Version: 1.3
--   Date: Monday, July 27, 2020
--   Specification: FairX_SBE_API_V1.3.pdf
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
