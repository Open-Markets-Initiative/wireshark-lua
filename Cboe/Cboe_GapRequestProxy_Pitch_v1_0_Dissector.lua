-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe GapRequestProxy Pitch 1.0 Protocol
local omi_cboe_gaprequestproxy_pitch_v1_0 = Proto("Omi.Cboe.GapRequestProxy.Pitch.v1.0", "Cboe GapRequestProxy Pitch 1.0")

-- Protocol table
local cboe_gaprequestproxy_pitch_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe GapRequestProxy Pitch 1.0 Fields
omi_cboe_gaprequestproxy_pitch_v1_0.fields.count = ProtoField.new("Count", "cboe.gaprequestproxy.pitch.v1.0.count", ftypes.UINT16)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.filler = ProtoField.new("Filler", "cboe.gaprequestproxy.pitch.v1.0.filler", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.gap_response_status = ProtoField.new("Gap Response Status", "cboe.gaprequestproxy.pitch.v1.0.gapresponsestatus", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.length = ProtoField.new("Length", "cboe.gaprequestproxy.pitch.v1.0.length", ftypes.UINT16)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.gaprequestproxy.pitch.v1.0.loginresponsestatus", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.message = ProtoField.new("Message", "cboe.gaprequestproxy.pitch.v1.0.message", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.message_header = ProtoField.new("Message Header", "cboe.gaprequestproxy.pitch.v1.0.messageheader", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.message_length = ProtoField.new("Message Length", "cboe.gaprequestproxy.pitch.v1.0.messagelength", ftypes.UINT8)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.message_type = ProtoField.new("Message Type", "cboe.gaprequestproxy.pitch.v1.0.messagetype", ftypes.UINT8)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.packet = ProtoField.new("Packet", "cboe.gaprequestproxy.pitch.v1.0.packet", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "cboe.gaprequestproxy.pitch.v1.0.packetheader", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.password = ProtoField.new("Password", "cboe.gaprequestproxy.pitch.v1.0.password", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.sequence = ProtoField.new("Sequence", "cboe.gaprequestproxy.pitch.v1.0.sequence", ftypes.UINT32)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.gaprequestproxy.pitch.v1.0.sessionsubid", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.unit = ProtoField.new("Unit", "cboe.gaprequestproxy.pitch.v1.0.unit", ftypes.UINT8)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.username = ProtoField.new("Username", "cboe.gaprequestproxy.pitch.v1.0.username", ftypes.STRING)

-- Cboe Pitch GapRequestProxy 1.0 Application Messages
omi_cboe_gaprequestproxy_pitch_v1_0.fields.gap_request_message = ProtoField.new("Gap Request Message", "cboe.gaprequestproxy.pitch.v1.0.gaprequestmessage", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.gap_response_message = ProtoField.new("Gap Response Message", "cboe.gaprequestproxy.pitch.v1.0.gapresponsemessage", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.login_message = ProtoField.new("Login Message", "cboe.gaprequestproxy.pitch.v1.0.loginmessage", ftypes.STRING)
omi_cboe_gaprequestproxy_pitch_v1_0.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.gaprequestproxy.pitch.v1.0.loginresponsemessage", ftypes.STRING)

-- Cboe GapRequestProxy Pitch 1.0 generated fields
omi_cboe_gaprequestproxy_pitch_v1_0.fields.message_index = ProtoField.new("Message Index", "cboe.gaprequestproxy.pitch.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe GapRequestProxy Pitch 1.0 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Cboe GapRequestProxy Pitch 1.0 Show Options
omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_cboe_gaprequestproxy_pitch_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_application_messages then
    show.application_messages = omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_application_messages
  end
  if show.message ~= omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_message then
    show.message = omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_message
  end
  if show.message_header ~= omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_message_header then
    show.message_header = omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_message_header
  end
  if show.packet ~= omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_packet then
    show.packet = omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_packet
  end
  if show.packet_header ~= omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_packet_header then
    show.packet_header = omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_packet_header
  end
  if show.message_index ~= omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_message_index then
    show.message_index = omi_cboe_gaprequestproxy_pitch_v1_0.prefs.show_message_index
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
-- Cboe GapRequestProxy Pitch 1.0 Fields
-----------------------------------------------------------------------

-- Count
cboe_gaprequestproxy_pitch_v1_0.count = {}

-- Size: Count
cboe_gaprequestproxy_pitch_v1_0.count.size = 2

-- Display: Count
cboe_gaprequestproxy_pitch_v1_0.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_gaprequestproxy_pitch_v1_0.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_gaprequestproxy_pitch_v1_0.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.count, range, value, display)

  return offset + length, value
end

-- Filler
cboe_gaprequestproxy_pitch_v1_0.filler = {}

-- Size: Filler
cboe_gaprequestproxy_pitch_v1_0.filler.size = 2

-- Display: Filler
cboe_gaprequestproxy_pitch_v1_0.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
cboe_gaprequestproxy_pitch_v1_0.filler.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_gaprequestproxy_pitch_v1_0.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.filler, range, value, display)

  return offset + length, value
end

-- Gap Response Status
cboe_gaprequestproxy_pitch_v1_0.gap_response_status = {}

-- Size: Gap Response Status
cboe_gaprequestproxy_pitch_v1_0.gap_response_status.size = 1

-- Display: Gap Response Status
cboe_gaprequestproxy_pitch_v1_0.gap_response_status.display = function(value)
  if value == "A" then
    return "Gap Response Status: Accepted (A)"
  end
  if value == "O" then
    return "Gap Response Status: Out Of Range Ahead Of Sequence Or Too Far Behind (O)"
  end
  if value == "D" then
    return "Gap Response Status: Daily Gap Request Allocation Exhausted (D)"
  end
  if value == "M" then
    return "Gap Response Status: Minute Gap Request Allocation Exhausted (M)"
  end
  if value == "S" then
    return "Gap Response Status: Second Gap Request Allocation Exhausted (S)"
  end
  if value == "C" then
    return "Gap Response Status: Count Request Limit For One Gap Request Exceeded (C)"
  end
  if value == "I" then
    return "Gap Response Status: Invalid Unit Specified In Request (I)"
  end
  if value == "U" then
    return "Gap Response Status: Unit Is Currently Unavailable (U)"
  end

  return "Gap Response Status: Unknown("..value..")"
end

-- Dissect: Gap Response Status
cboe_gaprequestproxy_pitch_v1_0.gap_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.gap_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_gaprequestproxy_pitch_v1_0.gap_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.gap_response_status, range, value, display)

  return offset + length, value
end

-- Length
cboe_gaprequestproxy_pitch_v1_0.length = {}

-- Size: Length
cboe_gaprequestproxy_pitch_v1_0.length.size = 2

-- Display: Length
cboe_gaprequestproxy_pitch_v1_0.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_gaprequestproxy_pitch_v1_0.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_gaprequestproxy_pitch_v1_0.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_gaprequestproxy_pitch_v1_0.login_response_status = {}

-- Size: Login Response Status
cboe_gaprequestproxy_pitch_v1_0.login_response_status.size = 1

-- Display: Login Response Status
cboe_gaprequestproxy_pitch_v1_0.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized Invalid Usernamepassword (N)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_gaprequestproxy_pitch_v1_0.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_gaprequestproxy_pitch_v1_0.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_gaprequestproxy_pitch_v1_0.message_length = {}

-- Size: Message Length
cboe_gaprequestproxy_pitch_v1_0.message_length.size = 1

-- Display: Message Length
cboe_gaprequestproxy_pitch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_gaprequestproxy_pitch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_gaprequestproxy_pitch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_gaprequestproxy_pitch_v1_0.message_type = {}

-- Size: Message Type
cboe_gaprequestproxy_pitch_v1_0.message_type.size = 1

-- Display: Message Type
cboe_gaprequestproxy_pitch_v1_0.message_type.display = function(value)
  if value == 0x01 then
    return "Message Type: Login Message (0x01)"
  end
  if value == 0x02 then
    return "Message Type: Login Response Message (0x02)"
  end
  if value == 0x03 then
    return "Message Type: Gap Request Message (0x03)"
  end
  if value == 0x04 then
    return "Message Type: Gap Response Message (0x04)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_gaprequestproxy_pitch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_gaprequestproxy_pitch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_gaprequestproxy_pitch_v1_0.password = {}

-- Size: Password
cboe_gaprequestproxy_pitch_v1_0.password.size = 10

-- Display: Password
cboe_gaprequestproxy_pitch_v1_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_gaprequestproxy_pitch_v1_0.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_gaprequestproxy_pitch_v1_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.password, range, value, display)

  return offset + length, value
end

-- Sequence
cboe_gaprequestproxy_pitch_v1_0.sequence = {}

-- Size: Sequence
cboe_gaprequestproxy_pitch_v1_0.sequence.size = 4

-- Display: Sequence
cboe_gaprequestproxy_pitch_v1_0.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_gaprequestproxy_pitch_v1_0.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_gaprequestproxy_pitch_v1_0.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_gaprequestproxy_pitch_v1_0.session_sub_id = {}

-- Size: Session Sub Id
cboe_gaprequestproxy_pitch_v1_0.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_gaprequestproxy_pitch_v1_0.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_gaprequestproxy_pitch_v1_0.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.session_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_gaprequestproxy_pitch_v1_0.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Unit
cboe_gaprequestproxy_pitch_v1_0.unit = {}

-- Size: Unit
cboe_gaprequestproxy_pitch_v1_0.unit.size = 1

-- Display: Unit
cboe_gaprequestproxy_pitch_v1_0.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_gaprequestproxy_pitch_v1_0.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_gaprequestproxy_pitch_v1_0.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.unit, range, value, display)

  return offset + length, value
