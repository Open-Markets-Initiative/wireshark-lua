-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx QuantumFeed UdpHeader Xmt 1.1 Protocol
local tmx_quantumfeed_udpheader_xmt_v1_1 = Proto("Tmx.QuantumFeed.UdpHeader.Xmt.v1.1.Lua", "Tmx QuantumFeed UdpHeader Xmt 1.1")

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

-- Tmx QuantumFeed UdpHeader Xmt 1.1 Fields
tmx_quantumfeed_udpheader_xmt_v1_1.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.quantumfeed.udpheader.xmt.v1.1.ackrequiredpossdup", ftypes.STRING)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.body = ProtoField.new("Body", "tmx.quantumfeed.udpheader.xmt.v1.1.body", ftypes.STRING)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.body_header = ProtoField.new("Body Header", "tmx.quantumfeed.udpheader.xmt.v1.1.bodyheader", ftypes.STRING)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.body_message = ProtoField.new("Body Message", "tmx.quantumfeed.udpheader.xmt.v1.1.bodymessage", ftypes.BYTES)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.frame_header = ProtoField.new("Frame Header", "tmx.quantumfeed.udpheader.xmt.v1.1.frameheader", ftypes.STRING)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.message_length = ProtoField.new("Message Length", "tmx.quantumfeed.udpheader.xmt.v1.1.messagelength", ftypes.UINT16)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.msg_length = ProtoField.new("Msg Length", "tmx.quantumfeed.udpheader.xmt.v1.1.msglength", ftypes.UINT16)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.msg_type = ProtoField.new("Msg Type", "tmx.quantumfeed.udpheader.xmt.v1.1.msgtype", ftypes.UINT8)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.num_body = ProtoField.new("Num Body", "tmx.quantumfeed.udpheader.xmt.v1.1.numbody", ftypes.UINT8)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.packet = ProtoField.new("Packet", "tmx.quantumfeed.udpheader.xmt.v1.1.packet", ftypes.STRING)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.quantumfeed.udpheader.xmt.v1.1.protocolname", ftypes.STRING)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.quantumfeed.udpheader.xmt.v1.1.protocolversion", ftypes.STRING)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.session_id = ProtoField.new("Session Id", "tmx.quantumfeed.udpheader.xmt.v1.1.sessionid", ftypes.UINT32)
tmx_quantumfeed_udpheader_xmt_v1_1.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.quantumfeed.udpheader.xmt.v1.1.startofframe", ftypes.INT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Tmx QuantumFeed UdpHeader Xmt 1.1 Element Dissection Options
show.body = true
show.body_header = true
show.frame_header = true
show.packet = true

-- Register Tmx QuantumFeed UdpHeader Xmt 1.1 Show Options
tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_body = Pref.bool("Show Body", show.body, "Parse and add Body to protocol tree")
tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_body_header = Pref.bool("Show Body Header", show.body_header, "Parse and add Body Header to protocol tree")
tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_frame_header = Pref.bool("Show Frame Header", show.frame_header, "Parse and add Frame Header to protocol tree")
tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function tmx_quantumfeed_udpheader_xmt_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.body ~= tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_body then
    show.body = tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_body
    changed = true
  end
  if show.body_header ~= tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_body_header then
    show.body_header = tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_body_header
    changed = true
  end
  if show.frame_header ~= tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_frame_header then
    show.frame_header = tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_frame_header
    changed = true
  end
  if show.packet ~= tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_packet then
    show.packet = tmx_quantumfeed_udpheader_xmt_v1_1.prefs.show_packet
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Tmx QuantumFeed UdpHeader Xmt 1.1
-----------------------------------------------------------------------

-- Display: Body Message
display.body_message = function(value)
  return "Body Message: "..value
end

-- Dissect runtime sized field: Body Message
dissect.body_message = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.body_message(value, buffer, offset, packet, parent, size)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.body_message, range, value, display)

  return offset + size
end

-- Size: Msg Type
size_of.msg_type = 1

-- Display: Msg Type
display.msg_type = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
dissect.msg_type = function(buffer, offset, packet, parent)
  local length = size_of.msg_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.msg_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Size: Msg Length
size_of.msg_length = 2

-- Display: Msg Length
display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
dissect.msg_length = function(buffer, offset, packet, parent)
  local length = size_of.msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.msg_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Body Header
size_of.body_header = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_length

  index = index + size_of.msg_type

  return index
end

-- Display: Body Header
display.body_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Body Header
dissect.body_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = dissect.msg_length(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Unsigned Fixed Width Integer
  index, msg_type = dissect.msg_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
dissect.body_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.body_header then
    local length = size_of.body_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.body_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.body_header, range, display)
  end

  return dissect.body_header_fields(buffer, offset, packet, parent)
end

