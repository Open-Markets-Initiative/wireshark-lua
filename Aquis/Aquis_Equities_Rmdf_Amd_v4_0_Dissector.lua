-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis Equities Rmdf Amd 4.0 Protocol
local omi_aquis_equities_rmdf_amd_v4_0 = Proto("Aquis.Equities.Rmdf.Amd.v4.0.Lua", "Aquis Equities Rmdf Amd 4.0")

-- Protocol table
local aquis_equities_rmdf_amd_v4_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis Equities Rmdf Amd 4.0 Fields
omi_aquis_equities_rmdf_amd_v4_0.fields.begin_seq_no = ProtoField.new("Begin Seq No", "aquis.equities.rmdf.amd.v4.0.beginseqno", ftypes.UINT32)
omi_aquis_equities_rmdf_amd_v4_0.fields.end_seq_no = ProtoField.new("End Seq No", "aquis.equities.rmdf.amd.v4.0.endseqno", ftypes.UINT32)
omi_aquis_equities_rmdf_amd_v4_0.fields.message = ProtoField.new("Message", "aquis.equities.rmdf.amd.v4.0.message", ftypes.STRING)
omi_aquis_equities_rmdf_amd_v4_0.fields.message_header = ProtoField.new("Message Header", "aquis.equities.rmdf.amd.v4.0.messageheader", ftypes.STRING)
omi_aquis_equities_rmdf_amd_v4_0.fields.msg_length = ProtoField.new("Msg Length", "aquis.equities.rmdf.amd.v4.0.msglength", ftypes.UINT8)
omi_aquis_equities_rmdf_amd_v4_0.fields.msg_type = ProtoField.new("Msg Type", "aquis.equities.rmdf.amd.v4.0.msgtype", ftypes.UINT8)
omi_aquis_equities_rmdf_amd_v4_0.fields.packet = ProtoField.new("Packet", "aquis.equities.rmdf.amd.v4.0.packet", ftypes.STRING)
omi_aquis_equities_rmdf_amd_v4_0.fields.password = ProtoField.new("Password", "aquis.equities.rmdf.amd.v4.0.password", ftypes.STRING)
omi_aquis_equities_rmdf_amd_v4_0.fields.payload = ProtoField.new("Payload", "aquis.equities.rmdf.amd.v4.0.payload", ftypes.STRING)
omi_aquis_equities_rmdf_amd_v4_0.fields.response_code = ProtoField.new("Response Code", "aquis.equities.rmdf.amd.v4.0.responsecode", ftypes.UINT8)
omi_aquis_equities_rmdf_amd_v4_0.fields.seq_no = ProtoField.new("Seq No", "aquis.equities.rmdf.amd.v4.0.seqno", ftypes.UINT32)
omi_aquis_equities_rmdf_amd_v4_0.fields.username = ProtoField.new("Username", "aquis.equities.rmdf.amd.v4.0.username", ftypes.STRING)

