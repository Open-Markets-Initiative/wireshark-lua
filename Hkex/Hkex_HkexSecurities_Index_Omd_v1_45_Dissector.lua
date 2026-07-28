-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex HkexSecurities Index Omd 1.45 Protocol
local omi_hkex_hkexsecurities_index_omd_v1_45 = Proto("Omi.Hkex.HkexSecurities.Index.Omd.v1.45", "Hkex HkexSecurities Index Omd 1.45")

-- Protocol table
local hkex_hkexsecurities_index_omd_v1_45 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex HkexSecurities Index Omd 1.45 Fields
omi_hkex_hkexsecurities_index_omd_v1_45.fields.dr_status = ProtoField.new("Dr Status", "hkex.hkexsecurities.index.omd.v1.45.drstatus", ftypes.UINT32)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.filler = ProtoField.new("Filler", "hkex.hkexsecurities.index.omd.v1.45.filler", ftypes.STRING)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.message = ProtoField.new("Message", "hkex.hkexsecurities.index.omd.v1.45.message", ftypes.STRING)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.msg_count = ProtoField.new("Msg Count", "hkex.hkexsecurities.index.omd.v1.45.msgcount", ftypes.UINT8)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.msg_header = ProtoField.new("Msg Header", "hkex.hkexsecurities.index.omd.v1.45.msgheader", ftypes.STRING)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.msg_size = ProtoField.new("Msg Size", "hkex.hkexsecurities.index.omd.v1.45.msgsize", ftypes.UINT16)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.msg_type = ProtoField.new("Msg Type", "hkex.hkexsecurities.index.omd.v1.45.msgtype", ftypes.UINT16)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.new_seq_no = ProtoField.new("New Seq No", "hkex.hkexsecurities.index.omd.v1.45.newseqno", ftypes.UINT32)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.packet = ProtoField.new("Packet", "hkex.hkexsecurities.index.omd.v1.45.packet", ftypes.STRING)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.packet_header = ProtoField.new("Packet Header", "hkex.hkexsecurities.index.omd.v1.45.packetheader", ftypes.STRING)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.hkexsecurities.index.omd.v1.45.pktsize", ftypes.UINT16)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.send_time = ProtoField.new("Send Time", "hkex.hkexsecurities.index.omd.v1.45.sendtime", ftypes.UINT64)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.seq_num = ProtoField.new("Seq Num", "hkex.hkexsecurities.index.omd.v1.45.seqnum", ftypes.UINT32)

-- Hkex HkexSecurities Omd Index 1.45 Application Messages
omi_hkex_hkexsecurities_index_omd_v1_45.fields.disaster_recovery_signal_message = ProtoField.new("Disaster Recovery Signal Message", "hkex.hkexsecurities.index.omd.v1.45.disasterrecoverysignalmessage", ftypes.STRING)
omi_hkex_hkexsecurities_index_omd_v1_45.fields.sequence_reset_message = ProtoField.new("Sequence Reset Message", "hkex.hkexsecurities.index.omd.v1.45.sequenceresetmessage", ftypes.STRING)

-- Hkex HkexSecurities Index Omd 1.45 generated fields
omi_hkex_hkexsecurities_index_omd_v1_45.fields.message_index = ProtoField.new("Message Index", "hkex.hkexsecurities.index.omd.v1.45.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex HkexSecurities Index Omd 1.45 Element Dissection Options
show.application_messages = true
show.message = true
show.msg_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Hkex HkexSecurities Index Omd 1.45 Show Options
omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_hkex_hkexsecurities_index_omd_v1_45.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_application_messages then
    show.application_messages = omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_application_messages
  end
  if show.message ~= omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_message then
    show.message = omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_message
  end
  if show.msg_header ~= omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_msg_header then
    show.msg_header = omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_msg_header
  end
  if show.packet ~= omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_packet then
    show.packet = omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_packet
  end
  if show.packet_header ~= omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_packet_header then
    show.packet_header = omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_packet_header
  end
  if show.message_index ~= omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_message_index then
    show.message_index = omi_hkex_hkexsecurities_index_omd_v1_45.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Hkex HkexSecurities Index Omd 1.45 Fields
-----------------------------------------------------------------------

-- Dr Status
hkex_hkexsecurities_index_omd_v1_45.dr_status = {}

-- Size: Dr Status
hkex_hkexsecurities_index_omd_v1_45.dr_status.size = 4

-- Display: Dr Status
hkex_hkexsecurities_index_omd_v1_45.dr_status.display = function(value)
  if value == 1 then
    return "Dr Status: Dr In Progress (1)"
  end
  if value == 2 then
    return "Dr Status: Dr Completed (2)"
  end

  return "Dr Status: Unknown("..value..")"
end

-- Dissect: Dr Status
hkex_hkexsecurities_index_omd_v1_45.dr_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_index_omd_v1_45.dr_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_index_omd_v1_45.dr_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.dr_status, range, value, display)

  return offset + length, value
end

-- Filler
hkex_hkexsecurities_index_omd_v1_45.filler = {}

-- Size: Filler
hkex_hkexsecurities_index_omd_v1_45.filler.size = 1

