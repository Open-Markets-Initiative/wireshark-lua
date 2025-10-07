-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex Equities UdpHeader IexTp 1.0 Protocol
local omi_iex_equities_udpheader_iextp_v1_0 = Proto("Iex.Equities.UdpHeader.IexTp.v1.0.Lua", "Iex Equities UdpHeader IexTp 1.0")

-- Protocol table
local iex_equities_udpheader_iextp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex Equities UdpHeader IexTp 1.0 Fields
omi_iex_equities_udpheader_iextp_v1_0.fields.channel_id = ProtoField.new("Channel Id", "iex.equities.udpheader.iextp.v1.0.channelid", ftypes.UINT32)
omi_iex_equities_udpheader_iextp_v1_0.fields.first_message_sequence_number = ProtoField.new("First Message Sequence Number", "iex.equities.udpheader.iextp.v1.0.firstmessagesequencenumber", ftypes.UINT64)
omi_iex_equities_udpheader_iextp_v1_0.fields.iex_tp_header = ProtoField.new("Iex Tp Header", "iex.equities.udpheader.iextp.v1.0.iextpheader", ftypes.STRING)
omi_iex_equities_udpheader_iextp_v1_0.fields.message = ProtoField.new("Message", "iex.equities.udpheader.iextp.v1.0.message", ftypes.STRING)
omi_iex_equities_udpheader_iextp_v1_0.fields.message_count = ProtoField.new("Message Count", "iex.equities.udpheader.iextp.v1.0.messagecount", ftypes.UINT16)
omi_iex_equities_udpheader_iextp_v1_0.fields.message_data = ProtoField.new("Message Data", "iex.equities.udpheader.iextp.v1.0.messagedata", ftypes.BYTES)
omi_iex_equities_udpheader_iextp_v1_0.fields.message_header = ProtoField.new("Message Header", "iex.equities.udpheader.iextp.v1.0.messageheader", ftypes.STRING)
omi_iex_equities_udpheader_iextp_v1_0.fields.message_length = ProtoField.new("Message Length", "iex.equities.udpheader.iextp.v1.0.messagelength", ftypes.UINT16)
omi_iex_equities_udpheader_iextp_v1_0.fields.message_protocol_id = ProtoField.new("Message Protocol Id", "iex.equities.udpheader.iextp.v1.0.messageprotocolid", ftypes.UINT16)
omi_iex_equities_udpheader_iextp_v1_0.fields.message_type = ProtoField.new("Message Type", "iex.equities.udpheader.iextp.v1.0.messagetype", ftypes.STRING)
omi_iex_equities_udpheader_iextp_v1_0.fields.packet = ProtoField.new("Packet", "iex.equities.udpheader.iextp.v1.0.packet", ftypes.STRING)
omi_iex_equities_udpheader_iextp_v1_0.fields.payload_length = ProtoField.new("Payload Length", "iex.equities.udpheader.iextp.v1.0.payloadlength", ftypes.UINT16)
omi_iex_equities_udpheader_iextp_v1_0.fields.reserved = ProtoField.new("Reserved", "iex.equities.udpheader.iextp.v1.0.reserved", ftypes.BYTES)
omi_iex_equities_udpheader_iextp_v1_0.fields.send_time = ProtoField.new("Send Time", "iex.equities.udpheader.iextp.v1.0.sendtime", ftypes.UINT64)
omi_iex_equities_udpheader_iextp_v1_0.fields.session_id = ProtoField.new("Session Id", "iex.equities.udpheader.iextp.v1.0.sessionid", ftypes.UINT32)
omi_iex_equities_udpheader_iextp_v1_0.fields.stream_offset = ProtoField.new("Stream Offset", "iex.equities.udpheader.iextp.v1.0.streamoffset", ftypes.UINT64)
omi_iex_equities_udpheader_iextp_v1_0.fields.version = ProtoField.new("Version", "iex.equities.udpheader.iextp.v1.0.version", ftypes.UINT8)