end

-- Username
cboe_gaprequestproxy_pitch_v1_0.username = {}

-- Size: Username
cboe_gaprequestproxy_pitch_v1_0.username.size = 4

-- Display: Username
cboe_gaprequestproxy_pitch_v1_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_gaprequestproxy_pitch_v1_0.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_gaprequestproxy_pitch_v1_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_gaprequestproxy_pitch_v1_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe GapRequestProxy Pitch 1.0
-----------------------------------------------------------------------

-- Gap Response Message
cboe_gaprequestproxy_pitch_v1_0.gap_response_message = {}

-- Size: Gap Response Message
cboe_gaprequestproxy_pitch_v1_0.gap_response_message.size =
  cboe_gaprequestproxy_pitch_v1_0.unit.size + 
  cboe_gaprequestproxy_pitch_v1_0.sequence.size + 
  cboe_gaprequestproxy_pitch_v1_0.count.size + 
  cboe_gaprequestproxy_pitch_v1_0.gap_response_status.size

-- Display: Gap Response Message
cboe_gaprequestproxy_pitch_v1_0.gap_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Response Message
cboe_gaprequestproxy_pitch_v1_0.gap_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit: Binary
  index, unit = cboe_gaprequestproxy_pitch_v1_0.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_gaprequestproxy_pitch_v1_0.sequence.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_gaprequestproxy_pitch_v1_0.count.dissect(buffer, index, packet, parent)

  -- Gap Response Status: Alphanumeric
  index, gap_response_status = cboe_gaprequestproxy_pitch_v1_0.gap_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Response Message
