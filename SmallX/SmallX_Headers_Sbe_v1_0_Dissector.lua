-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- SmallX Headers Sbe 1.0 Protocol
local omi_smallx_headers_sbe_v1_0 = Proto("SmallX.Headers.Sbe.v1.0.Lua", "SmallX Headers Sbe 1.0")

-- Protocol table
local smallx_headers_sbe_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- SmallX Headers Sbe 1.0 Fields
omi_smallx_headers_sbe_v1_0.fields.administrative = ProtoField.new("Administrative", "smallx.headers.sbe.v1.0.administrative", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_smallx_headers_sbe_v1_0.fields.block_length = ProtoField.new("Block Length", "smallx.headers.sbe.v1.0.blocklength", ftypes.UINT16)
omi_smallx_headers_sbe_v1_0.fields.channel_id = ProtoField.new("Channel Id", "smallx.headers.sbe.v1.0.channelid", ftypes.UINT8)
omi_smallx_headers_sbe_v1_0.fields.frame_length = ProtoField.new("Frame Length", "smallx.headers.sbe.v1.0.framelength", ftypes.UINT8)
omi_smallx_headers_sbe_v1_0.fields.incarnation = ProtoField.new("Incarnation", "smallx.headers.sbe.v1.0.incarnation", ftypes.INT16)
omi_smallx_headers_sbe_v1_0.fields.incarnation_end = ProtoField.new("Incarnation End", "smallx.headers.sbe.v1.0.incarnationend", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_smallx_headers_sbe_v1_0.fields.message_count = ProtoField.new("Message Count", "smallx.headers.sbe.v1.0.messagecount", ftypes.UINT8)
omi_smallx_headers_sbe_v1_0.fields.message_header = ProtoField.new("Message Header", "smallx.headers.sbe.v1.0.messageheader", ftypes.STRING)
omi_smallx_headers_sbe_v1_0.fields.message_sequence = ProtoField.new("Message Sequence", "smallx.headers.sbe.v1.0.messagesequence", ftypes.INT32)
omi_smallx_headers_sbe_v1_0.fields.packet = ProtoField.new("Packet", "smallx.headers.sbe.v1.0.packet", ftypes.STRING)
omi_smallx_headers_sbe_v1_0.fields.packet_flags = ProtoField.new("Packet Flags", "smallx.headers.sbe.v1.0.packetflags", ftypes.STRING)
omi_smallx_headers_sbe_v1_0.fields.packet_header = ProtoField.new("Packet Header", "smallx.headers.sbe.v1.0.packetheader", ftypes.STRING)
omi_smallx_headers_sbe_v1_0.fields.payload = ProtoField.new("Payload", "smallx.headers.sbe.v1.0.payload", ftypes.BYTES)
omi_smallx_headers_sbe_v1_0.fields.reserved_5 = ProtoField.new("Reserved 5", "smallx.headers.sbe.v1.0.reserved5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_smallx_headers_sbe_v1_0.fields.retransmission = ProtoField.new("Retransmission", "smallx.headers.sbe.v1.0.retransmission", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_smallx_headers_sbe_v1_0.fields.sbe_frame = ProtoField.new("Sbe Frame", "smallx.headers.sbe.v1.0.sbeframe", ftypes.STRING)
omi_smallx_headers_sbe_v1_0.fields.schema_id = ProtoField.new("Schema Id", "smallx.headers.sbe.v1.0.schemaid", ftypes.UINT16)
omi_smallx_headers_sbe_v1_0.fields.source = ProtoField.new("Source", "smallx.headers.sbe.v1.0.source", ftypes.UINT8)
omi_smallx_headers_sbe_v1_0.fields.template_id = ProtoField.new("Template Id", "smallx.headers.sbe.v1.0.templateid", ftypes.UINT16)
omi_smallx_headers_sbe_v1_0.fields.version = ProtoField.new("Version", "smallx.headers.sbe.v1.0.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- SmallX Headers Sbe 1.0 Element Dissection Options
show.message_header = true
show.packet = true
show.packet_flags = true
show.packet_header = true
show.sbe_frame = true

-- Register SmallX Headers Sbe 1.0 Show Options
omi_smallx_headers_sbe_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_smallx_headers_sbe_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_smallx_headers_sbe_v1_0.prefs.show_packet_flags = Pref.bool("Show Packet Flags", show.packet_flags, "Parse and add Packet Flags to protocol tree")
omi_smallx_headers_sbe_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_smallx_headers_sbe_v1_0.prefs.show_sbe_frame = Pref.bool("Show Sbe Frame", show.sbe_frame, "Parse and add Sbe Frame to protocol tree")

-- Handle changed preferences
function omi_smallx_headers_sbe_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message_header ~= omi_smallx_headers_sbe_v1_0.prefs.show_message_header then
    show.message_header = omi_smallx_headers_sbe_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_smallx_headers_sbe_v1_0.prefs.show_packet then
    show.packet = omi_smallx_headers_sbe_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_flags ~= omi_smallx_headers_sbe_v1_0.prefs.show_packet_flags then
    show.packet_flags = omi_smallx_headers_sbe_v1_0.prefs.show_packet_flags
    changed = true
  end
  if show.packet_header ~= omi_smallx_headers_sbe_v1_0.prefs.show_packet_header then
    show.packet_header = omi_smallx_headers_sbe_v1_0.prefs.show_packet_header
    changed = true
  end
  if show.sbe_frame ~= omi_smallx_headers_sbe_v1_0.prefs.show_sbe_frame then
    show.sbe_frame = omi_smallx_headers_sbe_v1_0.prefs.show_sbe_frame
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect SmallX Headers Sbe 1.0
-----------------------------------------------------------------------

-- Payload
smallx_headers_sbe_v1_0.payload = {}

-- Display: Payload
smallx_headers_sbe_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
smallx_headers_sbe_v1_0.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = smallx_headers_sbe_v1_0.payload.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.payload, range, value, display)

  return offset + size
end

-- Version
smallx_headers_sbe_v1_0.version = {}

-- Size: Version
smallx_headers_sbe_v1_0.version.size = 2

-- Display: Version
smallx_headers_sbe_v1_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
smallx_headers_sbe_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_headers_sbe_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
smallx_headers_sbe_v1_0.schema_id = {}

-- Size: Schema Id
smallx_headers_sbe_v1_0.schema_id.size = 2

-- Display: Schema Id
smallx_headers_sbe_v1_0.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
smallx_headers_sbe_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_headers_sbe_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
smallx_headers_sbe_v1_0.template_id = {}

-- Size: Template Id
smallx_headers_sbe_v1_0.template_id.size = 2

-- Display: Template Id
smallx_headers_sbe_v1_0.template_id.display = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
smallx_headers_sbe_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_headers_sbe_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
smallx_headers_sbe_v1_0.block_length = {}

-- Size: Block Length
smallx_headers_sbe_v1_0.block_length.size = 2

-- Display: Block Length
smallx_headers_sbe_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
smallx_headers_sbe_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = smallx_headers_sbe_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Message Header
smallx_headers_sbe_v1_0.message_header = {}

-- Calculate size of: Message Header
smallx_headers_sbe_v1_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + smallx_headers_sbe_v1_0.block_length.size

  index = index + smallx_headers_sbe_v1_0.template_id.size

  index = index + smallx_headers_sbe_v1_0.schema_id.size

  index = index + smallx_headers_sbe_v1_0.version.size

  return index
end

-- Display: Message Header
smallx_headers_sbe_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
smallx_headers_sbe_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = smallx_headers_sbe_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = smallx_headers_sbe_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer
  index, schema_id = smallx_headers_sbe_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer
  index, version = smallx_headers_sbe_v1_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
smallx_headers_sbe_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_headers_sbe_v1_0.fields.message_header, buffer(offset, 0))
    local index = smallx_headers_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_headers_sbe_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_headers_sbe_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Frame Length
smallx_headers_sbe_v1_0.frame_length = {}

-- Size: Frame Length
smallx_headers_sbe_v1_0.frame_length.size = 1

-- Display: Frame Length
smallx_headers_sbe_v1_0.frame_length.display = function(value)
  return "Frame Length: "..value
end

-- Dissect: Frame Length
smallx_headers_sbe_v1_0.frame_length.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.frame_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_headers_sbe_v1_0.frame_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.frame_length, range, value, display)

  return offset + length, value
end

-- Sbe Frame
smallx_headers_sbe_v1_0.sbe_frame = {}

-- Display: Sbe Frame
smallx_headers_sbe_v1_0.sbe_frame.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Frame
smallx_headers_sbe_v1_0.sbe_frame.fields = function(buffer, offset, packet, parent, size_of_sbe_frame)
  local index = offset

  -- Frame Length: 1 Byte Unsigned Fixed Width Integer
  index, frame_length = smallx_headers_sbe_v1_0.frame_length.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = smallx_headers_sbe_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Payload
  local size_of_payload = frame_length - 10

  -- Payload: 0 Byte
  index, payload = smallx_headers_sbe_v1_0.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Sbe Frame
smallx_headers_sbe_v1_0.sbe_frame.dissect = function(buffer, offset, packet, parent, size_of_sbe_frame)
  local index = offset + size_of_sbe_frame

  -- Optionally add group/struct element to protocol tree
  if show.sbe_frame then
    parent = parent:add(omi_smallx_headers_sbe_v1_0.fields.sbe_frame, buffer(offset, 0))
    local current = smallx_headers_sbe_v1_0.sbe_frame.fields(buffer, offset, packet, parent, size_of_sbe_frame)
    parent:set_len(size_of_sbe_frame)
    local display = smallx_headers_sbe_v1_0.sbe_frame.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    smallx_headers_sbe_v1_0.sbe_frame.fields(buffer, offset, packet, parent, size_of_sbe_frame)

    return index
  end
end

-- Message Count
smallx_headers_sbe_v1_0.message_count = {}

-- Size: Message Count
smallx_headers_sbe_v1_0.message_count.size = 1

-- Display: Message Count
smallx_headers_sbe_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
smallx_headers_sbe_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_headers_sbe_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Sequence
smallx_headers_sbe_v1_0.message_sequence = {}

-- Size: Message Sequence
smallx_headers_sbe_v1_0.message_sequence.size = 4

-- Display: Message Sequence
smallx_headers_sbe_v1_0.message_sequence.display = function(value)
  return "Message Sequence: "..value
end

-- Dissect: Message Sequence
smallx_headers_sbe_v1_0.message_sequence.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.message_sequence.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_headers_sbe_v1_0.message_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.message_sequence, range, value, display)

  return offset + length, value
