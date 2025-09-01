-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures HeaderOnly Mach 1.0 Protocol
local omi_miax_onyxfutures_mach_v1_0 = Proto("Miax.OnyxFutures.Mach.v1.0.Lua", "Miax OnyxFutures HeaderOnly Mach 1.0")

-- Protocol table
local miax_onyxfutures_mach_v1_0 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures HeaderOnly Mach 1.0 Fields
omi_miax_onyxfutures_mach_v1_0.fields.application_message = ProtoField.new("Application Message", "miax.onyxfutures.mach.v1.0.applicationmessage", ftypes.STRING)
omi_miax_onyxfutures_mach_v1_0.fields.data = ProtoField.new("Data", "miax.onyxfutures.mach.v1.0.data", ftypes.BYTES)
omi_miax_onyxfutures_mach_v1_0.fields.message = ProtoField.new("Message", "miax.onyxfutures.mach.v1.0.message", ftypes.STRING)
omi_miax_onyxfutures_mach_v1_0.fields.message_type = ProtoField.new("Message Type", "miax.onyxfutures.mach.v1.0.messagetype", ftypes.UINT8)
omi_miax_onyxfutures_mach_v1_0.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.mach.v1.0.packet", ftypes.STRING)
omi_miax_onyxfutures_mach_v1_0.fields.packet_length = ProtoField.new("Packet Length", "miax.onyxfutures.mach.v1.0.packetlength", ftypes.UINT16)
omi_miax_onyxfutures_mach_v1_0.fields.packet_type = ProtoField.new("Packet Type", "miax.onyxfutures.mach.v1.0.packettype", ftypes.UINT8)
omi_miax_onyxfutures_mach_v1_0.fields.payload = ProtoField.new("Payload", "miax.onyxfutures.mach.v1.0.payload", ftypes.STRING)
omi_miax_onyxfutures_mach_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.mach.v1.0.sequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_mach_v1_0.fields.session_number = ProtoField.new("Session Number", "miax.onyxfutures.mach.v1.0.sessionnumber", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax OnyxFutures HeaderOnly Mach 1.0 Element Dissection Options
show.application_message = true
show.message = true
show.packet = true
show.payload = false

-- Register Miax OnyxFutures HeaderOnly Mach 1.0 Show Options
omi_miax_onyxfutures_mach_v1_0.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_onyxfutures_mach_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_onyxfutures_mach_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_onyxfutures_mach_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_miax_onyxfutures_mach_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= omi_miax_onyxfutures_mach_v1_0.prefs.show_application_message then
    show.application_message = omi_miax_onyxfutures_mach_v1_0.prefs.show_application_message
    changed = true
  end
  if show.message ~= omi_miax_onyxfutures_mach_v1_0.prefs.show_message then
    show.message = omi_miax_onyxfutures_mach_v1_0.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_miax_onyxfutures_mach_v1_0.prefs.show_packet then
    show.packet = omi_miax_onyxfutures_mach_v1_0.prefs.show_packet
    changed = true
  end
  if show.payload ~= omi_miax_onyxfutures_mach_v1_0.prefs.show_payload then
    show.payload = omi_miax_onyxfutures_mach_v1_0.prefs.show_payload
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

-- Data
miax_onyxfutures_mach_v1_0.data = {}

-- Display: Data
miax_onyxfutures_mach_v1_0.data.display = function(value)
  return "Data: "..value
end

-- Dissect runtime sized field: Data
miax_onyxfutures_mach_v1_0.data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = miax_onyxfutures_mach_v1_0.data.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_miax_onyxfutures_mach_v1_0.fields.data, range, value, display)

  return offset + size
end

-- Message Type
miax_onyxfutures_mach_v1_0.message_type = {}

-- Size: Message Type
miax_onyxfutures_mach_v1_0.message_type.size = 1

-- Display: Message Type
miax_onyxfutures_mach_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
miax_onyxfutures_mach_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_mach_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_mach_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Application Message
miax_onyxfutures_mach_v1_0.application_message = {}

-- Read runtime size of: Application Message
miax_onyxfutures_mach_v1_0.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_onyxfutures_mach_v1_0.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_onyxfutures_mach_v1_0.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = miax_onyxfutures_mach_v1_0.message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Data
  local size_of_data = packet_length - 13

  -- Data: 0 Byte
  index, data = miax_onyxfutures_mach_v1_0.data.dissect(buffer, index, packet, parent, size_of_data)

  return index