cboe_gaprequestproxy_pitch_v1_0.gap_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.gap_response_message, buffer(offset, 0))
    local index = cboe_gaprequestproxy_pitch_v1_0.gap_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_gaprequestproxy_pitch_v1_0.gap_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_gaprequestproxy_pitch_v1_0.gap_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Gap Request Message
cboe_gaprequestproxy_pitch_v1_0.gap_request_message = {}

-- Size: Gap Request Message
cboe_gaprequestproxy_pitch_v1_0.gap_request_message.size =
  cboe_gaprequestproxy_pitch_v1_0.unit.size + 
  cboe_gaprequestproxy_pitch_v1_0.sequence.size + 
  cboe_gaprequestproxy_pitch_v1_0.count.size

-- Display: Gap Request Message
cboe_gaprequestproxy_pitch_v1_0.gap_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Request Message
cboe_gaprequestproxy_pitch_v1_0.gap_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit: Binary
  index, unit = cboe_gaprequestproxy_pitch_v1_0.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_gaprequestproxy_pitch_v1_0.sequence.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_gaprequestproxy_pitch_v1_0.count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Request Message
cboe_gaprequestproxy_pitch_v1_0.gap_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.gap_request_message, buffer(offset, 0))
    local index = cboe_gaprequestproxy_pitch_v1_0.gap_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_gaprequestproxy_pitch_v1_0.gap_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_gaprequestproxy_pitch_v1_0.gap_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Response Message
