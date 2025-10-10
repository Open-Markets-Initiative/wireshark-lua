-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Aquis Equities UdpHeader Amd 1.0 Protocol
local omi_aquis_equities_udpheader_amd_v1_0 = Proto("Aquis.Equities.UdpHeader.Amd.v1.0.Lua", "Aquis Equities UdpHeader Amd 1.0")

-- Protocol table
local aquis_equities_udpheader_amd_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Aquis Equities UdpHeader Amd 1.0 Fields
omi_aquis_equities_udpheader_amd_v1_0.fields.message = ProtoField.new("Message", "aquis.equities.udpheader.amd.v1.0.message", ftypes.STRING)
omi_aquis_equities_udpheader_amd_v1_0.fields.message_count = ProtoField.new("Message Count", "aquis.equities.udpheader.amd.v1.0.messagecount", ftypes.UINT8)
omi_aquis_equities_udpheader_amd_v1_0.fields.message_header = ProtoField.new("Message Header", "aquis.equities.udpheader.amd.v1.0.messageheader", ftypes.STRING)
omi_aquis_equities_udpheader_amd_v1_0.fields.msg_length = ProtoField.new("Msg Length", "aquis.equities.udpheader.amd.v1.0.msglength", ftypes.UINT8)
omi_aquis_equities_udpheader_amd_v1_0.fields.msg_type = ProtoField.new("Msg Type", "aquis.equities.udpheader.amd.v1.0.msgtype", ftypes.UINT8)
omi_aquis_equities_udpheader_amd_v1_0.fields.packet = ProtoField.new("Packet", "aquis.equities.udpheader.amd.v1.0.packet", ftypes.STRING)
omi_aquis_equities_udpheader_amd_v1_0.fields.payload = ProtoField.new("Payload", "aquis.equities.udpheader.amd.v1.0.payload", ftypes.BYTES)
omi_aquis_equities_udpheader_amd_v1_0.fields.seq_no = ProtoField.new("Seq No", "aquis.equities.udpheader.amd.v1.0.seqno", ftypes.UINT32)

-- Aquis Equities UdpHeader Amd 1.0 generated fields
omi_aquis_equities_udpheader_amd_v1_0.fields.message_index = ProtoField.new("Message Index", "aquis.equities.udpheader.amd.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Aquis Equities UdpHeader Amd 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true

-- Register Aquis Equities UdpHeader Amd 1.0 Show Options
omi_aquis_equities_udpheader_amd_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_aquis_equities_udpheader_amd_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_aquis_equities_udpheader_amd_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function omi_aquis_equities_udpheader_amd_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_aquis_equities_udpheader_amd_v1_0.prefs.show_message then
    show.message = omi_aquis_equities_udpheader_amd_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_aquis_equities_udpheader_amd_v1_0.prefs.show_message_header then
    show.message_header = omi_aquis_equities_udpheader_amd_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_aquis_equities_udpheader_amd_v1_0.prefs.show_packet then
    show.packet = omi_aquis_equities_udpheader_amd_v1_0.prefs.show_packet
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Aquis Equities UdpHeader Amd 1.0
-----------------------------------------------------------------------

-- Payload
aquis_equities_udpheader_amd_v1_0.payload = {}

-- Size: Payload
aquis_equities_udpheader_amd_v1_0.payload.size = 0

-- Display: Payload
aquis_equities_udpheader_amd_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect: Payload
aquis_equities_udpheader_amd_v1_0.payload.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_udpheader_amd_v1_0.payload.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = aquis_equities_udpheader_amd_v1_0.payload.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_udpheader_amd_v1_0.fields.payload, range, value, display)

  return offset + length, value
end

-- Seq No
aquis_equities_udpheader_amd_v1_0.seq_no = {}

-- Size: Seq No
aquis_equities_udpheader_amd_v1_0.seq_no.size = 4

-- Display: Seq No
aquis_equities_udpheader_amd_v1_0.seq_no.display = function(value)
  return "Seq No: "..value
end

-- Dissect: Seq No
aquis_equities_udpheader_amd_v1_0.seq_no.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_udpheader_amd_v1_0.seq_no.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_udpheader_amd_v1_0.seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_udpheader_amd_v1_0.fields.seq_no, range, value, display)

  return offset + length, value
end

-- Msg Length
aquis_equities_udpheader_amd_v1_0.msg_length = {}

-- Size: Msg Length
aquis_equities_udpheader_amd_v1_0.msg_length.size = 1

