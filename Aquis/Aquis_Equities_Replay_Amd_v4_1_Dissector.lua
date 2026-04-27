-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis Equities Replay Amd 4.1 Protocol
local omi_aquis_equities_replay_amd_v4_1 = Proto("Aquis.Equities.Replay.Amd.v4.1.Lua", "Aquis Equities Replay Amd 4.1")

-- Protocol table
local aquis_equities_replay_amd_v4_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis Equities Replay Amd 4.1 Fields
omi_aquis_equities_replay_amd_v4_1.fields.begin_seq_no = ProtoField.new("Begin Seq No", "aquis.equities.replay.amd.v4.1.beginseqno", ftypes.UINT32)
omi_aquis_equities_replay_amd_v4_1.fields.end_seq_no = ProtoField.new("End Seq No", "aquis.equities.replay.amd.v4.1.endseqno", ftypes.UINT32)
omi_aquis_equities_replay_amd_v4_1.fields.message = ProtoField.new("Message", "aquis.equities.replay.amd.v4.1.message", ftypes.STRING)
omi_aquis_equities_replay_amd_v4_1.fields.message_header = ProtoField.new("Message Header", "aquis.equities.replay.amd.v4.1.messageheader", ftypes.STRING)
omi_aquis_equities_replay_amd_v4_1.fields.msg_length = ProtoField.new("Msg Length", "aquis.equities.replay.amd.v4.1.msglength", ftypes.UINT8)
omi_aquis_equities_replay_amd_v4_1.fields.msg_type = ProtoField.new("Msg Type", "aquis.equities.replay.amd.v4.1.msgtype", ftypes.UINT8)
omi_aquis_equities_replay_amd_v4_1.fields.packet = ProtoField.new("Packet", "aquis.equities.replay.amd.v4.1.packet", ftypes.STRING)
omi_aquis_equities_replay_amd_v4_1.fields.password = ProtoField.new("Password", "aquis.equities.replay.amd.v4.1.password", ftypes.STRING)
omi_aquis_equities_replay_amd_v4_1.fields.response_code = ProtoField.new("Response Code", "aquis.equities.replay.amd.v4.1.responsecode", ftypes.UINT8)
omi_aquis_equities_replay_amd_v4_1.fields.seq_no = ProtoField.new("Seq No", "aquis.equities.replay.amd.v4.1.seqno", ftypes.UINT32)
omi_aquis_equities_replay_amd_v4_1.fields.username = ProtoField.new("Username", "aquis.equities.replay.amd.v4.1.username", ftypes.STRING)

-- Aquis Equities Amd Replay 4.1 Application Messages
omi_aquis_equities_replay_amd_v4_1.fields.login_message = ProtoField.new("Login Message", "aquis.equities.replay.amd.v4.1.loginmessage", ftypes.STRING)
omi_aquis_equities_replay_amd_v4_1.fields.replay_request_message = ProtoField.new("Replay Request Message", "aquis.equities.replay.amd.v4.1.replayrequestmessage", ftypes.STRING)
omi_aquis_equities_replay_amd_v4_1.fields.replay_response_message = ProtoField.new("Replay Response Message", "aquis.equities.replay.amd.v4.1.replayresponsemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis Equities Replay Amd 4.1 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true

-- Register Aquis Equities Replay Amd 4.1 Show Options
omi_aquis_equities_replay_amd_v4_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_aquis_equities_replay_amd_v4_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_aquis_equities_replay_amd_v4_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_aquis_equities_replay_amd_v4_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function omi_aquis_equities_replay_amd_v4_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_aquis_equities_replay_amd_v4_1.prefs.show_application_messages then
    show.application_messages = omi_aquis_equities_replay_amd_v4_1.prefs.show_application_messages
  end
  if show.message ~= omi_aquis_equities_replay_amd_v4_1.prefs.show_message then
    show.message = omi_aquis_equities_replay_amd_v4_1.prefs.show_message
  end
  if show.message_header ~= omi_aquis_equities_replay_amd_v4_1.prefs.show_message_header then
    show.message_header = omi_aquis_equities_replay_amd_v4_1.prefs.show_message_header
  end
  if show.packet ~= omi_aquis_equities_replay_amd_v4_1.prefs.show_packet then
    show.packet = omi_aquis_equities_replay_amd_v4_1.prefs.show_packet
  end
end


-----------------------------------------------------------------------
-- Aquis Equities Replay Amd 4.1 Fields
-----------------------------------------------------------------------

-- Begin Seq No
aquis_equities_replay_amd_v4_1.begin_seq_no = {}

-- Size: Begin Seq No
aquis_equities_replay_amd_v4_1.begin_seq_no.size = 4

-- Display: Begin Seq No
aquis_equities_replay_amd_v4_1.begin_seq_no.display = function(value)
  return "Begin Seq No: "..value
end

-- Dissect: Begin Seq No
aquis_equities_replay_amd_v4_1.begin_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_replay_amd_v4_1.begin_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_replay_amd_v4_1.begin_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_replay_amd_v4_1.fields.begin_seq_no, range, value, display)

  return offset + length, value
