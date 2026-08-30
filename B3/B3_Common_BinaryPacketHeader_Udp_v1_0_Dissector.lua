-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- B3 Common BinaryPacketHeader Udp 1.0 Protocol
local omi_b3_common_binarypacketheader_udp_v1_0 = Proto("Omi.B3.Common.BinaryPacketHeader.Udp.v1.0", "B3 Common BinaryPacketHeader Udp 1.0")

-- Protocol table
local b3_common_binarypacketheader_udp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- B3 Common BinaryPacketHeader Udp 1.0 Fields
omi_b3_common_binarypacketheader_udp_v1_0.fields.block_length = ProtoField.new("Block Length", "b3.common.binarypacketheader.udp.v1.0.blocklength", ftypes.UINT16)
omi_b3_common_binarypacketheader_udp_v1_0.fields.channel_id = ProtoField.new("Channel Id", "b3.common.binarypacketheader.udp.v1.0.channelid", ftypes.UINT8)
omi_b3_common_binarypacketheader_udp_v1_0.fields.encoding_type = ProtoField.new("Encoding Type", "b3.common.binarypacketheader.udp.v1.0.encodingtype", ftypes.UINT16)
omi_b3_common_binarypacketheader_udp_v1_0.fields.message_length = ProtoField.new("Message Length", "b3.common.binarypacketheader.udp.v1.0.messagelength", ftypes.UINT16)
omi_b3_common_binarypacketheader_udp_v1_0.fields.payload = ProtoField.new("Payload", "b3.common.binarypacketheader.udp.v1.0.payload", ftypes.BYTES)
omi_b3_common_binarypacketheader_udp_v1_0.fields.reserved = ProtoField.new("Reserved", "b3.common.binarypacketheader.udp.v1.0.reserved", ftypes.UINT8)
omi_b3_common_binarypacketheader_udp_v1_0.fields.schema_id = ProtoField.new("Schema Id", "b3.common.binarypacketheader.udp.v1.0.schemaid", ftypes.UINT16)
omi_b3_common_binarypacketheader_udp_v1_0.fields.sending_time = ProtoField.new("Sending Time", "b3.common.binarypacketheader.udp.v1.0.sendingtime", ftypes.UINT64)
omi_b3_common_binarypacketheader_udp_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "b3.common.binarypacketheader.udp.v1.0.sequencenumber", ftypes.UINT32)
omi_b3_common_binarypacketheader_udp_v1_0.fields.sequence_version = ProtoField.new("Sequence Version", "b3.common.binarypacketheader.udp.v1.0.sequenceversion", ftypes.UINT16)
omi_b3_common_binarypacketheader_udp_v1_0.fields.template_id = ProtoField.new("Template Id", "b3.common.binarypacketheader.udp.v1.0.templateid", ftypes.UINT16)
omi_b3_common_binarypacketheader_udp_v1_0.fields.version = ProtoField.new("Version", "b3.common.binarypacketheader.udp.v1.0.version", ftypes.UINT16)

