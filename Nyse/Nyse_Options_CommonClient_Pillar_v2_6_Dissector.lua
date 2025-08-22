-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Options CommonClient Pillar 2.6 Protocol
local nyse_options_commonclient_pillar_v2_6 = Proto("Nyse.Options.CommonClient.Pillar.v2.6.Lua", "Nyse Options CommonClient Pillar 2.6")

-- Component Tables
local show = {}
local format = {}
local nyse_options_commonclient_pillar_v2_6_display = {}
local nyse_options_commonclient_pillar_v2_6_dissect = {}
local nyse_options_commonclient_pillar_v2_6_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Options CommonClient Pillar 2.6 Fields
nyse_options_commonclient_pillar_v2_6.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.options.commonclient.pillar.v2.6.deliveryflag", ftypes.UINT8)
nyse_options_commonclient_pillar_v2_6.fields.message = ProtoField.new("Message", "nyse.options.commonclient.pillar.v2.6.message", ftypes.STRING)
nyse_options_commonclient_pillar_v2_6.fields.message_count = ProtoField.new("Message Count", "nyse.options.commonclient.pillar.v2.6.messagecount", ftypes.UINT8)
nyse_options_commonclient_pillar_v2_6.fields.message_header = ProtoField.new("Message Header", "nyse.options.commonclient.pillar.v2.6.messageheader", ftypes.STRING)
nyse_options_commonclient_pillar_v2_6.fields.message_size = ProtoField.new("Message Size", "nyse.options.commonclient.pillar.v2.6.messagesize", ftypes.UINT16)
nyse_options_commonclient_pillar_v2_6.fields.message_type = ProtoField.new("Message Type", "nyse.options.commonclient.pillar.v2.6.messagetype", ftypes.UINT16)
nyse_options_commonclient_pillar_v2_6.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.options.commonclient.pillar.v2.6.nanoseconds", ftypes.UINT32)
nyse_options_commonclient_pillar_v2_6.fields.packet = ProtoField.new("Packet", "nyse.options.commonclient.pillar.v2.6.packet", ftypes.STRING)
nyse_options_commonclient_pillar_v2_6.fields.packet_header = ProtoField.new("Packet Header", "nyse.options.commonclient.pillar.v2.6.packetheader", ftypes.STRING)
nyse_options_commonclient_pillar_v2_6.fields.packet_size = ProtoField.new("Packet Size", "nyse.options.commonclient.pillar.v2.6.packetsize", ftypes.UINT16)
nyse_options_commonclient_pillar_v2_6.fields.payload = ProtoField.new("Payload", "nyse.options.commonclient.pillar.v2.6.payload", ftypes.BYTES)
nyse_options_commonclient_pillar_v2_6.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.options.commonclient.pillar.v2.6.sequencenumber", ftypes.UINT32)
nyse_options_commonclient_pillar_v2_6.fields.timestamp = ProtoField.new("Timestamp", "nyse.options.commonclient.pillar.v2.6.timestamp", ftypes.UINT32)

