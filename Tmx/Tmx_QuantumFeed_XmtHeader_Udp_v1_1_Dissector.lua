-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx QuantumFeed XmtHeader Udp 1.1 Protocol
local omi_tmx_quantumfeed_xmtheader_udp_v1_1 = Proto("Tmx.QuantumFeed.XmtHeader.Udp.v1.1.Lua", "Tmx QuantumFeed XmtHeader Udp 1.1")

-- Protocol table
local tmx_quantumfeed_xmtheader_udp_v1_1 = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx QuantumFeed XmtHeader Udp 1.1 Fields
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.quantumfeed.xmtheader.udp.v1.1.ackrequiredpossdup", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.body = ProtoField.new("Body", "tmx.quantumfeed.xmtheader.udp.v1.1.body", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_header = ProtoField.new("Body Header", "tmx.quantumfeed.xmtheader.udp.v1.1.bodyheader", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_message = ProtoField.new("Body Message", "tmx.quantumfeed.xmtheader.udp.v1.1.bodymessage", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.business_header = ProtoField.new("Business Header", "tmx.quantumfeed.xmtheader.udp.v1.1.businessheader", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.business_message = ProtoField.new("Business Message", "tmx.quantumfeed.xmtheader.udp.v1.1.businessmessage", ftypes.BYTES)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.frame_header = ProtoField.new("Frame Header", "tmx.quantumfeed.xmtheader.udp.v1.1.frameheader", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.message_length = ProtoField.new("Message Length", "tmx.quantumfeed.xmtheader.udp.v1.1.messagelength", ftypes.UINT16)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_length = ProtoField.new("Msg Length", "tmx.quantumfeed.xmtheader.udp.v1.1.msglength", ftypes.UINT16)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_type = ProtoField.new("Msg Type", "tmx.quantumfeed.xmtheader.udp.v1.1.msgtype", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_version = ProtoField.new("Msg Version", "tmx.quantumfeed.xmtheader.udp.v1.1.msgversion", ftypes.UINT8)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.num_body = ProtoField.new("Num Body", "tmx.quantumfeed.xmtheader.udp.v1.1.numbody", ftypes.UINT8)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.packet = ProtoField.new("Packet", "tmx.quantumfeed.xmtheader.udp.v1.1.packet", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.quantumfeed.xmtheader.udp.v1.1.protocolname", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.quantumfeed.xmtheader.udp.v1.1.protocolversion", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.quantumfeed.xmtheader.udp.v1.1.sequence0", ftypes.UINT8)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.quantumfeed.xmtheader.udp.v1.1.sequence1", ftypes.UINT32)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.session_id = ProtoField.new("Session Id", "tmx.quantumfeed.xmtheader.udp.v1.1.sessionid", ftypes.UINT32)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.source_id = ProtoField.new("Source Id", "tmx.quantumfeed.xmtheader.udp.v1.1.sourceid", ftypes.STRING)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.quantumfeed.xmtheader.udp.v1.1.startofframe", ftypes.INT8)
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.stream_id = ProtoField.new("Stream Id", "tmx.quantumfeed.xmtheader.udp.v1.1.streamid", ftypes.UINT16)

-- Tmx QuantumFeed XmtHeader Udp 1.1 generated fields
omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_index = ProtoField.new("Body Index", "tmx.quantumfeed.xmtheader.udp.v1.1.bodyindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Tmx QuantumFeed XmtHeader Udp 1.1 Element Dissection Options
show.body = true
show.body_header = true
show.body_message = true
show.business_header = true
show.frame_header = true
show.packet = true

-- Register Tmx QuantumFeed XmtHeader Udp 1.1 Show Options
omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body = Pref.bool("Show Body", show.body, "Parse and add Body to protocol tree")
omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_header = Pref.bool("Show Body Header", show.body_header, "Parse and add Body Header to protocol tree")
omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_message = Pref.bool("Show Body Message", show.body_message, "Parse and add Body Message to protocol tree")
omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_business_header = Pref.bool("Show Business Header", show.business_header, "Parse and add Business Header to protocol tree")
omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_frame_header = Pref.bool("Show Frame Header", show.frame_header, "Parse and add Frame Header to protocol tree")
omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.body ~= omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body then
    show.body = omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body
    changed = true
  end
  if show.body_header ~= omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_header then
    show.body_header = omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_header
    changed = true
  end
  if show.body_message ~= omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_message then
    show.body_message = omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_message
    changed = true
  end
  if show.business_header ~= omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_business_header then
    show.business_header = omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_business_header
    changed = true
  end
  if show.frame_header ~= omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_frame_header then
    show.frame_header = omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_frame_header
    changed = true
  end
  if show.packet ~= omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_packet then
    show.packet = omi_tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_packet
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Tmx QuantumFeed XmtHeader Udp 1.1
-----------------------------------------------------------------------

-- Business Message
tmx_quantumfeed_xmtheader_udp_v1_1.business_message = {}

-- Display: Business Message
tmx_quantumfeed_xmtheader_udp_v1_1.business_message.display = function(value)
  return "Business Message: "..value
end

-- Dissect runtime sized field: Business Message
tmx_quantumfeed_xmtheader_udp_v1_1.business_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.business_message.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.business_message, range, value, display)

  return offset + size
