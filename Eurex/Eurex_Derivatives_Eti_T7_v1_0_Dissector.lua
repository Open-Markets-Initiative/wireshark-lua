-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Derivatives Eti T7 1.0 Protocol
local omi_eurex_derivatives_eti_t7_v1_0 = Proto("Eurex.Derivatives.Eti.T7.v1.0.Lua", "Eurex Derivatives Eti T7 1.0")

-- Component Tables
local show = {}
local format = {}
local eurex_derivatives_eti_t7_v1_0_display = {}
local eurex_derivatives_eti_t7_v1_0_dissect = {}
local eurex_derivatives_eti_t7_v1_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex Derivatives Eti T7 1.0 Fields
omi_eurex_derivatives_eti_t7_v1_0.fields.body_len = ProtoField.new("Body Len", "eurex.derivatives.eti.t7.v1.0.bodylen", ftypes.UINT32)
omi_eurex_derivatives_eti_t7_v1_0.fields.message = ProtoField.new("Message", "eurex.derivatives.eti.t7.v1.0.message", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v1_0.fields.message_header = ProtoField.new("Message Header", "eurex.derivatives.eti.t7.v1.0.messageheader", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v1_0.fields.packet = ProtoField.new("Packet", "eurex.derivatives.eti.t7.v1.0.packet", ftypes.STRING)
omi_eurex_derivatives_eti_t7_v1_0.fields.payload = ProtoField.new("Payload", "eurex.derivatives.eti.t7.v1.0.payload", ftypes.BYTES)
omi_eurex_derivatives_eti_t7_v1_0.fields.template_id = ProtoField.new("Template Id", "eurex.derivatives.eti.t7.v1.0.templateid", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Eurex Derivatives Eti T7 1.0 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true

-- Register Eurex Derivatives Eti T7 1.0 Show Options
omi_eurex_derivatives_eti_t7_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_eurex_derivatives_eti_t7_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_eurex_derivatives_eti_t7_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function omi_eurex_derivatives_eti_t7_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_eurex_derivatives_eti_t7_v1_0.prefs.show_message then
    show.message = omi_eurex_derivatives_eti_t7_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_eurex_derivatives_eti_t7_v1_0.prefs.show_message_header then
    show.message_header = omi_eurex_derivatives_eti_t7_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_eurex_derivatives_eti_t7_v1_0.prefs.show_packet then
    show.packet = omi_eurex_derivatives_eti_t7_v1_0.prefs.show_packet
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Eurex Derivatives Eti T7 1.0
-----------------------------------------------------------------------

-- Display: Payload
eurex_derivatives_eti_t7_v1_0_display.payload = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
eurex_derivatives_eti_t7_v1_0_dissect.payload = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eti_t7_v1_0_display.payload(value, buffer, offset, packet, parent, size)

  parent:add(omi_eurex_derivatives_eti_t7_v1_0.fields.payload, range, value, display)

  return offset + size
end

-- Size: Template Id
eurex_derivatives_eti_t7_v1_0_size_of.template_id = 2

-- Display: Template Id
eurex_derivatives_eti_t7_v1_0_display.template_id = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
eurex_derivatives_eti_t7_v1_0_dissect.template_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v1_0_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v1_0_display.template_id(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v1_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Body Len
eurex_derivatives_eti_t7_v1_0_size_of.body_len = 4

-- Display: Body Len
eurex_derivatives_eti_t7_v1_0_display.body_len = function(value)
  return "Body Len: "..value
end

-- Dissect: Body Len
eurex_derivatives_eti_t7_v1_0_dissect.body_len = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eti_t7_v1_0_size_of.body_len
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eti_t7_v1_0_display.body_len(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_eti_t7_v1_0.fields.body_len, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
eurex_derivatives_eti_t7_v1_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eti_t7_v1_0_size_of.body_len

  index = index + eurex_derivatives_eti_t7_v1_0_size_of.template_id

  return index
end

-- Display: Message Header
eurex_derivatives_eti_t7_v1_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
eurex_derivatives_eti_t7_v1_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer
  index, body_len = eurex_derivatives_eti_t7_v1_0_dissect.body_len(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = eurex_derivatives_eti_t7_v1_0_dissect.template_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
eurex_derivatives_eti_t7_v1_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_eti_t7_v1_0.fields.message_header, buffer(offset, 0))
    local index = eurex_derivatives_eti_t7_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_eti_t7_v1_0_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_eti_t7_v1_0_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
eurex_derivatives_eti_t7_v1_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
eurex_derivatives_eti_t7_v1_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = eurex_derivatives_eti_t7_v1_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Body Len
  local body_len = buffer(index - 6, 4):le_uint()

  -- Runtime Size Of: Payload
  local size_of_payload = body_len - 6

  -- Payload: 0 Byte
  index, payload = eurex_derivatives_eti_t7_v1_0_dissect.payload(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
eurex_derivatives_eti_t7_v1_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_eurex_derivatives_eti_t7_v1_0.fields.message, buffer(offset, 0))
    local current = eurex_derivatives_eti_t7_v1_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = eurex_derivatives_eti_t7_v1_0_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    eurex_derivatives_eti_t7_v1_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < eurex_derivatives_eti_t7_v1_0_size_of.message_header(buffer, index) then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 4):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Dissect Packet
eurex_derivatives_eti_t7_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = eurex_derivatives_eti_t7_v1_0_dissect.message(buffer, index, packet, parent, size_of_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_eurex_derivatives_eti_t7_v1_0.init()
end

-- Dissector for Eurex Derivatives Eti T7 1.0
function omi_eurex_derivatives_eti_t7_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_eurex_derivatives_eti_t7_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_eurex_derivatives_eti_t7_v1_0, buffer(), omi_eurex_derivatives_eti_t7_v1_0.description, "("..buffer:len().." Bytes)")
  return eurex_derivatives_eti_t7_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_eurex_derivatives_eti_t7_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_eurex_derivatives_eti_t7_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Eurex Derivatives Eti T7 1.0
local function omi_eurex_derivatives_eti_t7_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_eurex_derivatives_eti_t7_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_eurex_derivatives_eti_t7_v1_0
  omi_eurex_derivatives_eti_t7_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Derivatives Eti T7 1.0
omi_eurex_derivatives_eti_t7_v1_0:register_heuristic("tcp", omi_eurex_derivatives_eti_t7_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 1.0
--   Date: Thursday, January 1, 2015
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