end

-- Dissect: Application Message
miax_onyxfutures_mach_v1_0.application_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_onyxfutures_mach_v1_0.application_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_onyxfutures_mach_v1_0.application_message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_mach_v1_0.fields.application_message, range, display)
  end

  miax_onyxfutures_mach_v1_0.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Payload
miax_onyxfutures_mach_v1_0.payload = {}

-- Calculate runtime size of: Payload
miax_onyxfutures_mach_v1_0.payload.size = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_onyxfutures_mach_v1_0.application_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_onyxfutures_mach_v1_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_onyxfutures_mach_v1_0.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_onyxfutures_mach_v1_0.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_onyxfutures_mach_v1_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_onyxfutures_mach_v1_0.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_mach_v1_0.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_mach_v1_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_mach_v1_0.fields.payload, range, display)

  return miax_onyxfutures_mach_v1_0.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Session Number
miax_onyxfutures_mach_v1_0.session_number = {}

-- Size: Session Number
miax_onyxfutures_mach_v1_0.session_number.size = 1

-- Display: Session Number
miax_onyxfutures_mach_v1_0.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_onyxfutures_mach_v1_0.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0.session_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_mach_v1_0.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_mach_v1_0.fields.session_number, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_onyxfutures_mach_v1_0.packet_type = {}

-- Size: Packet Type
miax_onyxfutures_mach_v1_0.packet_type.size = 1

-- Display: Packet Type
miax_onyxfutures_mach_v1_0.packet_type.display = function(value)
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
miax_onyxfutures_mach_v1_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_mach_v1_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_mach_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_onyxfutures_mach_v1_0.packet_length = {}

-- Size: Packet Length
miax_onyxfutures_mach_v1_0.packet_length.size = 2

-- Display: Packet Length
miax_onyxfutures_mach_v1_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_onyxfutures_mach_v1_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_mach_v1_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_mach_v1_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_onyxfutures_mach_v1_0.sequence_number = {}

-- Size: Sequence Number
miax_onyxfutures_mach_v1_0.sequence_number.size = 8

-- Display: Sequence Number
miax_onyxfutures_mach_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_mach_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_mach_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_mach_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_mach_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message
miax_onyxfutures_mach_v1_0.message = {}

-- Calculate size of: Message
miax_onyxfutures_mach_v1_0.message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_mach_v1_0.sequence_number.size

  index = index + miax_onyxfutures_mach_v1_0.packet_length.size

  index = index + miax_onyxfutures_mach_v1_0.packet_type.size

  index = index + miax_onyxfutures_mach_v1_0.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):uint()
  index = index + miax_onyxfutures_mach_v1_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_onyxfutures_mach_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_onyxfutures_mach_v1_0.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_mach_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_onyxfutures_mach_v1_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_onyxfutures_mach_v1_0.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_onyxfutures_mach_v1_0.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_onyxfutures_mach_v1_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_onyxfutures_mach_v1_0.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_onyxfutures_mach_v1_0.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_mach_v1_0.message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_mach_v1_0.fields.message, range, display)
  end

  return miax_onyxfutures_mach_v1_0.message.fields(buffer, offset, packet, parent)
end

-- Packet
miax_onyxfutures_mach_v1_0.packet = {}

-- Dissect Packet
miax_onyxfutures_mach_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_onyxfutures_mach_v1_0.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_onyxfutures_mach_v1_0.init()
end

-- Dissector for Miax OnyxFutures HeaderOnly Mach 1.0
function omi_miax_onyxfutures_mach_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_onyxfutures_mach_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_onyxfutures_mach_v1_0, buffer(), omi_miax_onyxfutures_mach_v1_0.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_mach_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_miax_onyxfutures_mach_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
miax_onyxfutures_mach_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Miax OnyxFutures HeaderOnly Mach 1.0
local function omi_miax_onyxfutures_mach_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_onyxfutures_mach_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_onyxfutures_mach_v1_0
  omi_miax_onyxfutures_mach_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures HeaderOnly Mach 1.0
omi_miax_onyxfutures_mach_v1_0:register_heuristic("udp", omi_miax_onyxfutures_mach_v1_0_heuristic)

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