end

-- Sequence 1
tmx_quantumfeed_xmtheader_udp_v1_1.sequence_1 = {}

-- Size: Sequence 1
tmx_quantumfeed_xmtheader_udp_v1_1.sequence_1.size = 4

-- Display: Sequence 1
tmx_quantumfeed_xmtheader_udp_v1_1.sequence_1.display = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
tmx_quantumfeed_xmtheader_udp_v1_1.sequence_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.sequence_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.sequence_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Sequence 0
tmx_quantumfeed_xmtheader_udp_v1_1.sequence_0 = {}

-- Size: Sequence 0
tmx_quantumfeed_xmtheader_udp_v1_1.sequence_0.size = 1

-- Display: Sequence 0
tmx_quantumfeed_xmtheader_udp_v1_1.sequence_0.display = function(value)
  return "Sequence 0: "..value
end

-- Dissect: Sequence 0
tmx_quantumfeed_xmtheader_udp_v1_1.sequence_0.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.sequence_0.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.sequence_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Stream Id
tmx_quantumfeed_xmtheader_udp_v1_1.stream_id = {}

-- Size: Stream Id
tmx_quantumfeed_xmtheader_udp_v1_1.stream_id.size = 2

-- Display: Stream Id
tmx_quantumfeed_xmtheader_udp_v1_1.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
tmx_quantumfeed_xmtheader_udp_v1_1.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Source Id
tmx_quantumfeed_xmtheader_udp_v1_1.source_id = {}

-- Size: Source Id
tmx_quantumfeed_xmtheader_udp_v1_1.source_id.size = 1

-- Display: Source Id
tmx_quantumfeed_xmtheader_udp_v1_1.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
tmx_quantumfeed_xmtheader_udp_v1_1.source_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.source_id, range, value, display)

  return offset + length, value
end

-- Msg Version
tmx_quantumfeed_xmtheader_udp_v1_1.msg_version = {}

-- Size: Msg Version
tmx_quantumfeed_xmtheader_udp_v1_1.msg_version.size = 1

-- Display: Msg Version
tmx_quantumfeed_xmtheader_udp_v1_1.msg_version.display = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
tmx_quantumfeed_xmtheader_udp_v1_1.msg_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.msg_version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.msg_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Business Header
tmx_quantumfeed_xmtheader_udp_v1_1.business_header = {}

-- Calculate size of: Business Header
tmx_quantumfeed_xmtheader_udp_v1_1.business_header.size = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.msg_version.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.source_id.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.stream_id.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.sequence_0.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.sequence_1.size

  return index
end

-- Display: Business Header
tmx_quantumfeed_xmtheader_udp_v1_1.business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Header
tmx_quantumfeed_xmtheader_udp_v1_1.business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: 1 Byte Unsigned Fixed Width Integer
  index, msg_version = tmx_quantumfeed_xmtheader_udp_v1_1.msg_version.dissect(buffer, index, packet, parent)

  -- Source Id: 1 Byte Ascii String
  index, source_id = tmx_quantumfeed_xmtheader_udp_v1_1.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = tmx_quantumfeed_xmtheader_udp_v1_1.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: 1 Byte Unsigned Fixed Width Integer
  index, sequence_0 = tmx_quantumfeed_xmtheader_udp_v1_1.sequence_0.dissect(buffer, index, packet, parent)

  -- Sequence 1: 4 Byte Unsigned Fixed Width Integer
  index, sequence_1 = tmx_quantumfeed_xmtheader_udp_v1_1.sequence_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