-- Iex Equities UdpHeader IexTp 1.0 generated fields
omi_iex_equities_udpheader_iextp_v1_0.fields.message_index = ProtoField.new("Message Index", "iex.equities.udpheader.iextp.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Iex Equities UdpHeader IexTp 1.0 Element Dissection Options
show.iex_tp_header = true
show.message = true
show.message_header = true
show.packet = true

-- Register Iex Equities UdpHeader IexTp 1.0 Show Options
omi_iex_equities_udpheader_iextp_v1_0.prefs.show_iex_tp_header = Pref.bool("Show Iex Tp Header", show.iex_tp_header, "Parse and add Iex Tp Header to protocol tree")
omi_iex_equities_udpheader_iextp_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_iex_equities_udpheader_iextp_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_iex_equities_udpheader_iextp_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function omi_iex_equities_udpheader_iextp_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.iex_tp_header ~= omi_iex_equities_udpheader_iextp_v1_0.prefs.show_iex_tp_header then
    show.iex_tp_header = omi_iex_equities_udpheader_iextp_v1_0.prefs.show_iex_tp_header
    changed = true
  end
  if show.message ~= omi_iex_equities_udpheader_iextp_v1_0.prefs.show_message then
    show.message = omi_iex_equities_udpheader_iextp_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_iex_equities_udpheader_iextp_v1_0.prefs.show_message_header then
    show.message_header = omi_iex_equities_udpheader_iextp_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_iex_equities_udpheader_iextp_v1_0.prefs.show_packet then
    show.packet = omi_iex_equities_udpheader_iextp_v1_0.prefs.show_packet
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Iex Equities UdpHeader IexTp 1.0
-----------------------------------------------------------------------

-- Message Data
iex_equities_udpheader_iextp_v1_0.message_data = {}

-- Display: Message Data
iex_equities_udpheader_iextp_v1_0.message_data.display = function(value)
  return "Message Data: "..value
end

-- Dissect runtime sized field: Message Data
iex_equities_udpheader_iextp_v1_0.message_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = iex_equities_udpheader_iextp_v1_0.message_data.display(value, packet, parent, size)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.message_data, range, value, display)

  return offset + size, value
end

-- Message Type
iex_equities_udpheader_iextp_v1_0.message_type = {}

-- Size: Message Type
iex_equities_udpheader_iextp_v1_0.message_type.size = 1

-- Display: Message Type
iex_equities_udpheader_iextp_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
iex_equities_udpheader_iextp_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_equities_udpheader_iextp_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
iex_equities_udpheader_iextp_v1_0.message_length = {}

-- Size: Message Length
iex_equities_udpheader_iextp_v1_0.message_length.size = 2

-- Display: Message Length
iex_equities_udpheader_iextp_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
iex_equities_udpheader_iextp_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_udpheader_iextp_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
iex_equities_udpheader_iextp_v1_0.message_header = {}

-- Size: Message Header
iex_equities_udpheader_iextp_v1_0.message_header.size =
  iex_equities_udpheader_iextp_v1_0.message_length.size + 
  iex_equities_udpheader_iextp_v1_0.message_type.size

-- Display: Message Header
iex_equities_udpheader_iextp_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_equities_udpheader_iextp_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = iex_equities_udpheader_iextp_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = iex_equities_udpheader_iextp_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_equities_udpheader_iextp_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.message_header, buffer(offset, 0))
    local index = iex_equities_udpheader_iextp_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_udpheader_iextp_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_udpheader_iextp_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
iex_equities_udpheader_iextp_v1_0.message = {}

-- Display: Message
iex_equities_udpheader_iextp_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
iex_equities_udpheader_iextp_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = iex_equities_udpheader_iextp_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 3, 2):le_uint()

  -- Runtime Size Of: Message Data
  local size_of_message_data = message_length - 1

  -- Message Data: 0 Byte
  index, message_data = iex_equities_udpheader_iextp_v1_0.message_data.dissect(buffer, index, packet, parent, size_of_message_data)

  return index
end

-- Dissect: Message
iex_equities_udpheader_iextp_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.message, buffer(offset, 0))
    local current = iex_equities_udpheader_iextp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = iex_equities_udpheader_iextp_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    iex_equities_udpheader_iextp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
iex_equities_udpheader_iextp_v1_0.send_time = {}

-- Size: Send Time
iex_equities_udpheader_iextp_v1_0.send_time.size = 8

-- Display: Send Time
iex_equities_udpheader_iextp_v1_0.send_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
iex_equities_udpheader_iextp_v1_0.send_time.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_udpheader_iextp_v1_0.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.send_time, range, value, display)

  return offset + length, value