-- Aquis Equities Amd Rmdf 4.0 Application Messages
omi_aquis_equities_rmdf_amd_v4_0.fields.login_message = ProtoField.new("Login Message", "aquis.equities.rmdf.amd.v4.0.loginmessage", ftypes.STRING)
omi_aquis_equities_rmdf_amd_v4_0.fields.replay_request_message = ProtoField.new("Replay Request Message", "aquis.equities.rmdf.amd.v4.0.replayrequestmessage", ftypes.STRING)
omi_aquis_equities_rmdf_amd_v4_0.fields.replay_response_message = ProtoField.new("Replay Response Message", "aquis.equities.rmdf.amd.v4.0.replayresponsemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis Equities Rmdf Amd 4.0 Element Dissection Options
show.login_message = true
show.message = true
show.message_header = true
show.packet = true
show.replay_request_message = true
show.replay_response_message = true
show.payload = false

-- Register Aquis Equities Rmdf Amd 4.0 Show Options
omi_aquis_equities_rmdf_amd_v4_0.prefs.show_login_message = Pref.bool("Show Login Message", show.login_message, "Parse and add Login Message to protocol tree")
omi_aquis_equities_rmdf_amd_v4_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_aquis_equities_rmdf_amd_v4_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_aquis_equities_rmdf_amd_v4_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_aquis_equities_rmdf_amd_v4_0.prefs.show_replay_request_message = Pref.bool("Show Replay Request Message", show.replay_request_message, "Parse and add Replay Request Message to protocol tree")
omi_aquis_equities_rmdf_amd_v4_0.prefs.show_replay_response_message = Pref.bool("Show Replay Response Message", show.replay_response_message, "Parse and add Replay Response Message to protocol tree")
omi_aquis_equities_rmdf_amd_v4_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_aquis_equities_rmdf_amd_v4_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.login_message ~= omi_aquis_equities_rmdf_amd_v4_0.prefs.show_login_message then
    show.login_message = omi_aquis_equities_rmdf_amd_v4_0.prefs.show_login_message
    changed = true
  end
  if show.message ~= omi_aquis_equities_rmdf_amd_v4_0.prefs.show_message then
    show.message = omi_aquis_equities_rmdf_amd_v4_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_aquis_equities_rmdf_amd_v4_0.prefs.show_message_header then
    show.message_header = omi_aquis_equities_rmdf_amd_v4_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_aquis_equities_rmdf_amd_v4_0.prefs.show_packet then
    show.packet = omi_aquis_equities_rmdf_amd_v4_0.prefs.show_packet
    changed = true
  end
  if show.replay_request_message ~= omi_aquis_equities_rmdf_amd_v4_0.prefs.show_replay_request_message then
    show.replay_request_message = omi_aquis_equities_rmdf_amd_v4_0.prefs.show_replay_request_message
    changed = true
  end
  if show.replay_response_message ~= omi_aquis_equities_rmdf_amd_v4_0.prefs.show_replay_response_message then
    show.replay_response_message = omi_aquis_equities_rmdf_amd_v4_0.prefs.show_replay_response_message
    changed = true
  end
  if show.payload ~= omi_aquis_equities_rmdf_amd_v4_0.prefs.show_payload then
    show.payload = omi_aquis_equities_rmdf_amd_v4_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Aquis Equities Rmdf Amd 4.0
-----------------------------------------------------------------------

-- Response Code
aquis_equities_rmdf_amd_v4_0.response_code = {}

-- Size: Response Code
aquis_equities_rmdf_amd_v4_0.response_code.size = 1

-- Display: Response Code
aquis_equities_rmdf_amd_v4_0.response_code.display = function(value)
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
aquis_equities_rmdf_amd_v4_0.response_code.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rmdf_amd_v4_0.response_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rmdf_amd_v4_0.response_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.response_code, range, value, display)

  return offset + length, value
end

-- Replay Response Message
aquis_equities_rmdf_amd_v4_0.replay_response_message = {}

-- Size: Replay Response Message
aquis_equities_rmdf_amd_v4_0.replay_response_message.size =
  aquis_equities_rmdf_amd_v4_0.response_code.size

-- Display: Replay Response Message
aquis_equities_rmdf_amd_v4_0.replay_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Response Message
aquis_equities_rmdf_amd_v4_0.replay_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Code: u8
  index, response_code = aquis_equities_rmdf_amd_v4_0.response_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Response Message
aquis_equities_rmdf_amd_v4_0.replay_response_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.replay_response_message, buffer(offset, 0))
    local index = aquis_equities_rmdf_amd_v4_0.replay_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rmdf_amd_v4_0.replay_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rmdf_amd_v4_0.replay_response_message.fields(buffer, offset, packet, parent)
  end
end

-- End Seq No
aquis_equities_rmdf_amd_v4_0.end_seq_no = {}

-- Size: End Seq No
aquis_equities_rmdf_amd_v4_0.end_seq_no.size = 4

-- Display: End Seq No
aquis_equities_rmdf_amd_v4_0.end_seq_no.display = function(value)
  return "End Seq No: "..value
end

-- Dissect: End Seq No
aquis_equities_rmdf_amd_v4_0.end_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rmdf_amd_v4_0.end_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rmdf_amd_v4_0.end_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.end_seq_no, range, value, display)

  return offset + length, value
end

-- Begin Seq No
aquis_equities_rmdf_amd_v4_0.begin_seq_no = {}

-- Size: Begin Seq No
aquis_equities_rmdf_amd_v4_0.begin_seq_no.size = 4

-- Display: Begin Seq No
aquis_equities_rmdf_amd_v4_0.begin_seq_no.display = function(value)
  return "Begin Seq No: "..value
end

-- Dissect: Begin Seq No
aquis_equities_rmdf_amd_v4_0.begin_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rmdf_amd_v4_0.begin_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = aquis_equities_rmdf_amd_v4_0.begin_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.begin_seq_no, range, value, display)

  return offset + length, value