cboe_gaprequestproxy_pitch_v1_0.login_response_message = {}

-- Size: Login Response Message
cboe_gaprequestproxy_pitch_v1_0.login_response_message.size =
  cboe_gaprequestproxy_pitch_v1_0.login_response_status.size

-- Display: Login Response Message
cboe_gaprequestproxy_pitch_v1_0.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_gaprequestproxy_pitch_v1_0.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_gaprequestproxy_pitch_v1_0.login_response_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response Message
cboe_gaprequestproxy_pitch_v1_0.login_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.login_response_message, buffer(offset, 0))
    local index = cboe_gaprequestproxy_pitch_v1_0.login_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_gaprequestproxy_pitch_v1_0.login_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_gaprequestproxy_pitch_v1_0.login_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
cboe_gaprequestproxy_pitch_v1_0.login_message = {}

-- Size: Login Message
cboe_gaprequestproxy_pitch_v1_0.login_message.size =
  cboe_gaprequestproxy_pitch_v1_0.session_sub_id.size + 
  cboe_gaprequestproxy_pitch_v1_0.username.size + 
  cboe_gaprequestproxy_pitch_v1_0.filler.size + 
  cboe_gaprequestproxy_pitch_v1_0.password.size

-- Display: Login Message
cboe_gaprequestproxy_pitch_v1_0.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
cboe_gaprequestproxy_pitch_v1_0.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_gaprequestproxy_pitch_v1_0.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_gaprequestproxy_pitch_v1_0.username.dissect(buffer, index, packet, parent)

  -- Filler: Alphanumeric
  index, filler = cboe_gaprequestproxy_pitch_v1_0.filler.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_gaprequestproxy_pitch_v1_0.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
cboe_gaprequestproxy_pitch_v1_0.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.login_message, buffer(offset, 0))
    local index = cboe_gaprequestproxy_pitch_v1_0.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_gaprequestproxy_pitch_v1_0.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_gaprequestproxy_pitch_v1_0.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_gaprequestproxy_pitch_v1_0.payload = {}

-- Dissect: Payload
cboe_gaprequestproxy_pitch_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Message
  if message_type == 0x01 then
    return cboe_gaprequestproxy_pitch_v1_0.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response Message
  if message_type == 0x02 then
    return cboe_gaprequestproxy_pitch_v1_0.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Request Message
  if message_type == 0x03 then
    return cboe_gaprequestproxy_pitch_v1_0.gap_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Response Message
  if message_type == 0x04 then
    return cboe_gaprequestproxy_pitch_v1_0.gap_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_gaprequestproxy_pitch_v1_0.message_header = {}

-- Size: Message Header
cboe_gaprequestproxy_pitch_v1_0.message_header.size =
  cboe_gaprequestproxy_pitch_v1_0.message_length.size + 
  cboe_gaprequestproxy_pitch_v1_0.message_type.size

-- Display: Message Header
cboe_gaprequestproxy_pitch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_gaprequestproxy_pitch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_gaprequestproxy_pitch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_type = cboe_gaprequestproxy_pitch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_gaprequestproxy_pitch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.message_header, buffer(offset, 0))
    local index = cboe_gaprequestproxy_pitch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_gaprequestproxy_pitch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_gaprequestproxy_pitch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_gaprequestproxy_pitch_v1_0.message = {}

