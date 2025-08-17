-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures HeaderOnly Mach 1.0 Protocol
local miax_onyxfutures_mach_v1_0 = Proto("Miax.OnyxFutures.Mach.v1.0.Lua", "Miax OnyxFutures HeaderOnly Mach 1.0")

-- Component Tables
local show = {}
local format = {}
local miax_onyxfutures_mach_v1_0_display = {}
local miax_onyxfutures_mach_v1_0_dissect = {}
local miax_onyxfutures_mach_v1_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures HeaderOnly Mach 1.0 Fields
miax_onyxfutures_mach_v1_0.fields.application_message = ProtoField.new("Application Message", "miax.onyxfutures.mach.v1.0.applicationmessage", ftypes.STRING)
miax_onyxfutures_mach_v1_0.fields.data = ProtoField.new("Data", "miax.onyxfutures.mach.v1.0.data", ftypes.BYTES)
miax_onyxfutures_mach_v1_0.fields.message = ProtoField.new("Message", "miax.onyxfutures.mach.v1.0.message", ftypes.STRING)
miax_onyxfutures_mach_v1_0.fields.message_type = ProtoField.new("Message Type", "miax.onyxfutures.mach.v1.0.messagetype", ftypes.UINT8)
miax_onyxfutures_mach_v1_0.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.mach.v1.0.packet", ftypes.STRING)
miax_onyxfutures_mach_v1_0.fields.packet_length = ProtoField.new("Packet Length", "miax.onyxfutures.mach.v1.0.packetlength", ftypes.UINT16)
miax_onyxfutures_mach_v1_0.fields.packet_type = ProtoField.new("Packet Type", "miax.onyxfutures.mach.v1.0.packettype", ftypes.UINT8)
miax_onyxfutures_mach_v1_0.fields.payload = ProtoField.new("Payload", "miax.onyxfutures.mach.v1.0.payload", ftypes.STRING)
miax_onyxfutures_mach_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.mach.v1.0.sequencenumber", ftypes.UINT64)
miax_onyxfutures_mach_v1_0.fields.session_number = ProtoField.new("Session Number", "miax.onyxfutures.mach.v1.0.sessionnumber", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax OnyxFutures HeaderOnly Mach 1.0 Element Dissection Options
show.application_message = true
show.message = true
show.packet = true
show.payload = false

-- Register Miax OnyxFutures HeaderOnly Mach 1.0 Show Options
miax_onyxfutures_mach_v1_0.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
miax_onyxfutures_mach_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
miax_onyxfutures_mach_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_onyxfutures_mach_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function miax_onyxfutures_mach_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= miax_onyxfutures_mach_v1_0.prefs.show_application_message then
    show.application_message = miax_onyxfutures_mach_v1_0.prefs.show_application_message
    changed = true
  end
  if show.message ~= miax_onyxfutures_mach_v1_0.prefs.show_message then
    show.message = miax_onyxfutures_mach_v1_0.prefs.show_message
    changed = true
  end
  if show.packet ~= miax_onyxfutures_mach_v1_0.prefs.show_packet then
    show.packet = miax_onyxfutures_mach_v1_0.prefs.show_packet
    changed = true
  end
  if show.payload ~= miax_onyxfutures_mach_v1_0.prefs.show_payload then
    show.payload = miax_onyxfutures_mach_v1_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Miax OnyxFutures HeaderOnly Mach 1.0
-----------------------------------------------------------------------

-- Display: Data
miax_onyxfutures_mach_v1_0_display.data = function(value)
  return "Data: "..value
end

-- Dissect runtime sized field: Data
miax_onyxfutures_mach_v1_0_dissect.data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_mach_v1_0_display.data(value, buffer, offset, packet, parent, size)

  parent:add(miax_onyxfutures_mach_v1_0.fields.data, range, value, display)

  return offset + size
end

-- Size: Message Type
miax_onyxfutures_mach_v1_0_size_of.message_type = 1

-- Display: Message Type
miax_onyxfutures_mach_v1_0_display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
miax_onyxfutures_mach_v1_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_mach_v1_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_mach_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Application Message
miax_onyxfutures_mach_v1_0_size_of.application_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_onyxfutures_mach_v1_0_display.application_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_onyxfutures_mach_v1_0_dissect.application_message_fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = miax_onyxfutures_mach_v1_0_dissect.message_type(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Data
  local size_of_data = packet_length - 13

  -- Data: 0 Byte
  index, data = miax_onyxfutures_mach_v1_0_dissect.data(buffer, index, packet, parent, size_of_data)

  return index
end

-- Dissect: Application Message
miax_onyxfutures_mach_v1_0_dissect.application_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_onyxfutures_mach_v1_0_size_of.application_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_onyxfutures_mach_v1_0_display.application_message(buffer, packet, parent)
    parent = parent:add(miax_onyxfutures_mach_v1_0.fields.application_message, range, display)
  end

  miax_onyxfutures_mach_v1_0_dissect.application_message_fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Calculate runtime size of: Payload
miax_onyxfutures_mach_v1_0_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_onyxfutures_mach_v1_0_size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_onyxfutures_mach_v1_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_onyxfutures_mach_v1_0_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_onyxfutures_mach_v1_0_dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_onyxfutures_mach_v1_0_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_onyxfutures_mach_v1_0_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_mach_v1_0_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_mach_v1_0_display.payload(buffer, packet, parent)
  local element = parent:add(miax_onyxfutures_mach_v1_0.fields.payload, range, display)

  return miax_onyxfutures_mach_v1_0_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Session Number
miax_onyxfutures_mach_v1_0_size_of.session_number = 1

-- Display: Session Number
miax_onyxfutures_mach_v1_0_display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_onyxfutures_mach_v1_0_dissect.session_number = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0_size_of.session_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_mach_v1_0_display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_mach_v1_0.fields.session_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Type
miax_onyxfutures_mach_v1_0_size_of.packet_type = 1

-- Display: Packet Type
miax_onyxfutures_mach_v1_0_display.packet_type = function(value)
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
miax_onyxfutures_mach_v1_0_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_mach_v1_0_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_mach_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
miax_onyxfutures_mach_v1_0_size_of.packet_length = 2

-- Display: Packet Length
miax_onyxfutures_mach_v1_0_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_onyxfutures_mach_v1_0_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_mach_v1_0_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_mach_v1_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
miax_onyxfutures_mach_v1_0_size_of.sequence_number = 8

-- Display: Sequence Number
miax_onyxfutures_mach_v1_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_mach_v1_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_mach_v1_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_mach_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
miax_onyxfutures_mach_v1_0_size_of.message = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_mach_v1_0_size_of.sequence_number

  index = index + miax_onyxfutures_mach_v1_0_size_of.packet_length

  index = index + miax_onyxfutures_mach_v1_0_size_of.packet_type

  index = index + miax_onyxfutures_mach_v1_0_size_of.session_number

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):uint()
  index = index + miax_onyxfutures_mach_v1_0_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_onyxfutures_mach_v1_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_onyxfutures_mach_v1_0_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_mach_v1_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_onyxfutures_mach_v1_0_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_onyxfutures_mach_v1_0_dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_onyxfutures_mach_v1_0_dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_onyxfutures_mach_v1_0_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_onyxfutures_mach_v1_0_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_onyxfutures_mach_v1_0_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_mach_v1_0_display.message(buffer, packet, parent)
    parent = parent:add(miax_onyxfutures_mach_v1_0.fields.message, range, display)
  end

  return miax_onyxfutures_mach_v1_0_dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
miax_onyxfutures_mach_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_onyxfutures_mach_v1_0_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_onyxfutures_mach_v1_0.init()
end

-- Dissector for Miax OnyxFutures HeaderOnly Mach 1.0
function miax_onyxfutures_mach_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_onyxfutures_mach_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(miax_onyxfutures_mach_v1_0, buffer(), miax_onyxfutures_mach_v1_0.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_mach_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_onyxfutures_mach_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_onyxfutures_mach_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax OnyxFutures HeaderOnly Mach 1.0
local function miax_onyxfutures_mach_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_onyxfutures_mach_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_onyxfutures_mach_v1_0
  miax_onyxfutures_mach_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures HeaderOnly Mach 1.0
miax_onyxfutures_mach_v1_0:register_heuristic("udp", miax_onyxfutures_mach_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.0
--   Date: Friday, June 26, 2020
--   Specification: TcpSessionMgmt_eSesM_v1.0.a.updated.pdf.pdf
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
