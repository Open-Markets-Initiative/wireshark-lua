-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Otc Markets Headers Ats 1.0 Protocol
local omi_otc_markets_headers_ats_v1_0 = Proto("Otc.Markets.Headers.Ats.v1.0.Lua", "Otc Markets Headers Ats 1.0")

-- Protocol table
local otc_markets_headers_ats_v1_0 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Otc Markets Headers Ats 1.0 Fields
omi_otc_markets_headers_ats_v1_0.fields.heartbeat = ProtoField.new("Heartbeat", "otc.markets.headers.ats.v1.0.heartbeat", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_otc_markets_headers_ats_v1_0.fields.message = ProtoField.new("Message", "otc.markets.headers.ats.v1.0.message", ftypes.STRING)
omi_otc_markets_headers_ats_v1_0.fields.message_header = ProtoField.new("Message Header", "otc.markets.headers.ats.v1.0.messageheader", ftypes.STRING)
omi_otc_markets_headers_ats_v1_0.fields.message_size = ProtoField.new("Message Size", "otc.markets.headers.ats.v1.0.messagesize", ftypes.UINT16)
omi_otc_markets_headers_ats_v1_0.fields.message_type = ProtoField.new("Message Type", "otc.markets.headers.ats.v1.0.messagetype", ftypes.UINT8)
omi_otc_markets_headers_ats_v1_0.fields.messages = ProtoField.new("Messages", "otc.markets.headers.ats.v1.0.messages", ftypes.UINT8)
omi_otc_markets_headers_ats_v1_0.fields.packet = ProtoField.new("Packet", "otc.markets.headers.ats.v1.0.packet", ftypes.STRING)
omi_otc_markets_headers_ats_v1_0.fields.packet_flag = ProtoField.new("Packet Flag", "otc.markets.headers.ats.v1.0.packetflag", ftypes.STRING)
omi_otc_markets_headers_ats_v1_0.fields.packet_header = ProtoField.new("Packet Header", "otc.markets.headers.ats.v1.0.packetheader", ftypes.STRING)
omi_otc_markets_headers_ats_v1_0.fields.packet_milli = ProtoField.new("Packet Milli", "otc.markets.headers.ats.v1.0.packetmilli", ftypes.UINT32)
omi_otc_markets_headers_ats_v1_0.fields.packet_size = ProtoField.new("Packet Size", "otc.markets.headers.ats.v1.0.packetsize", ftypes.UINT16)
omi_otc_markets_headers_ats_v1_0.fields.replay = ProtoField.new("Replay", "otc.markets.headers.ats.v1.0.replay", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_otc_markets_headers_ats_v1_0.fields.reserved_packet_flags = ProtoField.new("Reserved Packet Flags", "otc.markets.headers.ats.v1.0.reservedpacketflags", ftypes.UINT8, nil, base.DEC, 0x3C)
omi_otc_markets_headers_ats_v1_0.fields.seq_num = ProtoField.new("Seq Num", "otc.markets.headers.ats.v1.0.seqnum", ftypes.UINT32)
omi_otc_markets_headers_ats_v1_0.fields.seq_num_reset = ProtoField.new("Seq Num Reset", "otc.markets.headers.ats.v1.0.seqnumreset", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_otc_markets_headers_ats_v1_0.fields.test = ProtoField.new("Test", "otc.markets.headers.ats.v1.0.test", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)

-- Otc Markets Headers Ats 1.0 generated fields
omi_otc_markets_headers_ats_v1_0.fields.message_index = ProtoField.new("Message Index", "otc.markets.headers.ats.v1.0.messageindex", ftypes.UINT16)

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
omi_otc_markets_headers_ats_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_otc_markets_headers_ats_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_otc_markets_headers_ats_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_otc_markets_headers_ats_v1_0.prefs.show_packet_flag = Pref.bool("Show Packet Flag", show.packet_flag, "Parse and add Packet Flag to protocol tree")
omi_otc_markets_headers_ats_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function omi_otc_markets_headers_ats_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_otc_markets_headers_ats_v1_0.prefs.show_message then
    show.message = omi_otc_markets_headers_ats_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_otc_markets_headers_ats_v1_0.prefs.show_message_header then
    show.message_header = omi_otc_markets_headers_ats_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_otc_markets_headers_ats_v1_0.prefs.show_packet then
    show.packet = omi_otc_markets_headers_ats_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_flag ~= omi_otc_markets_headers_ats_v1_0.prefs.show_packet_flag then
    show.packet_flag = omi_otc_markets_headers_ats_v1_0.prefs.show_packet_flag
    changed = true
  end
  if show.packet_header ~= omi_otc_markets_headers_ats_v1_0.prefs.show_packet_header then
    show.packet_header = omi_otc_markets_headers_ats_v1_0.prefs.show_packet_header
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

-- Payload
otc_markets_headers_ats_v1_0.payload = {}

-- Message Type
otc_markets_headers_ats_v1_0.message_type = {}

-- Size: Message Type
otc_markets_headers_ats_v1_0.message_type.size = 1

-- Display: Message Type
otc_markets_headers_ats_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
otc_markets_headers_ats_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_headers_ats_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
otc_markets_headers_ats_v1_0.message_size = {}

-- Size: Message Size
otc_markets_headers_ats_v1_0.message_size.size = 2

-- Display: Message Size
otc_markets_headers_ats_v1_0.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
otc_markets_headers_ats_v1_0.message_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0.message_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_headers_ats_v1_0.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
otc_markets_headers_ats_v1_0.message_header = {}

-- Calculate size of: Message Header
otc_markets_headers_ats_v1_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_headers_ats_v1_0.message_size.size

  index = index + otc_markets_headers_ats_v1_0.message_type.size

  return index
end

-- Display: Message Header
otc_markets_headers_ats_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
otc_markets_headers_ats_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = otc_markets_headers_ats_v1_0.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = otc_markets_headers_ats_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
otc_markets_headers_ats_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_headers_ats_v1_0.fields.message_header, buffer(offset, 0))
    local index = otc_markets_headers_ats_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_headers_ats_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_headers_ats_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
otc_markets_headers_ats_v1_0.message = {}

-- Display: Message
otc_markets_headers_ats_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
otc_markets_headers_ats_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_otc_markets_headers_ats_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = otc_markets_headers_ats_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Payload
  index, payload = otc_markets_headers_ats_v1_0.payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
otc_markets_headers_ats_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_otc_markets_headers_ats_v1_0.fields.message, buffer(offset, 0))
    local current = otc_markets_headers_ats_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = otc_markets_headers_ats_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    otc_markets_headers_ats_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Milli
otc_markets_headers_ats_v1_0.packet_milli = {}

-- Size: Packet Milli
otc_markets_headers_ats_v1_0.packet_milli.size = 4

-- Display: Packet Milli
otc_markets_headers_ats_v1_0.packet_milli.display = function(value)
  return "Packet Milli: "..value
end

-- Dissect: Packet Milli
otc_markets_headers_ats_v1_0.packet_milli.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0.packet_milli.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0.packet_milli.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_headers_ats_v1_0.fields.packet_milli, range, value, display)

  return offset + length, value
