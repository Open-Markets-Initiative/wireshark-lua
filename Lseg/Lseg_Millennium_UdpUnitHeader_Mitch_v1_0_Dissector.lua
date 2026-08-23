-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Protocol
local omi_lseg_millennium_udpunitheader_mitch_v1_0 = Proto("Omi.Lseg.Millennium.UdpUnitHeader.Mitch.v1.0", "Lseg Millennium UdpUnitHeader Mitch 1.0")

-- Protocol table
local lseg_millennium_udpunitheader_mitch_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Headers
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message = ProtoField.new("Message", "lseg.millennium.udpunitheader.mitch.v1.0.message", ftypes.STRING)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_header = ProtoField.new("Message Header", "lseg.millennium.udpunitheader.mitch.v1.0.messageheader", ftypes.STRING)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.packet = ProtoField.new("Packet", "lseg.millennium.udpunitheader.mitch.v1.0.packet", ftypes.STRING)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.unit_header = ProtoField.new("Unit Header", "lseg.millennium.udpunitheader.mitch.v1.0.unitheader", ftypes.STRING)

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Fields
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.length = ProtoField.new("Length", "lseg.millennium.udpunitheader.mitch.v1.0.length", ftypes.UINT16)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.millennium.udpunitheader.mitch.v1.0.marketdatagroup", ftypes.STRING)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_count = ProtoField.new("Message Count", "lseg.millennium.udpunitheader.mitch.v1.0.messagecount", ftypes.UINT8)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_length = ProtoField.new("Message Length", "lseg.millennium.udpunitheader.mitch.v1.0.messagelength", ftypes.UINT8)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_type = ProtoField.new("Message Type", "lseg.millennium.udpunitheader.mitch.v1.0.messagetype", ftypes.UINT8)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.payload = ProtoField.new("Payload", "lseg.millennium.udpunitheader.mitch.v1.0.payload", ftypes.BYTES)
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.millennium.udpunitheader.mitch.v1.0.sequencenumber", ftypes.UINT32)

-- Lseg Millennium UdpUnitHeader Mitch 1.0 generated fields
omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_index = ProtoField.new("Message Index", "lseg.millennium.udpunitheader.mitch.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Millennium UdpUnitHeader Mitch 1.0 Element Dissection Options
show.structs = true
show.headers = true
show.indexes = true

-- Register Lseg Millennium UdpUnitHeader Mitch 1.0 Show Options
omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")
omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_indexes = Pref.bool("Show Indexes", show.indexes, "Show generated repeating group index counts in the protocol tree")


-- Handle changed preferences
function omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.headers ~= omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_headers then
    show.headers = omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_headers
  end
  if show.structs ~= omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_structs then
    show.structs = omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_structs
  end
  if show.indexes ~= omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_indexes then
    show.indexes = omi_lseg_millennium_udpunitheader_mitch_v1_0.prefs.show_indexes
  end
end


-----------------------------------------------------------------------
-- Lseg Millennium UdpUnitHeader Mitch 1.0 Fields
-----------------------------------------------------------------------

-- Length
lseg_millennium_udpunitheader_mitch_v1_0.length = {}

-- Size: Length
lseg_millennium_udpunitheader_mitch_v1_0.length.size = 2

-- Display: Length
lseg_millennium_udpunitheader_mitch_v1_0.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_millennium_udpunitheader_mitch_v1_0.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.length, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0.market_data_group = {}

-- Size: Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.size = 1

-- Display: Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_millennium_udpunitheader_mitch_v1_0.message_count = {}

-- Size: Message Count
lseg_millennium_udpunitheader_mitch_v1_0.message_count.size = 1

-- Display: Message Count
lseg_millennium_udpunitheader_mitch_v1_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_millennium_udpunitheader_mitch_v1_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_millennium_udpunitheader_mitch_v1_0.message_length = {}

-- Size: Message Length
lseg_millennium_udpunitheader_mitch_v1_0.message_length.size = 1

-- Display: Message Length
lseg_millennium_udpunitheader_mitch_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_millennium_udpunitheader_mitch_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_millennium_udpunitheader_mitch_v1_0.message_type = {}

-- Size: Message Type
lseg_millennium_udpunitheader_mitch_v1_0.message_type.size = 1

-- Display: Message Type
lseg_millennium_udpunitheader_mitch_v1_0.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
lseg_millennium_udpunitheader_mitch_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Payload
lseg_millennium_udpunitheader_mitch_v1_0.payload = {}

-- Display: Payload
lseg_millennium_udpunitheader_mitch_v1_0.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
lseg_millennium_udpunitheader_mitch_v1_0.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = lseg_millennium_udpunitheader_mitch_v1_0.payload.display(value, packet, parent, size)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.payload, range, value, display)

  return offset + size, value