tmx_quantumfeed_xmtheader_udp_v1_1.business_header.dissect = function(buffer, offset, packet, parent)
  if show.business_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.business_header, buffer(offset, 0))
    local index = tmx_quantumfeed_xmtheader_udp_v1_1.business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1.business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_xmtheader_udp_v1_1.business_header.fields(buffer, offset, packet, parent)
  end
end

-- Body Message
tmx_quantumfeed_xmtheader_udp_v1_1.body_message = {}

-- Display: Body Message
tmx_quantumfeed_xmtheader_udp_v1_1.body_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Message
tmx_quantumfeed_xmtheader_udp_v1_1.body_message.fields = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_xmtheader_udp_v1_1.business_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Business Message
  local size_of_business_message = msg_length - 12

  -- Business Message: 0 Byte
  index, business_message = tmx_quantumfeed_xmtheader_udp_v1_1.business_message.dissect(buffer, index, packet, parent, size_of_business_message)

  return index
end

-- Dissect: Body Message
tmx_quantumfeed_xmtheader_udp_v1_1.body_message.dissect = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset + size_of_body_message

  -- Optionally add group/struct element to protocol tree
  if show.body_message then
    parent = parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_message, buffer(offset, 0))
    local current = tmx_quantumfeed_xmtheader_udp_v1_1.body_message.fields(buffer, offset, packet, parent, size_of_body_message)
    parent:set_len(size_of_body_message)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1.body_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_quantumfeed_xmtheader_udp_v1_1.body_message.fields(buffer, offset, packet, parent, size_of_body_message)

    return index
  end
end

-- Msg Type
tmx_quantumfeed_xmtheader_udp_v1_1.msg_type = {}

-- Size: Msg Type
tmx_quantumfeed_xmtheader_udp_v1_1.msg_type.size = 1

-- Display: Msg Type
tmx_quantumfeed_xmtheader_udp_v1_1.msg_type.display = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
tmx_quantumfeed_xmtheader_udp_v1_1.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.msg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Length
tmx_quantumfeed_xmtheader_udp_v1_1.msg_length = {}

-- Size: Msg Length
tmx_quantumfeed_xmtheader_udp_v1_1.msg_length.size = 2

-- Display: Msg Length
tmx_quantumfeed_xmtheader_udp_v1_1.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
tmx_quantumfeed_xmtheader_udp_v1_1.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Body Header
tmx_quantumfeed_xmtheader_udp_v1_1.body_header = {}

-- Calculate size of: Body Header
tmx_quantumfeed_xmtheader_udp_v1_1.body_header.size = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.msg_length.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.msg_type.size

  return index
end

-- Display: Body Header
tmx_quantumfeed_xmtheader_udp_v1_1.body_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Header
tmx_quantumfeed_xmtheader_udp_v1_1.body_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = tmx_quantumfeed_xmtheader_udp_v1_1.msg_length.dissect(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Ascii String
  index, msg_type = tmx_quantumfeed_xmtheader_udp_v1_1.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
tmx_quantumfeed_xmtheader_udp_v1_1.body_header.dissect = function(buffer, offset, packet, parent)
  if show.body_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_header, buffer(offset, 0))
    local index = tmx_quantumfeed_xmtheader_udp_v1_1.body_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1.body_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_xmtheader_udp_v1_1.body_header.fields(buffer, offset, packet, parent)
  end
end

-- Body
tmx_quantumfeed_xmtheader_udp_v1_1.body = {}

-- Display: Body
tmx_quantumfeed_xmtheader_udp_v1_1.body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body
tmx_quantumfeed_xmtheader_udp_v1_1.body.fields = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset

  -- Implicit Body Index
  if body_index ~= nil then
    local iteration = parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_index, body_index)
    iteration:set_generated()
  end

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_quantumfeed_xmtheader_udp_v1_1.body_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(index - 3, 2):le_uint()

  -- Runtime Size Of: Body Message
  local size_of_body_message = msg_length - 3

  -- Body Message: Struct of 2 fields
  index, body_message = tmx_quantumfeed_xmtheader_udp_v1_1.body_message.dissect(buffer, index, packet, parent, size_of_body_message)

  return index