end

-- Replay Request Message
aquis_equities_rmdf_amd_v4_0.replay_request_message = {}

-- Size: Replay Request Message
aquis_equities_rmdf_amd_v4_0.replay_request_message.size =
  aquis_equities_rmdf_amd_v4_0.begin_seq_no.size + 
  aquis_equities_rmdf_amd_v4_0.end_seq_no.size

-- Display: Replay Request Message
aquis_equities_rmdf_amd_v4_0.replay_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replay Request Message
aquis_equities_rmdf_amd_v4_0.replay_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq No: u32
  index, begin_seq_no = aquis_equities_rmdf_amd_v4_0.begin_seq_no.dissect(buffer, index, packet, parent)

  -- End Seq No: u32
  index, end_seq_no = aquis_equities_rmdf_amd_v4_0.end_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Replay Request Message
aquis_equities_rmdf_amd_v4_0.replay_request_message.dissect = function(buffer, offset, packet, parent)
  if show.replay_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.replay_request_message, buffer(offset, 0))
    local index = aquis_equities_rmdf_amd_v4_0.replay_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rmdf_amd_v4_0.replay_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rmdf_amd_v4_0.replay_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Password
aquis_equities_rmdf_amd_v4_0.password = {}

-- Size: Password
aquis_equities_rmdf_amd_v4_0.password.size = 10

-- Display: Password
aquis_equities_rmdf_amd_v4_0.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
aquis_equities_rmdf_amd_v4_0.password.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rmdf_amd_v4_0.password.size
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

  local display = aquis_equities_rmdf_amd_v4_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.password, range, value, display)

  return offset + length, value
end

-- Username
aquis_equities_rmdf_amd_v4_0.username = {}

-- Size: Username
aquis_equities_rmdf_amd_v4_0.username.size = 10

-- Display: Username
aquis_equities_rmdf_amd_v4_0.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
aquis_equities_rmdf_amd_v4_0.username.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rmdf_amd_v4_0.username.size
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

  local display = aquis_equities_rmdf_amd_v4_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.username, range, value, display)

  return offset + length, value
end

-- Login Message
aquis_equities_rmdf_amd_v4_0.login_message = {}

-- Size: Login Message
aquis_equities_rmdf_amd_v4_0.login_message.size =
  aquis_equities_rmdf_amd_v4_0.username.size + 
  aquis_equities_rmdf_amd_v4_0.password.size

-- Display: Login Message
aquis_equities_rmdf_amd_v4_0.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
aquis_equities_rmdf_amd_v4_0.login_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: char(10)
  index, username = aquis_equities_rmdf_amd_v4_0.username.dissect(buffer, index, packet, parent)

  -- Password: char(10)
  index, password = aquis_equities_rmdf_amd_v4_0.password.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
aquis_equities_rmdf_amd_v4_0.login_message.dissect = function(buffer, offset, packet, parent)
  if show.login_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.login_message, buffer(offset, 0))
    local index = aquis_equities_rmdf_amd_v4_0.login_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rmdf_amd_v4_0.login_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rmdf_amd_v4_0.login_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
aquis_equities_rmdf_amd_v4_0.payload = {}

-- Size: Payload
aquis_equities_rmdf_amd_v4_0.payload.size = function(buffer, offset, msg_type)
  -- Size of Login Message
  if msg_type == 13 then
    return aquis_equities_rmdf_amd_v4_0.login_message.size
  end
  -- Size of Replay Request Message
  if msg_type == 14 then
    return aquis_equities_rmdf_amd_v4_0.replay_request_message.size
  end
  -- Size of Replay Response Message
  if msg_type == 15 then
    return aquis_equities_rmdf_amd_v4_0.replay_response_message.size
  end

  return 0
end

-- Display: Payload
aquis_equities_rmdf_amd_v4_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
aquis_equities_rmdf_amd_v4_0.payload.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Login Message
  if msg_type == 13 then
    return aquis_equities_rmdf_amd_v4_0.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Request Message
  if msg_type == 14 then
    return aquis_equities_rmdf_amd_v4_0.replay_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Response Message
  if msg_type == 15 then
    return aquis_equities_rmdf_amd_v4_0.replay_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
