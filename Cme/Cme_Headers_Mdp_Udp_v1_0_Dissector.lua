-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Headers Mdp Udp 1.0 Protocol
local omi_cme_headers_mdp_udp_v1_0 = Proto("Cme.Headers.Mdp.Udp.v1.0.Lua", "Cme Headers Mdp Udp 1.0")

-- Protocol table
local cme_headers_mdp_udp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Headers Mdp Udp 1.0 Fields
omi_cme_headers_mdp_udp_v1_0.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.headers.mdp.udp.v1.0.binarypacketheader", ftypes.STRING)
omi_cme_headers_mdp_udp_v1_0.fields.block_length = ProtoField.new("Block Length", "cme.headers.mdp.udp.v1.0.blocklength", ftypes.UINT16)
omi_cme_headers_mdp_udp_v1_0.fields.message = ProtoField.new("Message", "cme.headers.mdp.udp.v1.0.message", ftypes.STRING)
omi_cme_headers_mdp_udp_v1_0.fields.message_header = ProtoField.new("Message Header", "cme.headers.mdp.udp.v1.0.messageheader", ftypes.STRING)
omi_cme_headers_mdp_udp_v1_0.fields.message_size = ProtoField.new("Message Size", "cme.headers.mdp.udp.v1.0.messagesize", ftypes.UINT16)
omi_cme_headers_mdp_udp_v1_0.fields.packet = ProtoField.new("Packet", "cme.headers.mdp.udp.v1.0.packet", ftypes.STRING)
omi_cme_headers_mdp_udp_v1_0.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "cme.headers.mdp.udp.v1.0.packetsequencenumber", ftypes.UINT32)
omi_cme_headers_mdp_udp_v1_0.fields.payload = ProtoField.new("Payload", "cme.headers.mdp.udp.v1.0.payload", ftypes.BYTES)
omi_cme_headers_mdp_udp_v1_0.fields.schema_id = ProtoField.new("Schema Id", "cme.headers.mdp.udp.v1.0.schemaid", ftypes.UINT16)
omi_cme_headers_mdp_udp_v1_0.fields.sending_time = ProtoField.new("Sending Time", "cme.headers.mdp.udp.v1.0.sendingtime", ftypes.UINT64)
omi_cme_headers_mdp_udp_v1_0.fields.template_id = ProtoField.new("Template Id", "cme.headers.mdp.udp.v1.0.templateid", ftypes.UINT16)
omi_cme_headers_mdp_udp_v1_0.fields.version = ProtoField.new("Version", "cme.headers.mdp.udp.v1.0.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cme Headers Mdp Udp 1.0 Element Dissection Options
show.binary_packet_header = true
show.message = true
show.message_header = true
show.packet = true

-- Register Cme Headers Mdp Udp 1.0 Show Options
omi_cme_headers_mdp_udp_v1_0.prefs.show_binary_packet_header = Pref.bool("Show Binary Packet Header", show.binary_packet_header, "Parse and add Binary Packet Header to protocol tree")
omi_cme_headers_mdp_udp_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cme_headers_mdp_udp_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cme_headers_mdp_udp_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function omi_cme_headers_mdp_udp_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.binary_packet_header ~= omi_cme_headers_mdp_udp_v1_0.prefs.show_binary_packet_header then
    show.binary_packet_header = omi_cme_headers_mdp_udp_v1_0.prefs.show_binary_packet_header
    changed = true
  end
  if show.message ~= omi_cme_headers_mdp_udp_v1_0.prefs.show_message then
    show.message = omi_cme_headers_mdp_udp_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cme_headers_mdp_udp_v1_0.prefs.show_message_header then
    show.message_header = omi_cme_headers_mdp_udp_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_cme_headers_mdp_udp_v1_0.prefs.show_packet then
    show.packet = omi_cme_headers_mdp_udp_v1_0.prefs.show_packet
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Headers Mdp Udp 1.0
-----------------------------------------------------------------------

-- Payload
cme_headers_mdp_udp_v1_0.payload = {}

-- Display: Payload
cme_headers_mdp_udp_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
cme_headers_mdp_udp_v1_0.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cme_headers_mdp_udp_v1_0.payload.display(value, packet, parent, size)

  parent:add(omi_cme_headers_mdp_udp_v1_0.fields.payload, range, value, display)

  return offset + size, value
end

-- Version
cme_headers_mdp_udp_v1_0.version = {}

-- Size: Version
cme_headers_mdp_udp_v1_0.version.size = 2

-- Display: Version
cme_headers_mdp_udp_v1_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_headers_mdp_udp_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_headers_mdp_udp_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_headers_mdp_udp_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_headers_mdp_udp_v1_0.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
cme_headers_mdp_udp_v1_0.schema_id = {}

-- Size: Schema Id
cme_headers_mdp_udp_v1_0.schema_id.size = 2

-- Display: Schema Id
cme_headers_mdp_udp_v1_0.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_headers_mdp_udp_v1_0.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_headers_mdp_udp_v1_0.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_headers_mdp_udp_v1_0.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_headers_mdp_udp_v1_0.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
cme_headers_mdp_udp_v1_0.template_id = {}

-- Size: Template Id
cme_headers_mdp_udp_v1_0.template_id.size = 2

-- Display: Template Id
cme_headers_mdp_udp_v1_0.template_id.display = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
cme_headers_mdp_udp_v1_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_headers_mdp_udp_v1_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_headers_mdp_udp_v1_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_headers_mdp_udp_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
cme_headers_mdp_udp_v1_0.block_length = {}

-- Size: Block Length
cme_headers_mdp_udp_v1_0.block_length.size = 2

-- Display: Block Length
cme_headers_mdp_udp_v1_0.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_headers_mdp_udp_v1_0.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_headers_mdp_udp_v1_0.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_headers_mdp_udp_v1_0.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_headers_mdp_udp_v1_0.fields.block_length, range, value, display)

  return offset + length, value
