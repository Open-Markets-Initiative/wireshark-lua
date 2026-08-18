-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- A2X A2XEquities UdpHeader Amd 1. Protocol
local omi_a2x_a2xequities_udpheader_amd_v1 = Proto("Omi.A2X.A2XEquities.UdpHeader.Amd.v1", "A2X A2XEquities UdpHeader Amd 1.")

-- Protocol table
local a2x_a2xequities_udpheader_amd_v1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- A2X A2XEquities UdpHeader Amd 1. Fields
omi_a2x_a2xequities_udpheader_amd_v1.fields.message = ProtoField.new("Message", "a2x.a2xequities.udpheader.amd.v1.message", ftypes.STRING)
omi_a2x_a2xequities_udpheader_amd_v1.fields.message_count = ProtoField.new("Message Count", "a2x.a2xequities.udpheader.amd.v1.messagecount", ftypes.UINT8)
omi_a2x_a2xequities_udpheader_amd_v1.fields.message_header = ProtoField.new("Message Header", "a2x.a2xequities.udpheader.amd.v1.messageheader", ftypes.STRING)
omi_a2x_a2xequities_udpheader_amd_v1.fields.msg_length = ProtoField.new("Msg Length", "a2x.a2xequities.udpheader.amd.v1.msglength", ftypes.UINT8)
omi_a2x_a2xequities_udpheader_amd_v1.fields.msg_type = ProtoField.new("Msg Type", "a2x.a2xequities.udpheader.amd.v1.msgtype", ftypes.UINT8)
omi_a2x_a2xequities_udpheader_amd_v1.fields.packet = ProtoField.new("Packet", "a2x.a2xequities.udpheader.amd.v1.packet", ftypes.STRING)
omi_a2x_a2xequities_udpheader_amd_v1.fields.payload = ProtoField.new("Payload", "a2x.a2xequities.udpheader.amd.v1.payload", ftypes.BYTES)
omi_a2x_a2xequities_udpheader_amd_v1.fields.seq_no = ProtoField.new("Seq No", "a2x.a2xequities.udpheader.amd.v1.seqno", ftypes.UINT32)

-- A2X A2XEquities UdpHeader Amd 1. generated fields
omi_a2x_a2xequities_udpheader_amd_v1.fields.message_index = ProtoField.new("Message Index", "a2x.a2xequities.udpheader.amd.v1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- A2X A2XEquities UdpHeader Amd 1. Element Dissection Options
show.structs = true
show.indexes = true

-- Register A2X A2XEquities UdpHeader Amd 1. Show Options
omi_a2x_a2xequities_udpheader_amd_v1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_a2x_a2xequities_udpheader_amd_v1.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_a2x_a2xequities_udpheader_amd_v1.prefs_changed()

  -- Check if preferences have changed
  if show.structs ~= omi_a2x_a2xequities_udpheader_amd_v1.prefs.show_structs then
    show.structs = omi_a2x_a2xequities_udpheader_amd_v1.prefs.show_structs
  end
  if show.indexes ~= omi_a2x_a2xequities_udpheader_amd_v1.prefs.show_indexes then
    show.indexes = omi_a2x_a2xequities_udpheader_amd_v1.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- A2X A2XEquities UdpHeader Amd 1. Fields
-----------------------------------------------------------------------

-- Message Count
a2x_a2xequities_udpheader_amd_v1.message_count = {}

-- Size: Message Count
a2x_a2xequities_udpheader_amd_v1.message_count.size = 1

-- Display: Message Count
a2x_a2xequities_udpheader_amd_v1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
a2x_a2xequities_udpheader_amd_v1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_udpheader_amd_v1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_a2xequities_udpheader_amd_v1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_udpheader_amd_v1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Msg Length
a2x_a2xequities_udpheader_amd_v1.msg_length = {}

-- Size: Msg Length
a2x_a2xequities_udpheader_amd_v1.msg_length.size = 1

-- Display: Msg Length
a2x_a2xequities_udpheader_amd_v1.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
a2x_a2xequities_udpheader_amd_v1.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_udpheader_amd_v1.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_a2xequities_udpheader_amd_v1.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_udpheader_amd_v1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
a2x_a2xequities_udpheader_amd_v1.msg_type = {}

-- Size: Msg Type
a2x_a2xequities_udpheader_amd_v1.msg_type.size = 1

-- Display: Msg Type
a2x_a2xequities_udpheader_amd_v1.msg_type.display = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
a2x_a2xequities_udpheader_amd_v1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_udpheader_amd_v1.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_a2xequities_udpheader_amd_v1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_udpheader_amd_v1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Payload
a2x_a2xequities_udpheader_amd_v1.payload = {}

-- Size: Payload
a2x_a2xequities_udpheader_amd_v1.payload.size = 0

-- Display: Payload
a2x_a2xequities_udpheader_amd_v1.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect: Payload
a2x_a2xequities_udpheader_amd_v1.payload.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_udpheader_amd_v1.payload.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = a2x_a2xequities_udpheader_amd_v1.payload.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_udpheader_amd_v1.fields.payload, range, value, display)

  return offset + length, value
