-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Options CommonClient Pillar 2.6 Protocol
local omi_nyse_options_commonclient_pillar_v2_6 = Proto("Nyse.Options.CommonClient.Pillar.v2.6.Lua", "Nyse Options CommonClient Pillar 2.6")

-- Protocol table
local nyse_options_commonclient_pillar_v2_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Options CommonClient Pillar 2.6 Fields
omi_nyse_options_commonclient_pillar_v2_6.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.options.commonclient.pillar.v2.6.deliveryflag", ftypes.UINT8)
omi_nyse_options_commonclient_pillar_v2_6.fields.message = ProtoField.new("Message", "nyse.options.commonclient.pillar.v2.6.message", ftypes.STRING)
omi_nyse_options_commonclient_pillar_v2_6.fields.message_header = ProtoField.new("Message Header", "nyse.options.commonclient.pillar.v2.6.messageheader", ftypes.STRING)
omi_nyse_options_commonclient_pillar_v2_6.fields.message_size = ProtoField.new("Message Size", "nyse.options.commonclient.pillar.v2.6.messagesize", ftypes.UINT16)
omi_nyse_options_commonclient_pillar_v2_6.fields.message_type = ProtoField.new("Message Type", "nyse.options.commonclient.pillar.v2.6.messagetype", ftypes.UINT16)
omi_nyse_options_commonclient_pillar_v2_6.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.options.commonclient.pillar.v2.6.nanoseconds", ftypes.UINT32)
omi_nyse_options_commonclient_pillar_v2_6.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.options.commonclient.pillar.v2.6.numbermsgs", ftypes.UINT8)
omi_nyse_options_commonclient_pillar_v2_6.fields.packet = ProtoField.new("Packet", "nyse.options.commonclient.pillar.v2.6.packet", ftypes.STRING)
omi_nyse_options_commonclient_pillar_v2_6.fields.packet_header = ProtoField.new("Packet Header", "nyse.options.commonclient.pillar.v2.6.packetheader", ftypes.STRING)
omi_nyse_options_commonclient_pillar_v2_6.fields.payload = ProtoField.new("Payload", "nyse.options.commonclient.pillar.v2.6.payload", ftypes.BYTES)
omi_nyse_options_commonclient_pillar_v2_6.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.options.commonclient.pillar.v2.6.pktsize", ftypes.UINT16)
omi_nyse_options_commonclient_pillar_v2_6.fields.seconds = ProtoField.new("Seconds", "nyse.options.commonclient.pillar.v2.6.seconds", ftypes.UINT32)
omi_nyse_options_commonclient_pillar_v2_6.fields.send_time = ProtoField.new("Send Time", "nyse.options.commonclient.pillar.v2.6.sendtime", ftypes.STRING)
omi_nyse_options_commonclient_pillar_v2_6.fields.seq_num = ProtoField.new("Seq Num", "nyse.options.commonclient.pillar.v2.6.seqnum", ftypes.UINT32)

-- Nyse Options CommonClient Pillar 2.6 generated fields
omi_nyse_options_commonclient_pillar_v2_6.fields.message_index = ProtoField.new("Message Index", "nyse.options.commonclient.pillar.v2.6.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Options CommonClient Pillar 2.6 Element Dissection Options
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.send_time = true

-- Register Nyse Options CommonClient Pillar 2.6 Show Options
omi_nyse_options_commonclient_pillar_v2_6.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_options_commonclient_pillar_v2_6.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_options_commonclient_pillar_v2_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_options_commonclient_pillar_v2_6.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_options_commonclient_pillar_v2_6.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")

-- Handle changed preferences
function omi_nyse_options_commonclient_pillar_v2_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= omi_nyse_options_commonclient_pillar_v2_6.prefs.show_message then
    show.message = omi_nyse_options_commonclient_pillar_v2_6.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_options_commonclient_pillar_v2_6.prefs.show_message_header then
    show.message_header = omi_nyse_options_commonclient_pillar_v2_6.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_nyse_options_commonclient_pillar_v2_6.prefs.show_packet then
    show.packet = omi_nyse_options_commonclient_pillar_v2_6.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_options_commonclient_pillar_v2_6.prefs.show_packet_header then
    show.packet_header = omi_nyse_options_commonclient_pillar_v2_6.prefs.show_packet_header
    changed = true
  end
  if show.send_time ~= omi_nyse_options_commonclient_pillar_v2_6.prefs.show_send_time then
    show.send_time = omi_nyse_options_commonclient_pillar_v2_6.prefs.show_send_time
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

-- Payload
nyse_options_commonclient_pillar_v2_6.payload = {}

-- Display: Payload
nyse_options_commonclient_pillar_v2_6.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
nyse_options_commonclient_pillar_v2_6.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_commonclient_pillar_v2_6.payload.display(value, packet, parent, size)

  parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.payload, range, value, display)

  return offset + size, value