-- Display: Msg Length
aquis_equities_udpheader_amd_v1_0.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
aquis_equities_udpheader_amd_v1_0.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_udpheader_amd_v1_0.msg_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_udpheader_amd_v1_0.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_udpheader_amd_v1_0.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
aquis_equities_udpheader_amd_v1_0.msg_type = {}

-- Size: Msg Type
aquis_equities_udpheader_amd_v1_0.msg_type.size = 1

-- Display: Msg Type
aquis_equities_udpheader_amd_v1_0.msg_type.display = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
aquis_equities_udpheader_amd_v1_0.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_udpheader_amd_v1_0.msg_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_udpheader_amd_v1_0.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_udpheader_amd_v1_0.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Message Header
aquis_equities_udpheader_amd_v1_0.message_header = {}

-- Size: Message Header
aquis_equities_udpheader_amd_v1_0.message_header.size =
  aquis_equities_udpheader_amd_v1_0.msg_type.size + 
  aquis_equities_udpheader_amd_v1_0.msg_length.size + 
  aquis_equities_udpheader_amd_v1_0.seq_no.size

-- Display: Message Header
aquis_equities_udpheader_amd_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
aquis_equities_udpheader_amd_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer
  index, msg_type = aquis_equities_udpheader_amd_v1_0.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 1 Byte Unsigned Fixed Width Integer
  index, msg_length = aquis_equities_udpheader_amd_v1_0.msg_length.dissect(buffer, index, packet, parent)

  -- Seq No: 4 Byte Unsigned Fixed Width Integer
  index, seq_no = aquis_equities_udpheader_amd_v1_0.seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
aquis_equities_udpheader_amd_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_aquis_equities_udpheader_amd_v1_0.fields.message_header, buffer(offset, 0))
    local index = aquis_equities_udpheader_amd_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = aquis_equities_udpheader_amd_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return aquis_equities_udpheader_amd_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
aquis_equities_udpheader_amd_v1_0.message = {}

-- Display: Message
aquis_equities_udpheader_amd_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
aquis_equities_udpheader_amd_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_aquis_equities_udpheader_amd_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 3 fields
  index, message_header = aquis_equities_udpheader_amd_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Payload: 0 Byte
  index, payload = aquis_equities_udpheader_amd_v1_0.payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
aquis_equities_udpheader_amd_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_aquis_equities_udpheader_amd_v1_0.fields.message, buffer(offset, 0))
    local current = aquis_equities_udpheader_amd_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = aquis_equities_udpheader_amd_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    aquis_equities_udpheader_amd_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
aquis_equities_udpheader_amd_v1_0.message_count = {}

-- Size: Message Count
aquis_equities_udpheader_amd_v1_0.message_count.size = 1

-- Display: Message Count
aquis_equities_udpheader_amd_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
aquis_equities_udpheader_amd_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = aquis_equities_udpheader_amd_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = aquis_equities_udpheader_amd_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_aquis_equities_udpheader_amd_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Packet
aquis_equities_udpheader_amd_v1_0.packet = {}

-- Dissect Packet
aquis_equities_udpheader_amd_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = aquis_equities_udpheader_amd_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Msg Length
    local msg_length = buffer(index + 1, 1):uint()

    -- Runtime Size Of: Message
    index, message = aquis_equities_udpheader_amd_v1_0.message.dissect(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_aquis_equities_udpheader_amd_v1_0.init()
end

-- Dissector for Aquis Equities UdpHeader Amd 1.0
function omi_aquis_equities_udpheader_amd_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_aquis_equities_udpheader_amd_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_aquis_equities_udpheader_amd_v1_0, buffer(), omi_aquis_equities_udpheader_amd_v1_0.description, "("..buffer:len().." Bytes)")
  return aquis_equities_udpheader_amd_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_aquis_equities_udpheader_amd_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
aquis_equities_udpheader_amd_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Aquis Equities UdpHeader Amd 1.0
local function omi_aquis_equities_udpheader_amd_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not aquis_equities_udpheader_amd_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_aquis_equities_udpheader_amd_v1_0
  omi_aquis_equities_udpheader_amd_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Aquis Equities UdpHeader Amd 1.0
omi_aquis_equities_udpheader_amd_v1_0:register_heuristic("udp", omi_aquis_equities_udpheader_amd_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Aquis Exchange
--   Version: 1.0
--   Date: Monday, June 24, 2013
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