-- Display: Body
display.body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Body
dissect.body_fields = function(buffer, offset, packet, parent, size_of_body)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = dissect.body_header(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(index - 3, 2):le_uint()

  -- Runtime Size Of: Body Message
  local size_of_body_message = msg_length - 12

  -- Body Message: 0 Byte
  index = dissect.body_message(buffer, index, packet, parent, size_of_body_message)

  return index
end

-- Dissect: Body
dissect.body = function(buffer, offset, packet, parent, size_of_body)
  -- Optionally add struct element to protocol tree
  if show.body then
    local range = buffer(offset, size_of_body)
    local display = display.body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.body, range, display)
  end

  dissect.body_fields(buffer, offset, packet, parent, size_of_body)

  return offset + size_of_body
end

-- Size: Num Body
size_of.num_body = 1

-- Display: Num Body
display.num_body = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
dissect.num_body = function(buffer, offset, packet, parent)
  local length = size_of.num_body
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.num_body(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.num_body, range, value, display)

  return offset + length, value
end

-- Size: Ack Required Poss Dup
size_of.ack_required_poss_dup = 1

-- Display: Ack Required Poss Dup
display.ack_required_poss_dup = function(value)
  if value == "A" then
    return "Ack Required Poss Dup: Receiver Needs To Ack (A)"
  end
  if value == "D" then
    return "Ack Required Poss Dup: Possible Duplicates (D)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
dissect.ack_required_poss_dup = function(buffer, offset, packet, parent)
  local length = size_of.ack_required_poss_dup
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ack_required_poss_dup(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Size: Session Id
size_of.session_id = 4

-- Display: Session Id
display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
dissect.session_id = function(buffer, offset, packet, parent)
  local length = size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Protocol Version
size_of.protocol_version = 1

-- Display: Protocol Version
display.protocol_version = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
dissect.protocol_version = function(buffer, offset, packet, parent)
  local length = size_of.protocol_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.protocol_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Size: Protocol Name
size_of.protocol_name = 1

-- Display: Protocol Name
display.protocol_name = function(value)
  return "Protocol Name: "..value
end

-- Dissect: Protocol Name
dissect.protocol_name = function(buffer, offset, packet, parent)
  local length = size_of.protocol_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.protocol_name(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Size: Start Of Frame
size_of.start_of_frame = 1

-- Display: Start Of Frame
display.start_of_frame = function(value)
  return "Start Of Frame: "..value
end

-- Dissect: Start Of Frame
dissect.start_of_frame = function(buffer, offset, packet, parent)
  local length = size_of.start_of_frame
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.start_of_frame(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Calculate size of: Frame Header
size_of.frame_header = function(buffer, offset)
  local index = 0

  index = index + size_of.start_of_frame

  index = index + size_of.protocol_name

  index = index + size_of.protocol_version

  index = index + size_of.message_length

  index = index + size_of.session_id

  index = index + size_of.ack_required_poss_dup

  index = index + size_of.num_body

  return index
end

-- Display: Frame Header
display.frame_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Frame Header
dissect.frame_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: 1 Byte Fixed Width Integer
  index, start_of_frame = dissect.start_of_frame(buffer, index, packet, parent)

  -- Protocol Name: 1 Byte Ascii String
  index, protocol_name = dissect.protocol_name(buffer, index, packet, parent)

  -- Protocol Version: 1 Byte Ascii String
  index, protocol_version = dissect.protocol_version(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = dissect.session_id(buffer, index, packet, parent)

  -- Ack Required Poss Dup: 1 Byte Ascii String Enum with 2 values
  index, ack_required_poss_dup = dissect.ack_required_poss_dup(buffer, index, packet, parent)

  -- Num Body: 1 Byte Unsigned Fixed Width Integer
  index, num_body = dissect.num_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
dissect.frame_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.frame_header then
    local length = size_of.frame_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.frame_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_udpheader_xmt_v1_1.fields.frame_header, range, display)
  end

  return dissect.frame_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = dissect.frame_header(buffer, index, packet, parent)

    -- Dependency element: Msg Length
    local msg_length = buffer(index, 2):le_uint()

    -- Body: Struct of 2 fields
    index = dissect.body(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function tmx_quantumfeed_udpheader_xmt_v1_1.init()
end

-- Dissector for Tmx QuantumFeed UdpHeader Xmt 1.1
function tmx_quantumfeed_udpheader_xmt_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = tmx_quantumfeed_udpheader_xmt_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(tmx_quantumfeed_udpheader_xmt_v1_1, buffer(), tmx_quantumfeed_udpheader_xmt_v1_1.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, tmx_quantumfeed_udpheader_xmt_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.tmx_quantumfeed_udpheader_xmt_v1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Tmx QuantumFeed UdpHeader Xmt 1.1
local function tmx_quantumfeed_udpheader_xmt_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.tmx_quantumfeed_udpheader_xmt_v1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = tmx_quantumfeed_udpheader_xmt_v1_1
  tmx_quantumfeed_udpheader_xmt_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx QuantumFeed UdpHeader Xmt 1.1
tmx_quantumfeed_udpheader_xmt_v1_1:register_heuristic("udp", tmx_quantumfeed_udpheader_xmt_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 1.1
--   Date: Tuesday, October 20, 2020
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