end

-- Message Type
nyse_options_commonclient_pillar_v2_6.message_type = {}

-- Size: Message Type
nyse_options_commonclient_pillar_v2_6.message_type.size = 2

-- Display: Message Type
nyse_options_commonclient_pillar_v2_6.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
nyse_options_commonclient_pillar_v2_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_options_commonclient_pillar_v2_6.message_size = {}

-- Size: Message Size
nyse_options_commonclient_pillar_v2_6.message_size.size = 2

-- Display: Message Size
nyse_options_commonclient_pillar_v2_6.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_options_commonclient_pillar_v2_6.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
nyse_options_commonclient_pillar_v2_6.message_header = {}

-- Size: Message Header
nyse_options_commonclient_pillar_v2_6.message_header.size =
  nyse_options_commonclient_pillar_v2_6.message_size.size + 
  nyse_options_commonclient_pillar_v2_6.message_type.size

-- Display: Message Header
nyse_options_commonclient_pillar_v2_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_options_commonclient_pillar_v2_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_options_commonclient_pillar_v2_6.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer
  index, message_type = nyse_options_commonclient_pillar_v2_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_options_commonclient_pillar_v2_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.message_header, buffer(offset, 0))
    local index = nyse_options_commonclient_pillar_v2_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_commonclient_pillar_v2_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_commonclient_pillar_v2_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_options_commonclient_pillar_v2_6.message = {}

-- Display: Message
nyse_options_commonclient_pillar_v2_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_options_commonclient_pillar_v2_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_options_commonclient_pillar_v2_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Size
  local message_size = buffer(index - 4, 2):le_uint()

  -- Runtime Size Of: Payload
  local size_of_payload = message_size - 4

  -- Payload: 0 Byte
  index, payload = nyse_options_commonclient_pillar_v2_6.payload.dissect(buffer, index, packet, parent, size_of_payload)

  return index
end

-- Dissect: Message
nyse_options_commonclient_pillar_v2_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.message, buffer(offset, 0))
    local current = nyse_options_commonclient_pillar_v2_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_options_commonclient_pillar_v2_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_options_commonclient_pillar_v2_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Nanoseconds
nyse_options_commonclient_pillar_v2_6.nanoseconds = {}

-- Size: Nanoseconds
nyse_options_commonclient_pillar_v2_6.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_options_commonclient_pillar_v2_6.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_options_commonclient_pillar_v2_6.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_options_commonclient_pillar_v2_6.seconds = {}

-- Size: Seconds
nyse_options_commonclient_pillar_v2_6.seconds.size = 4

-- Display: Seconds
nyse_options_commonclient_pillar_v2_6.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_options_commonclient_pillar_v2_6.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.seconds, range, value, display)

  return offset + length, value
end

-- Send Time
nyse_options_commonclient_pillar_v2_6.send_time = {}

-- Size: Send Time
nyse_options_commonclient_pillar_v2_6.send_time.size =
  nyse_options_commonclient_pillar_v2_6.seconds.size + 
  nyse_options_commonclient_pillar_v2_6.nanoseconds.size