-- B3 Common BinaryPacketHeader Udp 1.0 Headers
omi_b3_common_binarypacketheader_udp_v1_0.fields.framing_header = ProtoField.new("Framing Header", "b3.common.binarypacketheader.udp.v1.0.framingheader", ftypes.STRING)
omi_b3_common_binarypacketheader_udp_v1_0.fields.message = ProtoField.new("Message", "b3.common.binarypacketheader.udp.v1.0.message", ftypes.STRING)
omi_b3_common_binarypacketheader_udp_v1_0.fields.message_header = ProtoField.new("Message Header", "b3.common.binarypacketheader.udp.v1.0.messageheader", ftypes.STRING)
omi_b3_common_binarypacketheader_udp_v1_0.fields.packet = ProtoField.new("Packet", "b3.common.binarypacketheader.udp.v1.0.packet", ftypes.STRING)
omi_b3_common_binarypacketheader_udp_v1_0.fields.packet_header = ProtoField.new("Packet Header", "b3.common.binarypacketheader.udp.v1.0.packetheader", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- B3 Common BinaryPacketHeader Udp 1.0 Element Dissection Options
show.structs = true
show.headers = true

-- Register B3 Common BinaryPacketHeader Udp 1.0 Show Options
omi_b3_common_binarypacketheader_udp_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_b3_common_binarypacketheader_udp_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")

-- Handle changed preferences
function omi_b3_common_binarypacketheader_udp_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_b3_common_binarypacketheader_udp_v1_0.prefs.show_headers then
    show.headers = omi_b3_common_binarypacketheader_udp_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_b3_common_binarypacketheader_udp_v1_0.prefs.show_structs then
    show.structs = omi_b3_common_binarypacketheader_udp_v1_0.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- B3 Common BinaryPacketHeader Udp 1.0 Fields
-----------------------------------------------------------------------

-- Block Length
b3_common_binarypacketheader_udp_v1_0.block_length = {}

-- Size: Block Length
b3_common_binarypacketheader_udp_v1_0.block_length.size = 2

-- Display: Block Length
b3_common_binarypacketheader_udp_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
b3_common_binarypacketheader_udp_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_common_binarypacketheader_udp_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Channel Id
b3_common_binarypacketheader_udp_v1_0.channel_id = {}

-- Size: Channel Id
b3_common_binarypacketheader_udp_v1_0.channel_id.size = 1

-- Display: Channel Id
b3_common_binarypacketheader_udp_v1_0.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
b3_common_binarypacketheader_udp_v1_0.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.channel_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_common_binarypacketheader_udp_v1_0.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Encoding Type
b3_common_binarypacketheader_udp_v1_0.encoding_type = {}

-- Size: Encoding Type
b3_common_binarypacketheader_udp_v1_0.encoding_type.size = 2

-- Display: Encoding Type
b3_common_binarypacketheader_udp_v1_0.encoding_type.display = function(value)
  return "Encoding Type: "..value
end

-- Dissect: Encoding Type
b3_common_binarypacketheader_udp_v1_0.encoding_type.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.encoding_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_common_binarypacketheader_udp_v1_0.encoding_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.encoding_type, range, value, display)

  return offset + length, value
end

-- Message Length
b3_common_binarypacketheader_udp_v1_0.message_length = {}

-- Size: Message Length
b3_common_binarypacketheader_udp_v1_0.message_length.size = 2

-- Display: Message Length
b3_common_binarypacketheader_udp_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
b3_common_binarypacketheader_udp_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_common_binarypacketheader_udp_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Payload
b3_common_binarypacketheader_udp_v1_0.payload = {}

-- Display: Payload
b3_common_binarypacketheader_udp_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
b3_common_binarypacketheader_udp_v1_0.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = b3_common_binarypacketheader_udp_v1_0.payload.display(value, packet, parent, size)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.payload, range, value, display)

  return offset + size, value
end

-- Reserved
b3_common_binarypacketheader_udp_v1_0.reserved = {}

-- Size: Reserved
b3_common_binarypacketheader_udp_v1_0.reserved.size = 1

-- Display: Reserved
b3_common_binarypacketheader_udp_v1_0.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
b3_common_binarypacketheader_udp_v1_0.reserved.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.reserved.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = b3_common_binarypacketheader_udp_v1_0.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.reserved, range, value, display)

  return offset + length, value
end

-- Schema Id
b3_common_binarypacketheader_udp_v1_0.schema_id = {}

-- Size: Schema Id
b3_common_binarypacketheader_udp_v1_0.schema_id.size = 2

-- Display: Schema Id
b3_common_binarypacketheader_udp_v1_0.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
b3_common_binarypacketheader_udp_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_common_binarypacketheader_udp_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Sending Time
b3_common_binarypacketheader_udp_v1_0.sending_time = {}

-- Size: Sending Time
b3_common_binarypacketheader_udp_v1_0.sending_time.size = 8