-- Display: Filler
hkex_hkexsecurities_index_omd_v1_45.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
hkex_hkexsecurities_index_omd_v1_45.filler.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_index_omd_v1_45.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_hkexsecurities_index_omd_v1_45.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.filler, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_hkexsecurities_index_omd_v1_45.msg_count = {}

-- Size: Msg Count
hkex_hkexsecurities_index_omd_v1_45.msg_count.size = 1

-- Display: Msg Count
hkex_hkexsecurities_index_omd_v1_45.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_hkexsecurities_index_omd_v1_45.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_index_omd_v1_45.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_hkexsecurities_index_omd_v1_45.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_hkexsecurities_index_omd_v1_45.msg_size = {}

-- Size: Msg Size
hkex_hkexsecurities_index_omd_v1_45.msg_size.size = 2

-- Display: Msg Size
hkex_hkexsecurities_index_omd_v1_45.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_hkexsecurities_index_omd_v1_45.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_index_omd_v1_45.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_index_omd_v1_45.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_hkexsecurities_index_omd_v1_45.msg_type = {}

-- Size: Msg Type
hkex_hkexsecurities_index_omd_v1_45.msg_type.size = 2

-- Display: Msg Type
hkex_hkexsecurities_index_omd_v1_45.msg_type.display = function(value)
  if value == 100 then
    return "Msg Type: Sequence Reset Message (100)"
  end
  if value == 105 then
    return "Msg Type: Disaster Recovery Signal Message (105)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_hkexsecurities_index_omd_v1_45.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_index_omd_v1_45.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_index_omd_v1_45.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.msg_type, range, value, display)

  return offset + length, value
end

-- New Seq No
hkex_hkexsecurities_index_omd_v1_45.new_seq_no = {}

-- Size: New Seq No
hkex_hkexsecurities_index_omd_v1_45.new_seq_no.size = 4

-- Display: New Seq No
hkex_hkexsecurities_index_omd_v1_45.new_seq_no.display = function(value)
  return "New Seq No: "..value
end

-- Dissect: New Seq No
hkex_hkexsecurities_index_omd_v1_45.new_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_index_omd_v1_45.new_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_index_omd_v1_45.new_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.new_seq_no, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_hkexsecurities_index_omd_v1_45.pkt_size = {}

-- Size: Pkt Size
hkex_hkexsecurities_index_omd_v1_45.pkt_size.size = 2

-- Display: Pkt Size
hkex_hkexsecurities_index_omd_v1_45.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_hkexsecurities_index_omd_v1_45.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_index_omd_v1_45.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_index_omd_v1_45.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Send Time
hkex_hkexsecurities_index_omd_v1_45.send_time = {}

-- Size: Send Time
hkex_hkexsecurities_index_omd_v1_45.send_time.size = 8

-- Display: Send Time
hkex_hkexsecurities_index_omd_v1_45.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_hkexsecurities_index_omd_v1_45.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_index_omd_v1_45.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_hkexsecurities_index_omd_v1_45.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_hkexsecurities_index_omd_v1_45.seq_num = {}

-- Size: Seq Num
hkex_hkexsecurities_index_omd_v1_45.seq_num.size = 4

-- Display: Seq Num
hkex_hkexsecurities_index_omd_v1_45.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_hkexsecurities_index_omd_v1_45.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_hkexsecurities_index_omd_v1_45.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_hkexsecurities_index_omd_v1_45.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.seq_num, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Hkex HkexSecurities Index Omd 1.45
-----------------------------------------------------------------------

-- Disaster Recovery Signal Message
hkex_hkexsecurities_index_omd_v1_45.disaster_recovery_signal_message = {}

-- Size: Disaster Recovery Signal Message
hkex_hkexsecurities_index_omd_v1_45.disaster_recovery_signal_message.size =
  hkex_hkexsecurities_index_omd_v1_45.dr_status.size

-- Display: Disaster Recovery Signal Message
hkex_hkexsecurities_index_omd_v1_45.disaster_recovery_signal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Signal Message
hkex_hkexsecurities_index_omd_v1_45.disaster_recovery_signal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dr Status: Uint32
  index, dr_status = hkex_hkexsecurities_index_omd_v1_45.dr_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Signal Message
hkex_hkexsecurities_index_omd_v1_45.disaster_recovery_signal_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.disaster_recovery_signal_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_index_omd_v1_45.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_index_omd_v1_45.disaster_recovery_signal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_index_omd_v1_45.disaster_recovery_signal_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Reset Message
hkex_hkexsecurities_index_omd_v1_45.sequence_reset_message = {}

-- Size: Sequence Reset Message
hkex_hkexsecurities_index_omd_v1_45.sequence_reset_message.size =
  hkex_hkexsecurities_index_omd_v1_45.new_seq_no.size

-- Display: Sequence Reset Message
hkex_hkexsecurities_index_omd_v1_45.sequence_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Reset Message
hkex_hkexsecurities_index_omd_v1_45.sequence_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Seq No: Uint32
  index, new_seq_no = hkex_hkexsecurities_index_omd_v1_45.new_seq_no.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Reset Message
