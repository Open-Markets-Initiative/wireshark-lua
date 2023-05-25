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
nyse_options_streamprotocol_pillar_v1_6.fields.channel_id = ProtoField.new("Channel Id", "nyse.options.streamprotocol.pillar.v1.6.channelid", ftypes.UINT32)
nyse_options_streamprotocol_pillar_v1_6.fields.first_message_sequence_number = ProtoField.new("First Message Sequence Number", "nyse.options.streamprotocol.pillar.v1.6.firstmessagesequencenumber", ftypes.UINT64)
nyse_options_streamprotocol_pillar_v1_6.fields.iex_tp_header = ProtoField.new("Iex Tp Header", "nyse.options.streamprotocol.pillar.v1.6.iextpheader", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.message = ProtoField.new("Message", "nyse.options.streamprotocol.pillar.v1.6.message", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.message_count = ProtoField.new("Message Count", "nyse.options.streamprotocol.pillar.v1.6.messagecount", ftypes.UINT16)
nyse_options_streamprotocol_pillar_v1_6.fields.message_header = ProtoField.new("Message Header", "nyse.options.streamprotocol.pillar.v1.6.messageheader", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.message_length = ProtoField.new("Message Length", "nyse.options.streamprotocol.pillar.v1.6.messagelength", ftypes.UINT16)
nyse_options_streamprotocol_pillar_v1_6.fields.message_protocol_id = ProtoField.new("Message Protocol Id", "nyse.options.streamprotocol.pillar.v1.6.messageprotocolid", ftypes.UINT16)
nyse_options_streamprotocol_pillar_v1_6.fields.message_type = ProtoField.new("Message Type", "nyse.options.streamprotocol.pillar.v1.6.messagetype", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.packet = ProtoField.new("Packet", "nyse.options.streamprotocol.pillar.v1.6.packet", ftypes.STRING)
nyse_options_streamprotocol_pillar_v1_6.fields.payload_length = ProtoField.new("Payload Length", "nyse.options.streamprotocol.pillar.v1.6.payloadlength", ftypes.UINT16)
nyse_options_streamprotocol_pillar_v1_6.fields.reserved = ProtoField.new("Reserved", "nyse.options.streamprotocol.pillar.v1.6.reserved", ftypes.BYTES)
nyse_options_streamprotocol_pillar_v1_6.fields.send_time = ProtoField.new("Send Time", "nyse.options.streamprotocol.pillar.v1.6.sendtime", ftypes.UINT64)
nyse_options_streamprotocol_pillar_v1_6.fields.session_id = ProtoField.new("Session Id", "nyse.options.streamprotocol.pillar.v1.6.sessionid", ftypes.UINT32)
nyse_options_streamprotocol_pillar_v1_6.fields.stream_offset = ProtoField.new("Stream Offset", "nyse.options.streamprotocol.pillar.v1.6.streamoffset", ftypes.UINT64)
nyse_options_streamprotocol_pillar_v1_6.fields.version = ProtoField.new("Version", "nyse.options.streamprotocol.pillar.v1.6.version", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Options StreamProtocol Pillar 1.6 Element Dissection Options
show.iex_tp_header = true
show.message = true
show.message_header = true
show.packet = true

-- Register Nyse Options StreamProtocol Pillar 1.6 Show Options
nyse_options_streamprotocol_pillar_v1_6.prefs.show_iex_tp_header = Pref.bool("Show Iex Tp Header", show.iex_tp_header, "Parse and add Iex Tp Header to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_options_streamprotocol_pillar_v1_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function nyse_options_streamprotocol_pillar_v1_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.iex_tp_header ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_iex_tp_header then
    show.iex_tp_header = nyse_options_streamprotocol_pillar_v1_6.prefs.show_iex_tp_header
    changed = true
  end
  if show.message ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_message then
    show.message = nyse_options_streamprotocol_pillar_v1_6.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_message_header then
    show.message_header = nyse_options_streamprotocol_pillar_v1_6.prefs.show_message_header
    changed = true
  end
  if show.packet ~= nyse_options_streamprotocol_pillar_v1_6.prefs.show_packet then
    show.packet = nyse_options_streamprotocol_pillar_v1_6.prefs.show_packet
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

-- Size: Message Type
nyse_options_streamprotocol_pillar_v1_6_size_of.message_type = 1

-- Display: Message Type
nyse_options_streamprotocol_pillar_v1_6_display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
nyse_options_streamprotocol_pillar_v1_6_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
nyse_options_streamprotocol_pillar_v1_6_size_of.message_length = 2

-- Display: Message Length
nyse_options_streamprotocol_pillar_v1_6_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nyse_options_streamprotocol_pillar_v1_6_dissect.message_length = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.message_length(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nyse_options_streamprotocol_pillar_v1_6_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.message_length

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.message_type

  return index
end

-- Display: Message Header
nyse_options_streamprotocol_pillar_v1_6_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
nyse_options_streamprotocol_pillar_v1_6_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nyse_options_streamprotocol_pillar_v1_6_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = nyse_options_streamprotocol_pillar_v1_6_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_options_streamprotocol_pillar_v1_6_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = nyse_options_streamprotocol_pillar_v1_6_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.message_header, range, display)
  end

  return nyse_options_streamprotocol_pillar_v1_6_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
nyse_options_streamprotocol_pillar_v1_6_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
nyse_options_streamprotocol_pillar_v1_6_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_options_streamprotocol_pillar_v1_6_dissect.message_header(buffer, index, packet, parent)

  -- Message Data
  index, message_data = nyse_options_streamprotocol_pillar_v1_6_dissect.message_data(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
nyse_options_streamprotocol_pillar_v1_6_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.message(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.message, range, display)
  end

  nyse_options_streamprotocol_pillar_v1_6_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Send Time
nyse_options_streamprotocol_pillar_v1_6_size_of.send_time = 8

-- Display: Send Time
nyse_options_streamprotocol_pillar_v1_6_display.send_time = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
nyse_options_streamprotocol_pillar_v1_6_dissect.send_time = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.send_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.send_time(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.send_time, range, value, display)

  return offset + length, value
end

-- Size: First Message Sequence Number
nyse_options_streamprotocol_pillar_v1_6_size_of.first_message_sequence_number = 8

-- Display: First Message Sequence Number
nyse_options_streamprotocol_pillar_v1_6_display.first_message_sequence_number = function(value)
  return "First Message Sequence Number: "..value
end

-- Dissect: First Message Sequence Number
nyse_options_streamprotocol_pillar_v1_6_dissect.first_message_sequence_number = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.first_message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.first_message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.first_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Stream Offset
nyse_options_streamprotocol_pillar_v1_6_size_of.stream_offset = 8

-- Display: Stream Offset
nyse_options_streamprotocol_pillar_v1_6_display.stream_offset = function(value)
  return "Stream Offset: "..value
end

-- Dissect: Stream Offset
nyse_options_streamprotocol_pillar_v1_6_dissect.stream_offset = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.stream_offset
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.stream_offset(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.stream_offset, range, value, display)

  return offset + length, value
end

-- Size: Message Count
nyse_options_streamprotocol_pillar_v1_6_size_of.message_count = 2

-- Display: Message Count
nyse_options_streamprotocol_pillar_v1_6_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_options_streamprotocol_pillar_v1_6_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Payload Length
nyse_options_streamprotocol_pillar_v1_6_size_of.payload_length = 2

-- Display: Payload Length
nyse_options_streamprotocol_pillar_v1_6_display.payload_length = function(value)
  return "Payload Length: "..value
end

-- Dissect: Payload Length
nyse_options_streamprotocol_pillar_v1_6_dissect.payload_length = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.payload_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.payload_length(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.payload_length, range, value, display)

  return offset + length, value
end

-- Size: Session Id
nyse_options_streamprotocol_pillar_v1_6_size_of.session_id = 4

-- Display: Session Id
nyse_options_streamprotocol_pillar_v1_6_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
nyse_options_streamprotocol_pillar_v1_6_dissect.session_id = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.session_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Channel Id
nyse_options_streamprotocol_pillar_v1_6_size_of.channel_id = 4

-- Display: Channel Id
nyse_options_streamprotocol_pillar_v1_6_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_options_streamprotocol_pillar_v1_6_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Message Protocol Id
nyse_options_streamprotocol_pillar_v1_6_size_of.message_protocol_id = 2

-- Display: Message Protocol Id
nyse_options_streamprotocol_pillar_v1_6_display.message_protocol_id = function(value)
  return "Message Protocol Id: "..value
end

-- Dissect: Message Protocol Id
nyse_options_streamprotocol_pillar_v1_6_dissect.message_protocol_id = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.message_protocol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.message_protocol_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.message_protocol_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved
nyse_options_streamprotocol_pillar_v1_6_size_of.reserved = 1

-- Display: Reserved
nyse_options_streamprotocol_pillar_v1_6_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
nyse_options_streamprotocol_pillar_v1_6_dissect.reserved = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.reserved
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_streamprotocol_pillar_v1_6_display.reserved(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Version
nyse_options_streamprotocol_pillar_v1_6_size_of.version = 1

-- Display: Version
nyse_options_streamprotocol_pillar_v1_6_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
nyse_options_streamprotocol_pillar_v1_6_dissect.version = function(buffer, offset, packet, parent)
  local length = nyse_options_streamprotocol_pillar_v1_6_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_streamprotocol_pillar_v1_6_display.version(value, buffer, offset, packet, parent)

  parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Iex Tp Header
nyse_options_streamprotocol_pillar_v1_6_size_of.iex_tp_header = function(buffer, offset)
  local index = 0

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.version

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.reserved

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.message_protocol_id

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.channel_id

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.session_id

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.payload_length

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.message_count

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.stream_offset

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.first_message_sequence_number

  index = index + nyse_options_streamprotocol_pillar_v1_6_size_of.send_time

  return index
end

-- Display: Iex Tp Header
nyse_options_streamprotocol_pillar_v1_6_display.iex_tp_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Iex Tp Header
nyse_options_streamprotocol_pillar_v1_6_dissect.iex_tp_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = nyse_options_streamprotocol_pillar_v1_6_dissect.version(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = nyse_options_streamprotocol_pillar_v1_6_dissect.reserved(buffer, index, packet, parent)

  -- Message Protocol Id: 2 Byte Unsigned Fixed Width Integer
  index, message_protocol_id = nyse_options_streamprotocol_pillar_v1_6_dissect.message_protocol_id(buffer, index, packet, parent)

  -- Channel Id: 4 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_options_streamprotocol_pillar_v1_6_dissect.channel_id(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = nyse_options_streamprotocol_pillar_v1_6_dissect.session_id(buffer, index, packet, parent)

  -- Payload Length: 2 Byte Unsigned Fixed Width Integer
  index, payload_length = nyse_options_streamprotocol_pillar_v1_6_dissect.payload_length(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_options_streamprotocol_pillar_v1_6_dissect.message_count(buffer, index, packet, parent)

  -- Stream Offset: 8 Byte Unsigned Fixed Width Integer
  index, stream_offset = nyse_options_streamprotocol_pillar_v1_6_dissect.stream_offset(buffer, index, packet, parent)

  -- First Message Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, first_message_sequence_number = nyse_options_streamprotocol_pillar_v1_6_dissect.first_message_sequence_number(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = nyse_options_streamprotocol_pillar_v1_6_dissect.send_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Iex Tp Header
nyse_options_streamprotocol_pillar_v1_6_dissect.iex_tp_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.iex_tp_header then
    local length = nyse_options_streamprotocol_pillar_v1_6_size_of.iex_tp_header(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_options_streamprotocol_pillar_v1_6_display.iex_tp_header(buffer, packet, parent)
    parent = parent:add(nyse_options_streamprotocol_pillar_v1_6.fields.iex_tp_header, range, display)
  end

  return nyse_options_streamprotocol_pillar_v1_6_dissect.iex_tp_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
nyse_options_streamprotocol_pillar_v1_6_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Iex Tp Header: Struct of 10 fields
  index, iex_tp_header = nyse_options_streamprotocol_pillar_v1_6_dissect.iex_tp_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 26, 2):le_uint()

  -- Message: Struct of 2 fields
  for i = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index = nyse_options_streamprotocol_pillar_v1_6_dissect.message(buffer, index, packet, parent, size_of_message)
  end

  return index
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
  return nyse_options_streamprotocol_pillar_v1_6_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_options_streamprotocol_pillar_v1_6)


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
nyse_options_streamprotocol_pillar_v1_6:register_heuristic("udp", nyse_options_streamprotocol_pillar_v1_6_heuristic)

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
