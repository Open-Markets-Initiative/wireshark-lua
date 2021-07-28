-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax Options TopOfMarket Mach 2.2 Protocol
local miax_options_topofmarket_mach_v2_2 = Proto("Miax.Options.TopOfMarket.Mach.v2.2.Lua", "Miax Options TopOfMarket Mach 2.2")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax Options TopOfMarket Mach 2.2 Fields
miax_options_topofmarket_mach_v2_2.fields.application_message = ProtoField.new("Application Message", "miax.options.topofmarket.mach.v2.2.applicationmessage", ftypes.STRING)
miax_options_topofmarket_mach_v2_2.fields.message = ProtoField.new("Message", "miax.options.topofmarket.mach.v2.2.message", ftypes.STRING)
miax_options_topofmarket_mach_v2_2.fields.message_type = ProtoField.new("Message Type", "miax.options.topofmarket.mach.v2.2.messagetype", ftypes.STRING)
miax_options_topofmarket_mach_v2_2.fields.packet = ProtoField.new("Packet", "miax.options.topofmarket.mach.v2.2.packet", ftypes.STRING)
miax_options_topofmarket_mach_v2_2.fields.packet_length = ProtoField.new("Packet Length", "miax.options.topofmarket.mach.v2.2.packetlength", ftypes.UINT16)
miax_options_topofmarket_mach_v2_2.fields.packet_type = ProtoField.new("Packet Type", "miax.options.topofmarket.mach.v2.2.packettype", ftypes.UINT8)
miax_options_topofmarket_mach_v2_2.fields.payload = ProtoField.new("Payload", "miax.options.topofmarket.mach.v2.2.payload", ftypes.STRING)
miax_options_topofmarket_mach_v2_2.fields.sequence_number = ProtoField.new("Sequence Number", "miax.options.topofmarket.mach.v2.2.sequencenumber", ftypes.UINT64)
miax_options_topofmarket_mach_v2_2.fields.session_number = ProtoField.new("Session Number", "miax.options.topofmarket.mach.v2.2.sessionnumber", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax Options TopOfMarket Mach 2.2 Element Dissection Options
show.application_message = true
show.message = true
show.packet = true
show.payload = false

-- Register Miax Options TopOfMarket Mach 2.2 Show Options
miax_options_topofmarket_mach_v2_2.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
miax_options_topofmarket_mach_v2_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
miax_options_topofmarket_mach_v2_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_options_topofmarket_mach_v2_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function miax_options_topofmarket_mach_v2_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= miax_options_topofmarket_mach_v2_2.prefs.show_application_message then
    show.application_message = miax_options_topofmarket_mach_v2_2.prefs.show_application_message
    changed = true
  end
  if show.message ~= miax_options_topofmarket_mach_v2_2.prefs.show_message then
    show.message = miax_options_topofmarket_mach_v2_2.prefs.show_message
    changed = true
  end
  if show.packet ~= miax_options_topofmarket_mach_v2_2.prefs.show_packet then
    show.packet = miax_options_topofmarket_mach_v2_2.prefs.show_packet
    changed = true
  end
  if show.payload ~= miax_options_topofmarket_mach_v2_2.prefs.show_payload then
    show.payload = miax_options_topofmarket_mach_v2_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Miax Options TopOfMarket Mach 2.2
-----------------------------------------------------------------------

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_options_topofmarket_mach_v2_2.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Application Message
size_of.application_message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_type

  index = index + size_of.data

  return index
end

-- Display: Application Message
display.application_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Application Message
dissect.application_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Data
  index, data = dissect.data(buffer, index, packet, parent)

  return index
end

-- Dissect: Application Message
dissect.application_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.application_message then
    local length = size_of.application_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.application_message(buffer, packet, parent)
    parent = parent:add(miax_options_topofmarket_mach_v2_2.fields.application_message, range, display)
  end

  return dissect.application_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(miax_options_topofmarket_mach_v2_2.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Session Number
size_of.session_number = 1

-- Display: Session Number
display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
dissect.session_number = function(buffer, offset, packet, parent)
  local length = size_of.session_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_options_topofmarket_mach_v2_2.fields.session_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Type
size_of.packet_type = 1

-- Display: Packet Type
display.packet_type = function(value)
  if value == 0 then
    return "Packet Type: Heartbeat (0)"
  end
  if value == 1 then
    return "Packet Type: Start Of Session (1)"
  end
  if value == 2 then
    return "Packet Type: End Of Session (2)"
  end
  if value == 3 then
    return "Packet Type: Application Message (3)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
dissect.packet_type = function(buffer, offset, packet, parent)
  local length = size_of.packet_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_options_topofmarket_mach_v2_2.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
size_of.packet_length = 2

-- Display: Packet Length
display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
dissect.packet_length = function(buffer, offset, packet, parent)
  local length = size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_options_topofmarket_mach_v2_2.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
size_of.sequence_number = 8

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_options_topofmarket_mach_v2_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.sequence_number

  index = index + size_of.packet_length

  index = index + size_of.packet_type

  index = index + size_of.session_number

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(miax_options_topofmarket_mach_v2_2.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_options_topofmarket_mach_v2_2.init()
end

-- Dissector for Miax Options TopOfMarket Mach 2.2
function miax_options_topofmarket_mach_v2_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_options_topofmarket_mach_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(miax_options_topofmarket_mach_v2_2, buffer(), miax_options_topofmarket_mach_v2_2.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_options_topofmarket_mach_v2_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_options_topofmarket_mach_v2_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax Options TopOfMarket Mach 2.2
local function miax_options_topofmarket_mach_v2_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_options_topofmarket_mach_v2_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_options_topofmarket_mach_v2_2
  miax_options_topofmarket_mach_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax Options TopOfMarket Mach 2.2
miax_options_topofmarket_mach_v2_2:register_heuristic("udp", miax_options_topofmarket_mach_v2_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Securities Exchange
--   Version: 2.2
--   Date: Friday, March 16, 2018
--   Specification: Top_Of_Market_Feed_ToM_v2.2.pdf
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
