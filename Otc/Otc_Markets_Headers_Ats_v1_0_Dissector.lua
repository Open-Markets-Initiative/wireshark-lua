-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Otc Markets Headers Ats 1.0 Protocol
local otc_markets_headers_ats_v1_0 = Proto("Otc.Markets.Headers.Ats.v1.0.Lua", "Otc Markets Headers Ats 1.0")

-- Component Tables
local show = {}
local format = {}
local otc_markets_headers_ats_v1_0_display = {}
local otc_markets_headers_ats_v1_0_dissect = {}
local otc_markets_headers_ats_v1_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Otc Markets Headers Ats 1.0 Fields
otc_markets_headers_ats_v1_0.fields.heartbeat = ProtoField.new("Heartbeat", "otc.markets.headers.ats.v1.0.heartbeat", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
otc_markets_headers_ats_v1_0.fields.message = ProtoField.new("Message", "otc.markets.headers.ats.v1.0.message", ftypes.STRING)
otc_markets_headers_ats_v1_0.fields.message_header = ProtoField.new("Message Header", "otc.markets.headers.ats.v1.0.messageheader", ftypes.STRING)
otc_markets_headers_ats_v1_0.fields.message_size = ProtoField.new("Message Size", "otc.markets.headers.ats.v1.0.messagesize", ftypes.UINT16)
otc_markets_headers_ats_v1_0.fields.message_type = ProtoField.new("Message Type", "otc.markets.headers.ats.v1.0.messagetype", ftypes.UINT8)
otc_markets_headers_ats_v1_0.fields.messages = ProtoField.new("Messages", "otc.markets.headers.ats.v1.0.messages", ftypes.UINT8)
otc_markets_headers_ats_v1_0.fields.packet = ProtoField.new("Packet", "otc.markets.headers.ats.v1.0.packet", ftypes.STRING)
otc_markets_headers_ats_v1_0.fields.packet_flag = ProtoField.new("Packet Flag", "otc.markets.headers.ats.v1.0.packetflag", ftypes.STRING)
otc_markets_headers_ats_v1_0.fields.packet_header = ProtoField.new("Packet Header", "otc.markets.headers.ats.v1.0.packetheader", ftypes.STRING)
otc_markets_headers_ats_v1_0.fields.packet_milli = ProtoField.new("Packet Milli", "otc.markets.headers.ats.v1.0.packetmilli", ftypes.UINT32)
otc_markets_headers_ats_v1_0.fields.packet_size = ProtoField.new("Packet Size", "otc.markets.headers.ats.v1.0.packetsize", ftypes.UINT16)
otc_markets_headers_ats_v1_0.fields.replay = ProtoField.new("Replay", "otc.markets.headers.ats.v1.0.replay", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
otc_markets_headers_ats_v1_0.fields.reserved_packet_flags = ProtoField.new("Reserved Packet Flags", "otc.markets.headers.ats.v1.0.reservedpacketflags", ftypes.UINT8, nil, base.DEC, 0x3C)
otc_markets_headers_ats_v1_0.fields.seq_num = ProtoField.new("Seq Num", "otc.markets.headers.ats.v1.0.seqnum", ftypes.UINT32)
otc_markets_headers_ats_v1_0.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otc.markets.headers.ats.v1.0.seqnumreset", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
otc_markets_headers_ats_v1_0.fields.test = ProtoField.new("Test", "otc.markets.headers.ats.v1.0.test", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Otc Markets Headers Ats 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.packet_flag = true
show.packet_header = true

-- Register Otc Markets Headers Ats 1.0 Show Options
otc_markets_headers_ats_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
otc_markets_headers_ats_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
otc_markets_headers_ats_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
otc_markets_headers_ats_v1_0.prefs.show_packet_flag = Pref.bool("Show Packet Flag", show.packet_flag, "Parse and add Packet Flag to protocol tree")
otc_markets_headers_ats_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function otc_markets_headers_ats_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= otc_markets_headers_ats_v1_0.prefs.show_message then
    show.message = otc_markets_headers_ats_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= otc_markets_headers_ats_v1_0.prefs.show_message_header then
    show.message_header = otc_markets_headers_ats_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= otc_markets_headers_ats_v1_0.prefs.show_packet then
    show.packet = otc_markets_headers_ats_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_flag ~= otc_markets_headers_ats_v1_0.prefs.show_packet_flag then
    show.packet_flag = otc_markets_headers_ats_v1_0.prefs.show_packet_flag
    changed = true
  end
  if show.packet_header ~= otc_markets_headers_ats_v1_0.prefs.show_packet_header then
    show.packet_header = otc_markets_headers_ats_v1_0.prefs.show_packet_header
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Otc Markets Headers Ats 1.0
-----------------------------------------------------------------------

-- Size: Message Type
otc_markets_headers_ats_v1_0_size_of.message_type = 1

-- Display: Message Type
otc_markets_headers_ats_v1_0_display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
otc_markets_headers_ats_v1_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(otc_markets_headers_ats_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
otc_markets_headers_ats_v1_0_size_of.message_size = 2

-- Display: Message Size
otc_markets_headers_ats_v1_0_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otc_markets_headers_ats_v1_0_dissect.message_size = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0_size_of.message_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0_display.message_size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_headers_ats_v1_0.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
otc_markets_headers_ats_v1_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + otc_markets_headers_ats_v1_0_size_of.message_size

  index = index + otc_markets_headers_ats_v1_0_size_of.message_type

  return index
end

-- Display: Message Header
otc_markets_headers_ats_v1_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otc_markets_headers_ats_v1_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otc_markets_headers_ats_v1_0_dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = otc_markets_headers_ats_v1_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otc_markets_headers_ats_v1_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(otc_markets_headers_ats_v1_0.fields.message_header, buffer(offset, 0))
    local index = otc_markets_headers_ats_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_headers_ats_v1_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return otc_markets_headers_ats_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
otc_markets_headers_ats_v1_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otc_markets_headers_ats_v1_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = otc_markets_headers_ats_v1_0_dissect.message_header(buffer, index, packet, parent)

  -- Payload
  index, payload = otc_markets_headers_ats_v1_0_dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
otc_markets_headers_ats_v1_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = otc_markets_headers_ats_v1_0_display.message(buffer, packet, parent)
    parent = parent:add(otc_markets_headers_ats_v1_0.fields.message, range, display)
  end

  otc_markets_headers_ats_v1_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Packet Milli
otc_markets_headers_ats_v1_0_size_of.packet_milli = 4

-- Display: Packet Milli
otc_markets_headers_ats_v1_0_display.packet_milli = function(value)
  return "Packet Milli: "..value
end

-- Dissect: Packet Milli
otc_markets_headers_ats_v1_0_dissect.packet_milli = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0_size_of.packet_milli
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0_display.packet_milli(value, buffer, offset, packet, parent)

  parent:add(otc_markets_headers_ats_v1_0.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Size: Messages
otc_markets_headers_ats_v1_0_size_of.messages = 1

-- Display: Messages
otc_markets_headers_ats_v1_0_display.messages = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
otc_markets_headers_ats_v1_0_dissect.messages = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0_size_of.messages
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0_display.messages(value, buffer, offset, packet, parent)

  parent:add(otc_markets_headers_ats_v1_0.fields.messages, range, value, display)

  return offset + length, value
end

-- Size: Packet Flag
otc_markets_headers_ats_v1_0_size_of.packet_flag = 1

-- Display: Packet Flag
otc_markets_headers_ats_v1_0_display.packet_flag = function(buffer, packet, parent)
  local display = ""

  -- Is Test flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Test|"
  end
  -- Is Replay flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Replay|"
  end
  -- Is Seq Num Reset flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Seq Num Reset|"
  end
  -- Is Heartbeat flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Heartbeat|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Packet Flag
otc_markets_headers_ats_v1_0_dissect.packet_flag_bits = function(buffer, offset, packet, parent)

  -- Test: 1 Bit
  parent:add(otc_markets_headers_ats_v1_0.fields.test, buffer(offset, 1))

  -- Replay: 1 Bit
  parent:add(otc_markets_headers_ats_v1_0.fields.replay, buffer(offset, 1))

  -- Reserved Packet Flags: 4 Bit
  parent:add(otc_markets_headers_ats_v1_0.fields.reserved_packet_flags, buffer(offset, 1))

  -- Seq Num Reset: 1 Bit
  parent:add(otc_markets_headers_ats_v1_0.fields.seq_num_reset, buffer(offset, 1))

  -- Heartbeat: 1 Bit
  parent:add(otc_markets_headers_ats_v1_0.fields.heartbeat, buffer(offset, 1))
end

-- Dissect: Packet Flag
otc_markets_headers_ats_v1_0_dissect.packet_flag = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = otc_markets_headers_ats_v1_0_display.packet_flag(range, packet, parent)
  local element = parent:add(otc_markets_headers_ats_v1_0.fields.packet_flag, range, display)

  if show.packet_flag then
    otc_markets_headers_ats_v1_0_dissect.packet_flag_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Seq Num
otc_markets_headers_ats_v1_0_size_of.seq_num = 4

-- Display: Seq Num
otc_markets_headers_ats_v1_0_display.seq_num = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otc_markets_headers_ats_v1_0_dissect.seq_num = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0_size_of.seq_num
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0_display.seq_num(value, buffer, offset, packet, parent)

  parent:add(otc_markets_headers_ats_v1_0.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
otc_markets_headers_ats_v1_0_size_of.packet_size = 2

-- Display: Packet Size
otc_markets_headers_ats_v1_0_display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otc_markets_headers_ats_v1_0_dissect.packet_size = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0_size_of.packet_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0_display.packet_size(value, buffer, offset, packet, parent)

  parent:add(otc_markets_headers_ats_v1_0.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
otc_markets_headers_ats_v1_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + otc_markets_headers_ats_v1_0_size_of.packet_size

  index = index + otc_markets_headers_ats_v1_0_size_of.seq_num

  index = index + otc_markets_headers_ats_v1_0_size_of.packet_flag

  index = index + otc_markets_headers_ats_v1_0_size_of.messages

  index = index + otc_markets_headers_ats_v1_0_size_of.packet_milli

  return index
end

-- Display: Packet Header
otc_markets_headers_ats_v1_0_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otc_markets_headers_ats_v1_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otc_markets_headers_ats_v1_0_dissect.packet_size(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otc_markets_headers_ats_v1_0_dissect.seq_num(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = otc_markets_headers_ats_v1_0_dissect.packet_flag(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = otc_markets_headers_ats_v1_0_dissect.messages(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otc_markets_headers_ats_v1_0_dissect.packet_milli(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otc_markets_headers_ats_v1_0_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(otc_markets_headers_ats_v1_0.fields.packet_header, buffer(offset, 0))
    local index = otc_markets_headers_ats_v1_0_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_headers_ats_v1_0_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return otc_markets_headers_ats_v1_0_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
otc_markets_headers_ats_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otc_markets_headers_ats_v1_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Message: Struct of 2 fields
    index = otc_markets_headers_ats_v1_0_dissect.message(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function otc_markets_headers_ats_v1_0.init()
end

-- Dissector for Otc Markets Headers Ats 1.0
function otc_markets_headers_ats_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = otc_markets_headers_ats_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(otc_markets_headers_ats_v1_0, buffer(), otc_markets_headers_ats_v1_0.description, "("..buffer:len().." Bytes)")
  return otc_markets_headers_ats_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, otc_markets_headers_ats_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.otc_markets_headers_ats_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Otc Markets Headers Ats 1.0
local function otc_markets_headers_ats_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.otc_markets_headers_ats_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = otc_markets_headers_ats_v1_0
  otc_markets_headers_ats_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Otc Markets Headers Ats 1.0
otc_markets_headers_ats_v1_0:register_heuristic("udp", otc_markets_headers_ats_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Otc Markets
--   Version: 1.0
--   Date: Wednesday, December 11, 2019
--   Specification: OTC Markets Multicast Data Feeds -v4.3.pdf
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