end

-- Message Header
cme_headers_mdp_udp_v1_0.message_header = {}

-- Size: Message Header
cme_headers_mdp_udp_v1_0.message_header.size =
  cme_headers_mdp_udp_v1_0.block_length.size + 
  cme_headers_mdp_udp_v1_0.template_id.size + 
  cme_headers_mdp_udp_v1_0.schema_id.size + 
  cme_headers_mdp_udp_v1_0.version.size

-- Display: Message Header
cme_headers_mdp_udp_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_headers_mdp_udp_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_headers_mdp_udp_v1_0.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = cme_headers_mdp_udp_v1_0.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer
  index, schema_id = cme_headers_mdp_udp_v1_0.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer
  index, version = cme_headers_mdp_udp_v1_0.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_headers_mdp_udp_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_headers_mdp_udp_v1_0.fields.message_header, buffer(offset, 0))
    local index = cme_headers_mdp_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_headers_mdp_udp_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_headers_mdp_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Size
cme_headers_mdp_udp_v1_0.message_size = {}

-- Size: Message Size
cme_headers_mdp_udp_v1_0.message_size.size = 2

-- Display: Message Size
cme_headers_mdp_udp_v1_0.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_headers_mdp_udp_v1_0.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_headers_mdp_udp_v1_0.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_headers_mdp_udp_v1_0.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_headers_mdp_udp_v1_0.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message
cme_headers_mdp_udp_v1_0.message = {}

-- Display: Message
cme_headers_mdp_udp_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_headers_mdp_udp_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_headers_mdp_udp_v1_0.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_headers_mdp_udp_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Payload
  local size_of_payload = message_size - 10

  -- Payload: 0 Byte
  index, payload = cme_headers_mdp_udp_v1_0.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
cme_headers_mdp_udp_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cme_headers_mdp_udp_v1_0.fields.message, buffer(offset, 0))
    local current = cme_headers_mdp_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = cme_headers_mdp_udp_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_headers_mdp_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Sending Time
cme_headers_mdp_udp_v1_0.sending_time = {}

-- Size: Sending Time
cme_headers_mdp_udp_v1_0.sending_time.size = 8

-- Display: Sending Time
cme_headers_mdp_udp_v1_0.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_headers_mdp_udp_v1_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_headers_mdp_udp_v1_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_headers_mdp_udp_v1_0.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_headers_mdp_udp_v1_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
cme_headers_mdp_udp_v1_0.packet_sequence_number = {}

-- Size: Packet Sequence Number
cme_headers_mdp_udp_v1_0.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
cme_headers_mdp_udp_v1_0.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
cme_headers_mdp_udp_v1_0.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_headers_mdp_udp_v1_0.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_headers_mdp_udp_v1_0.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_headers_mdp_udp_v1_0.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Binary Packet Header
cme_headers_mdp_udp_v1_0.binary_packet_header = {}

-- Size: Binary Packet Header
cme_headers_mdp_udp_v1_0.binary_packet_header.size =
  cme_headers_mdp_udp_v1_0.packet_sequence_number.size + 
  cme_headers_mdp_udp_v1_0.sending_time.size

-- Display: Binary Packet Header
cme_headers_mdp_udp_v1_0.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_headers_mdp_udp_v1_0.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = cme_headers_mdp_udp_v1_0.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_headers_mdp_udp_v1_0.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_headers_mdp_udp_v1_0.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.binary_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_headers_mdp_udp_v1_0.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_headers_mdp_udp_v1_0.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_headers_mdp_udp_v1_0.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_headers_mdp_udp_v1_0.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cme_headers_mdp_udp_v1_0.packet = {}

-- Dissect Packet
cme_headers_mdp_udp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_headers_mdp_udp_v1_0.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = cme_headers_mdp_udp_v1_0.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_headers_mdp_udp_v1_0.init()
end

-- Dissector for Cme Headers Mdp Udp 1.0
function omi_cme_headers_mdp_udp_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_headers_mdp_udp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_headers_mdp_udp_v1_0, buffer(), omi_cme_headers_mdp_udp_v1_0.description, "("..buffer:len().." Bytes)")
  return cme_headers_mdp_udp_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cme_headers_mdp_udp_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cme_headers_mdp_udp_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cme Headers Mdp Udp 1.0
local function omi_cme_headers_mdp_udp_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_headers_mdp_udp_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_headers_mdp_udp_v1_0
  omi_cme_headers_mdp_udp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Headers Mdp Udp 1.0
omi_cme_headers_mdp_udp_v1_0:register_heuristic("udp", omi_cme_headers_mdp_udp_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 1.0
--   Date: Friday, July 26, 2019
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
