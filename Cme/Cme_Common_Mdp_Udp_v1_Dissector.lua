-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Common Mdp Udp 1. Protocol
local omi_cme_common_mdp_udp_v1 = Proto("Omi.Cme.Common.Mdp.Udp.v1", "Cme Common Mdp Udp 1.")

-- Protocol table
local cme_common_mdp_udp_v1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cme Common Mdp Udp 1. Fields
omi_cme_common_mdp_udp_v1.fields.binary_packet_header = ProtoField.new("Binary Packet Header", "cme.common.mdp.udp.v1.binarypacketheader", ftypes.STRING)
omi_cme_common_mdp_udp_v1.fields.block_length = ProtoField.new("Block Length", "cme.common.mdp.udp.v1.blocklength", ftypes.UINT16)
omi_cme_common_mdp_udp_v1.fields.message = ProtoField.new("Message", "cme.common.mdp.udp.v1.message", ftypes.STRING)
omi_cme_common_mdp_udp_v1.fields.message_header = ProtoField.new("Message Header", "cme.common.mdp.udp.v1.messageheader", ftypes.STRING)
omi_cme_common_mdp_udp_v1.fields.message_size = ProtoField.new("Message Size", "cme.common.mdp.udp.v1.messagesize", ftypes.UINT16)
omi_cme_common_mdp_udp_v1.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "cme.common.mdp.udp.v1.packetsequencenumber", ftypes.UINT32)
omi_cme_common_mdp_udp_v1.fields.payload = ProtoField.new("Payload", "cme.common.mdp.udp.v1.payload", ftypes.BYTES)
omi_cme_common_mdp_udp_v1.fields.schema_id = ProtoField.new("Schema Id", "cme.common.mdp.udp.v1.schemaid", ftypes.UINT16)
omi_cme_common_mdp_udp_v1.fields.sending_time = ProtoField.new("Sending Time", "cme.common.mdp.udp.v1.sendingtime", ftypes.UINT64)
omi_cme_common_mdp_udp_v1.fields.template_id = ProtoField.new("Template Id", "cme.common.mdp.udp.v1.templateid", ftypes.UINT16)
omi_cme_common_mdp_udp_v1.fields.udp_packet = ProtoField.new("Udp Packet", "cme.common.mdp.udp.v1.udppacket", ftypes.STRING)
omi_cme_common_mdp_udp_v1.fields.version = ProtoField.new("Version", "cme.common.mdp.udp.v1.version", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cme Common Mdp Udp 1. Element Dissection Options
show.headers = true
show.structs = true

-- Register Cme Common Mdp Udp 1. Show Options
omi_cme_common_mdp_udp_v1.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_cme_common_mdp_udp_v1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")


-- Handle changed preferences
function omi_cme_common_mdp_udp_v1.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_cme_common_mdp_udp_v1.prefs.show_headers then
    show.headers = omi_cme_common_mdp_udp_v1.prefs.show_headers
  end
  if show.structs ~= omi_cme_common_mdp_udp_v1.prefs.show_structs then
    show.structs = omi_cme_common_mdp_udp_v1.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Cme Common Mdp Udp 1. Fields
-----------------------------------------------------------------------

-- Block Length
cme_common_mdp_udp_v1.block_length = {}

-- Size: Block Length
cme_common_mdp_udp_v1.block_length.size = 2

-- Display: Block Length
cme_common_mdp_udp_v1.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
cme_common_mdp_udp_v1.block_length.dissect = function(buffer, offset, packet, parent)
  local length = cme_common_mdp_udp_v1.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_common_mdp_udp_v1.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_common_mdp_udp_v1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Message Size
cme_common_mdp_udp_v1.message_size = {}

-- Size: Message Size
cme_common_mdp_udp_v1.message_size.size = 2

-- Display: Message Size
cme_common_mdp_udp_v1.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
cme_common_mdp_udp_v1.message_size.dissect = function(buffer, offset, packet, parent)
  local length = cme_common_mdp_udp_v1.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_common_mdp_udp_v1.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_common_mdp_udp_v1.fields.message_size, range, value, display)

  return offset + length, value
end

-- Packet Sequence Number
cme_common_mdp_udp_v1.packet_sequence_number = {}

-- Size: Packet Sequence Number
cme_common_mdp_udp_v1.packet_sequence_number.size = 4

-- Display: Packet Sequence Number
cme_common_mdp_udp_v1.packet_sequence_number.display = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
cme_common_mdp_udp_v1.packet_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cme_common_mdp_udp_v1.packet_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_common_mdp_udp_v1.packet_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_common_mdp_udp_v1.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Payload
cme_common_mdp_udp_v1.payload = {}

-- Display: Payload
cme_common_mdp_udp_v1.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
cme_common_mdp_udp_v1.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cme_common_mdp_udp_v1.payload.display(value, packet, parent, size)

  parent:add(omi_cme_common_mdp_udp_v1.fields.payload, range, value, display)

  return offset + size, value
end

-- Schema Id
cme_common_mdp_udp_v1.schema_id = {}

-- Size: Schema Id
cme_common_mdp_udp_v1.schema_id.size = 2

-- Display: Schema Id
cme_common_mdp_udp_v1.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
cme_common_mdp_udp_v1.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_common_mdp_udp_v1.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_common_mdp_udp_v1.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_common_mdp_udp_v1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Sending Time
cme_common_mdp_udp_v1.sending_time = {}