end

-- Packet Flags
smallx_headers_sbe_v1_0.packet_flags = {}

-- Size: Packet Flags
smallx_headers_sbe_v1_0.packet_flags.size = 1

-- Display: Packet Flags
smallx_headers_sbe_v1_0.packet_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Incarnation End flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Incarnation End|"
  end
  -- Is Retransmission flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Retransmission|"
  end
  -- Is Administrative flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Administrative|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Packet Flags
smallx_headers_sbe_v1_0.packet_flags.bits = function(buffer, offset, packet, parent)

  -- Incarnation End: 1 Bit
  parent:add(omi_smallx_headers_sbe_v1_0.fields.incarnation_end, buffer(offset, 1))

  -- Retransmission: 1 Bit
  parent:add(omi_smallx_headers_sbe_v1_0.fields.retransmission, buffer(offset, 1))

  -- Administrative: 1 Bit
  parent:add(omi_smallx_headers_sbe_v1_0.fields.administrative, buffer(offset, 1))

  -- Reserved 5: 5 Bit
  parent:add(omi_smallx_headers_sbe_v1_0.fields.reserved_5, buffer(offset, 1))
end

-- Dissect: Packet Flags
smallx_headers_sbe_v1_0.packet_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = smallx_headers_sbe_v1_0.packet_flags.display(range, packet, parent)
  local element = parent:add(omi_smallx_headers_sbe_v1_0.fields.packet_flags, range, display)

  if show.packet_flags then
    smallx_headers_sbe_v1_0.packet_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Source