hkex_hkexsecurities_index_omd_v1_45.sequence_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.sequence_reset_message, buffer(offset, 0))
    local index = hkex_hkexsecurities_index_omd_v1_45.sequence_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_index_omd_v1_45.sequence_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_index_omd_v1_45.sequence_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_hkexsecurities_index_omd_v1_45.payload = {}

-- Dissect: Payload
hkex_hkexsecurities_index_omd_v1_45.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Sequence Reset Message
  if msg_type == 100 then
    return hkex_hkexsecurities_index_omd_v1_45.sequence_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Signal Message
  if msg_type == 105 then
    return hkex_hkexsecurities_index_omd_v1_45.disaster_recovery_signal_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Msg Header
hkex_hkexsecurities_index_omd_v1_45.msg_header = {}

-- Size: Msg Header
hkex_hkexsecurities_index_omd_v1_45.msg_header.size =
  hkex_hkexsecurities_index_omd_v1_45.msg_size.size + 
  hkex_hkexsecurities_index_omd_v1_45.msg_type.size

-- Display: Msg Header
hkex_hkexsecurities_index_omd_v1_45.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_hkexsecurities_index_omd_v1_45.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_hkexsecurities_index_omd_v1_45.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, msg_type = hkex_hkexsecurities_index_omd_v1_45.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_hkexsecurities_index_omd_v1_45.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.msg_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_index_omd_v1_45.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_index_omd_v1_45.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_index_omd_v1_45.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_hkexsecurities_index_omd_v1_45.message = {}

-- Display: Message
hkex_hkexsecurities_index_omd_v1_45.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_hkexsecurities_index_omd_v1_45.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_hkexsecurities_index_omd_v1_45.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 2 branches
  index = hkex_hkexsecurities_index_omd_v1_45.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_hkexsecurities_index_omd_v1_45.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.message, buffer(offset, 0))
    local current = hkex_hkexsecurities_index_omd_v1_45.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_hkexsecurities_index_omd_v1_45.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_hkexsecurities_index_omd_v1_45.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
hkex_hkexsecurities_index_omd_v1_45.packet_header = {}

-- Size: Packet Header
hkex_hkexsecurities_index_omd_v1_45.packet_header.size =
  hkex_hkexsecurities_index_omd_v1_45.pkt_size.size + 
  hkex_hkexsecurities_index_omd_v1_45.msg_count.size + 
  hkex_hkexsecurities_index_omd_v1_45.filler.size + 
  hkex_hkexsecurities_index_omd_v1_45.seq_num.size + 
  hkex_hkexsecurities_index_omd_v1_45.send_time.size

-- Display: Packet Header
hkex_hkexsecurities_index_omd_v1_45.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_hkexsecurities_index_omd_v1_45.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_hkexsecurities_index_omd_v1_45.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_hkexsecurities_index_omd_v1_45.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: 1 Byte Ascii String
  index, filler = hkex_hkexsecurities_index_omd_v1_45.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_hkexsecurities_index_omd_v1_45.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_hkexsecurities_index_omd_v1_45.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_hkexsecurities_index_omd_v1_45.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_hkexsecurities_index_omd_v1_45.fields.packet_header, buffer(offset, 0))
    local index = hkex_hkexsecurities_index_omd_v1_45.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_hkexsecurities_index_omd_v1_45.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_hkexsecurities_index_omd_v1_45.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_hkexsecurities_index_omd_v1_45.packet = {}

-- Verify required size of Udp packet
hkex_hkexsecurities_index_omd_v1_45.packet.requiredsize = function(buffer)
  return buffer:len() >= hkex_hkexsecurities_index_omd_v1_45.packet_header.size
end

-- Dissect Packet
hkex_hkexsecurities_index_omd_v1_45.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_hkexsecurities_index_omd_v1_45.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_hkexsecurities_index_omd_v1_45.message.dissect(buffer, index, packet, parent, msg_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_hkexsecurities_index_omd_v1_45.init()
end

-- Dissector for Hkex HkexSecurities Index Omd 1.45
function omi_hkex_hkexsecurities_index_omd_v1_45.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_hkexsecurities_index_omd_v1_45.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_hkexsecurities_index_omd_v1_45, buffer(), omi_hkex_hkexsecurities_index_omd_v1_45.description, "("..buffer:len().." Bytes)")
  return hkex_hkexsecurities_index_omd_v1_45.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Hkex HkexSecurities Index Omd 1.45 (Udp)
local function omi_hkex_hkexsecurities_index_omd_v1_45_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_hkexsecurities_index_omd_v1_45.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_hkexsecurities_index_omd_v1_45
  omi_hkex_hkexsecurities_index_omd_v1_45.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex HkexSecurities Index Omd 1.45
omi_hkex_hkexsecurities_index_omd_v1_45:register_heuristic("udp", omi_hkex_hkexsecurities_index_omd_v1_45_udp_heuristic)

-- Register Hkex HkexSecurities Index Omd 1.45 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_hkex_hkexsecurities_index_omd_v1_45)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.45
--   Date: Friday, January 9, 2026
--   Specification: HKEX_OMDC_Binary_Interface_Specifications_v1_45.pdf
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