end

-- Dissect: Body
tmx_quantumfeed_xmtheader_udp_v1_1.body.dissect = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset + size_of_body

  -- Optionally add group/struct element to protocol tree
  if show.body then
    parent = parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.body, buffer(offset, 0))
    local current = tmx_quantumfeed_xmtheader_udp_v1_1.body.fields(buffer, offset, packet, parent, size_of_body, body_index)
    parent:set_len(size_of_body)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1.body.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_quantumfeed_xmtheader_udp_v1_1.body.fields(buffer, offset, packet, parent, size_of_body, body_index)

    return index
  end
end

-- Num Body
tmx_quantumfeed_xmtheader_udp_v1_1.num_body = {}

-- Size: Num Body
tmx_quantumfeed_xmtheader_udp_v1_1.num_body.size = 1

-- Display: Num Body
tmx_quantumfeed_xmtheader_udp_v1_1.num_body.display = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
tmx_quantumfeed_xmtheader_udp_v1_1.num_body.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.num_body.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.num_body.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.num_body, range, value, display)

  return offset + length, value
end

-- Ack Required Poss Dup
tmx_quantumfeed_xmtheader_udp_v1_1.ack_required_poss_dup = {}

-- Size: Ack Required Poss Dup
tmx_quantumfeed_xmtheader_udp_v1_1.ack_required_poss_dup.size = 1

-- Display: Ack Required Poss Dup
tmx_quantumfeed_xmtheader_udp_v1_1.ack_required_poss_dup.display = function(value)
  if value == "0" then
    return "Ack Required Poss Dup: Unused (0)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
tmx_quantumfeed_xmtheader_udp_v1_1.ack_required_poss_dup.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.ack_required_poss_dup.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.ack_required_poss_dup.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Session Id
tmx_quantumfeed_xmtheader_udp_v1_1.session_id = {}

-- Size: Session Id
tmx_quantumfeed_xmtheader_udp_v1_1.session_id.size = 4

-- Display: Session Id
tmx_quantumfeed_xmtheader_udp_v1_1.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_quantumfeed_xmtheader_udp_v1_1.session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_quantumfeed_xmtheader_udp_v1_1.message_length = {}

-- Size: Message Length
tmx_quantumfeed_xmtheader_udp_v1_1.message_length.size = 2

-- Display: Message Length
tmx_quantumfeed_xmtheader_udp_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_quantumfeed_xmtheader_udp_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Protocol Version
tmx_quantumfeed_xmtheader_udp_v1_1.protocol_version = {}

-- Size: Protocol Version
tmx_quantumfeed_xmtheader_udp_v1_1.protocol_version.size = 1

-- Display: Protocol Version
tmx_quantumfeed_xmtheader_udp_v1_1.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
tmx_quantumfeed_xmtheader_udp_v1_1.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.protocol_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Protocol Name
tmx_quantumfeed_xmtheader_udp_v1_1.protocol_name = {}

-- Size: Protocol Name
tmx_quantumfeed_xmtheader_udp_v1_1.protocol_name.size = 1

-- Display: Protocol Name
tmx_quantumfeed_xmtheader_udp_v1_1.protocol_name.display = function(value)
  if value == "X" then
    return "Protocol Name: Xmt (X)"
  end

  return "Protocol Name: Unknown("..value..")"
end

-- Dissect: Protocol Name
tmx_quantumfeed_xmtheader_udp_v1_1.protocol_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.protocol_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.protocol_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Start Of Frame
tmx_quantumfeed_xmtheader_udp_v1_1.start_of_frame = {}

-- Size: Start Of Frame
tmx_quantumfeed_xmtheader_udp_v1_1.start_of_frame.size = 1

-- Display: Start Of Frame
tmx_quantumfeed_xmtheader_udp_v1_1.start_of_frame.display = function(value)
  if value == 2 then
    return "Start Of Frame: New Frame (2)"
  end

  return "Start Of Frame: Unknown("..value..")"