end

-- End Seq No
aquis_equities_replay_amd_v4_1.end_seq_no = {}

-- Size: End Seq No
aquis_equities_replay_amd_v4_1.end_seq_no.size = 4

-- Display: End Seq No
aquis_equities_replay_amd_v4_1.end_seq_no.display = function(value)
  return "End Seq No: "..value
end

-- Dissect: End Seq No
aquis_equities_replay_amd_v4_1.end_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_replay_amd_v4_1.end_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_replay_amd_v4_1.end_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_replay_amd_v4_1.fields.end_seq_no, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_equities_replay_amd_v4_1.msg_length = {}

-- Size: Msg Length
aquis_equities_replay_amd_v4_1.msg_length.size = 1

-- Display: Msg Length
aquis_equities_replay_amd_v4_1.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_equities_replay_amd_v4_1.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_replay_amd_v4_1.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_replay_amd_v4_1.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_replay_amd_v4_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_equities_replay_amd_v4_1.msg_type = {}

-- Size: Msg Type
aquis_equities_replay_amd_v4_1.msg_type.size = 1

-- Display: Msg Type
aquis_equities_replay_amd_v4_1.msg_type.display = function(value)
  if value == 13 then
    return "Msg Type: Login Message (13)"
  end
  if value == 14 then
    return "Msg Type: Replay Request Message (14)"
  end
  if value == 15 then
    return "Msg Type: Replay Response Message (15)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
aquis_equities_replay_amd_v4_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_replay_amd_v4_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_replay_amd_v4_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_replay_amd_v4_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Password
aquis_equities_replay_amd_v4_1.password = {}

-- Size: Password
aquis_equities_replay_amd_v4_1.password.size = 10

-- Display: Password
aquis_equities_replay_amd_v4_1.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
aquis_equities_replay_amd_v4_1.password.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_replay_amd_v4_1.password.size
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

  local display = aquis_equities_replay_amd_v4_1.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_replay_amd_v4_1.fields.password, range, value, display)

  return offset + length, value
end

-- Response Code
aquis_equities_replay_amd_v4_1.response_code = {}

-- Size: Response Code
aquis_equities_replay_amd_v4_1.response_code.size = 1

-- Display: Response Code
aquis_equities_replay_amd_v4_1.response_code.display = function(value)
  if value == 0 then
    return "Response Code: Login Successful (0)"
  end
  if value == 1 then
    return "Response Code: Bad Begin Seq No In Resend Request (1)"
  end
  if value == 2 then
    return "Response Code: Bad End Seq No In Resend Request (2)"
  end

  return "Response Code: Unknown("..value..")"
end

-- Dissect: Response Code
aquis_equities_replay_amd_v4_1.response_code.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_replay_amd_v4_1.response_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_replay_amd_v4_1.response_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_replay_amd_v4_1.fields.response_code, range, value, display)

  return offset + length, value
end

-- Seq No
aquis_equities_replay_amd_v4_1.seq_no = {}

-- Size: Seq No
aquis_equities_replay_amd_v4_1.seq_no.size = 4

-- Display: Seq No
aquis_equities_replay_amd_v4_1.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_equities_replay_amd_v4_1.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_replay_amd_v4_1.seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_replay_amd_v4_1.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_replay_amd_v4_1.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Username
aquis_equities_replay_amd_v4_1.username = {}

-- Size: Username
aquis_equities_replay_amd_v4_1.username.size = 10

-- Display: Username
aquis_equities_replay_amd_v4_1.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
aquis_equities_replay_amd_v4_1.username.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_replay_amd_v4_1.username.size
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

  local display = aquis_equities_replay_amd_v4_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_replay_amd_v4_1.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Aquis Equities Replay Amd 4.1
-----------------------------------------------------------------------

-- Replay Response Message
aquis_equities_replay_amd_v4_1.replay_response_message = {}

-- Size: Replay Response Message
aquis_equities_replay_amd_v4_1.replay_response_message.size =
  aquis_equities_replay_amd_v4_1.response_code.size

-- Display: Replay Response Message
aquis_equities_replay_amd_v4_1.replay_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Response Message
aquis_equities_replay_amd_v4_1.replay_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Code: u8
  index, response_code = aquis_equities_replay_amd_v4_1.response_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Response Message
aquis_equities_replay_amd_v4_1.replay_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_replay_amd_v4_1.fields.replay_response_message, buffer(offset, 0))
    local index = aquis_equities_replay_amd_v4_1.replay_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_replay_amd_v4_1.replay_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_replay_amd_v4_1.replay_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Replay Request Message
aquis_equities_replay_amd_v4_1.replay_request_message = {}

