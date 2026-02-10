-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex Orion Headers Udp 1.0 Protocol
local omi_hkex_orion_headers_udp_v1_0 = Proto("Hkex.Orion.Headers.Udp.v1.0.Lua", "Hkex Orion Headers Udp 1.0")

-- Protocol table
local hkex_orion_headers_udp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex Orion Headers Udp 1.0 Fields
omi_hkex_orion_headers_udp_v1_0.fields.compression_mode = ProtoField.new("Compression Mode", "hkex.orion.headers.udp.v1.0.compressionmode", ftypes.UINT8)
omi_hkex_orion_headers_udp_v1_0.fields.message = ProtoField.new("Message", "hkex.orion.headers.udp.v1.0.message", ftypes.STRING)
omi_hkex_orion_headers_udp_v1_0.fields.msg_count = ProtoField.new("Msg Count", "hkex.orion.headers.udp.v1.0.msgcount", ftypes.UINT8)
omi_hkex_orion_headers_udp_v1_0.fields.msg_header = ProtoField.new("Msg Header", "hkex.orion.headers.udp.v1.0.msgheader", ftypes.STRING)
omi_hkex_orion_headers_udp_v1_0.fields.msg_size = ProtoField.new("Msg Size", "hkex.orion.headers.udp.v1.0.msgsize", ftypes.UINT16)
omi_hkex_orion_headers_udp_v1_0.fields.msg_type = ProtoField.new("Msg Type", "hkex.orion.headers.udp.v1.0.msgtype", ftypes.UINT16)
omi_hkex_orion_headers_udp_v1_0.fields.packet = ProtoField.new("Packet", "hkex.orion.headers.udp.v1.0.packet", ftypes.STRING)
omi_hkex_orion_headers_udp_v1_0.fields.packet_header = ProtoField.new("Packet Header", "hkex.orion.headers.udp.v1.0.packetheader", ftypes.STRING)
omi_hkex_orion_headers_udp_v1_0.fields.payload = ProtoField.new("Payload", "hkex.orion.headers.udp.v1.0.payload", ftypes.BYTES)
omi_hkex_orion_headers_udp_v1_0.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.orion.headers.udp.v1.0.pktsize", ftypes.UINT16)
omi_hkex_orion_headers_udp_v1_0.fields.send_time = ProtoField.new("Send Time", "hkex.orion.headers.udp.v1.0.sendtime", ftypes.UINT64)
omi_hkex_orion_headers_udp_v1_0.fields.seq_num = ProtoField.new("Seq Num", "hkex.orion.headers.udp.v1.0.seqnum", ftypes.UINT32)

-- Hkex Orion Headers Udp 1.0 generated fields
omi_hkex_orion_headers_udp_v1_0.fields.message_index = ProtoField.new("Message Index", "hkex.orion.headers.udp.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex Orion Headers Udp 1.0 Element Dissection Options
show.message = true
show.msg_header = true
show.packet = true
show.packet_header = true

-- Register Hkex Orion Headers Udp 1.0 Show Options
omi_hkex_orion_headers_udp_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_hkex_orion_headers_udp_v1_0.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
omi_hkex_orion_headers_udp_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_hkex_orion_headers_udp_v1_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function omi_hkex_orion_headers_udp_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_hkex_orion_headers_udp_v1_0.prefs.show_message then
    show.message = omi_hkex_orion_headers_udp_v1_0.prefs.show_message
    changed = true
  end
  if show.msg_header ~= omi_hkex_orion_headers_udp_v1_0.prefs.show_msg_header then
    show.msg_header = omi_hkex_orion_headers_udp_v1_0.prefs.show_msg_header
    changed = true
  end
  if show.packet ~= omi_hkex_orion_headers_udp_v1_0.prefs.show_packet then
    show.packet = omi_hkex_orion_headers_udp_v1_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_hkex_orion_headers_udp_v1_0.prefs.show_packet_header then
    show.packet_header = omi_hkex_orion_headers_udp_v1_0.prefs.show_packet_header
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Hkex Orion Headers Udp 1.0
-----------------------------------------------------------------------

-- Payload
hkex_orion_headers_udp_v1_0.payload = {}

-- Size: Payload
hkex_orion_headers_udp_v1_0.payload.size = 0

-- Display: Payload
hkex_orion_headers_udp_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect: Payload
hkex_orion_headers_udp_v1_0.payload.dissect = function(buffer, offset, packet, parent)
  local length = hkex_orion_headers_udp_v1_0.payload.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = hkex_orion_headers_udp_v1_0.payload.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_orion_headers_udp_v1_0.fields.payload, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_orion_headers_udp_v1_0.msg_type = {}

-- Size: Msg Type
hkex_orion_headers_udp_v1_0.msg_type.size = 2

-- Display: Msg Type
hkex_orion_headers_udp_v1_0.msg_type.display = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
hkex_orion_headers_udp_v1_0.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_orion_headers_udp_v1_0.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_orion_headers_udp_v1_0.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_orion_headers_udp_v1_0.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_orion_headers_udp_v1_0.msg_size = {}

-- Size: Msg Size
hkex_orion_headers_udp_v1_0.msg_size.size = 2

-- Display: Msg Size
hkex_orion_headers_udp_v1_0.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_orion_headers_udp_v1_0.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_orion_headers_udp_v1_0.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_orion_headers_udp_v1_0.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_orion_headers_udp_v1_0.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Header
hkex_orion_headers_udp_v1_0.msg_header = {}

-- Size: Msg Header
hkex_orion_headers_udp_v1_0.msg_header.size =
  hkex_orion_headers_udp_v1_0.msg_size.size + 
  hkex_orion_headers_udp_v1_0.msg_type.size

-- Display: Msg Header
hkex_orion_headers_udp_v1_0.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_orion_headers_udp_v1_0.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_orion_headers_udp_v1_0.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer
  index, msg_type = hkex_orion_headers_udp_v1_0.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_orion_headers_udp_v1_0.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_orion_headers_udp_v1_0.fields.msg_header, buffer(offset, 0))
    local index = hkex_orion_headers_udp_v1_0.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_orion_headers_udp_v1_0.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_orion_headers_udp_v1_0.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_orion_headers_udp_v1_0.message = {}