end

-- Seq No
a2x_a2xequities_udpheader_amd_v1.seq_no = {}

-- Size: Seq No
a2x_a2xequities_udpheader_amd_v1.seq_no.size = 4

-- Display: Seq No
a2x_a2xequities_udpheader_amd_v1.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
a2x_a2xequities_udpheader_amd_v1.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = a2x_a2xequities_udpheader_amd_v1.seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = a2x_a2xequities_udpheader_amd_v1.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_a2x_a2xequities_udpheader_amd_v1.fields.seq_no, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect A2X A2XEquities UdpHeader Amd 1.
-----------------------------------------------------------------------

-- Message Header
a2x_a2xequities_udpheader_amd_v1.message_header = {}

-- Size: Message Header
a2x_a2xequities_udpheader_amd_v1.message_header.size =
  a2x_a2xequities_udpheader_amd_v1.msg_type.size + 
  a2x_a2xequities_udpheader_amd_v1.msg_length.size + 
  a2x_a2xequities_udpheader_amd_v1.seq_no.size

-- Display: Message Header
a2x_a2xequities_udpheader_amd_v1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
a2x_a2xequities_udpheader_amd_v1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer
  index, msg_type = a2x_a2xequities_udpheader_amd_v1.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = a2x_a2xequities_udpheader_amd_v1.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = a2x_a2xequities_udpheader_amd_v1.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
a2x_a2xequities_udpheader_amd_v1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_a2x_a2xequities_udpheader_amd_v1.fields.message_header, buffer(offset, 0))
    local index = a2x_a2xequities_udpheader_amd_v1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = a2x_a2xequities_udpheader_amd_v1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return a2x_a2xequities_udpheader_amd_v1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
a2x_a2xequities_udpheader_amd_v1.message = {}

-- Display: Message
a2x_a2xequities_udpheader_amd_v1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
a2x_a2xequities_udpheader_amd_v1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_a2x_a2xequities_udpheader_amd_v1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = a2x_a2xequities_udpheader_amd_v1.message_header.dissect(buffer, index, packet, parent)

  -- Payload: 0 Byte
  index, payload = a2x_a2xequities_udpheader_amd_v1.payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
a2x_a2xequities_udpheader_amd_v1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_a2x_a2xequities_udpheader_amd_v1.fields.message, buffer(offset, 0))
    local current = a2x_a2xequities_udpheader_amd_v1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = a2x_a2xequities_udpheader_amd_v1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    a2x_a2xequities_udpheader_amd_v1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet
a2x_a2xequities_udpheader_amd_v1.packet = {}

-- Verify required size of Udp packet
a2x_a2xequities_udpheader_amd_v1.packet.requiredsize = function(buffer)
  return buffer:len() >= a2x_a2xequities_udpheader_amd_v1.message_count.size
end

-- Dissect Packet
a2x_a2xequities_udpheader_amd_v1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = a2x_a2xequities_udpheader_amd_v1.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = a2x_a2xequities_udpheader_amd_v1.message.dissect(buffer, index, packet, parent, msg_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_a2x_a2xequities_udpheader_amd_v1.init()
end

-- Dissector for A2X A2XEquities UdpHeader Amd 1.
function omi_a2x_a2xequities_udpheader_amd_v1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_a2x_a2xequities_udpheader_amd_v1.name

  -- Dissect protocol
  local protocol = parent:add(omi_a2x_a2xequities_udpheader_amd_v1, buffer(), omi_a2x_a2xequities_udpheader_amd_v1.description, "("..buffer:len().." Bytes)")
  return a2x_a2xequities_udpheader_amd_v1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for A2X A2XEquities UdpHeader Amd 1. (Udp)
local function omi_a2x_a2xequities_udpheader_amd_v1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not a2x_a2xequities_udpheader_amd_v1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_a2x_a2xequities_udpheader_amd_v1
  omi_a2x_a2xequities_udpheader_amd_v1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for A2X A2XEquities UdpHeader Amd 1.
omi_a2x_a2xequities_udpheader_amd_v1:register_heuristic("udp", omi_a2x_a2xequities_udpheader_amd_v1_udp_heuristic)

-- Register A2X A2XEquities UdpHeader Amd 1. for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_a2x_a2xequities_udpheader_amd_v1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: A2X Markets
--   Version: 1
--   Date: Friday, September 1, 2017
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