end

-- Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0.sequence_number = {}

-- Size: Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.size = 4

-- Display: Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Millennium UdpUnitHeader Mitch 1.0
-----------------------------------------------------------------------

-- Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header = {}

-- Size: Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header.size =
  lseg_millennium_udpunitheader_mitch_v1_0.message_length.size + 
  lseg_millennium_udpunitheader_mitch_v1_0.message_type.size

-- Display: Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_millennium_udpunitheader_mitch_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer
  index, message_type = lseg_millennium_udpunitheader_mitch_v1_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_millennium_udpunitheader_mitch_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_header, buffer(offset, 0))
    local index = lseg_millennium_udpunitheader_mitch_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_udpunitheader_mitch_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_udpunitheader_mitch_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_millennium_udpunitheader_mitch_v1_0.message = {}

-- Display: Message
lseg_millennium_udpunitheader_mitch_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_millennium_udpunitheader_mitch_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.indexes then
    local iteration = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_millennium_udpunitheader_mitch_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(index - 2, 1):le_uint()

  -- Runtime Size Of: Payload
  local size_of_payload = message_length - 2

  -- Payload: 0 Byte
  index, payload = lseg_millennium_udpunitheader_mitch_v1_0.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
lseg_millennium_udpunitheader_mitch_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.message, buffer(offset, 0))
    local current = lseg_millennium_udpunitheader_mitch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = lseg_millennium_udpunitheader_mitch_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    lseg_millennium_udpunitheader_mitch_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header = {}

-- Size: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header.size =
  lseg_millennium_udpunitheader_mitch_v1_0.length.size + 
  lseg_millennium_udpunitheader_mitch_v1_0.message_count.size + 
  lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.size + 
  lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.size

-- Display: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_millennium_udpunitheader_mitch_v1_0.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_millennium_udpunitheader_mitch_v1_0.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_millennium_udpunitheader_mitch_v1_0.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_millennium_udpunitheader_mitch_v1_0.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_millennium_udpunitheader_mitch_v1_0.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0.fields.unit_header, buffer(offset, 0))
    local index = lseg_millennium_udpunitheader_mitch_v1_0.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_udpunitheader_mitch_v1_0.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_udpunitheader_mitch_v1_0.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_millennium_udpunitheader_mitch_v1_0.packet = {}

-- Verify required size of Udp packet
lseg_millennium_udpunitheader_mitch_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= lseg_millennium_udpunitheader_mitch_v1_0.unit_header.size
end

-- Dissect Packet
lseg_millennium_udpunitheader_mitch_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_millennium_udpunitheader_mitch_v1_0.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Length
    local message_length = buffer(index, 1):le_uint()

    -- Runtime Size Of: Message
    index, message = lseg_millennium_udpunitheader_mitch_v1_0.message.dissect(buffer, index, packet, parent, message_length, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_millennium_udpunitheader_mitch_v1_0.init()
end

-- Dissector for Lseg Millennium UdpUnitHeader Mitch 1.0
function omi_lseg_millennium_udpunitheader_mitch_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_millennium_udpunitheader_mitch_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_millennium_udpunitheader_mitch_v1_0, buffer(), omi_lseg_millennium_udpunitheader_mitch_v1_0.description, "("..buffer:len().." Bytes)")
  return lseg_millennium_udpunitheader_mitch_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Lseg Millennium UdpUnitHeader Mitch 1.0 (Udp)
local function omi_lseg_millennium_udpunitheader_mitch_v1_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_millennium_udpunitheader_mitch_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_millennium_udpunitheader_mitch_v1_0
  omi_lseg_millennium_udpunitheader_mitch_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Millennium UdpUnitHeader Mitch 1.0
omi_lseg_millennium_udpunitheader_mitch_v1_0:register_heuristic("udp", omi_lseg_millennium_udpunitheader_mitch_v1_0_udp_heuristic)

-- Register Lseg Millennium UdpUnitHeader Mitch 1.0 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_lseg_millennium_udpunitheader_mitch_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: London Stock Exchange
--   Version: 1.0
--   Date: Monday, January 1, 2018
--   Specification: mit303issue119.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
