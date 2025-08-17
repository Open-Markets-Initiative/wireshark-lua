-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Pitch SequencedUnitHeader Pitch 1.0 Protocol
local cboe_pitch_sequencedunitheader_pitch_v1_0 = Proto("Cboe.Pitch.SequencedUnitHeader.Pitch.v1.0.Lua", "Cboe Pitch SequencedUnitHeader Pitch 1.0")

-- Component Tables
local show = {}
local format = {}
local cboe_pitch_sequencedunitheader_pitch_v1_0_display = {}
local cboe_pitch_sequencedunitheader_pitch_v1_0_dissect = {}
local cboe_pitch_sequencedunitheader_pitch_v1_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Pitch SequencedUnitHeader Pitch 1.0 Fields
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.count = ProtoField.new("Count", "cboe.pitch.sequencedunitheader.pitch.v1.0.count", ftypes.UINT8)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.length = ProtoField.new("Length", "cboe.pitch.sequencedunitheader.pitch.v1.0.length", ftypes.UINT16)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message = ProtoField.new("Message", "cboe.pitch.sequencedunitheader.pitch.v1.0.message", ftypes.STRING)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_header = ProtoField.new("Message Header", "cboe.pitch.sequencedunitheader.pitch.v1.0.messageheader", ftypes.STRING)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_length = ProtoField.new("Message Length", "cboe.pitch.sequencedunitheader.pitch.v1.0.messagelength", ftypes.UINT8)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_type = ProtoField.new("Message Type", "cboe.pitch.sequencedunitheader.pitch.v1.0.messagetype", ftypes.UINT8)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.packet = ProtoField.new("Packet", "cboe.pitch.sequencedunitheader.pitch.v1.0.packet", ftypes.STRING)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.packet_header = ProtoField.new("Packet Header", "cboe.pitch.sequencedunitheader.pitch.v1.0.packetheader", ftypes.STRING)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.payload = ProtoField.new("Payload", "cboe.pitch.sequencedunitheader.pitch.v1.0.payload", ftypes.BYTES)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.sequence = ProtoField.new("Sequence", "cboe.pitch.sequencedunitheader.pitch.v1.0.sequence", ftypes.UINT32)
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.unit = ProtoField.new("Unit", "cboe.pitch.sequencedunitheader.pitch.v1.0.unit", ftypes.UINT8)

-- Cboe Pitch SequencedUnitHeader Pitch 1.0 generated fields
cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_index = ProtoField.new("Message Index", "cboe.pitch.sequencedunitheader.pitch.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Pitch SequencedUnitHeader Pitch 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true

-- Register Cboe Pitch SequencedUnitHeader Pitch 1.0 Show Options
cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function cboe_pitch_sequencedunitheader_pitch_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message then
    show.message = cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message_header then
    show.message_header = cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet then
    show.packet = cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet_header then
    show.packet_header = cboe_pitch_sequencedunitheader_pitch_v1_0.prefs.show_packet_header
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

-- Display: Payload
cboe_pitch_sequencedunitheader_pitch_v1_0_display.payload = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.payload = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.payload(value, buffer, offset, packet, parent, size)

  parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.payload, range, value, display)

  return offset + size
end

-- Size: Message Type
cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.message_type = 1

-- Display: Message Type
cboe_pitch_sequencedunitheader_pitch_v1_0_display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.message_length = 1

-- Display: Message Length
cboe_pitch_sequencedunitheader_pitch_v1_0_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.message_length

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.message_type

  return index
end

-- Display: Message Header
cboe_pitch_sequencedunitheader_pitch_v1_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message_header, buffer(offset, 0))
    local index = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
cboe_pitch_sequencedunitheader_pitch_v1_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 2, 1):le_uint()

  -- Runtime Size Of: Payload
  local size_of_payload = message_length - 2

  -- Payload: 0 Byte
  index, payload = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.payload(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    local element = parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.message, buffer(offset, 0))
    local current = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_fields(buffer, offset, packet, element, size_of_message)
    element:set_len(size_of_message)
    local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.message(buffer, packet, element)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Size: Sequence
cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.sequence = 4

-- Display: Sequence
cboe_pitch_sequencedunitheader_pitch_v1_0_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.sequence = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Unit
cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.unit = 1

-- Display: Unit
cboe_pitch_sequencedunitheader_pitch_v1_0_display.unit = function(value)
  return "Unit: "..value
end

-- Dissect: Unit
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.unit = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.unit(value, buffer, offset, packet, parent)

  parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.unit, range, value, display)

  return offset + length, value
end

-- Size: Count
cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.count = 1

-- Display: Count
cboe_pitch_sequencedunitheader_pitch_v1_0_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.count = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.count(value, buffer, offset, packet, parent)

  parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Length
cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.length = 2

-- Display: Length
cboe_pitch_sequencedunitheader_pitch_v1_0_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.length = function(buffer, offset, packet, parent)
  local length = cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.length(value, buffer, offset, packet, parent)

  parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.length

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.count

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.unit

  index = index + cboe_pitch_sequencedunitheader_pitch_v1_0_size_of.sequence

  return index
end

-- Display: Packet Header
cboe_pitch_sequencedunitheader_pitch_v1_0_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.length(buffer, index, packet, parent)

  -- Count: 1 Byte Unsigned Fixed Width Integer
  index, count = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.count(buffer, index, packet, parent)

  -- Unit: 1 Byte Unsigned Fixed Width Integer
  index, unit = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.unit(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.sequence(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0.fields.packet_header, buffer(offset, 0))
    local index = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = cboe_pitch_sequencedunitheader_pitch_v1_0_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.message(buffer, index, packet, parent, message_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_pitch_sequencedunitheader_pitch_v1_0.init()
end

-- Dissector for Cboe Pitch SequencedUnitHeader Pitch 1.0
function cboe_pitch_sequencedunitheader_pitch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_pitch_sequencedunitheader_pitch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(cboe_pitch_sequencedunitheader_pitch_v1_0, buffer(), cboe_pitch_sequencedunitheader_pitch_v1_0.description, "("..buffer:len().." Bytes)")
  return cboe_pitch_sequencedunitheader_pitch_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, cboe_pitch_sequencedunitheader_pitch_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_pitch_sequencedunitheader_pitch_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Pitch SequencedUnitHeader Pitch 1.0
local function cboe_pitch_sequencedunitheader_pitch_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_pitch_sequencedunitheader_pitch_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_pitch_sequencedunitheader_pitch_v1_0
  cboe_pitch_sequencedunitheader_pitch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Pitch SequencedUnitHeader Pitch 1.0
cboe_pitch_sequencedunitheader_pitch_v1_0:register_heuristic("udp", cboe_pitch_sequencedunitheader_pitch_v1_0_heuristic)

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
