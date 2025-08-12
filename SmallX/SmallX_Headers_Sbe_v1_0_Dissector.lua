-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- SmallX Headers Sbe 1.0 Protocol
local smallx_headers_sbe_v1_0 = Proto("SmallX.Headers.Sbe.v1.0.Lua", "SmallX Headers Sbe 1.0")

-- Component Tables
local show = {}
local format = {}
local smallx_headers_sbe_v1_0_display = {}
local smallx_headers_sbe_v1_0_dissect = {}
local smallx_headers_sbe_v1_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- SmallX Headers Sbe 1.0 Fields
smallx_headers_sbe_v1_0.fields.administrative = ProtoField.new("Administrative", "smallx.headers.sbe.v1.0.administrative", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
smallx_headers_sbe_v1_0.fields.channel_id = ProtoField.new("Channel Id", "smallx.headers.sbe.v1.0.channelid", ftypes.UINT8)
smallx_headers_sbe_v1_0.fields.frame_length = ProtoField.new("Frame Length", "smallx.headers.sbe.v1.0.framelength", ftypes.UINT8)
smallx_headers_sbe_v1_0.fields.incarnation = ProtoField.new("Incarnation", "smallx.headers.sbe.v1.0.incarnation", ftypes.INT16)
smallx_headers_sbe_v1_0.fields.incarnation_end = ProtoField.new("Incarnation End", "smallx.headers.sbe.v1.0.incarnationend", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
smallx_headers_sbe_v1_0.fields.message_count = ProtoField.new("Message Count", "smallx.headers.sbe.v1.0.messagecount", ftypes.UINT8)
smallx_headers_sbe_v1_0.fields.message_sequence = ProtoField.new("Message Sequence", "smallx.headers.sbe.v1.0.messagesequence", ftypes.INT32)
smallx_headers_sbe_v1_0.fields.packet = ProtoField.new("Packet", "smallx.headers.sbe.v1.0.packet", ftypes.STRING)
smallx_headers_sbe_v1_0.fields.packet_flags = ProtoField.new("Packet Flags", "smallx.headers.sbe.v1.0.packetflags", ftypes.STRING)
smallx_headers_sbe_v1_0.fields.packet_header = ProtoField.new("Packet Header", "smallx.headers.sbe.v1.0.packetheader", ftypes.STRING)
smallx_headers_sbe_v1_0.fields.payload = ProtoField.new("Payload", "smallx.headers.sbe.v1.0.payload", ftypes.BYTES)
smallx_headers_sbe_v1_0.fields.reserved_5 = ProtoField.new("Reserved 5", "smallx.headers.sbe.v1.0.reserved5", ftypes.UINT8, nil, base.DEC, 0x1F)
smallx_headers_sbe_v1_0.fields.retransmission = ProtoField.new("Retransmission", "smallx.headers.sbe.v1.0.retransmission", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
smallx_headers_sbe_v1_0.fields.sbe_frame = ProtoField.new("Sbe Frame", "smallx.headers.sbe.v1.0.sbeframe", ftypes.STRING)
smallx_headers_sbe_v1_0.fields.source = ProtoField.new("Source", "smallx.headers.sbe.v1.0.source", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- SmallX Headers Sbe 1.0 Element Dissection Options
show.packet = true
show.packet_flags = true
show.packet_header = true
show.sbe_frame = true

-- Register SmallX Headers Sbe 1.0 Show Options
smallx_headers_sbe_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
smallx_headers_sbe_v1_0.prefs.show_packet_flags = Pref.bool("Show Packet Flags", show.packet_flags, "Parse and add Packet Flags to protocol tree")
smallx_headers_sbe_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
smallx_headers_sbe_v1_0.prefs.show_sbe_frame = Pref.bool("Show Sbe Frame", show.sbe_frame, "Parse and add Sbe Frame to protocol tree")

-- Handle changed preferences
function smallx_headers_sbe_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.packet ~= smallx_headers_sbe_v1_0.prefs.show_packet then
    show.packet = smallx_headers_sbe_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_flags ~= smallx_headers_sbe_v1_0.prefs.show_packet_flags then
    show.packet_flags = smallx_headers_sbe_v1_0.prefs.show_packet_flags
    changed = true
  end
  if show.packet_header ~= smallx_headers_sbe_v1_0.prefs.show_packet_header then
    show.packet_header = smallx_headers_sbe_v1_0.prefs.show_packet_header
    changed = true
  end
  if show.sbe_frame ~= smallx_headers_sbe_v1_0.prefs.show_sbe_frame then
    show.sbe_frame = smallx_headers_sbe_v1_0.prefs.show_sbe_frame
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect SmallX Headers Sbe 1.0
-----------------------------------------------------------------------

-- Display: Payload
smallx_headers_sbe_v1_0_display.payload = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
smallx_headers_sbe_v1_0_dissect.payload = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = smallx_headers_sbe_v1_0_display.payload(value, buffer, offset, packet, parent, size)

  parent:add(smallx_headers_sbe_v1_0.fields.payload, range, value, display)

  return offset + size
end

-- Size: Frame Length
smallx_headers_sbe_v1_0_size_of.frame_length = 1

-- Display: Frame Length
smallx_headers_sbe_v1_0_display.frame_length = function(value)
  return "Frame Length: "..value
end

-- Dissect: Frame Length
smallx_headers_sbe_v1_0_dissect.frame_length = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0_size_of.frame_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_headers_sbe_v1_0_display.frame_length(value, buffer, offset, packet, parent)

  parent:add(smallx_headers_sbe_v1_0.fields.frame_length, range, value, display)

  return offset + length, value
end

-- Display: Sbe Frame
smallx_headers_sbe_v1_0_display.sbe_frame = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Frame
smallx_headers_sbe_v1_0_dissect.sbe_frame_fields = function(buffer, offset, packet, parent, size_of_sbe_frame)
  local index = offset

  -- Frame Length: 1 Byte Unsigned Fixed Width Integer
  index, frame_length = smallx_headers_sbe_v1_0_dissect.frame_length(buffer, index, packet, parent)

  -- Message Header
  index, message_header = smallx_headers_sbe_v1_0_dissect.message_header(buffer, index, packet, parent)

  -- Runtime Size Of: Payload
  local size_of_payload = frame_length - 10

  -- Payload: 0 Byte
  index = smallx_headers_sbe_v1_0_dissect.payload(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Sbe Frame
smallx_headers_sbe_v1_0_dissect.sbe_frame = function(buffer, offset, packet, parent, size_of_sbe_frame)
  -- Optionally add struct element to protocol tree
  if show.sbe_frame then
    local range = buffer(offset, size_of_sbe_frame)
    local display = smallx_headers_sbe_v1_0_display.sbe_frame(buffer, packet, parent)
    parent = parent:add(smallx_headers_sbe_v1_0.fields.sbe_frame, range, display)
  end

  smallx_headers_sbe_v1_0_dissect.sbe_frame_fields(buffer, offset, packet, parent, size_of_sbe_frame)

  return offset + size_of_sbe_frame
end

-- Size: Message Count
smallx_headers_sbe_v1_0_size_of.message_count = 1

-- Display: Message Count
smallx_headers_sbe_v1_0_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
smallx_headers_sbe_v1_0_dissect.message_count = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_headers_sbe_v1_0_display.message_count(value, buffer, offset, packet, parent)

  parent:add(smallx_headers_sbe_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Message Sequence
smallx_headers_sbe_v1_0_size_of.message_sequence = 4

-- Display: Message Sequence
smallx_headers_sbe_v1_0_display.message_sequence = function(value)
  return "Message Sequence: "..value
end

-- Dissect: Message Sequence
smallx_headers_sbe_v1_0_dissect.message_sequence = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0_size_of.message_sequence
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_headers_sbe_v1_0_display.message_sequence(value, buffer, offset, packet, parent)

  parent:add(smallx_headers_sbe_v1_0.fields.message_sequence, range, value, display)

  return offset + length, value
end

-- Size: Packet Flags
smallx_headers_sbe_v1_0_size_of.packet_flags = 1

-- Display: Packet Flags
smallx_headers_sbe_v1_0_display.packet_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Incarnation End flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Incarnation End|"
  end
  -- Is Retransmission flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Retransmission|"
  end
  -- Is Administrative flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Administrative|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Packet Flags
smallx_headers_sbe_v1_0_dissect.packet_flags_bits = function(buffer, offset, packet, parent)

  -- Incarnation End: 1 Bit
  parent:add(smallx_headers_sbe_v1_0.fields.incarnation_end, buffer(offset, 1))

  -- Retransmission: 1 Bit
  parent:add(smallx_headers_sbe_v1_0.fields.retransmission, buffer(offset, 1))

  -- Administrative: 1 Bit
  parent:add(smallx_headers_sbe_v1_0.fields.administrative, buffer(offset, 1))

  -- Reserved 5: 5 Bit
  parent:add(smallx_headers_sbe_v1_0.fields.reserved_5, buffer(offset, 1))
end

-- Dissect: Packet Flags
smallx_headers_sbe_v1_0_dissect.packet_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = smallx_headers_sbe_v1_0_display.packet_flags(range, packet, parent)
  local element = parent:add(smallx_headers_sbe_v1_0.fields.packet_flags, range, display)

  if show.packet_flags then
    smallx_headers_sbe_v1_0_dissect.packet_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Source
smallx_headers_sbe_v1_0_size_of.source = 1

-- Display: Source
smallx_headers_sbe_v1_0_display.source = function(value)
  return "Source: "..value
end

-- Dissect: Source
smallx_headers_sbe_v1_0_dissect.source = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0_size_of.source
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_headers_sbe_v1_0_display.source(value, buffer, offset, packet, parent)

  parent:add(smallx_headers_sbe_v1_0.fields.source, range, value, display)

  return offset + length, value
end

-- Size: Incarnation
smallx_headers_sbe_v1_0_size_of.incarnation = 2

-- Display: Incarnation
smallx_headers_sbe_v1_0_display.incarnation = function(value)
  return "Incarnation: "..value
end

-- Dissect: Incarnation
smallx_headers_sbe_v1_0_dissect.incarnation = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0_size_of.incarnation
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = smallx_headers_sbe_v1_0_display.incarnation(value, buffer, offset, packet, parent)

  parent:add(smallx_headers_sbe_v1_0.fields.incarnation, range, value, display)

  return offset + length, value
end

-- Size: Channel Id
smallx_headers_sbe_v1_0_size_of.channel_id = 1

-- Display: Channel Id
smallx_headers_sbe_v1_0_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
smallx_headers_sbe_v1_0_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = smallx_headers_sbe_v1_0_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = smallx_headers_sbe_v1_0_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(smallx_headers_sbe_v1_0.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
smallx_headers_sbe_v1_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + smallx_headers_sbe_v1_0_size_of.channel_id

  index = index + smallx_headers_sbe_v1_0_size_of.incarnation

  index = index + smallx_headers_sbe_v1_0_size_of.source

  index = index + smallx_headers_sbe_v1_0_size_of.packet_flags

  index = index + smallx_headers_sbe_v1_0_size_of.message_sequence

  index = index + smallx_headers_sbe_v1_0_size_of.message_count

  return index
end

-- Display: Packet Header
smallx_headers_sbe_v1_0_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
smallx_headers_sbe_v1_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = smallx_headers_sbe_v1_0_dissect.channel_id(buffer, index, packet, parent)

  -- Incarnation: 2 Byte Signed Fixed Width Integer
  index, incarnation = smallx_headers_sbe_v1_0_dissect.incarnation(buffer, index, packet, parent)

  -- Source: 1 Byte Unsigned Fixed Width Integer
  index, source = smallx_headers_sbe_v1_0_dissect.source(buffer, index, packet, parent)

  -- Packet Flags: Struct of 4 fields
  index, packet_flags = smallx_headers_sbe_v1_0_dissect.packet_flags(buffer, index, packet, parent)

  -- Message Sequence: 4 Byte Signed Fixed Width Integer
  index, message_sequence = smallx_headers_sbe_v1_0_dissect.message_sequence(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = smallx_headers_sbe_v1_0_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
smallx_headers_sbe_v1_0_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(smallx_headers_sbe_v1_0.fields.packet_header, buffer(offset, 0))
    local index = smallx_headers_sbe_v1_0_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = smallx_headers_sbe_v1_0_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return smallx_headers_sbe_v1_0_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
smallx_headers_sbe_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = smallx_headers_sbe_v1_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Sbe Frame
  local end_of_payload = buffer:len()

  -- Sbe Frame: Struct of 3 fields
  while index < end_of_payload do

    -- Dependency element: Frame Length
    local frame_length = buffer(index, 1):uint()

    -- Sbe Frame: Struct of 3 fields
    index = smallx_headers_sbe_v1_0_dissect.sbe_frame(buffer, index, packet, parent, frame_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function smallx_headers_sbe_v1_0.init()
end

-- Dissector for SmallX Headers Sbe 1.0
function smallx_headers_sbe_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = smallx_headers_sbe_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(smallx_headers_sbe_v1_0, buffer(), smallx_headers_sbe_v1_0.description, "("..buffer:len().." Bytes)")
  return smallx_headers_sbe_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, smallx_headers_sbe_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.smallx_headers_sbe_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for SmallX Headers Sbe 1.0
local function smallx_headers_sbe_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.smallx_headers_sbe_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = smallx_headers_sbe_v1_0
  smallx_headers_sbe_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for SmallX Headers Sbe 1.0
smallx_headers_sbe_v1_0:register_heuristic("udp", smallx_headers_sbe_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: The Small Exchange
--   Version: 1.0
--   Date: Tuesday, October 12, 2021
--   Specification: Small Exchange Market Data Feed 2.2.pdf
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
