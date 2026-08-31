-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex T7 Eti Fbe 1. Protocol
local omi_eurex_t7_eti_fbe_v1 = Proto("Omi.Eurex.T7.Eti.Fbe.v1", "Eurex T7 Eti Fbe 1.")

-- Protocol table
local eurex_t7_eti_fbe_v1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex T7 Eti Fbe 1. Fields
omi_eurex_t7_eti_fbe_v1.fields.body_len = ProtoField.new("Body Len", "eurex.t7.eti.fbe.v1.bodylen", ftypes.UINT32)
omi_eurex_t7_eti_fbe_v1.fields.template_id = ProtoField.new("Template Id", "eurex.t7.eti.fbe.v1.templateid", ftypes.UINT16)

-- Eurex T7 Eti Fbe 1. Headers
omi_eurex_t7_eti_fbe_v1.fields.client_message = ProtoField.new("Client Message", "eurex.t7.eti.fbe.v1.clientmessage", ftypes.STRING)
omi_eurex_t7_eti_fbe_v1.fields.client_packet = ProtoField.new("Client Packet", "eurex.t7.eti.fbe.v1.clientpacket", ftypes.STRING)
omi_eurex_t7_eti_fbe_v1.fields.message_header = ProtoField.new("Message Header", "eurex.t7.eti.fbe.v1.messageheader", ftypes.STRING)
omi_eurex_t7_eti_fbe_v1.fields.server_message = ProtoField.new("Server Message", "eurex.t7.eti.fbe.v1.servermessage", ftypes.STRING)
omi_eurex_t7_eti_fbe_v1.fields.server_packet = ProtoField.new("Server Packet", "eurex.t7.eti.fbe.v1.serverpacket", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Eurex T7 Eti Fbe 1. Element Dissection Options
show.structs = true

-- Register Eurex T7 Eti Fbe 1. Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_eurex_t7_eti_fbe_v1.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_eurex_t7_eti_fbe_v1.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_eurex_t7_eti_fbe_v1.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_eurex_t7_eti_fbe_v1.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_eurex_t7_eti_fbe_v1.prefs_changed()

  -- Check if preferences have changed
  if show.structs ~= omi_eurex_t7_eti_fbe_v1.prefs.show_structs then
    show.structs = omi_eurex_t7_eti_fbe_v1.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Eurex T7 Eti Fbe 1. Fields
-----------------------------------------------------------------------

-- Body Len
eurex_t7_eti_fbe_v1.body_len = {}

-- Size: Body Len
eurex_t7_eti_fbe_v1.body_len.size = 4

-- Display: Body Len
eurex_t7_eti_fbe_v1.body_len.display = function(value)
  return "Body Len: "..value
end

-- Dissect: Body Len
eurex_t7_eti_fbe_v1.body_len.dissect = function(buffer, offset, packet, parent)
  local length = eurex_t7_eti_fbe_v1.body_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_t7_eti_fbe_v1.body_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_t7_eti_fbe_v1.fields.body_len, range, value, display)

  return offset + length, value
end

-- Template Id
eurex_t7_eti_fbe_v1.template_id = {}

-- Size: Template Id
eurex_t7_eti_fbe_v1.template_id.size = 2

-- Display: Template Id
eurex_t7_eti_fbe_v1.template_id.display = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
eurex_t7_eti_fbe_v1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_t7_eti_fbe_v1.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_t7_eti_fbe_v1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_t7_eti_fbe_v1.fields.template_id, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Eurex T7 Eti Fbe 1.
-----------------------------------------------------------------------

-- Message Header
eurex_t7_eti_fbe_v1.message_header = {}

-- Size: Message Header
eurex_t7_eti_fbe_v1.message_header.size =
  eurex_t7_eti_fbe_v1.body_len.size + 
  eurex_t7_eti_fbe_v1.template_id.size