-- Display: Sending Time
b3_common_binarypacketheader_udp_v1_0.sending_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sending Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
b3_common_binarypacketheader_udp_v1_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = b3_common_binarypacketheader_udp_v1_0.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Sequence Number
b3_common_binarypacketheader_udp_v1_0.sequence_number = {}

-- Size: Sequence Number
b3_common_binarypacketheader_udp_v1_0.sequence_number.size = 4

-- Display: Sequence Number
b3_common_binarypacketheader_udp_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
b3_common_binarypacketheader_udp_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_common_binarypacketheader_udp_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequence Version
b3_common_binarypacketheader_udp_v1_0.sequence_version = {}

-- Size: Sequence Version
b3_common_binarypacketheader_udp_v1_0.sequence_version.size = 2

-- Display: Sequence Version
b3_common_binarypacketheader_udp_v1_0.sequence_version.display = function(value)
  return "Sequence Version: "..value
end

-- Dissect: Sequence Version
b3_common_binarypacketheader_udp_v1_0.sequence_version.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.sequence_version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_common_binarypacketheader_udp_v1_0.sequence_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.sequence_version, range, value, display)

  return offset + length, value
end

-- Template Id
b3_common_binarypacketheader_udp_v1_0.template_id = {}

-- Size: Template Id
b3_common_binarypacketheader_udp_v1_0.template_id.size = 2

-- Display: Template Id
b3_common_binarypacketheader_udp_v1_0.template_id.display = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
b3_common_binarypacketheader_udp_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_common_binarypacketheader_udp_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Version
b3_common_binarypacketheader_udp_v1_0.version = {}

-- Size: Version
b3_common_binarypacketheader_udp_v1_0.version.size = 2

-- Display: Version
b3_common_binarypacketheader_udp_v1_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
b3_common_binarypacketheader_udp_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = b3_common_binarypacketheader_udp_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = b3_common_binarypacketheader_udp_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect B3 Common BinaryPacketHeader Udp 1.0
-----------------------------------------------------------------------

-- Message Header
b3_common_binarypacketheader_udp_v1_0.message_header = {}

-- Size: Message Header
b3_common_binarypacketheader_udp_v1_0.message_header.size =
  b3_common_binarypacketheader_udp_v1_0.block_length.size + 
  b3_common_binarypacketheader_udp_v1_0.template_id.size + 
  b3_common_binarypacketheader_udp_v1_0.schema_id.size + 
  b3_common_binarypacketheader_udp_v1_0.version.size

-- Display: Message Header
b3_common_binarypacketheader_udp_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
b3_common_binarypacketheader_udp_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = b3_common_binarypacketheader_udp_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = b3_common_binarypacketheader_udp_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer
  index, schema_id = b3_common_binarypacketheader_udp_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer
  index, version = b3_common_binarypacketheader_udp_v1_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
b3_common_binarypacketheader_udp_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.message_header, buffer(offset, 0))
    local index = b3_common_binarypacketheader_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_common_binarypacketheader_udp_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_common_binarypacketheader_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Framing Header
b3_common_binarypacketheader_udp_v1_0.framing_header = {}

-- Size: Framing Header
b3_common_binarypacketheader_udp_v1_0.framing_header.size =
  b3_common_binarypacketheader_udp_v1_0.message_length.size + 
  b3_common_binarypacketheader_udp_v1_0.encoding_type.size

-- Display: Framing Header
b3_common_binarypacketheader_udp_v1_0.framing_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Framing Header
b3_common_binarypacketheader_udp_v1_0.framing_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = b3_common_binarypacketheader_udp_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index, encoding_type = b3_common_binarypacketheader_udp_v1_0.encoding_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Framing Header
b3_common_binarypacketheader_udp_v1_0.framing_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.framing_header, buffer(offset, 0))
    local index = b3_common_binarypacketheader_udp_v1_0.framing_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_common_binarypacketheader_udp_v1_0.framing_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_common_binarypacketheader_udp_v1_0.framing_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