end

-- First Message Sequence Number
iex_equities_udpheader_iextp_v1_0.first_message_sequence_number = {}

-- Size: First Message Sequence Number
iex_equities_udpheader_iextp_v1_0.first_message_sequence_number.size = 8

-- Display: First Message Sequence Number
iex_equities_udpheader_iextp_v1_0.first_message_sequence_number.display = function(value)
  return "First Message Sequence Number: "..value
end

-- Dissect: First Message Sequence Number
iex_equities_udpheader_iextp_v1_0.first_message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.first_message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_udpheader_iextp_v1_0.first_message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.first_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Stream Offset
iex_equities_udpheader_iextp_v1_0.stream_offset = {}

-- Size: Stream Offset
iex_equities_udpheader_iextp_v1_0.stream_offset.size = 8

-- Display: Stream Offset
iex_equities_udpheader_iextp_v1_0.stream_offset.display = function(value)
  return "Stream Offset: "..value
end

-- Dissect: Stream Offset
iex_equities_udpheader_iextp_v1_0.stream_offset.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.stream_offset.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_equities_udpheader_iextp_v1_0.stream_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.stream_offset, range, value, display)

  return offset + length, value
end

-- Message Count
iex_equities_udpheader_iextp_v1_0.message_count = {}

-- Size: Message Count
iex_equities_udpheader_iextp_v1_0.message_count.size = 2

-- Display: Message Count
iex_equities_udpheader_iextp_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
iex_equities_udpheader_iextp_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_udpheader_iextp_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Payload Length
iex_equities_udpheader_iextp_v1_0.payload_length = {}

-- Size: Payload Length
iex_equities_udpheader_iextp_v1_0.payload_length.size = 2

-- Display: Payload Length
iex_equities_udpheader_iextp_v1_0.payload_length.display = function(value)
  return "Payload Length: "..value
end

-- Dissect: Payload Length
iex_equities_udpheader_iextp_v1_0.payload_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.payload_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_udpheader_iextp_v1_0.payload_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.payload_length, range, value, display)

  return offset + length, value
end

-- Session Id
iex_equities_udpheader_iextp_v1_0.session_id = {}

-- Size: Session Id
iex_equities_udpheader_iextp_v1_0.session_id.size = 4

-- Display: Session Id
iex_equities_udpheader_iextp_v1_0.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
iex_equities_udpheader_iextp_v1_0.session_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_udpheader_iextp_v1_0.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Channel Id
iex_equities_udpheader_iextp_v1_0.channel_id = {}

-- Size: Channel Id
iex_equities_udpheader_iextp_v1_0.channel_id.size = 4

-- Display: Channel Id
iex_equities_udpheader_iextp_v1_0.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
iex_equities_udpheader_iextp_v1_0.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_udpheader_iextp_v1_0.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Message Protocol Id
iex_equities_udpheader_iextp_v1_0.message_protocol_id = {}

-- Size: Message Protocol Id
iex_equities_udpheader_iextp_v1_0.message_protocol_id.size = 2

-- Display: Message Protocol Id
iex_equities_udpheader_iextp_v1_0.message_protocol_id.display = function(value)
  return "Message Protocol Id: "..value
end

-- Dissect: Message Protocol Id
iex_equities_udpheader_iextp_v1_0.message_protocol_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.message_protocol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_udpheader_iextp_v1_0.message_protocol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.message_protocol_id, range, value, display)

  return offset + length, value
end

-- Reserved
iex_equities_udpheader_iextp_v1_0.reserved = {}

-- Size: Reserved
iex_equities_udpheader_iextp_v1_0.reserved.size = 1

-- Display: Reserved
iex_equities_udpheader_iextp_v1_0.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
iex_equities_udpheader_iextp_v1_0.reserved.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = iex_equities_udpheader_iextp_v1_0.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.reserved, range, value, display)

  return offset + length, value
end

-- Version
iex_equities_udpheader_iextp_v1_0.version = {}

-- Size: Version
iex_equities_udpheader_iextp_v1_0.version.size = 1

-- Display: Version
iex_equities_udpheader_iextp_v1_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
iex_equities_udpheader_iextp_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = iex_equities_udpheader_iextp_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_equities_udpheader_iextp_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.version, range, value, display)

  return offset + length, value