-- Display: Message Header
eurex_t7_eti_fbe_v1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
eurex_t7_eti_fbe_v1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer
  index, body_len = eurex_t7_eti_fbe_v1.body_len.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = eurex_t7_eti_fbe_v1.template_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
eurex_t7_eti_fbe_v1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_t7_eti_fbe_v1.fields.message_header, buffer(offset, 0))
    local index = eurex_t7_eti_fbe_v1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_t7_eti_fbe_v1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_t7_eti_fbe_v1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Message
eurex_t7_eti_fbe_v1.server_message = {}

-- Display: Server Message
eurex_t7_eti_fbe_v1.server_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Message
eurex_t7_eti_fbe_v1.server_message.fields = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = eurex_t7_eti_fbe_v1.message_header.dissect(buffer, index, packet, parent)

  -- Server Payload
  index, server_payload = eurex_t7_eti_fbe_v1.server_payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Message
eurex_t7_eti_fbe_v1.server_message.dissect = function(buffer, offset, packet, parent, size_of_server_message)
  local index = offset + size_of_server_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_eurex_t7_eti_fbe_v1.fields.server_message, buffer(offset, 0))
    local current = eurex_t7_eti_fbe_v1.server_message.fields(buffer, offset, packet, parent, size_of_server_message)
    parent:set_len(size_of_server_message)
    local display = eurex_t7_eti_fbe_v1.server_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    eurex_t7_eti_fbe_v1.server_message.fields(buffer, offset, packet, parent, size_of_server_message)

    return index
  end
end

-- Remaining Bytes For: Server Message
local server_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < eurex_t7_eti_fbe_v1.message_header.size then
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

-- Server Packet
eurex_t7_eti_fbe_v1.server_packet = {}

-- Verify required size of Tcp packet
eurex_t7_eti_fbe_v1.server_packet.requiredsize = function(buffer)
  return buffer:len() >= eurex_t7_eti_fbe_v1.message_header.size + eurex_t7_eti_fbe_v1.server_payload.size
end

-- Dissect Server Packet
eurex_t7_eti_fbe_v1.server_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Server Message
  local end_of_payload = buffer:len()

  -- Server Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_message = server_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = eurex_t7_eti_fbe_v1.server_message.dissect(buffer, index, packet, parent, size_of_server_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Client Message
eurex_t7_eti_fbe_v1.client_message = {}

-- Display: Client Message
eurex_t7_eti_fbe_v1.client_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Message
eurex_t7_eti_fbe_v1.client_message.fields = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = eurex_t7_eti_fbe_v1.message_header.dissect(buffer, index, packet, parent)

  -- Client Payload
  index, client_payload = eurex_t7_eti_fbe_v1.client_payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Message
eurex_t7_eti_fbe_v1.client_message.dissect = function(buffer, offset, packet, parent, size_of_client_message)
  local index = offset + size_of_client_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_eurex_t7_eti_fbe_v1.fields.client_message, buffer(offset, 0))
    local current = eurex_t7_eti_fbe_v1.client_message.fields(buffer, offset, packet, parent, size_of_client_message)
    parent:set_len(size_of_client_message)
    local display = eurex_t7_eti_fbe_v1.client_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    eurex_t7_eti_fbe_v1.client_message.fields(buffer, offset, packet, parent, size_of_client_message)

    return index
  end
end

-- Remaining Bytes For: Client Message
local client_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < eurex_t7_eti_fbe_v1.message_header.size then
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

-- Client Packet
eurex_t7_eti_fbe_v1.client_packet = {}

-- Verify required size of Tcp packet
eurex_t7_eti_fbe_v1.client_packet.requiredsize = function(buffer)
  return buffer:len() >= eurex_t7_eti_fbe_v1.message_header.size + eurex_t7_eti_fbe_v1.client_payload.size
end