b3_common_binarypacketheader_udp_v1_0.message = {}

-- Display: Message
b3_common_binarypacketheader_udp_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
b3_common_binarypacketheader_udp_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Framing Header: Struct of 2 fields
  index, framing_header = b3_common_binarypacketheader_udp_v1_0.framing_header.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = b3_common_binarypacketheader_udp_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 12, 2):le_uint()

  -- Runtime Size Of: Payload
  local size_of_payload = message_length - 12

  -- Payload: 0 Byte
  index, payload = b3_common_binarypacketheader_udp_v1_0.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
b3_common_binarypacketheader_udp_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.message, buffer(offset, 0))
    local current = b3_common_binarypacketheader_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = b3_common_binarypacketheader_udp_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    b3_common_binarypacketheader_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Packet Header
b3_common_binarypacketheader_udp_v1_0.packet_header = {}

-- Size: Packet Header
b3_common_binarypacketheader_udp_v1_0.packet_header.size =
  b3_common_binarypacketheader_udp_v1_0.channel_id.size + 
  b3_common_binarypacketheader_udp_v1_0.reserved.size + 
  b3_common_binarypacketheader_udp_v1_0.sequence_version.size + 
  b3_common_binarypacketheader_udp_v1_0.sequence_number.size + 
  b3_common_binarypacketheader_udp_v1_0.sending_time.size

-- Display: Packet Header
b3_common_binarypacketheader_udp_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
b3_common_binarypacketheader_udp_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = b3_common_binarypacketheader_udp_v1_0.channel_id.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = b3_common_binarypacketheader_udp_v1_0.reserved.dissect(buffer, index, packet, parent)

  -- Sequence Version: 2 Byte Unsigned Fixed Width Integer
  index, sequence_version = b3_common_binarypacketheader_udp_v1_0.sequence_version.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = b3_common_binarypacketheader_udp_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = b3_common_binarypacketheader_udp_v1_0.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
b3_common_binarypacketheader_udp_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_b3_common_binarypacketheader_udp_v1_0.fields.packet_header, buffer(offset, 0))
    local index = b3_common_binarypacketheader_udp_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = b3_common_binarypacketheader_udp_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return b3_common_binarypacketheader_udp_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
b3_common_binarypacketheader_udp_v1_0.packet = {}

-- Verify required size of Udp packet
b3_common_binarypacketheader_udp_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= b3_common_binarypacketheader_udp_v1_0.packet_header.size + b3_common_binarypacketheader_udp_v1_0.framing_header.size + b3_common_binarypacketheader_udp_v1_0.message_header.size
end

-- Dissect Packet
b3_common_binarypacketheader_udp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = b3_common_binarypacketheader_udp_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = b3_common_binarypacketheader_udp_v1_0.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_b3_common_binarypacketheader_udp_v1_0.init()
end

-- Dissector for B3 Common BinaryPacketHeader Udp 1.0
function omi_b3_common_binarypacketheader_udp_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_b3_common_binarypacketheader_udp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_b3_common_binarypacketheader_udp_v1_0, buffer(), omi_b3_common_binarypacketheader_udp_v1_0.description, "("..buffer:len().." Bytes)")
  return b3_common_binarypacketheader_udp_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for B3 Common BinaryPacketHeader Udp 1.0 (Udp)
local function omi_b3_common_binarypacketheader_udp_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not b3_common_binarypacketheader_udp_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_b3_common_binarypacketheader_udp_v1_0
  omi_b3_common_binarypacketheader_udp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for B3 Common BinaryPacketHeader Udp 1.0
omi_b3_common_binarypacketheader_udp_v1_0:register_heuristic("udp", omi_b3_common_binarypacketheader_udp_v1_0_udp_heuristic)

-- Register B3 Common BinaryPacketHeader Udp 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_b3_common_binarypacketheader_udp_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Brasil, Bolsa, Balcão
--   Version: 1.0
--   Date: Sunday, September 20, 2015
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
