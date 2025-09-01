-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Protocol
local omi_lseg_millennium_udpunitheader_mitch_v1_0 = Proto("Lseg.Millennium.UdpUnitHeader.Mitch.v1.0.Lua", "Lseg Millennium UdpUnitHeader Mitch 1.0")

-- Protocol table
local lseg_millennium_udpunitheader_mitch_v1_0 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Fields
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.length = ProtoField.new("Length", "lseg.millennium.udpunitheader.mitch.v1.0.length", ftypes.UINT16)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.millennium.udpunitheader.mitch.v1.0.marketdatagroup", ftypes.STRING)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message = ProtoField.new("Message", "lseg.millennium.udpunitheader.mitch.v1.0.message", ftypes.STRING)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_count = ProtoField.new("Message Count", "lseg.millennium.udpunitheader.mitch.v1.0.messagecount", ftypes.UINT8)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_header = ProtoField.new("Message Header", "lseg.millennium.udpunitheader.mitch.v1.0.messageheader", ftypes.STRING)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_length = ProtoField.new("Message Length", "lseg.millennium.udpunitheader.mitch.v1.0.messagelength", ftypes.UINT8)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_type = ProtoField.new("Message Type", "lseg.millennium.udpunitheader.mitch.v1.0.messagetype", ftypes.UINT8)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.packet = ProtoField.new("Packet", "lseg.millennium.udpunitheader.mitch.v1.0.packet", ftypes.STRING)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.payload = ProtoField.new("Payload", "lseg.millennium.udpunitheader.mitch.v1.0.payload", ftypes.BYTES)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.millennium.udpunitheader.mitch.v1.0.sequencenumber", ftypes.UINT32)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.unit_header = ProtoField.new("Unit Header", "lseg.millennium.udpunitheader.mitch.v1.0.unitheader", ftypes.STRING)

-- Lseg Millennium UdpUnitHeader Mitch 1.0 generated fields
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_index = ProtoField.new("Message Index", "lseg.millennium.udpunitheader.mitch.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.unit_header = true

-- Register Lseg Millennium UdpUnitHeader Mitch 1.0 Show Options
omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")

-- Handle changed preferences
function omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message then
    show.message = omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message_header then
    show.message_header = omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_packet then
    show.packet = omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_packet
    changed = true
  end
  if show.unit_header ~= omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_unit_header then
    show.unit_header = omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_unit_header
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

-- Payload
lseg_millennium_udpunitheader_mitch_v1_0.payload = {}

-- Size: Payload
lseg_millennium_udpunitheader_mitch_v1_0.payload.size = 0

-- Display: Payload
lseg_millennium_udpunitheader_mitch_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect: Payload
lseg_millennium_udpunitheader_mitch_v1_0.payload.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.payload.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_millennium_udpunitheader_mitch_v1_0.payload.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.payload, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_millennium_udpunitheader_mitch_v1_0.message_type = {}

-- Size: Message Type
lseg_millennium_udpunitheader_mitch_v1_0.message_type.size = 1

-- Display: Message Type
lseg_millennium_udpunitheader_mitch_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
lseg_millennium_udpunitheader_mitch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_millennium_udpunitheader_mitch_v1_0.message_length = {}

-- Size: Message Length
lseg_millennium_udpunitheader_mitch_v1_0.message_length.size = 1

-- Display: Message Length
lseg_millennium_udpunitheader_mitch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_millennium_udpunitheader_mitch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header = {}

-- Calculate size of: Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + lseg_millennium_udpunitheader_mitch_v1_0.message_length.size

  index = index + lseg_millennium_udpunitheader_mitch_v1_0.message_type.size

  return index
end

-- Display: Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_millennium_udpunitheader_mitch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = lseg_millennium_udpunitheader_mitch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_header, buffer(offset, 0))
    local index = lseg_millennium_udpunitheader_mitch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_udpunitheader_mitch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_udpunitheader_mitch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_millennium_udpunitheader_mitch_v1_0.message = {}

-- Calculate size of: Message
lseg_millennium_udpunitheader_mitch_v1_0.message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_millennium_udpunitheader_mitch_v1_0.message_header.size(buffer, offset + index)

  index = index + lseg_millennium_udpunitheader_mitch_v1_0.payload.size

  return index
end

-- Display: Message
lseg_millennium_udpunitheader_mitch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_millennium_udpunitheader_mitch_v1_0.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_millennium_udpunitheader_mitch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Payload: 0 Byte
  index, payload = lseg_millennium_udpunitheader_mitch_v1_0.payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
lseg_millennium_udpunitheader_mitch_v1_0.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message, buffer(offset, 0))
    local index = lseg_millennium_udpunitheader_mitch_v1_0.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_udpunitheader_mitch_v1_0.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_udpunitheader_mitch_v1_0.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0.sequence_number = {}

-- Size: Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.size = 4

-- Display: Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0.market_data_group = {}

-- Size: Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.size = 1

-- Display: Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_millennium_udpunitheader_mitch_v1_0.message_count = {}

-- Size: Message Count
lseg_millennium_udpunitheader_mitch_v1_0.message_count.size = 1

-- Display: Message Count
lseg_millennium_udpunitheader_mitch_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_millennium_udpunitheader_mitch_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Length
lseg_millennium_udpunitheader_mitch_v1_0.length = {}

-- Size: Length
lseg_millennium_udpunitheader_mitch_v1_0.length.size = 2

-- Display: Length
lseg_millennium_udpunitheader_mitch_v1_0.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_millennium_udpunitheader_mitch_v1_0.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header = {}

-- Calculate size of: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header.size = function(buffer, offset)
  local index = 0

  index = index + lseg_millennium_udpunitheader_mitch_v1_0.length.size

  index = index + lseg_millennium_udpunitheader_mitch_v1_0.message_count.size

  index = index + lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.size

  index = index + lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.size

  return index
end

-- Display: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_millennium_udpunitheader_mitch_v1_0.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_millennium_udpunitheader_mitch_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.unit_header, buffer(offset, 0))
    local index = lseg_millennium_udpunitheader_mitch_v1_0.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_udpunitheader_mitch_v1_0.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_udpunitheader_mitch_v1_0.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_millennium_udpunitheader_mitch_v1_0.packet = {}

-- Dissect Packet
lseg_millennium_udpunitheader_mitch_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_millennium_udpunitheader_mitch_v1_0.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = lseg_millennium_udpunitheader_mitch_v1_0.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_millennium_udpunitheader_mitch_v1_0.init()
end

-- Dissector for Lseg Millennium UdpUnitHeader Mitch 1.0
function omi_lseg_millennium_udpunitheader_mitch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_millennium_udpunitheader_mitch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0, buffer(), omi_lseg_millennium_udpunitheader_mitch_v1_0.description, "("..buffer:len().." Bytes)")
  return lseg_millennium_udpunitheader_mitch_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_lseg_millennium_udpunitheader_mitch_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
lseg_millennium_udpunitheader_mitch_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg Millennium UdpUnitHeader Mitch 1.0
local function omi_lseg_millennium_udpunitheader_mitch_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_millennium_udpunitheader_mitch_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_millennium_udpunitheader_mitch_v1_0
  omi_lseg_millennium_udpunitheader_mitch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Millennium UdpUnitHeader Mitch 1.0
omi_lseg_millennium_udpunitheader_mitch_v1_0:register_heuristic("udp", omi_lseg_millennium_udpunitheader_mitch_v1_0_heuristic)

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
