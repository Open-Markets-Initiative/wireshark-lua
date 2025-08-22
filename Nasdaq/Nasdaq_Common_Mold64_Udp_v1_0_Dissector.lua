-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Common Mold64 Udp 1.0 Protocol
local nasdaq_common_mold64_udp_v1_0 = Proto("Nasdaq.Common.Mold64.Udp.v1.0.Lua", "Nasdaq Common Mold64 Udp 1.0")

-- Component Tables
local show = {}
local format = {}
local nasdaq_common_mold64_udp_v1_0_display = {}
local nasdaq_common_mold64_udp_v1_0_dissect = {}
local nasdaq_common_mold64_udp_v1_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Common Mold64 Udp 1.0 Fields
nasdaq_common_mold64_udp_v1_0.fields.message = ProtoField.new("Message", "nasdaq.common.mold64.udp.v1.0.message", ftypes.STRING)
nasdaq_common_mold64_udp_v1_0.fields.message_count = ProtoField.new("Message Count", "nasdaq.common.mold64.udp.v1.0.messagecount", ftypes.UINT16)
nasdaq_common_mold64_udp_v1_0.fields.message_header = ProtoField.new("Message Header", "nasdaq.common.mold64.udp.v1.0.messageheader", ftypes.STRING)
nasdaq_common_mold64_udp_v1_0.fields.message_length = ProtoField.new("Message Length", "nasdaq.common.mold64.udp.v1.0.messagelength", ftypes.UINT16)
nasdaq_common_mold64_udp_v1_0.fields.message_type = ProtoField.new("Message Type", "nasdaq.common.mold64.udp.v1.0.messagetype", ftypes.STRING)
nasdaq_common_mold64_udp_v1_0.fields.packet = ProtoField.new("Packet", "nasdaq.common.mold64.udp.v1.0.packet", ftypes.STRING)
nasdaq_common_mold64_udp_v1_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.common.mold64.udp.v1.0.packetheader", ftypes.STRING)
nasdaq_common_mold64_udp_v1_0.fields.payload = ProtoField.new("Payload", "nasdaq.common.mold64.udp.v1.0.payload", ftypes.BYTES)
nasdaq_common_mold64_udp_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.common.mold64.udp.v1.0.sequencenumber", ftypes.UINT64)
nasdaq_common_mold64_udp_v1_0.fields.session = ProtoField.new("Session", "nasdaq.common.mold64.udp.v1.0.session", ftypes.STRING)

