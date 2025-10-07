-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Pitch SequencedUnitHeader Pitch 1.0 Protocol
local omi_cboe_pitch_sequencedunitheader_pitch_v1_0 = Proto("Cboe.Pitch.SequencedUnitHeader.Pitch.v1.0.Lua", "Cboe Pitch SequencedUnitHeader Pitch 1.0")

-- Protocol table
local cboe_pitch_sequencedunitheader_pitch_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Pitch SequencedUnitHeader Pitch 1.0 Fields
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.count = ProtoField.new("Count", "cboe.pitch.sequencedunitheader.pitch.v1.0.count", ftypes.UINT8)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.length = ProtoField.new("Length", "cboe.pitch.sequencedunitheader.pitch.v1.0.length", ftypes.UINT16)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message = ProtoField.new("Message", "cboe.pitch.sequencedunitheader.pitch.v1.0.message", ftypes.STRING)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_header = ProtoField.new("Message Header", "cboe.pitch.sequencedunitheader.pitch.v1.0.messageheader", ftypes.STRING)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_length = ProtoField.new("Message Length", "cboe.pitch.sequencedunitheader.pitch.v1.0.messagelength", ftypes.UINT8)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_type = ProtoField.new("Message Type", "cboe.pitch.sequencedunitheader.pitch.v1.0.messagetype", ftypes.UINT8)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.packet = ProtoField.new("Packet", "cboe.pitch.sequencedunitheader.pitch.v1.0.packet", ftypes.STRING)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "cboe.pitch.sequencedunitheader.pitch.v1.0.packetheader", ftypes.STRING)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.payload = ProtoField.new("Payload", "cboe.pitch.sequencedunitheader.pitch.v1.0.payload", ftypes.BYTES)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.sequence = ProtoField.new("Sequence", "cboe.pitch.sequencedunitheader.pitch.v1.0.sequence", ftypes.UINT32)
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.unit = ProtoField.new("Unit", "cboe.pitch.sequencedunitheader.pitch.v1.0.unit", ftypes.UINT8)

-- Cboe Pitch SequencedUnitHeader Pitch 1.0 generated fields
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_index = ProtoField.new("Message Index", "cboe.pitch.sequencedunitheader.pitch.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe Pitch SequencedUnitHeader Pitch 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true

-- Register Cboe Pitch SequencedUnitHeader Pitch 1.0 Show Options
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message then
    show.message = omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message_header then
    show.message_header = omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet then
    show.packet = omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet_header then
    show.packet_header = omi_cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet_header
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Pitch SequencedUnitHeader Pitch 1.0
-----------------------------------------------------------------------

-- Payload
cboe_pitch_sequencedunitheader_pitch_v1_0.payload = {}

-- Display: Payload
cboe_pitch_sequencedunitheader_pitch_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
cboe_pitch_sequencedunitheader_pitch_v1_0.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0.payload.display(value, packet, parent, size)

  parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.payload, range, value, display)

  return offset + size, value
end

-- Message Type
cboe_pitch_sequencedunitheader_pitch_v1_0.message_type = {}

-- Size: Message Type
cboe_pitch_sequencedunitheader_pitch_v1_0.message_type.size = 1

-- Display: Message Type
cboe_pitch_sequencedunitheader_pitch_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
cboe_pitch_sequencedunitheader_pitch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_pitch_sequencedunitheader_pitch_v1_0.message_length = {}

-- Size: Message Length
cboe_pitch_sequencedunitheader_pitch_v1_0.message_length.size = 1

-- Display: Message Length
cboe_pitch_sequencedunitheader_pitch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_pitch_sequencedunitheader_pitch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_pitch_sequencedunitheader_pitch_v1_0.message_header = {}

-- Calculate size of: Message Header
cboe_pitch_sequencedunitheader_pitch_v1_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0.message_length.size

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0.message_type.size

  return index
end

-- Display: Message Header
cboe_pitch_sequencedunitheader_pitch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_pitch_sequencedunitheader_pitch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_pitch_sequencedunitheader_pitch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = cboe_pitch_sequencedunitheader_pitch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_pitch_sequencedunitheader_pitch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_header, buffer(offset, 0))
    local index = cboe_pitch_sequencedunitheader_pitch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_pitch_sequencedunitheader_pitch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_pitch_sequencedunitheader_pitch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
cboe_pitch_sequencedunitheader_pitch_v1_0.message = {}