-- Size: Sending Time
cme_common_mdp_udp_v1.sending_time.size = 8

-- Display: Sending Time
cme_common_mdp_udp_v1.sending_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sending Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
cme_common_mdp_udp_v1.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = cme_common_mdp_udp_v1.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cme_common_mdp_udp_v1.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_common_mdp_udp_v1.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Template Id
cme_common_mdp_udp_v1.template_id = {}

-- Size: Template Id
cme_common_mdp_udp_v1.template_id.size = 2

-- Display: Template Id
cme_common_mdp_udp_v1.template_id.display = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
cme_common_mdp_udp_v1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = cme_common_mdp_udp_v1.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_common_mdp_udp_v1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_common_mdp_udp_v1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Version
cme_common_mdp_udp_v1.version = {}

-- Size: Version
cme_common_mdp_udp_v1.version.size = 2

-- Display: Version
cme_common_mdp_udp_v1.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
cme_common_mdp_udp_v1.version.dissect = function(buffer, offset, packet, parent)
  local length = cme_common_mdp_udp_v1.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cme_common_mdp_udp_v1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_cme_common_mdp_udp_v1.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cme Common Mdp Udp 1.
-----------------------------------------------------------------------

-- Message Header
cme_common_mdp_udp_v1.message_header = {}

-- Size: Message Header
cme_common_mdp_udp_v1.message_header.size =
  cme_common_mdp_udp_v1.block_length.size + 
  cme_common_mdp_udp_v1.template_id.size + 
  cme_common_mdp_udp_v1.schema_id.size + 
  cme_common_mdp_udp_v1.version.size

-- Display: Message Header
cme_common_mdp_udp_v1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cme_common_mdp_udp_v1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = cme_common_mdp_udp_v1.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = cme_common_mdp_udp_v1.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer
  index, schema_id = cme_common_mdp_udp_v1.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer
  index, version = cme_common_mdp_udp_v1.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cme_common_mdp_udp_v1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_common_mdp_udp_v1.fields.message_header, buffer(offset, 0))
    local index = cme_common_mdp_udp_v1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_common_mdp_udp_v1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_common_mdp_udp_v1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cme_common_mdp_udp_v1.message = {}

-- Display: Message
cme_common_mdp_udp_v1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cme_common_mdp_udp_v1.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = cme_common_mdp_udp_v1.message_size.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = cme_common_mdp_udp_v1.message_header.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Payload
  local size_of_payload = message_size - 10

  -- Payload: 0 Byte
  index, payload = cme_common_mdp_udp_v1.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
cme_common_mdp_udp_v1.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_cme_common_mdp_udp_v1.fields.message, buffer(offset, 0))
    local current = cme_common_mdp_udp_v1.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = cme_common_mdp_udp_v1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cme_common_mdp_udp_v1.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Binary Packet Header
cme_common_mdp_udp_v1.binary_packet_header = {}

-- Size: Binary Packet Header
cme_common_mdp_udp_v1.binary_packet_header.size =
  cme_common_mdp_udp_v1.packet_sequence_number.size + 
  cme_common_mdp_udp_v1.sending_time.size

-- Display: Binary Packet Header
cme_common_mdp_udp_v1.binary_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Binary Packet Header
cme_common_mdp_udp_v1.binary_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = cme_common_mdp_udp_v1.packet_sequence_number.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = cme_common_mdp_udp_v1.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Binary Packet Header
cme_common_mdp_udp_v1.binary_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cme_common_mdp_udp_v1.fields.binary_packet_header, buffer(offset, 0))
    local index = cme_common_mdp_udp_v1.binary_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cme_common_mdp_udp_v1.binary_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cme_common_mdp_udp_v1.binary_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
cme_common_mdp_udp_v1.udp_packet = {}

-- Verify required size of Udp packet
cme_common_mdp_udp_v1.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= cme_common_mdp_udp_v1.binary_packet_header.size + cme_common_mdp_udp_v1.message_size.size + cme_common_mdp_udp_v1.message_header.size
end

-- Dissect Udp Packet
cme_common_mdp_udp_v1.udp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Binary Packet Header: Struct of 2 fields
  index, binary_packet_header = cme_common_mdp_udp_v1.binary_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = cme_common_mdp_udp_v1.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cme_common_mdp_udp_v1.init()
end

-- Dissector for Cme Common Mdp Udp 1.
function omi_cme_common_mdp_udp_v1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cme_common_mdp_udp_v1.name

  -- Dissect protocol
  local protocol = parent:add(omi_cme_common_mdp_udp_v1, buffer(), omi_cme_common_mdp_udp_v1.description, "("..buffer:len().." Bytes)")
  return cme_common_mdp_udp_v1.udp_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cme Common Mdp Udp 1. (Udp)
local function omi_cme_common_mdp_udp_v1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cme_common_mdp_udp_v1.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cme_common_mdp_udp_v1
  omi_cme_common_mdp_udp_v1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Common Mdp Udp 1.
omi_cme_common_mdp_udp_v1:register_heuristic("udp", omi_cme_common_mdp_udp_v1_udp_heuristic)

-- Register Cme Common Mdp Udp 1. for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_cme_common_mdp_udp_v1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: CME Group
--   Version: 1
--   Date: Friday, July 26, 2019
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
