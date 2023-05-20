-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lse Millennium UdpUnitHeader Mitch 1.0 Protocol
local lse_millennium_udpunitheader_mitch_v1_0 = Proto("Lse.Millennium.UdpUnitHeader.Mitch.v1.0.Lua", "Lse Millennium UdpUnitHeader Mitch 1.0")

-- Component Tables
local show = {}
local format = {}
local lse_millennium_udpunitheader_mitch_v1_0_display = {}
local lse_millennium_udpunitheader_mitch_v1_0_dissect = {}
local lse_millennium_udpunitheader_mitch_v1_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lse Millennium UdpUnitHeader Mitch 1.0 Fields
lse_millennium_udpunitheader_mitch_v1_0.fields.length = ProtoField.new("Length", "lse.millennium.udpunitheader.mitch.v1.0.length", ftypes.UINT16)
lse_millennium_udpunitheader_mitch_v1_0.fields.market_data_group = ProtoField.new("Market Data Group", "lse.millennium.udpunitheader.mitch.v1.0.marketdatagroup", ftypes.STRING)
lse_millennium_udpunitheader_mitch_v1_0.fields.message = ProtoField.new("Message", "lse.millennium.udpunitheader.mitch.v1.0.message", ftypes.STRING)
lse_millennium_udpunitheader_mitch_v1_0.fields.message_count = ProtoField.new("Message Count", "lse.millennium.udpunitheader.mitch.v1.0.messagecount", ftypes.UINT8)
lse_millennium_udpunitheader_mitch_v1_0.fields.message_header = ProtoField.new("Message Header", "lse.millennium.udpunitheader.mitch.v1.0.messageheader", ftypes.STRING)
lse_millennium_udpunitheader_mitch_v1_0.fields.message_length = ProtoField.new("Message Length", "lse.millennium.udpunitheader.mitch.v1.0.messagelength", ftypes.UINT8)
lse_millennium_udpunitheader_mitch_v1_0.fields.message_type = ProtoField.new("Message Type", "lse.millennium.udpunitheader.mitch.v1.0.messagetype", ftypes.UINT8)
lse_millennium_udpunitheader_mitch_v1_0.fields.packet = ProtoField.new("Packet", "lse.millennium.udpunitheader.mitch.v1.0.packet", ftypes.STRING)
lse_millennium_udpunitheader_mitch_v1_0.fields.payload = ProtoField.new("Payload", "lse.millennium.udpunitheader.mitch.v1.0.payload", ftypes.BYTES)
lse_millennium_udpunitheader_mitch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "lse.millennium.udpunitheader.mitch.v1.0.sequencenumber", ftypes.UINT32)
lse_millennium_udpunitheader_mitch_v1_0.fields.unit_header = ProtoField.new("Unit Header", "lse.millennium.udpunitheader.mitch.v1.0.unitheader", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Lse Millennium UdpUnitHeader Mitch 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.unit_header = true

-- Register Lse Millennium UdpUnitHeader Mitch 1.0 Show Options
lse_millennium_udpunitheader_mitch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
lse_millennium_udpunitheader_mitch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
lse_millennium_udpunitheader_mitch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
lse_millennium_udpunitheader_mitch_v1_0.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")

-- Handle changed preferences
function lse_millennium_udpunitheader_mitch_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= lse_millennium_udpunitheader_mitch_v1_0.prefs.show_message then
    show.message = lse_millennium_udpunitheader_mitch_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= lse_millennium_udpunitheader_mitch_v1_0.prefs.show_message_header then
    show.message_header = lse_millennium_udpunitheader_mitch_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= lse_millennium_udpunitheader_mitch_v1_0.prefs.show_packet then
    show.packet = lse_millennium_udpunitheader_mitch_v1_0.prefs.show_packet
    changed = true
  end
  if show.unit_header ~= lse_millennium_udpunitheader_mitch_v1_0.prefs.show_unit_header then
    show.unit_header = lse_millennium_udpunitheader_mitch_v1_0.prefs.show_unit_header
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Lse Millennium UdpUnitHeader Mitch 1.0
-----------------------------------------------------------------------

-- Size: Payload
lse_millennium_udpunitheader_mitch_v1_0_size_of.payload = 0

-- Display: Payload
lse_millennium_udpunitheader_mitch_v1_0_display.payload = function(value)
  return "Payload: "..value
end

-- Dissect: Payload
lse_millennium_udpunitheader_mitch_v1_0_dissect.payload = function(buffer, offset, packet, parent)
  local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.payload
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lse_millennium_udpunitheader_mitch_v1_0_display.payload(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.payload, range, value, display)

  return offset + length, value
end

-- Size: Message Type
lse_millennium_udpunitheader_mitch_v1_0_size_of.message_type = 1

-- Display: Message Type
lse_millennium_udpunitheader_mitch_v1_0_display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
lse_millennium_udpunitheader_mitch_v1_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lse_millennium_udpunitheader_mitch_v1_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
lse_millennium_udpunitheader_mitch_v1_0_size_of.message_length = 1

-- Display: Message Length
lse_millennium_udpunitheader_mitch_v1_0_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lse_millennium_udpunitheader_mitch_v1_0_dissect.message_length = function(buffer, offset, packet, parent)
  local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lse_millennium_udpunitheader_mitch_v1_0_display.message_length(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
lse_millennium_udpunitheader_mitch_v1_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + lse_millennium_udpunitheader_mitch_v1_0_size_of.message_length

  index = index + lse_millennium_udpunitheader_mitch_v1_0_size_of.message_type

  return index
end

-- Display: Message Header
lse_millennium_udpunitheader_mitch_v1_0_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
lse_millennium_udpunitheader_mitch_v1_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lse_millennium_udpunitheader_mitch_v1_0_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = lse_millennium_udpunitheader_mitch_v1_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lse_millennium_udpunitheader_mitch_v1_0_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = lse_millennium_udpunitheader_mitch_v1_0_display.message_header(buffer, packet, parent)
    parent = parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.message_header, range, display)
  end

  return lse_millennium_udpunitheader_mitch_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
lse_millennium_udpunitheader_mitch_v1_0_size_of.message = function(buffer, offset)
  local index = 0

  index = index + lse_millennium_udpunitheader_mitch_v1_0_size_of.message_header(buffer, offset + index)

  index = index + lse_millennium_udpunitheader_mitch_v1_0_size_of.payload

  return index
end

-- Display: Message
lse_millennium_udpunitheader_mitch_v1_0_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
lse_millennium_udpunitheader_mitch_v1_0_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = lse_millennium_udpunitheader_mitch_v1_0_dissect.message_header(buffer, index, packet, parent)

  -- Payload: 0 Byte
  index, payload = lse_millennium_udpunitheader_mitch_v1_0_dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
lse_millennium_udpunitheader_mitch_v1_0_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message then
    local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = lse_millennium_udpunitheader_mitch_v1_0_display.message(buffer, packet, parent)
    parent = parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.message, range, display)
  end

  return lse_millennium_udpunitheader_mitch_v1_0_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