smallx_headers_sbe_v1_0.source = {}

-- Size: Source
smallx_headers_sbe_v1_0.source.size = 1

-- Display: Source
smallx_headers_sbe_v1_0.source.display = function(value)
  return "Source: "..value
end

-- Dissect: Source
smallx_headers_sbe_v1_0.source.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.source.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_headers_sbe_v1_0.source.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.source, range, value, display)

  return offset + length, value
end

-- Incarnation
smallx_headers_sbe_v1_0.incarnation = {}

-- Size: Incarnation
smallx_headers_sbe_v1_0.incarnation.size = 2

-- Display: Incarnation
smallx_headers_sbe_v1_0.incarnation.display = function(value)
  return "Incarnation: "..value
end

-- Dissect: Incarnation
smallx_headers_sbe_v1_0.incarnation.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.incarnation.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_headers_sbe_v1_0.incarnation.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.incarnation, range, value, display)

  return offset + length, value
end

-- Channel Id
smallx_headers_sbe_v1_0.channel_id = {}

-- Size: Channel Id
smallx_headers_sbe_v1_0.channel_id.size = 1

-- Display: Channel Id
smallx_headers_sbe_v1_0.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
smallx_headers_sbe_v1_0.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0.channel_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_headers_sbe_v1_0.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_smallx_headers_sbe_v1_0.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Packet Header
smallx_headers_sbe_v1_0.packet_header = {}