-- Display: Message
hkex_orion_headers_udp_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_orion_headers_udp_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_hkex_orion_headers_udp_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_orion_headers_udp_v1_0.msg_header.dissect(buffer, index, packet, parent)

  -- Payload: 0 Byte
  index, payload = hkex_orion_headers_udp_v1_0.payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
hkex_orion_headers_udp_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_hkex_orion_headers_udp_v1_0.fields.message, buffer(offset, 0))
    local current = hkex_orion_headers_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_orion_headers_udp_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_orion_headers_udp_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
hkex_orion_headers_udp_v1_0.send_time = {}

-- Size: Send Time
hkex_orion_headers_udp_v1_0.send_time.size = 8

-- Display: Send Time
hkex_orion_headers_udp_v1_0.send_time.display = function(value)
  -- Parse unix timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_orion_headers_udp_v1_0.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_orion_headers_udp_v1_0.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_orion_headers_udp_v1_0.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_orion_headers_udp_v1_0.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_orion_headers_udp_v1_0.seq_num = {}

-- Size: Seq Num
hkex_orion_headers_udp_v1_0.seq_num.size = 4

-- Display: Seq Num
hkex_orion_headers_udp_v1_0.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_orion_headers_udp_v1_0.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_orion_headers_udp_v1_0.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_orion_headers_udp_v1_0.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_orion_headers_udp_v1_0.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Compression Mode
hkex_orion_headers_udp_v1_0.compression_mode = {}

-- Size: Compression Mode
hkex_orion_headers_udp_v1_0.compression_mode.size = 1

-- Display: Compression Mode
hkex_orion_headers_udp_v1_0.compression_mode.display = function(value)
  return "Compression Mode: "..value
end

-- Dissect: Compression Mode
hkex_orion_headers_udp_v1_0.compression_mode.dissect = function(buffer, offset, packet, parent)
  local length = hkex_orion_headers_udp_v1_0.compression_mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_orion_headers_udp_v1_0.compression_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_orion_headers_udp_v1_0.fields.compression_mode, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_orion_headers_udp_v1_0.msg_count = {}

-- Size: Msg Count
hkex_orion_headers_udp_v1_0.msg_count.size = 1

-- Display: Msg Count
hkex_orion_headers_udp_v1_0.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_orion_headers_udp_v1_0.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_orion_headers_udp_v1_0.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_orion_headers_udp_v1_0.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_orion_headers_udp_v1_0.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_orion_headers_udp_v1_0.pkt_size = {}

-- Size: Pkt Size
hkex_orion_headers_udp_v1_0.pkt_size.size = 2

-- Display: Pkt Size
hkex_orion_headers_udp_v1_0.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_orion_headers_udp_v1_0.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_orion_headers_udp_v1_0.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_orion_headers_udp_v1_0.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_orion_headers_udp_v1_0.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Packet Header
hkex_orion_headers_udp_v1_0.packet_header = {}

-- Size: Packet Header
hkex_orion_headers_udp_v1_0.packet_header.size =
  hkex_orion_headers_udp_v1_0.pkt_size.size + 
  hkex_orion_headers_udp_v1_0.msg_count.size + 
  hkex_orion_headers_udp_v1_0.compression_mode.size + 
  hkex_orion_headers_udp_v1_0.seq_num.size + 
  hkex_orion_headers_udp_v1_0.send_time.size

-- Display: Packet Header
hkex_orion_headers_udp_v1_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_orion_headers_udp_v1_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_orion_headers_udp_v1_0.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_orion_headers_udp_v1_0.msg_count.dissect(buffer, index, packet, parent)

  -- Compression Mode: 1 Byte Unsigned Fixed Width Integer
  index, compression_mode = hkex_orion_headers_udp_v1_0.compression_mode.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_orion_headers_udp_v1_0.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_orion_headers_udp_v1_0.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_orion_headers_udp_v1_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_orion_headers_udp_v1_0.fields.packet_header, buffer(offset, 0))
    local index = hkex_orion_headers_udp_v1_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_orion_headers_udp_v1_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_orion_headers_udp_v1_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_orion_headers_udp_v1_0.packet = {}

-- Dissect Packet
hkex_orion_headers_udp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_orion_headers_udp_v1_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_orion_headers_udp_v1_0.message.dissect(buffer, index, packet, parent, msg_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_orion_headers_udp_v1_0.init()
end

-- Dissector for Hkex Orion Headers Udp 1.0
function omi_hkex_orion_headers_udp_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_orion_headers_udp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_orion_headers_udp_v1_0, buffer(), omi_hkex_orion_headers_udp_v1_0.description, "("..buffer:len().." Bytes)")
  return hkex_orion_headers_udp_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_hkex_orion_headers_udp_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
hkex_orion_headers_udp_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Hkex Orion Headers Udp 1.0
local function omi_hkex_orion_headers_udp_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_orion_headers_udp_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_orion_headers_udp_v1_0
  omi_hkex_orion_headers_udp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex Orion Headers Udp 1.0
omi_hkex_orion_headers_udp_v1_0:register_heuristic("udp", omi_hkex_orion_headers_udp_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.0
--   Date: Thursday, January 31, 2013
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
