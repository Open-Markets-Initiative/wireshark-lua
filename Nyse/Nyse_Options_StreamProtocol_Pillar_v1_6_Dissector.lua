-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Options StreamProtocol Pillar 1.6 Protocol
local nyse_options_streamprotocol_pillar_v1_6 = Proto("Nyse.Options.StreamProtocol.Pillar.v1.6.Lua", "Nyse Options StreamProtocol Pillar 1.6")

-- Component Tables
local show = {}
local format = {}
local nyse_options_streamprotocol_pillar_v1_6_display = {}
local nyse_options_streamprotocol_pillar_v1_6_dissect = {}
local nyse_options_streamprotocol_pillar_v1_6_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Options StreamProtocol Pillar 1.6 Fields
nyse_options_streamprotocol_pillar_v1_6.fields.access = ProtoField.new("Access", "nyse.options.streamprotocol.pillar.v1.6.access", ftypes.UINT8)
nyse_options_streamprotocol_pillar_v1_6.fields.close = ProtoField.new("Close", "nyse.options.streamprotocol.pillar.v1.6.close", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.close_response = ProtoField.new("Close Response", "nyse.options.streamprotocol.pillar.v1.6.closeresponse", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.data = ProtoField.new("Data", "nyse.options.streamprotocol.pillar.v1.6.data", ftypes.BYTES)
nyse_options_streamprotocol_pillar_v1_6.fields.end_seq = ProtoField.new("End Seq", "nyse.options.streamprotocol.pillar.v1.6.endseq", ftypes.UINT64)
nyse_options_streamprotocol_pillar_v1_6.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.options.streamprotocol.pillar.v1.6.heartbeat", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.login_message = ProtoField.new("Login Message", "nyse.options.streamprotocol.pillar.v1.6.loginmessage", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.login_response = ProtoField.new("Login Response", "nyse.options.streamprotocol.pillar.v1.6.loginresponse", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.mic = ProtoField.new("Mic", "nyse.options.streamprotocol.pillar.v1.6.mic", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.mode = ProtoField.new("Mode", "nyse.options.streamprotocol.pillar.v1.6.mode", ftypes.UINT8)
nyse_options_streamprotocol_pillar_v1_6.fields.msg_header = ProtoField.new("Msg Header", "nyse.options.streamprotocol.pillar.v1.6.msgheader", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.msg_length = ProtoField.new("Msg Length", "nyse.options.streamprotocol.pillar.v1.6.msglength", ftypes.UINT16)
nyse_options_streamprotocol_pillar_v1_6.fields.msg_type = ProtoField.new("Msg Type", "nyse.options.streamprotocol.pillar.v1.6.msgtype", ftypes.UINT16)
nyse_options_streamprotocol_pillar_v1_6.fields.next_seq = ProtoField.new("Next Seq", "nyse.options.streamprotocol.pillar.v1.6.nextseq", ftypes.UINT64)
nyse_options_streamprotocol_pillar_v1_6.fields.open = ProtoField.new("Open", "nyse.options.streamprotocol.pillar.v1.6.open", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.open_response = ProtoField.new("Open Response", "nyse.options.streamprotocol.pillar.v1.6.openresponse", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.password = ProtoField.new("Password", "nyse.options.streamprotocol.pillar.v1.6.password", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.pillar_stream_message = ProtoField.new("Pillar Stream Message", "nyse.options.streamprotocol.pillar.v1.6.pillarstreammessage", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.options.streamprotocol.pillar.v1.6.reserved4", ftypes.BYTES)
nyse_options_streamprotocol_pillar_v1_6.fields.seq = ProtoField.new("Seq", "nyse.options.streamprotocol.pillar.v1.6.seq", ftypes.UINT64)
nyse_options_streamprotocol_pillar_v1_6.fields.seq_msg = ProtoField.new("Seq Msg", "nyse.options.streamprotocol.pillar.v1.6.seqmsg", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.seq_msg_header = ProtoField.new("Seq Msg Header", "nyse.options.streamprotocol.pillar.v1.6.seqmsgheader", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.seq_msg_length = ProtoField.new("Seq Msg Length", "nyse.options.streamprotocol.pillar.v1.6.seqmsglength", ftypes.UINT16)
nyse_options_streamprotocol_pillar_v1_6.fields.seq_msg_type = ProtoField.new("Seq Msg Type", "nyse.options.streamprotocol.pillar.v1.6.seqmsgtype", ftypes.UINT16)
nyse_options_streamprotocol_pillar_v1_6.fields.seqmsgid = ProtoField.new("Seqmsgid", "nyse.options.streamprotocol.pillar.v1.6.seqmsgid", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.sequenced_message = ProtoField.new("Sequenced Message", "nyse.options.streamprotocol.pillar.v1.6.sequencedmessage", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.sess = ProtoField.new("Sess", "nyse.options.streamprotocol.pillar.v1.6.sess", ftypes.UINT32)
nyse_options_streamprotocol_pillar_v1_6.fields.start_seq = ProtoField.new("Start Seq", "nyse.options.streamprotocol.pillar.v1.6.startseq", ftypes.UINT64)
nyse_options_streamprotocol_pillar_v1_6.fields.status = ProtoField.new("Status", "nyse.options.streamprotocol.pillar.v1.6.status", ftypes.UINT8)
nyse_options_streamprotocol_pillar_v1_6.fields.stream_avail = ProtoField.new("Stream Avail", "nyse.options.streamprotocol.pillar.v1.6.streamavail", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.stream_id = ProtoField.new("Stream Id", "nyse.options.streamprotocol.pillar.v1.6.streamid", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.timestamp = ProtoField.new("Timestamp", "nyse.options.streamprotocol.pillar.v1.6.timestamp", ftypes.UINT64)
nyse_options_streamprotocol_pillar_v1_6.fields.user = ProtoField.new("User", "nyse.options.streamprotocol.pillar.v1.6.user", ftypes.UINT32)
nyse_options_streamprotocol_pillar_v1_6.fields.username = ProtoField.new("Username", "nyse.options.streamprotocol.pillar.v1.6.username", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.version = ProtoField.new("Version", "nyse.options.streamprotocol.pillar.v1.6.version", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Options StreamProtocol Pillar 1.6 Element Dissection Options
show.close = true
show.close_response = true
show.heartbeat = true
show.login_message = true
show.login_response = true
show.msg_header = true
show.open = true
show.open_response = true
show.seq_msg = true
show.seq_msg_header = true
show.seqmsgid = true
show.sequenced_message = true
show.stream_avail = true
show.stream_id = true
show.pillar_stream_message = false

-- Register Nyse Options StreamProtocol Pillar 1.6 Show Options
nyse_options_streamprotocol_pillar_v1_6.prefs.show_close = Pref.bool("Show Close", show.close, "Parse and add Close to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_close_response = Pref.bool("Show Close Response", show.close_response, "Parse and add Close Response to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_login_message = Pref.bool("Show Login Message", show.login_message, "Parse and add Login Message to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_open = Pref.bool("Show Open", show.open, "Parse and add Open to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_open_response = Pref.bool("Show Open Response", show.open_response, "Parse and add Open Response to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_seq_msg = Pref.bool("Show Seq Msg", show.seq_msg, "Parse and add Seq Msg to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_seq_msg_header = Pref.bool("Show Seq Msg Header", show.seq_msg_header, "Parse and add Seq Msg Header to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_seqmsgid = Pref.bool("Show Seqmsgid", show.seqmsgid, "Parse and add Seqmsgid to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_stream_avail = Pref.bool("Show Stream Avail", show.stream_avail, "Parse and add Stream Avail to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_stream_id = Pref.bool("Show Stream Id", show.stream_id, "Parse and add Stream Id to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_pillar_stream_message = Pref.bool("Show Pillar Stream Message", show.pillar_stream_message, "Parse and add Pillar Stream Message to protocol tree")

-- Handle changed preferences
function nyse_options_streamprotocol_pillar_v1_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.close ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_close then
    show.close = nyse_options_streamprotocol_pillar_v1_6.prefs.show_close
    changed = true
  end
  if show.close_response ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_close_response then
    show.close_response = nyse_options_streamprotocol_pillar_v1_6.prefs.show_close_response
    changed = true
  end
  if show.heartbeat ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_heartbeat then
    show.heartbeat = nyse_options_streamprotocol_pillar_v1_6.prefs.show_heartbeat
    changed = true
  end
  if show.login_message ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_login_message then
    show.login_message = nyse_options_streamprotocol_pillar_v1_6.prefs.show_login_message
    changed = true
  end
  if show.login_response ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_login_response then
    show.login_response = nyse_options_streamprotocol_pillar_v1_6.prefs.show_login_response
    changed = true
  end
  if show.msg_header ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_msg_header then
    show.msg_header = nyse_options_streamprotocol_pillar_v1_6.prefs.show_msg_header
    changed = true
  end
  if show.open ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_open then
    show.open = nyse_options_streamprotocol_pillar_v1_6.prefs.show_open
    changed = true
  end
  if show.open_response ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_open_response then
    show.open_response = nyse_options_streamprotocol_pillar_v1_6.prefs.show_open_response
    changed = true
  end
  if show.seq_msg ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_seq_msg then
    show.seq_msg = nyse_options_streamprotocol_pillar_v1_6.prefs.show_seq_msg
    changed = true
  end
  if show.seq_msg_header ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_seq_msg_header then
    show.seq_msg_header = nyse_options_streamprotocol_pillar_v1_6.prefs.show_seq_msg_header
    changed = true
  end
  if show.seqmsgid ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_seqmsgid then
    show.seqmsgid = nyse_options_streamprotocol_pillar_v1_6.prefs.show_seqmsgid
    changed = true
  end
  if show.sequenced_message ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_sequenced_message then
    show.sequenced_message = nyse_options_streamprotocol_pillar_v1_6.prefs.show_sequenced_message
    changed = true
  end
  if show.stream_avail ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_stream_avail then
    show.stream_avail = nyse_options_streamprotocol_pillar_v1_6.prefs.show_stream_avail
    changed = true
  end
  if show.stream_id ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_stream_id then
    show.stream_id = nyse_options_streamprotocol_pillar_v1_6.prefs.show_stream_id
    changed = true
  end
  if show.pillar_stream_message ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_pillar_stream_message then
    show.pillar_stream_message = nyse_options_streamprotocol_pillar_v1_6.prefs.show_pillar_stream_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Options StreamProtocol Pillar 1.6
-----------------------------------------------------------------------

-- Display: Data
nyse_options_streamprotocol_pillar_v1_6_display.data = function(value)
  return "Data: "..value
end

-- Dissect runtime sized field: Data
nyse_options_streamprotocol_pillar_v1_6_dissect.data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_streamprotocol_pillar_v1_6_display.data(value, buffer, offset, packet, parent, size)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.data, range, value, display)

  return offset + size
end

-- Size: Seq Msg Length
nyse_options_streamprotocol_pillar_v1_6_size_of.seq_msg_length = 2

-- Display: Seq Msg Length
nyse_options_streamprotocol_pillar_v1_6_display.seq_msg_length = function(value)
  return "Seq Msg Length: "..value
end

-- Dissect: Seq Msg Length
nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_length = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.seq_msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.seq_msg_length(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.seq_msg_length, range, value, display)

  return offset + length, value
end

-- Size: Seq Msg Type
nyse_options_streamprotocol_pillar_v1_6_size_of.seq_msg_type = 2

-- Display: Seq Msg Type
nyse_options_streamprotocol_pillar_v1_6_display.seq_msg_type = function(value)
  return "Seq Msg Type: "..value
end

-- Dissect: Seq Msg Type
nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_type = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.seq_msg_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.seq_msg_type(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.seq_msg_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Seq Msg Header
nyse_options_streamprotocol_pillar_v1_6_size_of.seq_msg_header = function(buffer, offset)
  local index = 0

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.seq_msg_type

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.seq_msg_length

  return index
end

-- Display: Seq Msg Header
nyse_options_streamprotocol_pillar_v1_6_display.seq_msg_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Header
nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Type: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_type = nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_type(buffer, index, packet, parent)

  -- Seq Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_length = nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_length(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Header
nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_header = function(buffer, offset, packet, parent)
  if show.seq_msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.seq_msg_header, buffer(offset, 0))
    local index = nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.seq_msg_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Sequenced Message
nyse_options_streamprotocol_pillar_v1_6_display.sequenced_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
nyse_options_streamprotocol_pillar_v1_6_dissect.sequenced_message_fields = function(buffer, offset, packet, parent, size_of_sequenced_message)
  local index = offset

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_header(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(index - 2, 2):le_uint()

  -- Runtime Size Of: Data
  local size_of_data = seq_msg_length - 4

  -- Data: 0 Byte
  index, data = nyse_options_streamprotocol_pillar_v1_6_dissect.data(buffer, index, packet, parent, size_of_data)

  return index
end

-- Dissect: Sequenced Message
nyse_options_streamprotocol_pillar_v1_6_dissect.sequenced_message = function(buffer, offset, packet, parent, size_of_sequenced_message)
  local index = offset + size_of_sequenced_message

  -- Optionally add group/struct element to protocol tree
  if show.sequenced_message then
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.sequenced_message, buffer(offset, 0))
    local current = nyse_options_streamprotocol_pillar_v1_6_dissect.sequenced_message_fields(buffer, offset, packet, parent, size_of_sequenced_message)
    parent:set_len(size_of_sequenced_message)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.sequenced_message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_streamprotocol_pillar_v1_6_dissect.sequenced_message_fields(buffer, offset, packet, parent, size_of_sequenced_message)

    return index
  end
end

-- Size: Timestamp
nyse_options_streamprotocol_pillar_v1_6_size_of.timestamp = 8

-- Display: Timestamp
nyse_options_streamprotocol_pillar_v1_6_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_options_streamprotocol_pillar_v1_6_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Reserved 4
nyse_options_streamprotocol_pillar_v1_6_size_of.reserved_4 = 4

-- Display: Reserved 4
nyse_options_streamprotocol_pillar_v1_6_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_options_streamprotocol_pillar_v1_6_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_streamprotocol_pillar_v1_6_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Seq
nyse_options_streamprotocol_pillar_v1_6_size_of.seq = 8

-- Display: Seq
nyse_options_streamprotocol_pillar_v1_6_display.seq = function(value)
  return "Seq: "..value
end

-- Dissect: Seq
nyse_options_streamprotocol_pillar_v1_6_dissect.seq = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.seq
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.seq(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.seq, range, value, display)

  return offset + length, value
end

-- Size: User
nyse_options_streamprotocol_pillar_v1_6_size_of.user = 4

-- Display: User
nyse_options_streamprotocol_pillar_v1_6_display.user = function(value)
  return "User: "..value
end

-- Dissect: User
nyse_options_streamprotocol_pillar_v1_6_dissect.user = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.user
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.user(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.user, range, value, display)

  return offset + length, value
end

-- Size: Sess
nyse_options_streamprotocol_pillar_v1_6_size_of.sess = 4

-- Display: Sess
nyse_options_streamprotocol_pillar_v1_6_display.sess = function(value)
  return "Sess: "..value
end

-- Dissect: Sess
nyse_options_streamprotocol_pillar_v1_6_dissect.sess = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.sess
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.sess(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.sess, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Id
nyse_options_streamprotocol_pillar_v1_6_size_of.stream_id = function(buffer, offset)
  local index = 0

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.sess

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.user

  return index
end

-- Display: Stream Id
nyse_options_streamprotocol_pillar_v1_6_display.stream_id = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Id
nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sess: 4 Byte Unsigned Fixed Width Integer
  index, sess = nyse_options_streamprotocol_pillar_v1_6_dissect.sess(buffer, index, packet, parent)

  -- User: 4 Byte Unsigned Fixed Width Integer
  index, user = nyse_options_streamprotocol_pillar_v1_6_dissect.user(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id
nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id = function(buffer, offset, packet, parent)
  if show.stream_id then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.stream_id, buffer(offset, 0))
    local index = nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.stream_id(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Seqmsgid
nyse_options_streamprotocol_pillar_v1_6_size_of.seqmsgid = function(buffer, offset)
  local index = 0

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.stream_id(buffer, offset + index)

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.seq

  return index
end

-- Display: Seqmsgid
nyse_options_streamprotocol_pillar_v1_6_display.seqmsgid = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seqmsgid
nyse_options_streamprotocol_pillar_v1_6_dissect.seqmsgid_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id(buffer, index, packet, parent)

  -- Seq: 8 Byte Unsigned Fixed Width Integer
  index, seq = nyse_options_streamprotocol_pillar_v1_6_dissect.seq(buffer, index, packet, parent)

  return index
end

-- Dissect: Seqmsgid
nyse_options_streamprotocol_pillar_v1_6_dissect.seqmsgid = function(buffer, offset, packet, parent)
  if show.seqmsgid then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.seqmsgid, buffer(offset, 0))
    local index = nyse_options_streamprotocol_pillar_v1_6_dissect.seqmsgid_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.seqmsgid(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_streamprotocol_pillar_v1_6_dissect.seqmsgid_fields(buffer, offset, packet, parent)
  end
end

-- Size: Msg Length
nyse_options_streamprotocol_pillar_v1_6_size_of.msg_length = 2

-- Display: Msg Length
nyse_options_streamprotocol_pillar_v1_6_display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nyse_options_streamprotocol_pillar_v1_6_dissect.msg_length = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.msg_length(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Size: Msg Type
nyse_options_streamprotocol_pillar_v1_6_size_of.msg_type = 2

-- Display: Msg Type
nyse_options_streamprotocol_pillar_v1_6_display.msg_type = function(value)
  if value == 0x0201 then
    return "Msg Type: Login (0x0201)"
  end
  if value == 0x0202 then
    return "Msg Type: Login Response (0x0202)"
  end
  if value == 0x0203 then
    return "Msg Type: Stream Avail (0x0203)"
  end
  if value == 0x0204 then
    return "Msg Type: Heartbeat (0x0204)"
  end
  if value == 0x0205 then
    return "Msg Type: Open (0x0205)"
  end
  if value == 0x0206 then
    return "Msg Type: Open Response (0x0206)"
  end
  if value == 0x0207 then
    return "Msg Type: Close (0x0207)"
  end
  if value == 0x0208 then
    return "Msg Type: Close Response (0x0208)"
  end
  if value == 0x0905 then
    return "Msg Type: Seq Msg (0x0905)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
nyse_options_streamprotocol_pillar_v1_6_dissect.msg_type = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.msg_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.msg_type(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Msg Header
nyse_options_streamprotocol_pillar_v1_6_size_of.msg_header = function(buffer, offset)
  local index = 0

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.msg_type

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.msg_length

  return index
end

-- Display: Msg Header
nyse_options_streamprotocol_pillar_v1_6_display.msg_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_type(buffer, index, packet, parent)

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_length(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.msg_header, buffer(offset, 0))
    local index = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.msg_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header_fields(buffer, offset, packet, parent)
  end
end

-- Read runtime size of: Seq Msg
nyse_options_streamprotocol_pillar_v1_6_size_of.seq_msg = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Seq Msg
nyse_options_streamprotocol_pillar_v1_6_display.seq_msg = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg
nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_fields = function(buffer, offset, packet, parent, size_of_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header(buffer, index, packet, parent)

  -- Seqmsgid: Struct of 2 fields
  index, seqmsgid = nyse_options_streamprotocol_pillar_v1_6_dissect.seqmsgid(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_options_streamprotocol_pillar_v1_6_dissect.reserved_4(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_options_streamprotocol_pillar_v1_6_dissect.timestamp(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(index - 30, 2):le_uint()

  -- Runtime Size Of: Sequenced Message
  local size_of_sequenced_message = msg_length - 32

  -- Sequenced Message: Struct of 2 fields
  index, sequenced_message = nyse_options_streamprotocol_pillar_v1_6_dissect.sequenced_message(buffer, index, packet, parent, size_of_sequenced_message)

  return index
end

-- Dissect: Seq Msg
nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_seq_msg = nyse_options_streamprotocol_pillar_v1_6_size_of.seq_msg(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.seq_msg then
    local range = buffer(offset, size_of_seq_msg)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.seq_msg(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.seq_msg, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg_fields(buffer, offset, packet, parent, size_of_seq_msg)

  return offset + size_of_seq_msg
end

-- Size: Status
nyse_options_streamprotocol_pillar_v1_6_size_of.status = 1

-- Display: Status
nyse_options_streamprotocol_pillar_v1_6_display.status = function(value)
  if value == 0 then
    return "Status: Request Processed Successfully (0)"
  end
  if value == 18 then
    return "Status: Not Logged In (18)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_options_streamprotocol_pillar_v1_6_dissect.status = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.status
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.status, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Close Response
nyse_options_streamprotocol_pillar_v1_6_size_of.close_response = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close Response
nyse_options_streamprotocol_pillar_v1_6_display.close_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close Response
nyse_options_streamprotocol_pillar_v1_6_dissect.close_response_fields = function(buffer, offset, packet, parent, size_of_close_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_options_streamprotocol_pillar_v1_6_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Response
nyse_options_streamprotocol_pillar_v1_6_dissect.close_response = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close_response = nyse_options_streamprotocol_pillar_v1_6_size_of.close_response(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close_response then
    local range = buffer(offset, size_of_close_response)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.close_response(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.close_response, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.close_response_fields(buffer, offset, packet, parent, size_of_close_response)

  return offset + size_of_close_response
end

-- Read runtime size of: Close
nyse_options_streamprotocol_pillar_v1_6_size_of.close = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close
nyse_options_streamprotocol_pillar_v1_6_display.close = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close
nyse_options_streamprotocol_pillar_v1_6_dissect.close_fields = function(buffer, offset, packet, parent, size_of_close)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Close
nyse_options_streamprotocol_pillar_v1_6_dissect.close = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_close = nyse_options_streamprotocol_pillar_v1_6_size_of.close(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.close then
    local range = buffer(offset, size_of_close)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.close(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.close, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.close_fields(buffer, offset, packet, parent, size_of_close)

  return offset + size_of_close
end

-- Size: Access
nyse_options_streamprotocol_pillar_v1_6_size_of.access = 1

-- Display: Access
nyse_options_streamprotocol_pillar_v1_6_display.access = function(value)
  return "Access: "..value
end

-- Dissect: Access
nyse_options_streamprotocol_pillar_v1_6_dissect.access = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.access
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.access(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.access, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Open Response
nyse_options_streamprotocol_pillar_v1_6_size_of.open_response = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open Response
nyse_options_streamprotocol_pillar_v1_6_display.open_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Response
nyse_options_streamprotocol_pillar_v1_6_dissect.open_response_fields = function(buffer, offset, packet, parent, size_of_open_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_options_streamprotocol_pillar_v1_6_dissect.status(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_options_streamprotocol_pillar_v1_6_dissect.access(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Response
nyse_options_streamprotocol_pillar_v1_6_dissect.open_response = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open_response = nyse_options_streamprotocol_pillar_v1_6_size_of.open_response(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open_response then
    local range = buffer(offset, size_of_open_response)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.open_response(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.open_response, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.open_response_fields(buffer, offset, packet, parent, size_of_open_response)

  return offset + size_of_open_response
end

-- Size: Mode
nyse_options_streamprotocol_pillar_v1_6_size_of.mode = 1

-- Display: Mode
nyse_options_streamprotocol_pillar_v1_6_display.mode = function(value)
  return "Mode: "..value
end

-- Dissect: Mode
nyse_options_streamprotocol_pillar_v1_6_dissect.mode = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.mode
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.mode(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.mode, range, value, display)

  return offset + length, value
end

-- Size: End Seq
nyse_options_streamprotocol_pillar_v1_6_size_of.end_seq = 8

-- Display: End Seq
nyse_options_streamprotocol_pillar_v1_6_display.end_seq = function(value)
  return "End Seq: "..value
end

-- Dissect: End Seq
nyse_options_streamprotocol_pillar_v1_6_dissect.end_seq = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.end_seq
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.end_seq(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.end_seq, range, value, display)

  return offset + length, value
end

-- Size: Start Seq
nyse_options_streamprotocol_pillar_v1_6_size_of.start_seq = 8

-- Display: Start Seq
nyse_options_streamprotocol_pillar_v1_6_display.start_seq = function(value)
  return "Start Seq: "..value
end

-- Dissect: Start Seq
nyse_options_streamprotocol_pillar_v1_6_dissect.start_seq = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.start_seq
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.start_seq(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.start_seq, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Open
nyse_options_streamprotocol_pillar_v1_6_size_of.open = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open
nyse_options_streamprotocol_pillar_v1_6_display.open = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open
nyse_options_streamprotocol_pillar_v1_6_dissect.open_fields = function(buffer, offset, packet, parent, size_of_open)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id(buffer, index, packet, parent)

  -- Start Seq: 8 Byte Unsigned Fixed Width Integer
  index, start_seq = nyse_options_streamprotocol_pillar_v1_6_dissect.start_seq(buffer, index, packet, parent)

  -- End Seq: 8 Byte Unsigned Fixed Width Integer
  index, end_seq = nyse_options_streamprotocol_pillar_v1_6_dissect.end_seq(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_options_streamprotocol_pillar_v1_6_dissect.access(buffer, index, packet, parent)

  -- Mode: 1 Byte Unsigned Fixed Width Integer
  index, mode = nyse_options_streamprotocol_pillar_v1_6_dissect.mode(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
nyse_options_streamprotocol_pillar_v1_6_dissect.open = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_open = nyse_options_streamprotocol_pillar_v1_6_size_of.open(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.open then
    local range = buffer(offset, size_of_open)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.open(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.open, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.open_fields(buffer, offset, packet, parent, size_of_open)

  return offset + size_of_open
end

-- Read runtime size of: Heartbeat
nyse_options_streamprotocol_pillar_v1_6_size_of.heartbeat = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat
nyse_options_streamprotocol_pillar_v1_6_display.heartbeat = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
nyse_options_streamprotocol_pillar_v1_6_dissect.heartbeat_fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nyse_options_streamprotocol_pillar_v1_6_dissect.heartbeat = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat = nyse_options_streamprotocol_pillar_v1_6_size_of.heartbeat(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, size_of_heartbeat)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.heartbeat(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.heartbeat, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.heartbeat_fields(buffer, offset, packet, parent, size_of_heartbeat)

  return offset + size_of_heartbeat
end

-- Size: Next Seq
nyse_options_streamprotocol_pillar_v1_6_size_of.next_seq = 8

-- Display: Next Seq
nyse_options_streamprotocol_pillar_v1_6_display.next_seq = function(value)
  return "Next Seq: "..value
end

-- Dissect: Next Seq
nyse_options_streamprotocol_pillar_v1_6_dissect.next_seq = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.next_seq
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.next_seq(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.next_seq, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Stream Avail
nyse_options_streamprotocol_pillar_v1_6_size_of.stream_avail = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Stream Avail
nyse_options_streamprotocol_pillar_v1_6_display.stream_avail = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Avail
nyse_options_streamprotocol_pillar_v1_6_dissect.stream_avail_fields = function(buffer, offset, packet, parent, size_of_stream_avail)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_options_streamprotocol_pillar_v1_6_dissect.stream_id(buffer, index, packet, parent)

  -- Next Seq: 8 Byte Unsigned Fixed Width Integer
  index, next_seq = nyse_options_streamprotocol_pillar_v1_6_dissect.next_seq(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_options_streamprotocol_pillar_v1_6_dissect.access(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Avail
nyse_options_streamprotocol_pillar_v1_6_dissect.stream_avail = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_stream_avail = nyse_options_streamprotocol_pillar_v1_6_size_of.stream_avail(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.stream_avail then
    local range = buffer(offset, size_of_stream_avail)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.stream_avail(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.stream_avail, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.stream_avail_fields(buffer, offset, packet, parent, size_of_stream_avail)

  return offset + size_of_stream_avail
end

-- Size: Username
nyse_options_streamprotocol_pillar_v1_6_size_of.username = 16

-- Display: Username
nyse_options_streamprotocol_pillar_v1_6_display.username = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
nyse_options_streamprotocol_pillar_v1_6_dissect.username = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.username
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

  local display = nyse_options_streamprotocol_pillar_v1_6_display.username(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.username, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Login Response
nyse_options_streamprotocol_pillar_v1_6_size_of.login_response = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Response
nyse_options_streamprotocol_pillar_v1_6_display.login_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
nyse_options_streamprotocol_pillar_v1_6_dissect.login_response_fields = function(buffer, offset, packet, parent, size_of_login_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_options_streamprotocol_pillar_v1_6_dissect.username(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_options_streamprotocol_pillar_v1_6_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
nyse_options_streamprotocol_pillar_v1_6_dissect.login_response = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_response = nyse_options_streamprotocol_pillar_v1_6_size_of.login_response(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_response then
    local range = buffer(offset, size_of_login_response)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.login_response(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.login_response, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.login_response_fields(buffer, offset, packet, parent, size_of_login_response)

  return offset + size_of_login_response
end

-- Size: Version
nyse_options_streamprotocol_pillar_v1_6_size_of.version = 20

-- Display: Version
nyse_options_streamprotocol_pillar_v1_6_display.version = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version: No Value"
  end

  return "Version: "..value
end

-- Dissect: Version
nyse_options_streamprotocol_pillar_v1_6_dissect.version = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.version
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

  local display = nyse_options_streamprotocol_pillar_v1_6_display.version(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Mic
nyse_options_streamprotocol_pillar_v1_6_size_of.mic = 4

-- Display: Mic
nyse_options_streamprotocol_pillar_v1_6_display.mic = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
nyse_options_streamprotocol_pillar_v1_6_dissect.mic = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.mic
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

  local display = nyse_options_streamprotocol_pillar_v1_6_display.mic(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.mic, range, value, display)

  return offset + length, value
end

-- Size: Password
nyse_options_streamprotocol_pillar_v1_6_size_of.password = 32

-- Display: Password
nyse_options_streamprotocol_pillar_v1_6_display.password = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nyse_options_streamprotocol_pillar_v1_6_dissect.password = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.password
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

  local display = nyse_options_streamprotocol_pillar_v1_6_display.password(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.password, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Login Message
nyse_options_streamprotocol_pillar_v1_6_size_of.login_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Message
nyse_options_streamprotocol_pillar_v1_6_display.login_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
nyse_options_streamprotocol_pillar_v1_6_dissect.login_message_fields = function(buffer, offset, packet, parent, size_of_login_message)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_options_streamprotocol_pillar_v1_6_dissect.msg_header(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_options_streamprotocol_pillar_v1_6_dissect.username(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = nyse_options_streamprotocol_pillar_v1_6_dissect.password(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = nyse_options_streamprotocol_pillar_v1_6_dissect.mic(buffer, index, packet, parent)

  -- Version: 20 Byte Ascii String
  index, version = nyse_options_streamprotocol_pillar_v1_6_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_options_streamprotocol_pillar_v1_6_dissect.login_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_login_message = nyse_options_streamprotocol_pillar_v1_6_size_of.login_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.login_message then
    local range = buffer(offset, size_of_login_message)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.login_message(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.login_message, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.login_message_fields(buffer, offset, packet, parent, size_of_login_message)

  return offset + size_of_login_message
end

-- Dissect Pillar Stream Message
nyse_options_streamprotocol_pillar_v1_6_dissect.pillar_stream_message = function(buffer, packet, parent)
  local offset = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(0, 2):le_uint()

  -- Dissect Login Message
  if msg_type == 0x0201 then
    return nyse_options_streamprotocol_pillar_v1_6_dissect.login_message(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if msg_type == 0x0202 then
    return nyse_options_streamprotocol_pillar_v1_6_dissect.login_response(buffer, offset, packet, parent)
  end
  -- Dissect Stream Avail
  if msg_type == 0x0203 then
    return nyse_options_streamprotocol_pillar_v1_6_dissect.stream_avail(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_options_streamprotocol_pillar_v1_6_dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Open
  if msg_type == 0x0205 then
    return nyse_options_streamprotocol_pillar_v1_6_dissect.open(buffer, offset, packet, parent)
  end
  -- Dissect Open Response
  if msg_type == 0x0206 then
    return nyse_options_streamprotocol_pillar_v1_6_dissect.open_response(buffer, offset, packet, parent)
  end
  -- Dissect Close
  if msg_type == 0x0207 then
    return nyse_options_streamprotocol_pillar_v1_6_dissect.close(buffer, offset, packet, parent)
  end
  -- Dissect Close Response
  if msg_type == 0x0208 then
    return nyse_options_streamprotocol_pillar_v1_6_dissect.close_response(buffer, offset, packet, parent)
  end
  -- Dissect Seq Msg
  if msg_type == 0x0905 then
    return nyse_options_streamprotocol_pillar_v1_6_dissect.seq_msg(buffer, offset, packet, parent)
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_options_streamprotocol_pillar_v1_6.init()
end

-- Dissector for Nyse Options StreamProtocol Pillar 1.6
function nyse_options_streamprotocol_pillar_v1_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_options_streamprotocol_pillar_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(nyse_options_streamprotocol_pillar_v1_6, buffer(), nyse_options_streamprotocol_pillar_v1_6.description, "("..buffer:len().." Bytes)")
  return nyse_options_streamprotocol_pillar_v1_6_dissect.pillar_stream_message(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, nyse_options_streamprotocol_pillar_v1_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_options_streamprotocol_pillar_v1_6_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Options StreamProtocol Pillar 1.6
local function nyse_options_streamprotocol_pillar_v1_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_options_streamprotocol_pillar_v1_6_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_options_streamprotocol_pillar_v1_6
  nyse_options_streamprotocol_pillar_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Options StreamProtocol Pillar 1.6
nyse_options_streamprotocol_pillar_v1_6:register_heuristic("tcp", nyse_options_streamprotocol_pillar_v1_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.6
--   Date: Thursday, September 26, 2019
--   Specification: NYSE_Pillar_Stream_Protocol_Specification.pdf
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