end

-- Iex Tp Header
iex_equities_udpheader_iextp_v1_0.iex_tp_header = {}

-- Size: Iex Tp Header
iex_equities_udpheader_iextp_v1_0.iex_tp_header.size =
  iex_equities_udpheader_iextp_v1_0.version.size + 
  iex_equities_udpheader_iextp_v1_0.reserved.size + 
  iex_equities_udpheader_iextp_v1_0.message_protocol_id.size + 
  iex_equities_udpheader_iextp_v1_0.channel_id.size + 
  iex_equities_udpheader_iextp_v1_0.session_id.size + 
  iex_equities_udpheader_iextp_v1_0.payload_length.size + 
  iex_equities_udpheader_iextp_v1_0.message_count.size + 
  iex_equities_udpheader_iextp_v1_0.stream_offset.size + 
  iex_equities_udpheader_iextp_v1_0.first_message_sequence_number.size + 
  iex_equities_udpheader_iextp_v1_0.send_time.size

-- Display: Iex Tp Header
iex_equities_udpheader_iextp_v1_0.iex_tp_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Iex Tp Header
iex_equities_udpheader_iextp_v1_0.iex_tp_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = iex_equities_udpheader_iextp_v1_0.version.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte
  index, reserved = iex_equities_udpheader_iextp_v1_0.reserved.dissect(buffer, index, packet, parent)

  -- Message Protocol Id: 2 Byte Unsigned Fixed Width Integer
  index, message_protocol_id = iex_equities_udpheader_iextp_v1_0.message_protocol_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 4 Byte Unsigned Fixed Width Integer
  index, channel_id = iex_equities_udpheader_iextp_v1_0.channel_id.dissect(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = iex_equities_udpheader_iextp_v1_0.session_id.dissect(buffer, index, packet, parent)

  -- Payload Length: 2 Byte Unsigned Fixed Width Integer
  index, payload_length = iex_equities_udpheader_iextp_v1_0.payload_length.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = iex_equities_udpheader_iextp_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Stream Offset: 8 Byte Unsigned Fixed Width Integer
  index, stream_offset = iex_equities_udpheader_iextp_v1_0.stream_offset.dissect(buffer, index, packet, parent)

  -- First Message Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, first_message_sequence_number = iex_equities_udpheader_iextp_v1_0.first_message_sequence_number.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = iex_equities_udpheader_iextp_v1_0.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Iex Tp Header
iex_equities_udpheader_iextp_v1_0.iex_tp_header.dissect = function(buffer, offset, packet, parent)
  if show.iex_tp_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_equities_udpheader_iextp_v1_0.fields.iex_tp_header, buffer(offset, 0))
    local index = iex_equities_udpheader_iextp_v1_0.iex_tp_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_equities_udpheader_iextp_v1_0.iex_tp_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_equities_udpheader_iextp_v1_0.iex_tp_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
iex_equities_udpheader_iextp_v1_0.packet = {}

-- Dissect Packet
iex_equities_udpheader_iextp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Iex Tp Header: Struct of 10 fields
  index, iex_tp_header = iex_equities_udpheader_iextp_v1_0.iex_tp_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 26, 2):le_uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = iex_equities_udpheader_iextp_v1_0.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_iex_equities_udpheader_iextp_v1_0.init()
end

-- Dissector for Iex Equities UdpHeader IexTp 1.0
function omi_iex_equities_udpheader_iextp_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_iex_equities_udpheader_iextp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_iex_equities_udpheader_iextp_v1_0, buffer(), omi_iex_equities_udpheader_iextp_v1_0.description, "("..buffer:len().." Bytes)")
  return iex_equities_udpheader_iextp_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_iex_equities_udpheader_iextp_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
iex_equities_udpheader_iextp_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Iex Equities UdpHeader IexTp 1.0
local function omi_iex_equities_udpheader_iextp_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not iex_equities_udpheader_iextp_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_iex_equities_udpheader_iextp_v1_0
  omi_iex_equities_udpheader_iextp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex Equities UdpHeader IexTp 1.0
omi_iex_equities_udpheader_iextp_v1_0:register_heuristic("udp", omi_iex_equities_udpheader_iextp_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.0
--   Date: Sunday, September 20, 2015
--   Specification: IEX Transport Specification.pdf
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