end

-- Dissect: Start Of Frame
tmx_quantumfeed_xmtheader_udp_v1_1.start_of_frame.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1.start_of_frame.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1.start_of_frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Frame Header
tmx_quantumfeed_xmtheader_udp_v1_1.frame_header = {}

-- Calculate size of: Frame Header
tmx_quantumfeed_xmtheader_udp_v1_1.frame_header.size = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.start_of_frame.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.protocol_name.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.protocol_version.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.message_length.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.session_id.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.ack_required_poss_dup.size

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1.num_body.size

  return index
end

-- Display: Frame Header
tmx_quantumfeed_xmtheader_udp_v1_1.frame_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame Header
tmx_quantumfeed_xmtheader_udp_v1_1.frame_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: 1 Byte Fixed Width Integer Enum with 1 values
  index, start_of_frame = tmx_quantumfeed_xmtheader_udp_v1_1.start_of_frame.dissect(buffer, index, packet, parent)

  -- Protocol Name: 1 Byte Ascii String Enum with 1 values
  index, protocol_name = tmx_quantumfeed_xmtheader_udp_v1_1.protocol_name.dissect(buffer, index, packet, parent)

  -- Protocol Version: 1 Byte Ascii String
  index, protocol_version = tmx_quantumfeed_xmtheader_udp_v1_1.protocol_version.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = tmx_quantumfeed_xmtheader_udp_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = tmx_quantumfeed_xmtheader_udp_v1_1.session_id.dissect(buffer, index, packet, parent)

  -- Ack Required Poss Dup: 1 Byte Ascii String Enum with 1 values
  index, ack_required_poss_dup = tmx_quantumfeed_xmtheader_udp_v1_1.ack_required_poss_dup.dissect(buffer, index, packet, parent)

  -- Num Body: 1 Byte Unsigned Fixed Width Integer
  index, num_body = tmx_quantumfeed_xmtheader_udp_v1_1.num_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
tmx_quantumfeed_xmtheader_udp_v1_1.frame_header.dissect = function(buffer, offset, packet, parent)
  if show.frame_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1.fields.frame_header, buffer(offset, 0))
    local index = tmx_quantumfeed_xmtheader_udp_v1_1.frame_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1.frame_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_xmtheader_udp_v1_1.frame_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tmx_quantumfeed_xmtheader_udp_v1_1.packet = {}

-- Dissect Packet
tmx_quantumfeed_xmtheader_udp_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = tmx_quantumfeed_xmtheader_udp_v1_1.frame_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Num Body
    local num_body = buffer(index - 1, 1):uint()

    -- Repeating: Body
    for body_index = 1, num_body do

      -- Dependency element: Msg Length
      local msg_length = buffer(index, 2):le_uint()

      -- Runtime Size Of: Body
      index, body = tmx_quantumfeed_xmtheader_udp_v1_1.body.dissect(buffer, index, packet, parent, msg_length)
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_quantumfeed_xmtheader_udp_v1_1.init()
end

-- Dissector for Tmx QuantumFeed XmtHeader Udp 1.1
function omi_tmx_quantumfeed_xmtheader_udp_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_tmx_quantumfeed_xmtheader_udp_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_quantumfeed_xmtheader_udp_v1_1, buffer(), omi_tmx_quantumfeed_xmtheader_udp_v1_1.description, "("..buffer:len().." Bytes)")
  return tmx_quantumfeed_xmtheader_udp_v1_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_tmx_quantumfeed_xmtheader_udp_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_tmx_quantumfeed_xmtheader_udp_v1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Tmx QuantumFeed XmtHeader Udp 1.1
local function omi_tmx_quantumfeed_xmtheader_udp_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_tmx_quantumfeed_xmtheader_udp_v1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_quantumfeed_xmtheader_udp_v1_1
  omi_tmx_quantumfeed_xmtheader_udp_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx QuantumFeed XmtHeader Udp 1.1
omi_tmx_quantumfeed_xmtheader_udp_v1_1:register_heuristic("udp", omi_tmx_quantumfeed_xmtheader_udp_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 1.1
--   Date: Tuesday, October 20, 2020
--   Specification: htmx-xmt-protocol-spec-v1-1-0.pdf
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
