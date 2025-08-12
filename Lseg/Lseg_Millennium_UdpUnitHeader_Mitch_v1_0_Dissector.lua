-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Protocol
local lseg_millennium_udpunitheader_mitch_v1_0 = Proto("Lseg.Millennium.UdpUnitHeader.Mitch.v1.0.Lua", "Lseg Millennium UdpUnitHeader Mitch 1.0")

-- Component Tables
local show = {}
local format = {}
local lseg_millennium_udpunitheader_mitch_v1_0_display = {}
local lseg_millennium_udpunitheader_mitch_v1_0_dissect = {}
local lseg_millennium_udpunitheader_mitch_v1_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Fields
lseg_millennium_udpunitheader_mitch_v1_0.fields.length = ProtoField.new("Length", "lseg.millennium.udpunitheader.mitch.v1.0.length", ftypes.UINT16)
lseg_millennium_udpunitheader_mitch_v1_0.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.millennium.udpunitheader.mitch.v1.0.marketdatagroup", ftypes.STRING)
lseg_millennium_udpunitheader_mitch_v1_0.fields.message = ProtoField.new("Message", "lseg.millennium.udpunitheader.mitch.v1.0.message", ftypes.STRING)
lseg_millennium_udpunitheader_mitch_v1_0.fields.message_count = ProtoField.new("Message Count", "lseg.millennium.udpunitheader.mitch.v1.0.messagecount", ftypes.UINT8)
lseg_millennium_udpunitheader_mitch_v1_0.fields.message_header = ProtoField.new("Message Header", "lseg.millennium.udpunitheader.mitch.v1.0.messageheader", ftypes.STRING)
lseg_millennium_udpunitheader_mitch_v1_0.fields.message_length = ProtoField.new("Message Length", "lseg.millennium.udpunitheader.mitch.v1.0.messagelength", ftypes.UINT8)
lseg_millennium_udpunitheader_mitch_v1_0.fields.message_type = ProtoField.new("Message Type", "lseg.millennium.udpunitheader.mitch.v1.0.messagetype", ftypes.UINT8)
lseg_millennium_udpunitheader_mitch_v1_0.fields.packet = ProtoField.new("Packet", "lseg.millennium.udpunitheader.mitch.v1.0.packet", ftypes.STRING)
lseg_millennium_udpunitheader_mitch_v1_0.fields.payload = ProtoField.new("Payload", "lseg.millennium.udpunitheader.mitch.v1.0.payload", ftypes.BYTES)
lseg_millennium_udpunitheader_mitch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.millennium.udpunitheader.mitch.v1.0.sequencenumber", ftypes.UINT32)
lseg_millennium_udpunitheader_mitch_v1_0.fields.unit_header = ProtoField.new("Unit Header", "lseg.millennium.udpunitheader.mitch.v1.0.unitheader", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.unit_header = true

-- Register Lseg Millennium UdpUnitHeader Mitch 1.0 Show Options
lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")

-- Handle changed preferences
function lseg_millennium_udpunitheader_mitch_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message then
    show.message = lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message_header then
    show.message_header = lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_packet then
    show.packet = lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_packet
    changed = true
  end
  if show.unit_header ~= lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_unit_header then
    show.unit_header = lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_unit_header
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Lseg Millennium UdpUnitHeader Mitch 1.0
-----------------------------------------------------------------------

-- Size: Payload
lseg_millennium_udpunitheader_mitch_v1_0_size_of.payload = 0

-- Display: Payload
lseg_millennium_udpunitheader_mitch_v1_0_display.payload = function(value)
  return "Payload: "..value
end

-- Dissect: Payload
lseg_millennium_udpunitheader_mitch_v1_0_dissect.payload = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0_size_of.payload
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_millennium_udpunitheader_mitch_v1_0_display.payload(value, buffer, offset, packet, parent)

  parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.payload, range, value, display)

  return offset + length, value
end

-- Size: Message Type
lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_type = 1

-- Display: Message Type
lseg_millennium_udpunitheader_mitch_v1_0_display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_length = 1

-- Display: Message Length
lseg_millennium_udpunitheader_mitch_v1_0_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_length = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0_display.message_length(value, buffer, offset, packet, parent)

  parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_length

  index = index + lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_type

  return index