lse_millennium_udpunitheader_mitch_v1_0_size_of.sequence_number = 4

-- Display: Sequence Number
lse_millennium_udpunitheader_mitch_v1_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lse_millennium_udpunitheader_mitch_v1_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lse_millennium_udpunitheader_mitch_v1_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Market Data Group
lse_millennium_udpunitheader_mitch_v1_0_size_of.market_data_group = 1

-- Display: Market Data Group
lse_millennium_udpunitheader_mitch_v1_0_display.market_data_group = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lse_millennium_udpunitheader_mitch_v1_0_dissect.market_data_group = function(buffer, offset, packet, parent)
  local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.market_data_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = lse_millennium_udpunitheader_mitch_v1_0_display.market_data_group(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Size: Message Count
lse_millennium_udpunitheader_mitch_v1_0_size_of.message_count = 1

-- Display: Message Count
lse_millennium_udpunitheader_mitch_v1_0_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lse_millennium_udpunitheader_mitch_v1_0_dissect.message_count = function(buffer, offset, packet, parent)
  local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lse_millennium_udpunitheader_mitch_v1_0_display.message_count(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Length
lse_millennium_udpunitheader_mitch_v1_0_size_of.length = 2

-- Display: Length
lse_millennium_udpunitheader_mitch_v1_0_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
lse_millennium_udpunitheader_mitch_v1_0_dissect.length = function(buffer, offset, packet, parent)
  local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lse_millennium_udpunitheader_mitch_v1_0_display.length(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Header
lse_millennium_udpunitheader_mitch_v1_0_size_of.unit_header = function(buffer, offset)
  local index = 0

  index = index + lse_millennium_udpunitheader_mitch_v1_0_size_of.length

  index = index + lse_millennium_udpunitheader_mitch_v1_0_size_of.message_count

  index = index + lse_millennium_udpunitheader_mitch_v1_0_size_of.market_data_group

  index = index + lse_millennium_udpunitheader_mitch_v1_0_size_of.sequence_number

  return index
end

-- Display: Unit Header
lse_millennium_udpunitheader_mitch_v1_0_display.unit_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Header
lse_millennium_udpunitheader_mitch_v1_0_dissect.unit_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lse_millennium_udpunitheader_mitch_v1_0_dissect.length(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lse_millennium_udpunitheader_mitch_v1_0_dissect.message_count(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lse_millennium_udpunitheader_mitch_v1_0_dissect.market_data_group(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lse_millennium_udpunitheader_mitch_v1_0_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lse_millennium_udpunitheader_mitch_v1_0_dissect.unit_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_header then
    local length = lse_millennium_udpunitheader_mitch_v1_0_size_of.unit_header(buffer, offset)
    local range = buffer(offset, length)
    local display = lse_millennium_udpunitheader_mitch_v1_0_display.unit_header(buffer, packet, parent)
    parent = parent:add(lse_millennium_udpunitheader_mitch_v1_0.fields.unit_header, range, display)
  end

  return lse_millennium_udpunitheader_mitch_v1_0_dissect.unit_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
lse_millennium_udpunitheader_mitch_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lse_millennium_udpunitheader_mitch_v1_0_dissect.unit_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = lse_millennium_udpunitheader_mitch_v1_0_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function lse_millennium_udpunitheader_mitch_v1_0.init()
end

-- Dissector for Lse Millennium UdpUnitHeader Mitch 1.0
function lse_millennium_udpunitheader_mitch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = lse_millennium_udpunitheader_mitch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(lse_millennium_udpunitheader_mitch_v1_0, buffer(), lse_millennium_udpunitheader_mitch_v1_0.description, "("..buffer:len().." Bytes)")
  return lse_millennium_udpunitheader_mitch_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, lse_millennium_udpunitheader_mitch_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.lse_millennium_udpunitheader_mitch_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Lse Millennium UdpUnitHeader Mitch 1.0
local function lse_millennium_udpunitheader_mitch_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.lse_millennium_udpunitheader_mitch_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = lse_millennium_udpunitheader_mitch_v1_0
  lse_millennium_udpunitheader_mitch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lse Millennium UdpUnitHeader Mitch 1.0
lse_millennium_udpunitheader_mitch_v1_0:register_heuristic("udp", lse_millennium_udpunitheader_mitch_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 1.0
--   Date: Monday, January 1, 2018
--   Specification: mit303issue119.pdf
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