end

-- Messages
otc_markets_headers_ats_v1_0.messages = {}

-- Size: Messages
otc_markets_headers_ats_v1_0.messages.size = 1

-- Display: Messages
otc_markets_headers_ats_v1_0.messages.display = function(value)
  return "Messages: "..value
end

-- Dissect: Messages
otc_markets_headers_ats_v1_0.messages.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0.messages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0.messages.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_headers_ats_v1_0.fields.messages, range, value, display)

  return offset + length, value
end

-- Heartbeat
otc_markets_headers_ats_v1_0.heartbeat = {}

-- Seq Num Reset
otc_markets_headers_ats_v1_0.seq_num_reset = {}

-- Reserved Packet Flags
otc_markets_headers_ats_v1_0.reserved_packet_flags = {}

-- Replay
otc_markets_headers_ats_v1_0.replay = {}

-- Test
otc_markets_headers_ats_v1_0.test = {}

-- Packet Flag
otc_markets_headers_ats_v1_0.packet_flag = {}

-- Size: Packet Flag
otc_markets_headers_ats_v1_0.packet_flag.size = 1

-- Display: Packet Flag
otc_markets_headers_ats_v1_0.packet_flag.display = function(buffer, packet, parent)
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
otc_markets_headers_ats_v1_0.packet_flag.bits = function(buffer, offset, packet, parent)

  -- Test: 1 Bit
  parent:add(omi_otc_markets_headers_ats_v1_0.fields.test, buffer(offset, 1))

  -- Replay: 1 Bit
  parent:add(omi_otc_markets_headers_ats_v1_0.fields.replay, buffer(offset, 1))

  -- Reserved Packet Flags: 4 Bit
  parent:add(omi_otc_markets_headers_ats_v1_0.fields.reserved_packet_flags, buffer(offset, 1))

  -- Seq Num Reset: 1 Bit
  parent:add(omi_otc_markets_headers_ats_v1_0.fields.seq_num_reset, buffer(offset, 1))

  -- Heartbeat: 1 Bit
  parent:add(omi_otc_markets_headers_ats_v1_0.fields.heartbeat, buffer(offset, 1))