-- Display: Send Time
nyse_options_commonclient_pillar_v2_6.send_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "Send Time: No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Send Time
nyse_options_commonclient_pillar_v2_6.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_options_commonclient_pillar_v2_6.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_options_commonclient_pillar_v2_6.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_options_commonclient_pillar_v2_6.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.send_time, buffer(offset, 0))
    local index, value = nyse_options_commonclient_pillar_v2_6.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_commonclient_pillar_v2_6.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_commonclient_pillar_v2_6.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Seq Num
nyse_options_commonclient_pillar_v2_6.seq_num = {}

-- Size: Seq Num
nyse_options_commonclient_pillar_v2_6.seq_num.size = 4

-- Display: Seq Num
nyse_options_commonclient_pillar_v2_6.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_options_commonclient_pillar_v2_6.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_options_commonclient_pillar_v2_6.number_msgs = {}

-- Size: Number Msgs
nyse_options_commonclient_pillar_v2_6.number_msgs.size = 1

-- Display: Number Msgs
nyse_options_commonclient_pillar_v2_6.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_options_commonclient_pillar_v2_6.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_options_commonclient_pillar_v2_6.delivery_flag = {}

-- Size: Delivery Flag
nyse_options_commonclient_pillar_v2_6.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_options_commonclient_pillar_v2_6.delivery_flag.display = function(value)
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
nyse_options_commonclient_pillar_v2_6.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_options_commonclient_pillar_v2_6.pkt_size = {}

-- Size: Pkt Size
nyse_options_commonclient_pillar_v2_6.pkt_size.size = 2

-- Display: Pkt Size
nyse_options_commonclient_pillar_v2_6.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_options_commonclient_pillar_v2_6.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_options_commonclient_pillar_v2_6.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_commonclient_pillar_v2_6.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_options_commonclient_pillar_v2_6.packet_header = {}

-- Size: Packet Header
nyse_options_commonclient_pillar_v2_6.packet_header.size =
  nyse_options_commonclient_pillar_v2_6.pkt_size.size + 
  nyse_options_commonclient_pillar_v2_6.delivery_flag.size + 
  nyse_options_commonclient_pillar_v2_6.number_msgs.size + 
  nyse_options_commonclient_pillar_v2_6.seq_num.size + 
  nyse_options_commonclient_pillar_v2_6.send_time.size

-- Display: Packet Header
nyse_options_commonclient_pillar_v2_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_options_commonclient_pillar_v2_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_options_commonclient_pillar_v2_6.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_options_commonclient_pillar_v2_6.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_options_commonclient_pillar_v2_6.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_options_commonclient_pillar_v2_6.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_options_commonclient_pillar_v2_6.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_options_commonclient_pillar_v2_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_options_commonclient_pillar_v2_6.fields.packet_header, buffer(offset, 0))
    local index = nyse_options_commonclient_pillar_v2_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_options_commonclient_pillar_v2_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_options_commonclient_pillar_v2_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_options_commonclient_pillar_v2_6.packet = {}

-- Dissect Packet
nyse_options_commonclient_pillar_v2_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_options_commonclient_pillar_v2_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_options_commonclient_pillar_v2_6.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_options_commonclient_pillar_v2_6.init()
end

-- Dissector for Nyse Options CommonClient Pillar 2.6
function omi_nyse_options_commonclient_pillar_v2_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_options_commonclient_pillar_v2_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_options_commonclient_pillar_v2_6, buffer(), omi_nyse_options_commonclient_pillar_v2_6.description, "("..buffer:len().." Bytes)")
  return nyse_options_commonclient_pillar_v2_6.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_options_commonclient_pillar_v2_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_options_commonclient_pillar_v2_6.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Options CommonClient Pillar 2.6
local function omi_nyse_options_commonclient_pillar_v2_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_options_commonclient_pillar_v2_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_options_commonclient_pillar_v2_6
  omi_nyse_options_commonclient_pillar_v2_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Options CommonClient Pillar 2.6
omi_nyse_options_commonclient_pillar_v2_6:register_heuristic("udp", omi_nyse_options_commonclient_pillar_v2_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