-- Size: Replay Request Message
aquis_equities_replay_amd_v4_1.replay_request_message.size =
  aquis_equities_replay_amd_v4_1.begin_seq_no.size + 
  aquis_equities_replay_amd_v4_1.end_seq_no.size

-- Display: Replay Request Message
aquis_equities_replay_amd_v4_1.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
aquis_equities_replay_amd_v4_1.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq No: u32
  index, begin_seq_no = aquis_equities_replay_amd_v4_1.begin_seq_no.dissect(buffer, index, packet, parent)

  -- End Seq No: u32
  index, end_seq_no = aquis_equities_replay_amd_v4_1.end_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
aquis_equities_replay_amd_v4_1.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_replay_amd_v4_1.fields.replay_request_message, buffer(offset, 0))
    local index = aquis_equities_replay_amd_v4_1.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_replay_amd_v4_1.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_replay_amd_v4_1.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Login Message
aquis_equities_replay_amd_v4_1.login_message = {}

-- Size: Login Message
aquis_equities_replay_amd_v4_1.login_message.size =
  aquis_equities_replay_amd_v4_1.username.size + 
  aquis_equities_replay_amd_v4_1.password.size

-- Display: Login Message
aquis_equities_replay_amd_v4_1.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
aquis_equities_replay_amd_v4_1.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: char(10)
  index, username = aquis_equities_replay_amd_v4_1.username.dissect(buffer, index, packet, parent)

  -- Password: char(10)
  index, password = aquis_equities_replay_amd_v4_1.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
aquis_equities_replay_amd_v4_1.login_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_replay_amd_v4_1.fields.login_message, buffer(offset, 0))
    local index = aquis_equities_replay_amd_v4_1.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_replay_amd_v4_1.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_replay_amd_v4_1.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
aquis_equities_replay_amd_v4_1.payload = {}

-- Dissect: Payload
aquis_equities_replay_amd_v4_1.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Login Message
  if msg_type == 13 then
    return aquis_equities_replay_amd_v4_1.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if msg_type == 14 then
    return aquis_equities_replay_amd_v4_1.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Response Message
  if msg_type == 15 then
    return aquis_equities_replay_amd_v4_1.replay_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
aquis_equities_replay_amd_v4_1.message_header = {}

-- Size: Message Header
aquis_equities_replay_amd_v4_1.message_header.size =
  aquis_equities_replay_amd_v4_1.msg_type.size + 
  aquis_equities_replay_amd_v4_1.msg_length.size + 
  aquis_equities_replay_amd_v4_1.seq_no.size

-- Display: Message Header
aquis_equities_replay_amd_v4_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_equities_replay_amd_v4_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, msg_type = aquis_equities_replay_amd_v4_1.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = aquis_equities_replay_amd_v4_1.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = aquis_equities_replay_amd_v4_1.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_equities_replay_amd_v4_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_replay_amd_v4_1.fields.message_header, buffer(offset, 0))
    local index = aquis_equities_replay_amd_v4_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_replay_amd_v4_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_replay_amd_v4_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_equities_replay_amd_v4_1.message = {}

-- Display: Message
aquis_equities_replay_amd_v4_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_equities_replay_amd_v4_1.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_equities_replay_amd_v4_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 3 branches
  index = aquis_equities_replay_amd_v4_1.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_equities_replay_amd_v4_1.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_aquis_equities_replay_amd_v4_1.fields.message, buffer(offset, 0))
    local current = aquis_equities_replay_amd_v4_1.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = aquis_equities_replay_amd_v4_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_equities_replay_amd_v4_1.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < aquis_equities_replay_amd_v4_1.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 1, 1):uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
aquis_equities_replay_amd_v4_1.packet = {}

-- Verify size of Tcp packet
aquis_equities_replay_amd_v4_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissect Packet
aquis_equities_replay_amd_v4_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Count
  index, message_count = aquis_equities_replay_amd_v4_1.message_count.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = aquis_equities_replay_amd_v4_1.message.dissect(buffer, index, packet, parent, size_of_message)
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
function omi_aquis_equities_replay_amd_v4_1.init()
end

-- Dissector for Aquis Equities Replay Amd 4.1
function omi_aquis_equities_replay_amd_v4_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_aquis_equities_replay_amd_v4_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_equities_replay_amd_v4_1, buffer(), omi_aquis_equities_replay_amd_v4_1.description, "("..buffer:len().." Bytes)")
  return aquis_equities_replay_amd_v4_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_aquis_equities_replay_amd_v4_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Aquis Equities Replay Amd 4.1 (Tcp)
local function omi_aquis_equities_replay_amd_v4_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_equities_replay_amd_v4_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_equities_replay_amd_v4_1
  omi_aquis_equities_replay_amd_v4_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis Equities Replay Amd 4.1
omi_aquis_equities_replay_amd_v4_1:register_heuristic("tcp", omi_aquis_equities_replay_amd_v4_1_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 4.1
--   Date: Thursday, January 1, 2026
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