end

-- Dissect: Packet Flag
otc_markets_headers_ats_v1_0.packet_flag.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = otc_markets_headers_ats_v1_0.packet_flag.display(range, packet, parent)
  local element = parent:add(omi_otc_markets_headers_ats_v1_0.fields.packet_flag, range, display)

  if show.packet_flag then
    otc_markets_headers_ats_v1_0.packet_flag.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Seq Num
otc_markets_headers_ats_v1_0.seq_num = {}

-- Size: Seq Num
otc_markets_headers_ats_v1_0.seq_num.size = 4

-- Display: Seq Num
otc_markets_headers_ats_v1_0.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
otc_markets_headers_ats_v1_0.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0.seq_num.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_headers_ats_v1_0.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Packet Size
otc_markets_headers_ats_v1_0.packet_size = {}

-- Size: Packet Size
otc_markets_headers_ats_v1_0.packet_size.size = 2

-- Display: Packet Size
otc_markets_headers_ats_v1_0.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
otc_markets_headers_ats_v1_0.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = otc_markets_headers_ats_v1_0.packet_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = otc_markets_headers_ats_v1_0.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_otc_markets_headers_ats_v1_0.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
otc_markets_headers_ats_v1_0.packet_header = {}

-- Calculate size of: Packet Header
otc_markets_headers_ats_v1_0.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + otc_markets_headers_ats_v1_0.packet_size.size

  index = index + otc_markets_headers_ats_v1_0.seq_num.size

  index = index + otc_markets_headers_ats_v1_0.packet_flag.size

  index = index + otc_markets_headers_ats_v1_0.messages.size

  index = index + otc_markets_headers_ats_v1_0.packet_milli.size

  return index
end

-- Display: Packet Header
otc_markets_headers_ats_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
otc_markets_headers_ats_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = otc_markets_headers_ats_v1_0.packet_size.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = otc_markets_headers_ats_v1_0.seq_num.dissect(buffer, index, packet, parent)

  -- Packet Flag: Struct of 5 fields
  index, packet_flag = otc_markets_headers_ats_v1_0.packet_flag.dissect(buffer, index, packet, parent)

  -- Messages: 1 Byte Unsigned Fixed Width Integer
  index, messages = otc_markets_headers_ats_v1_0.messages.dissect(buffer, index, packet, parent)

  -- Packet Milli: 4 Byte Unsigned Fixed Width Integer
  index, packet_milli = otc_markets_headers_ats_v1_0.packet_milli.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
otc_markets_headers_ats_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_otc_markets_headers_ats_v1_0.fields.packet_header, buffer(offset, 0))
    local index = otc_markets_headers_ats_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = otc_markets_headers_ats_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return otc_markets_headers_ats_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
otc_markets_headers_ats_v1_0.packet = {}

-- Dissect Packet
otc_markets_headers_ats_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = otc_markets_headers_ats_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = otc_markets_headers_ats_v1_0.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_otc_markets_headers_ats_v1_0.init()
end

-- Dissector for Otc Markets Headers Ats 1.0
function omi_otc_markets_headers_ats_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_otc_markets_headers_ats_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_otc_markets_headers_ats_v1_0, buffer(), omi_otc_markets_headers_ats_v1_0.description, "("..buffer:len().." Bytes)")
  return otc_markets_headers_ats_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_otc_markets_headers_ats_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
otc_markets_headers_ats_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Otc Markets Headers Ats 1.0
local function omi_otc_markets_headers_ats_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not otc_markets_headers_ats_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_otc_markets_headers_ats_v1_0
  omi_otc_markets_headers_ats_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Otc Markets Headers Ats 1.0
omi_otc_markets_headers_ats_v1_0:register_heuristic("udp", omi_otc_markets_headers_ats_v1_0_heuristic)

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