-- Read runtime size of: Message
cboe_gaprequestproxy_pitch_v1_0.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 1):le_uint()

  return message_length
end

-- Display: Message
cboe_gaprequestproxy_pitch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_gaprequestproxy_pitch_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_gaprequestproxy_pitch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 4 branches
  index = cboe_gaprequestproxy_pitch_v1_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
cboe_gaprequestproxy_pitch_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = cboe_gaprequestproxy_pitch_v1_0.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.message, buffer(offset, 0))
    local current = cboe_gaprequestproxy_pitch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_gaprequestproxy_pitch_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_gaprequestproxy_pitch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
cboe_gaprequestproxy_pitch_v1_0.messages = {}

-- Dissect: Messages
cboe_gaprequestproxy_pitch_v1_0.messages.dissect = function(buffer, offset, packet, parent, count)
  -- Dissect Heartbeat
  if count == 0 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 1):le_uint()

    -- Message: Struct of 2 fields
    offset = cboe_gaprequestproxy_pitch_v1_0.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
cboe_gaprequestproxy_pitch_v1_0.packet_header = {}

-- Size: Packet Header
cboe_gaprequestproxy_pitch_v1_0.packet_header.size =
  cboe_gaprequestproxy_pitch_v1_0.length.size + 
  cboe_gaprequestproxy_pitch_v1_0.count.size + 
  cboe_gaprequestproxy_pitch_v1_0.unit.size + 
  cboe_gaprequestproxy_pitch_v1_0.sequence.size

-- Display: Packet Header
cboe_gaprequestproxy_pitch_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_gaprequestproxy_pitch_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_gaprequestproxy_pitch_v1_0.length.dissect(buffer, index, packet, parent)

  -- Count: Binary
  index, count = cboe_gaprequestproxy_pitch_v1_0.count.dissect(buffer, index, packet, parent)

  -- Unit: Binary
  index, unit = cboe_gaprequestproxy_pitch_v1_0.unit.dissect(buffer, index, packet, parent)

  -- Sequence: Binary
  index, sequence = cboe_gaprequestproxy_pitch_v1_0.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_gaprequestproxy_pitch_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_gaprequestproxy_pitch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = cboe_gaprequestproxy_pitch_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_gaprequestproxy_pitch_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_gaprequestproxy_pitch_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_gaprequestproxy_pitch_v1_0.packet = {}

-- Verify required size of Tcp packet
cboe_gaprequestproxy_pitch_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_gaprequestproxy_pitch_v1_0.packet_header.size
end

-- Dissect Packet
cboe_gaprequestproxy_pitch_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_gaprequestproxy_pitch_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Count
  local count = buffer(index - 7, 2):le_uint()

  -- Messages: Runtime Type with 2 branches
  index = cboe_gaprequestproxy_pitch_v1_0.messages.dissect(buffer, index, packet, parent, count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_gaprequestproxy_pitch_v1_0.init()
end

-- Dissector for Cboe GapRequestProxy Pitch 1.0
function omi_cboe_gaprequestproxy_pitch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_gaprequestproxy_pitch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_gaprequestproxy_pitch_v1_0, buffer(), omi_cboe_gaprequestproxy_pitch_v1_0.description, "("..buffer:len().." Bytes)")
  return cboe_gaprequestproxy_pitch_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe GapRequestProxy Pitch 1.0 (Tcp)
local function omi_cboe_gaprequestproxy_pitch_v1_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_gaprequestproxy_pitch_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_gaprequestproxy_pitch_v1_0
  omi_cboe_gaprequestproxy_pitch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe GapRequestProxy Pitch 1.0
omi_cboe_gaprequestproxy_pitch_v1_0:register_heuristic("tcp", omi_cboe_gaprequestproxy_pitch_v1_0_tcp_heuristic)

-- Register Cboe GapRequestProxy Pitch 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_gaprequestproxy_pitch_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0
--   Date: Wednesday, April 1, 2026
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