-- Dissect Client Packet
eurex_t7_eti_fbe_v1.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Message
  local end_of_payload = buffer:len()

  -- Client Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_message = client_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = eurex_t7_eti_fbe_v1.client_message.dissect(buffer, index, packet, parent, size_of_client_message)
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
function omi_eurex_t7_eti_fbe_v1.init()
end

-- Connection roles for Eurex T7 Eti Fbe 1.: Client is the initiator, Server is the acceptor
-- Initiator endpoint of each conversation, recorded from its first frame
local initiators = {}

-- Conversations whose first frame proved to be the acceptor's: the heuristic swaps the sides
local swapped = {}

-- Endpoint key of an address and port
local function endpoint(address, port)
  return tostring(address)..":"..tostring(port)
end


-- Conversation key, the same in both directions
local function conversation(packet)
  local a = endpoint(packet.src, packet.src_port)
  local b = endpoint(packet.dst, packet.dst_port)
  if a < b then
    return a.." "..b
  end
  return b.." "..a
end


-- Connection role of the frame's sender
eurex_t7_eti_fbe_v1.role = function(packet)
  if omi_eurex_t7_eti_fbe_v1.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_eurex_t7_eti_fbe_v1.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_eurex_t7_eti_fbe_v1.prefs.acceptor_port
  if port ~= 0 and packet.dst_port == port then
    return "initiator"
  end
  if port ~= 0 and packet.src_port == port then
    return "acceptor"
  end
  local key = conversation(packet)
  local sender = endpoint(packet.src, packet.src_port)
  if initiators[key] == nil then
    initiators[key] = sender
  end
  local first = initiators[key] == sender
  if omi_eurex_t7_eti_fbe_v1.prefs.swap_sides then
    first = not first
  end
  if swapped[key] then
    first = not first
  end
  if first then
    return "initiator"
  end
  return "acceptor"
end


-- Swap the resolved sides of the frame's conversation
eurex_t7_eti_fbe_v1.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Eurex T7 Eti Fbe 1.
function omi_eurex_t7_eti_fbe_v1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_eurex_t7_eti_fbe_v1.name

  -- Dissect protocol
  local protocol = parent:add(omi_eurex_t7_eti_fbe_v1, buffer(), omi_eurex_t7_eti_fbe_v1.description, "("..buffer:len().." Bytes)")
  local role = eurex_t7_eti_fbe_v1.role(packet)
  if role == "initiator" then
    return eurex_t7_eti_fbe_v1.client_packet.dissect(buffer, packet, protocol)
  end
  return eurex_t7_eti_fbe_v1.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Eurex T7 Eti Fbe 1. (Tcp)
local function omi_eurex_t7_eti_fbe_v1_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not eurex_t7_eti_fbe_v1.client_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_eurex_t7_eti_fbe_v1
  omi_eurex_t7_eti_fbe_v1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Eurex T7 Eti Fbe 1. (Tcp)
local function omi_eurex_t7_eti_fbe_v1_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not eurex_t7_eti_fbe_v1.server_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_eurex_t7_eti_fbe_v1
  omi_eurex_t7_eti_fbe_v1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Eurex T7 Eti Fbe 1. (Tcp): apply the heuristic of the sender's connection role
local function omi_eurex_t7_eti_fbe_v1_tcp_heuristic(buffer, packet, parent)
  local role = eurex_t7_eti_fbe_v1.role(packet)
  local first, second = omi_eurex_t7_eti_fbe_v1_tcp_initiator_heuristic, omi_eurex_t7_eti_fbe_v1_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  eurex_t7_eti_fbe_v1.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  eurex_t7_eti_fbe_v1.swap(packet)

  return false
end

-- Register Heuristics for Eurex T7 Eti Fbe 1.
omi_eurex_t7_eti_fbe_v1:register_heuristic("tcp", omi_eurex_t7_eti_fbe_v1_tcp_heuristic)
-- Register Eurex T7 Eti Fbe 1. for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_eurex_t7_eti_fbe_v1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 1
--   Date: Thursday, January 1, 2015
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