-- Nasdaq Common Mold64 Udp 1.0 generated fields
nasdaq_common_mold64_udp_v1_0.fields.message_index = ProtoField.new("Message Index", "nasdaq.common.mold64.udp.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nasdaq Common Mold64 Udp 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true

-- Register Nasdaq Common Mold64 Udp 1.0 Show Options
nasdaq_common_mold64_udp_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nasdaq_common_mold64_udp_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nasdaq_common_mold64_udp_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nasdaq_common_mold64_udp_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function nasdaq_common_mold64_udp_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= nasdaq_common_mold64_udp_v1_0.prefs.show_message then
    show.message = nasdaq_common_mold64_udp_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= nasdaq_common_mold64_udp_v1_0.prefs.show_message_header then
    show.message_header = nasdaq_common_mold64_udp_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= nasdaq_common_mold64_udp_v1_0.prefs.show_packet then
    show.packet = nasdaq_common_mold64_udp_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nasdaq_common_mold64_udp_v1_0.prefs.show_packet_header then
    show.packet_header = nasdaq_common_mold64_udp_v1_0.prefs.show_packet_header
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

-- Display: Payload
nasdaq_common_mold64_udp_v1_0_display.payload = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
nasdaq_common_mold64_udp_v1_0_dissect.payload = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_common_mold64_udp_v1_0_display.payload(value, buffer, offset, packet, parent, size)

  parent:add(nasdaq_common_mold64_udp_v1_0.fields.payload, range, value, display)

  return offset + size
end

-- Size: Message Type
nasdaq_common_mold64_udp_v1_0_size_of.message_type = 1

-- Display: Message Type
nasdaq_common_mold64_udp_v1_0_display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
nasdaq_common_mold64_udp_v1_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_mold64_udp_v1_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nasdaq_common_mold64_udp_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
nasdaq_common_mold64_udp_v1_0_size_of.message_length = 2

-- Display: Message Length
nasdaq_common_mold64_udp_v1_0_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_common_mold64_udp_v1_0_dissect.message_length = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_common_mold64_udp_v1_0_display.message_length(value, buffer, offset, packet, parent)

  parent:add(nasdaq_common_mold64_udp_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nasdaq_common_mold64_udp_v1_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_common_mold64_udp_v1_0_size_of.message_length

  index = index + nasdaq_common_mold64_udp_v1_0_size_of.message_type

  return index
end

-- Display: Message Header
nasdaq_common_mold64_udp_v1_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_common_mold64_udp_v1_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_common_mold64_udp_v1_0_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String
  index, message_type = nasdaq_common_mold64_udp_v1_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_common_mold64_udp_v1_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_common_mold64_udp_v1_0.fields.message_header, buffer(offset, 0))
    local index = nasdaq_common_mold64_udp_v1_0_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_common_mold64_udp_v1_0_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_common_mold64_udp_v1_0_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
nasdaq_common_mold64_udp_v1_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_common_mold64_udp_v1_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- TODO
  if message_index ~= nil then
    local iteration = parent:add(nasdaq_common_mold64_udp_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_common_mold64_udp_v1_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 3, 2):uint()

  -- Runtime Size Of: Payload
  local size_of_payload = message_length - 1

  -- Payload: 0 Byte
  index, payload = nasdaq_common_mold64_udp_v1_0_dissect.payload(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
nasdaq_common_mold64_udp_v1_0_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(nasdaq_common_mold64_udp_v1_0.fields.message, buffer(offset, 0))
    local current = nasdaq_common_mold64_udp_v1_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_common_mold64_udp_v1_0_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_common_mold64_udp_v1_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Message Count
nasdaq_common_mold64_udp_v1_0_size_of.message_count = 2

-- Display: Message Count
nasdaq_common_mold64_udp_v1_0_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_common_mold64_udp_v1_0_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_common_mold64_udp_v1_0_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nasdaq_common_mold64_udp_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nasdaq_common_mold64_udp_v1_0_size_of.sequence_number = 8

-- Display: Sequence Number
nasdaq_common_mold64_udp_v1_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_common_mold64_udp_v1_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_common_mold64_udp_v1_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nasdaq_common_mold64_udp_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
nasdaq_common_mold64_udp_v1_0_size_of.session = 10

-- Display: Session
nasdaq_common_mold64_udp_v1_0_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_common_mold64_udp_v1_0_dissect.session = function(buffer, offset, packet, parent)
  local length = nasdaq_common_mold64_udp_v1_0_size_of.session
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

  local display = nasdaq_common_mold64_udp_v1_0_display.session(value, buffer, offset, packet, parent)

  parent:add(nasdaq_common_mold64_udp_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nasdaq_common_mold64_udp_v1_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nasdaq_common_mold64_udp_v1_0_size_of.session

  index = index + nasdaq_common_mold64_udp_v1_0_size_of.sequence_number

  index = index + nasdaq_common_mold64_udp_v1_0_size_of.message_count

  return index
end

-- Display: Packet Header
nasdaq_common_mold64_udp_v1_0_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_common_mold64_udp_v1_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_common_mold64_udp_v1_0_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_common_mold64_udp_v1_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_common_mold64_udp_v1_0_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_common_mold64_udp_v1_0_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nasdaq_common_mold64_udp_v1_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_common_mold64_udp_v1_0_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nasdaq_common_mold64_udp_v1_0_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nasdaq_common_mold64_udp_v1_0_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
nasdaq_common_mold64_udp_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_common_mold64_udp_v1_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = nasdaq_common_mold64_udp_v1_0_dissect.message(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nasdaq_common_mold64_udp_v1_0.init()
end

-- Dissector for Nasdaq Common Mold64 Udp 1.0
function nasdaq_common_mold64_udp_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nasdaq_common_mold64_udp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(nasdaq_common_mold64_udp_v1_0, buffer(), nasdaq_common_mold64_udp_v1_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_common_mold64_udp_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nasdaq_common_mold64_udp_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nasdaq_common_mold64_udp_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Common Mold64 Udp 1.0
local function nasdaq_common_mold64_udp_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nasdaq_common_mold64_udp_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nasdaq_common_mold64_udp_v1_0
  nasdaq_common_mold64_udp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Common Mold64 Udp 1.0
nasdaq_common_mold64_udp_v1_0:register_heuristic("udp", nasdaq_common_mold64_udp_v1_0_heuristic)

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