end

-- Display: Message Header
lseg_millennium_udpunitheader_mitch_v1_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.message_header, buffer(offset, 0))
    local index = lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_udpunitheader_mitch_v1_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Message
lseg_millennium_udpunitheader_mitch_v1_0_size_of.message = function(buffer, offset)
  local index = 0

  index = index + lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_header(buffer, offset + index)

  index = index + lseg_millennium_udpunitheader_mitch_v1_0_size_of.payload

  return index
end

-- Display: Message
lseg_millennium_udpunitheader_mitch_v1_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_header(buffer, index, packet, parent)

  -- Payload: 0 Byte
  index, payload = lseg_millennium_udpunitheader_mitch_v1_0_dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
lseg_millennium_udpunitheader_mitch_v1_0_dissect.message = function(buffer, offset, packet, parent)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.message, buffer(offset, 0))
    local index = lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_udpunitheader_mitch_v1_0_display.message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0_size_of.sequence_number = 4

-- Display: Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0_size_of.market_data_group = 1

-- Display: Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0_display.market_data_group = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0_dissect.market_data_group = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0_size_of.market_data_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_udpunitheader_mitch_v1_0_display.market_data_group(value, buffer, offset, packet, parent)

  parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Size: Message Count
lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_count = 1

-- Display: Message Count
lseg_millennium_udpunitheader_mitch_v1_0_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_count = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0_display.message_count(value, buffer, offset, packet, parent)

  parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Length
lseg_millennium_udpunitheader_mitch_v1_0_size_of.length = 2

-- Display: Length
lseg_millennium_udpunitheader_mitch_v1_0_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_millennium_udpunitheader_mitch_v1_0_dissect.length = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0_display.length(value, buffer, offset, packet, parent)

  parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0_size_of.unit_header = function(buffer, offset)
  local index = 0

  index = index + lseg_millennium_udpunitheader_mitch_v1_0_size_of.length

  index = index + lseg_millennium_udpunitheader_mitch_v1_0_size_of.message_count

  index = index + lseg_millennium_udpunitheader_mitch_v1_0_size_of.market_data_group

  index = index + lseg_millennium_udpunitheader_mitch_v1_0_size_of.sequence_number

  return index
end

-- Display: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0_display.unit_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0_dissect.unit_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_millennium_udpunitheader_mitch_v1_0_dissect.length(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_millennium_udpunitheader_mitch_v1_0_dissect.message_count(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_millennium_udpunitheader_mitch_v1_0_dissect.market_data_group(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_millennium_udpunitheader_mitch_v1_0_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0_dissect.unit_header = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    parent = parent:add(lseg_millennium_udpunitheader_mitch_v1_0.fields.unit_header, buffer(offset, 0))
    local index = lseg_millennium_udpunitheader_mitch_v1_0_dissect.unit_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_udpunitheader_mitch_v1_0_display.unit_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return lseg_millennium_udpunitheader_mitch_v1_0_dissect.unit_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
lseg_millennium_udpunitheader_mitch_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_millennium_udpunitheader_mitch_v1_0_dissect.unit_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = lseg_millennium_udpunitheader_mitch_v1_0_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function lseg_millennium_udpunitheader_mitch_v1_0.init()
end

-- Dissector for Lseg Millennium UdpUnitHeader Mitch 1.0
function lseg_millennium_udpunitheader_mitch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = lseg_millennium_udpunitheader_mitch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(lseg_millennium_udpunitheader_mitch_v1_0, buffer(), lseg_millennium_udpunitheader_mitch_v1_0.description, "("..buffer:len().." Bytes)")
  return lseg_millennium_udpunitheader_mitch_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, lseg_millennium_udpunitheader_mitch_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.lseg_millennium_udpunitheader_mitch_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg Millennium UdpUnitHeader Mitch 1.0
local function lseg_millennium_udpunitheader_mitch_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.lseg_millennium_udpunitheader_mitch_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = lseg_millennium_udpunitheader_mitch_v1_0
  lseg_millennium_udpunitheader_mitch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Millennium UdpUnitHeader Mitch 1.0
lseg_millennium_udpunitheader_mitch_v1_0:register_heuristic("udp", lseg_millennium_udpunitheader_mitch_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: London Stock Exchange Group
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