-- Calculate size of: Packet Header
smallx_headers_sbe_v1_0.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + smallx_headers_sbe_v1_0.channel_id.size

  index = index + smallx_headers_sbe_v1_0.incarnation.size

  index = index + smallx_headers_sbe_v1_0.source.size

  index = index + smallx_headers_sbe_v1_0.packet_flags.size

  index = index + smallx_headers_sbe_v1_0.message_sequence.size

  index = index + smallx_headers_sbe_v1_0.message_count.size

  return index
end

-- Display: Packet Header
smallx_headers_sbe_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
smallx_headers_sbe_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = smallx_headers_sbe_v1_0.channel_id.dissect(buffer, index, packet, parent)

  -- Incarnation: 2 Byte Signed Fixed Width Integer
  index, incarnation = smallx_headers_sbe_v1_0.incarnation.dissect(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = smallx_headers_sbe_v1_0.source.dissect(buffer, index, packet, parent)

  -- Packet Flags: Struct of 4 fields
  index, packet_flags = smallx_headers_sbe_v1_0.packet_flags.dissect(buffer, index, packet, parent)

  -- Message Sequence: 4 Byte Signed Fixed Width Integer
  index, message_sequence = smallx_headers_sbe_v1_0.message_sequence.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = smallx_headers_sbe_v1_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
smallx_headers_sbe_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_smallx_headers_sbe_v1_0.fields.packet_header, buffer(offset, 0))
    local index = smallx_headers_sbe_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_headers_sbe_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return smallx_headers_sbe_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
smallx_headers_sbe_v1_0.packet = {}

-- Dissect Packet
smallx_headers_sbe_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = smallx_headers_sbe_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Sbe Frame
  local end_of_payload = buffer:len()

  -- Sbe Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Frame Length
    local frame_length = buffer(index, 1):uint()

    -- Runtime Size Of: Sbe Frame
    index, sbe_frame = smallx_headers_sbe_v1_0.sbe_frame.dissect(buffer, index, packet, parent, frame_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_smallx_headers_sbe_v1_0.init()
end

-- Dissector for SmallX Headers Sbe 1.0
function omi_smallx_headers_sbe_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_smallx_headers_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_smallx_headers_sbe_v1_0, buffer(), omi_smallx_headers_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return smallx_headers_sbe_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_smallx_headers_sbe_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
smallx_headers_sbe_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for SmallX Headers Sbe 1.0
local function omi_smallx_headers_sbe_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not smallx_headers_sbe_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_smallx_headers_sbe_v1_0
  omi_smallx_headers_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for SmallX Headers Sbe 1.0
omi_smallx_headers_sbe_v1_0:register_heuristic("udp", omi_smallx_headers_sbe_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: The Small Exchange
--   Version: 1.0
--   Date: Tuesday, October 12, 2021
--   Specification: Small Exchange Market Data Feed 2.2.pdf
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
