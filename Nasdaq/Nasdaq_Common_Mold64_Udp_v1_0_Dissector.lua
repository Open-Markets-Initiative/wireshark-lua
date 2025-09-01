-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Common Mold64 Udp 1.0 Protocol
local omi_nasdaq_common_mold64_udp_v1_0 = Proto("Nasdaq.Common.Mold64.Udp.v1.0.Lua", "Nasdaq Common Mold64 Udp 1.0")

-- Protocol table
local nasdaq_common_mold64_udp_v1_0 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Common Mold64 Udp 1.0 Fields
omi_nasdaq_common_mold64_udp_v1_0.fields.message = ProtoField.new("Message", "nasdaq.common.mold64.udp.v1.0.message", ftypes.STRING)
omi_nasdaq_common_mold64_udp_v1_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.common.mold64.udp.v1.0.messagecount", ftypes.UINT16)
omi_nasdaq_common_mold64_udp_v1_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.common.mold64.udp.v1.0.messageheader", ftypes.STRING)
omi_nasdaq_common_mold64_udp_v1_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.common.mold64.udp.v1.0.messagelength", ftypes.UINT16)
omi_nasdaq_common_mold64_udp_v1_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.common.mold64.udp.v1.0.messagetype", ftypes.STRING)
omi_nasdaq_common_mold64_udp_v1_0.fields.packet = ProtoField.new("Packet", "nasdaq.common.mold64.udp.v1.0.packet", ftypes.STRING)
omi_nasdaq_common_mold64_udp_v1_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.common.mold64.udp.v1.0.packetheader", ftypes.STRING)
omi_nasdaq_common_mold64_udp_v1_0.fields.payload = ProtoField.new("Payload", "nasdaq.common.mold64.udp.v1.0.payload", ftypes.BYTES)
omi_nasdaq_common_mold64_udp_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.common.mold64.udp.v1.0.sequencenumber", ftypes.UINT64)
omi_nasdaq_common_mold64_udp_v1_0.fields.session = ProtoField.new("Session", "nasdaq.common.mold64.udp.v1.0.session", ftypes.STRING)

-- Nasdaq Common Mold64 Udp 1.0 generated fields
omi_nasdaq_common_mold64_udp_v1_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.common.mold64.udp.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Common Mold64 Udp 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true

-- Register Nasdaq Common Mold64 Udp 1.0 Show Options
omi_nasdaq_common_mold64_udp_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_common_mold64_udp_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_common_mold64_udp_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_common_mold64_udp_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function omi_nasdaq_common_mold64_udp_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_nasdaq_common_mold64_udp_v1_0.prefs.show_message then
    show.message = omi_nasdaq_common_mold64_udp_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nasdaq_common_mold64_udp_v1_0.prefs.show_message_header then
    show.message_header = omi_nasdaq_common_mold64_udp_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_nasdaq_common_mold64_udp_v1_0.prefs.show_packet then
    show.packet = omi_nasdaq_common_mold64_udp_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_common_mold64_udp_v1_0.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_common_mold64_udp_v1_0.prefs.show_packet_header
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Common Mold64 Udp 1.0
-----------------------------------------------------------------------

-- Payload
nasdaq_common_mold64_udp_v1_0.payload = {}

-- Display: Payload
nasdaq_common_mold64_udp_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
nasdaq_common_mold64_udp_v1_0.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_common_mold64_udp_v1_0.payload.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.payload, range, value, display)

  return offset + size
end

-- Message Type
nasdaq_common_mold64_udp_v1_0.message_type = {}

-- Size: Message Type
nasdaq_common_mold64_udp_v1_0.message_type.size = 1

-- Display: Message Type
nasdaq_common_mold64_udp_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
nasdaq_common_mold64_udp_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_mold64_udp_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_common_mold64_udp_v1_0.message_length = {}

-- Size: Message Length
nasdaq_common_mold64_udp_v1_0.message_length.size = 2

-- Display: Message Length
nasdaq_common_mold64_udp_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_common_mold64_udp_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_common_mold64_udp_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
nasdaq_common_mold64_udp_v1_0.message_header = {}

-- Calculate size of: Message Header
nasdaq_common_mold64_udp_v1_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_common_mold64_udp_v1_0.message_length.size

  index = index + nasdaq_common_mold64_udp_v1_0.message_type.size

  return index
end

-- Display: Message Header
nasdaq_common_mold64_udp_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_common_mold64_udp_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_common_mold64_udp_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = nasdaq_common_mold64_udp_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_common_mold64_udp_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_common_mold64_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_common_mold64_udp_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_common_mold64_udp_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_common_mold64_udp_v1_0.message = {}

-- Display: Message
nasdaq_common_mold64_udp_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_common_mold64_udp_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_common_mold64_udp_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 3, 2):uint()

  -- Runtime Size Of: Payload
  local size_of_payload = message_length - 1

  -- Payload: 0 Byte
  index, payload = nasdaq_common_mold64_udp_v1_0.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
nasdaq_common_mold64_udp_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.message, buffer(offset, 0))
    local current = nasdaq_common_mold64_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_common_mold64_udp_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_common_mold64_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
nasdaq_common_mold64_udp_v1_0.message_count = {}

-- Size: Message Count
nasdaq_common_mold64_udp_v1_0.message_count.size = 2

-- Display: Message Count
nasdaq_common_mold64_udp_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_common_mold64_udp_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_common_mold64_udp_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_common_mold64_udp_v1_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_common_mold64_udp_v1_0.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_common_mold64_udp_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_common_mold64_udp_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_common_mold64_udp_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_common_mold64_udp_v1_0.session = {}

-- Size: Session
nasdaq_common_mold64_udp_v1_0.session.size = 10

-- Display: Session
nasdaq_common_mold64_udp_v1_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_common_mold64_udp_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0.session.size
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

  local display = nasdaq_common_mold64_udp_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
nasdaq_common_mold64_udp_v1_0.packet_header = {}

-- Calculate size of: Packet Header
nasdaq_common_mold64_udp_v1_0.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + nasdaq_common_mold64_udp_v1_0.session.size

  index = index + nasdaq_common_mold64_udp_v1_0.sequence_number.size

  index = index + nasdaq_common_mold64_udp_v1_0.message_count.size

  return index
end

-- Display: Packet Header
nasdaq_common_mold64_udp_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_common_mold64_udp_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_common_mold64_udp_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_common_mold64_udp_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_common_mold64_udp_v1_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_common_mold64_udp_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_common_mold64_udp_v1_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_common_mold64_udp_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_common_mold64_udp_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_common_mold64_udp_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_common_mold64_udp_v1_0.packet = {}

-- Dissect Packet
nasdaq_common_mold64_udp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_common_mold64_udp_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_common_mold64_udp_v1_0.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_common_mold64_udp_v1_0.init()
end

-- Dissector for Nasdaq Common Mold64 Udp 1.0
function omi_nasdaq_common_mold64_udp_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_common_mold64_udp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_common_mold64_udp_v1_0, buffer(), omi_nasdaq_common_mold64_udp_v1_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_common_mold64_udp_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_common_mold64_udp_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_common_mold64_udp_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Common Mold64 Udp 1.0
local function omi_nasdaq_common_mold64_udp_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_common_mold64_udp_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_common_mold64_udp_v1_0
  omi_nasdaq_common_mold64_udp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Common Mold64 Udp 1.0
omi_nasdaq_common_mold64_udp_v1_0:register_heuristic("udp", omi_nasdaq_common_mold64_udp_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
--   Version: 1.0
--   Date: Wednesday, February 22, 2017
--   Specification: moldudp64.pdf
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