aquis_equities_rmdf_amd_v4_0.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.payload then
    return aquis_equities_rmdf_amd_v4_0.payload.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = aquis_equities_rmdf_amd_v4_0.payload.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = aquis_equities_rmdf_amd_v4_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.payload, range, display)

  return aquis_equities_rmdf_amd_v4_0.payload.branches(buffer, offset, packet, parent, msg_type)
end

-- Seq No
aquis_equities_rmdf_amd_v4_0.seq_no = {}

-- Size: Seq No
aquis_equities_rmdf_amd_v4_0.seq_no.size = 4

-- Display: Seq No
aquis_equities_rmdf_amd_v4_0.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_equities_rmdf_amd_v4_0.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rmdf_amd_v4_0.seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_rmdf_amd_v4_0.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_equities_rmdf_amd_v4_0.msg_length = {}

-- Size: Msg Length
aquis_equities_rmdf_amd_v4_0.msg_length.size = 1

-- Display: Msg Length
aquis_equities_rmdf_amd_v4_0.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_equities_rmdf_amd_v4_0.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rmdf_amd_v4_0.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_rmdf_amd_v4_0.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_equities_rmdf_amd_v4_0.msg_type = {}

-- Size: Msg Type
aquis_equities_rmdf_amd_v4_0.msg_type.size = 1

-- Display: Msg Type
aquis_equities_rmdf_amd_v4_0.msg_type.display = function(value)
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
aquis_equities_rmdf_amd_v4_0.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_rmdf_amd_v4_0.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_rmdf_amd_v4_0.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Message Header
aquis_equities_rmdf_amd_v4_0.message_header = {}

-- Size: Message Header
aquis_equities_rmdf_amd_v4_0.message_header.size =
  aquis_equities_rmdf_amd_v4_0.msg_type.size + 
  aquis_equities_rmdf_amd_v4_0.msg_length.size + 
  aquis_equities_rmdf_amd_v4_0.seq_no.size

-- Display: Message Header
aquis_equities_rmdf_amd_v4_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_equities_rmdf_amd_v4_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, msg_type = aquis_equities_rmdf_amd_v4_0.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = aquis_equities_rmdf_amd_v4_0.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = aquis_equities_rmdf_amd_v4_0.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_equities_rmdf_amd_v4_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.message_header, buffer(offset, 0))
    local index = aquis_equities_rmdf_amd_v4_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_rmdf_amd_v4_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_rmdf_amd_v4_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_equities_rmdf_amd_v4_0.message = {}

-- Display: Message
aquis_equities_rmdf_amd_v4_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_equities_rmdf_amd_v4_0.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_equities_rmdf_amd_v4_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 6, 1):uint()

  -- Payload: Runtime Type with 3 branches
  index = aquis_equities_rmdf_amd_v4_0.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
aquis_equities_rmdf_amd_v4_0.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_aquis_equities_rmdf_amd_v4_0.fields.message, buffer(offset, 0))
    local current = aquis_equities_rmdf_amd_v4_0.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = aquis_equities_rmdf_amd_v4_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_equities_rmdf_amd_v4_0.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < aquis_equities_rmdf_amd_v4_0.message_header.size then
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
aquis_equities_rmdf_amd_v4_0.packet = {}

-- Dissect Packet
aquis_equities_rmdf_amd_v4_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Count
  index, message_count = aquis_equities_rmdf_amd_v4_0.message_count.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = aquis_equities_rmdf_amd_v4_0.message.dissect(buffer, index, packet, parent, size_of_message)
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
function omi_aquis_equities_rmdf_amd_v4_0.init()
end

-- Dissector for Aquis Equities Rmdf Amd 4.0
function omi_aquis_equities_rmdf_amd_v4_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_aquis_equities_rmdf_amd_v4_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_equities_rmdf_amd_v4_0, buffer(), omi_aquis_equities_rmdf_amd_v4_0.description, "("..buffer:len().." Bytes)")
  return aquis_equities_rmdf_amd_v4_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_aquis_equities_rmdf_amd_v4_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
aquis_equities_rmdf_amd_v4_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Aquis Equities Rmdf Amd 4.0
local function omi_aquis_equities_rmdf_amd_v4_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_equities_rmdf_amd_v4_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_equities_rmdf_amd_v4_0
  omi_aquis_equities_rmdf_amd_v4_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis Equities Rmdf Amd 4.0
omi_aquis_equities_rmdf_amd_v4_0:register_heuristic("tcp", omi_aquis_equities_rmdf_amd_v4_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 4.0
--   Date: Friday, August 1, 2025
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