-- Display: Message
cboe_pitch_sequencedunitheader_pitch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_pitch_sequencedunitheader_pitch_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_pitch_sequencedunitheader_pitch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 2, 1):le_uint()

  -- Runtime Size Of: Payload
  local size_of_payload = message_length - 2

  -- Payload: 0 Byte
  index, payload = cboe_pitch_sequencedunitheader_pitch_v1_0.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
cboe_pitch_sequencedunitheader_pitch_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message, buffer(offset, 0))
    local current = cboe_pitch_sequencedunitheader_pitch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = cboe_pitch_sequencedunitheader_pitch_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_pitch_sequencedunitheader_pitch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequence
cboe_pitch_sequencedunitheader_pitch_v1_0.sequence = {}

-- Size: Sequence
cboe_pitch_sequencedunitheader_pitch_v1_0.sequence.size = 4

-- Display: Sequence
cboe_pitch_sequencedunitheader_pitch_v1_0.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_pitch_sequencedunitheader_pitch_v1_0.sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0.sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Unit
cboe_pitch_sequencedunitheader_pitch_v1_0.unit = {}

-- Size: Unit
cboe_pitch_sequencedunitheader_pitch_v1_0.unit.size = 1

-- Display: Unit
cboe_pitch_sequencedunitheader_pitch_v1_0.unit.display = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_pitch_sequencedunitheader_pitch_v1_0.unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0.unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0.unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.unit, range, value, display)

  return offset + length, value
end

-- Count
cboe_pitch_sequencedunitheader_pitch_v1_0.count = {}

-- Size: Count
cboe_pitch_sequencedunitheader_pitch_v1_0.count.size = 1

-- Display: Count
cboe_pitch_sequencedunitheader_pitch_v1_0.count.display = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_pitch_sequencedunitheader_pitch_v1_0.count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0.count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0.count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.count, range, value, display)

  return offset + length, value
end

-- Length
cboe_pitch_sequencedunitheader_pitch_v1_0.length = {}

-- Size: Length
cboe_pitch_sequencedunitheader_pitch_v1_0.length.size = 2

-- Display: Length
cboe_pitch_sequencedunitheader_pitch_v1_0.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_pitch_sequencedunitheader_pitch_v1_0.length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Packet Header
cboe_pitch_sequencedunitheader_pitch_v1_0.packet_header = {}

-- Calculate size of: Packet Header
cboe_pitch_sequencedunitheader_pitch_v1_0.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0.length.size

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0.count.size

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0.unit.size

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0.sequence.size

  return index
end

-- Display: Packet Header
cboe_pitch_sequencedunitheader_pitch_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_pitch_sequencedunitheader_pitch_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_pitch_sequencedunitheader_pitch_v1_0.length.dissect(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_pitch_sequencedunitheader_pitch_v1_0.count.dissect(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_pitch_sequencedunitheader_pitch_v1_0.unit.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_pitch_sequencedunitheader_pitch_v1_0.sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_pitch_sequencedunitheader_pitch_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = cboe_pitch_sequencedunitheader_pitch_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_pitch_sequencedunitheader_pitch_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_pitch_sequencedunitheader_pitch_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_pitch_sequencedunitheader_pitch_v1_0.packet = {}

-- Dissect Packet
cboe_pitch_sequencedunitheader_pitch_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_pitch_sequencedunitheader_pitch_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_pitch_sequencedunitheader_pitch_v1_0.message.dissect(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_pitch_sequencedunitheader_pitch_v1_0.init()
end

-- Dissector for Cboe Pitch SequencedUnitHeader Pitch 1.0
function omi_cboe_pitch_sequencedunitheader_pitch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_pitch_sequencedunitheader_pitch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_pitch_sequencedunitheader_pitch_v1_0, buffer(), omi_cboe_pitch_sequencedunitheader_pitch_v1_0.description, "("..buffer:len().." Bytes)")
  return cboe_pitch_sequencedunitheader_pitch_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_pitch_sequencedunitheader_pitch_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_pitch_sequencedunitheader_pitch_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Pitch SequencedUnitHeader Pitch 1.0
local function omi_cboe_pitch_sequencedunitheader_pitch_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_pitch_sequencedunitheader_pitch_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_pitch_sequencedunitheader_pitch_v1_0
  omi_cboe_pitch_sequencedunitheader_pitch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Pitch SequencedUnitHeader Pitch 1.0
omi_cboe_pitch_sequencedunitheader_pitch_v1_0:register_heuristic("udp", omi_cboe_pitch_sequencedunitheader_pitch_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0
--   Date: Sunday, September 20, 2015
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