-- Nyse Options CommonClient Pillar 2.6 generated fields
nyse_options_commonclient_pillar_v2_6.fields.message_index = ProtoField.new("Message Index", "nyse.options.commonclient.pillar.v2.6.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Options CommonClient Pillar 2.6 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true

-- Register Nyse Options CommonClient Pillar 2.6 Show Options
nyse_options_commonclient_pillar_v2_6.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_options_commonclient_pillar_v2_6.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_options_commonclient_pillar_v2_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_options_commonclient_pillar_v2_6.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")

-- Handle changed preferences
function nyse_options_commonclient_pillar_v2_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= nyse_options_commonclient_pillar_v2_6.prefs.show_message then
    show.message = nyse_options_commonclient_pillar_v2_6.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_options_commonclient_pillar_v2_6.prefs.show_message_header then
    show.message_header = nyse_options_commonclient_pillar_v2_6.prefs.show_message_header
    changed = true
  end
  if show.packet ~= nyse_options_commonclient_pillar_v2_6.prefs.show_packet then
    show.packet = nyse_options_commonclient_pillar_v2_6.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_options_commonclient_pillar_v2_6.prefs.show_packet_header then
    show.packet_header = nyse_options_commonclient_pillar_v2_6.prefs.show_packet_header
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Options CommonClient Pillar 2.6
-----------------------------------------------------------------------

-- Display: Payload
nyse_options_commonclient_pillar_v2_6_display.payload = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
nyse_options_commonclient_pillar_v2_6_dissect.payload = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_commonclient_pillar_v2_6_display.payload(value, buffer, offset, packet, parent, size)

  parent:add(nyse_options_commonclient_pillar_v2_6.fields.payload, range, value, display)

  return offset + size
end

-- Size: Message Type
nyse_options_commonclient_pillar_v2_6_size_of.message_type = 2

-- Display: Message Type
nyse_options_commonclient_pillar_v2_6_display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
nyse_options_commonclient_pillar_v2_6_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_options_commonclient_pillar_v2_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
nyse_options_commonclient_pillar_v2_6_size_of.message_size = 2

-- Display: Message Size
nyse_options_commonclient_pillar_v2_6_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_options_commonclient_pillar_v2_6_dissect.message_size = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6_display.message_size(value, buffer, offset, packet, parent)

  parent:add(nyse_options_commonclient_pillar_v2_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nyse_options_commonclient_pillar_v2_6_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nyse_options_commonclient_pillar_v2_6_size_of.message_size

  index = index + nyse_options_commonclient_pillar_v2_6_size_of.message_type

  return index
end

-- Display: Message Header
nyse_options_commonclient_pillar_v2_6_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_options_commonclient_pillar_v2_6_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_options_commonclient_pillar_v2_6_dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer
  index, message_type = nyse_options_commonclient_pillar_v2_6_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_options_commonclient_pillar_v2_6_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_commonclient_pillar_v2_6.fields.message_header, buffer(offset, 0))
    local index = nyse_options_commonclient_pillar_v2_6_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_commonclient_pillar_v2_6_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_commonclient_pillar_v2_6_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
nyse_options_commonclient_pillar_v2_6_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_options_commonclient_pillar_v2_6_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- TODO
  if message_index ~= nil then
    local iteration = parent:add(nyse_options_commonclient_pillar_v2_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_options_commonclient_pillar_v2_6_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Size
  local message_size = buffer(index - 4, 2):le_uint()

  -- Runtime Size Of: Payload
  local size_of_payload = message_size - 4

  -- Payload: 0 Byte
  index, payload = nyse_options_commonclient_pillar_v2_6_dissect.payload(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
nyse_options_commonclient_pillar_v2_6_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(nyse_options_commonclient_pillar_v2_6.fields.message, buffer(offset, 0))
    local current = nyse_options_commonclient_pillar_v2_6_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_options_commonclient_pillar_v2_6_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_commonclient_pillar_v2_6_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Nanoseconds
nyse_options_commonclient_pillar_v2_6_size_of.nanoseconds = 4

-- Display: Nanoseconds
nyse_options_commonclient_pillar_v2_6_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_options_commonclient_pillar_v2_6_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nyse_options_commonclient_pillar_v2_6.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nyse_options_commonclient_pillar_v2_6_size_of.timestamp = 4

-- Display: Timestamp
nyse_options_commonclient_pillar_v2_6_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_options_commonclient_pillar_v2_6_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_options_commonclient_pillar_v2_6.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nyse_options_commonclient_pillar_v2_6_size_of.sequence_number = 4

-- Display: Sequence Number
nyse_options_commonclient_pillar_v2_6_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_options_commonclient_pillar_v2_6_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_options_commonclient_pillar_v2_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Count
nyse_options_commonclient_pillar_v2_6_size_of.message_count = 1

-- Display: Message Count
nyse_options_commonclient_pillar_v2_6_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_options_commonclient_pillar_v2_6_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_options_commonclient_pillar_v2_6.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
nyse_options_commonclient_pillar_v2_6_size_of.delivery_flag = 1

-- Display: Delivery Flag
nyse_options_commonclient_pillar_v2_6_display.delivery_flag = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Pillar Failover (10)"
  end
  if value == 11 then
    return "Delivery Flag: Original Message (11)"
  end
  if value == 12 then
    return "Delivery Flag: Sequence Number Reset Message (12)"
  end
  if value == 13 then
    return "Delivery Flag: One Retransmission Packet (13)"
  end
  if value == 15 then
    return "Delivery Flag: Retransmission Sequence Message (15)"
  end
  if value == 17 then
    return "Delivery Flag: One Refresh Packet (17)"
  end
  if value == 18 then
    return "Delivery Flag: Refresh Sequence Start (18)"
  end
  if value == 19 then
    return "Delivery Flag: Refresh Sequence Message (19)"
  end
  if value == 20 then
    return "Delivery Flag: Refresh Sequence End (20)"
  end
  if value == 21 then
    return "Delivery Flag: Message Unavailable (21)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
nyse_options_commonclient_pillar_v2_6_dissect.delivery_flag = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6_size_of.delivery_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6_display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_options_commonclient_pillar_v2_6.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
nyse_options_commonclient_pillar_v2_6_size_of.packet_size = 2

-- Display: Packet Size
nyse_options_commonclient_pillar_v2_6_display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_options_commonclient_pillar_v2_6_dissect.packet_size = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6_size_of.packet_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6_display.packet_size(value, buffer, offset, packet, parent)

  parent:add(nyse_options_commonclient_pillar_v2_6.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nyse_options_commonclient_pillar_v2_6_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nyse_options_commonclient_pillar_v2_6_size_of.packet_size

  index = index + nyse_options_commonclient_pillar_v2_6_size_of.delivery_flag

  index = index + nyse_options_commonclient_pillar_v2_6_size_of.message_count

  index = index + nyse_options_commonclient_pillar_v2_6_size_of.sequence_number

  index = index + nyse_options_commonclient_pillar_v2_6_size_of.timestamp

  index = index + nyse_options_commonclient_pillar_v2_6_size_of.nanoseconds

  return index
end

-- Display: Packet Header
nyse_options_commonclient_pillar_v2_6_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_options_commonclient_pillar_v2_6_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_options_commonclient_pillar_v2_6_dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_options_commonclient_pillar_v2_6_dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_options_commonclient_pillar_v2_6_dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_options_commonclient_pillar_v2_6_dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_options_commonclient_pillar_v2_6_dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_options_commonclient_pillar_v2_6_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_options_commonclient_pillar_v2_6_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_commonclient_pillar_v2_6.fields.packet_header, buffer(offset, 0))
    local index = nyse_options_commonclient_pillar_v2_6_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_commonclient_pillar_v2_6_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_commonclient_pillar_v2_6_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
nyse_options_commonclient_pillar_v2_6_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_options_commonclient_pillar_v2_6_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_options_commonclient_pillar_v2_6_dissect.message(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_options_commonclient_pillar_v2_6.init()
end

-- Dissector for Nyse Options CommonClient Pillar 2.6
function nyse_options_commonclient_pillar_v2_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_options_commonclient_pillar_v2_6.name

  -- Dissect protocol
  local protocol = parent:add(nyse_options_commonclient_pillar_v2_6, buffer(), nyse_options_commonclient_pillar_v2_6.description, "("..buffer:len().." Bytes)")
  return nyse_options_commonclient_pillar_v2_6_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_options_commonclient_pillar_v2_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_options_commonclient_pillar_v2_6_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Options CommonClient Pillar 2.6
local function nyse_options_commonclient_pillar_v2_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_options_commonclient_pillar_v2_6_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_options_commonclient_pillar_v2_6
  nyse_options_commonclient_pillar_v2_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Options CommonClient Pillar 2.6
nyse_options_commonclient_pillar_v2_6:register_heuristic("udp", nyse_options_commonclient_pillar_v2_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.6
--   Date: Wednesday, August 3, 2022
--   Specification: Pillar_Options_Common_Client_Specification.pdf
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
