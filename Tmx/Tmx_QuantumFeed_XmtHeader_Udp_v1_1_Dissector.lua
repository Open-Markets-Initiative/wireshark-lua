-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx QuantumFeed XmtHeader Udp 1.1 Protocol
local tmx_quantumfeed_xmtheader_udp_v1_1 = Proto("Tmx.QuantumFeed.XmtHeader.Udp.v1.1.Lua", "Tmx QuantumFeed XmtHeader Udp 1.1")

-- Component Tables
local show = {}
local format = {}
local tmx_quantumfeed_xmtheader_udp_v1_1_display = {}
local tmx_quantumfeed_xmtheader_udp_v1_1_dissect = {}
local tmx_quantumfeed_xmtheader_udp_v1_1_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx QuantumFeed XmtHeader Udp 1.1 Fields
tmx_quantumfeed_xmtheader_udp_v1_1.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.quantumfeed.xmtheader.udp.v1.1.ackrequiredpossdup", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.body = ProtoField.new("Body", "tmx.quantumfeed.xmtheader.udp.v1.1.body", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_header = ProtoField.new("Body Header", "tmx.quantumfeed.xmtheader.udp.v1.1.bodyheader", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_message = ProtoField.new("Body Message", "tmx.quantumfeed.xmtheader.udp.v1.1.bodymessage", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.business_header = ProtoField.new("Business Header", "tmx.quantumfeed.xmtheader.udp.v1.1.businessheader", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.business_message = ProtoField.new("Business Message", "tmx.quantumfeed.xmtheader.udp.v1.1.businessmessage", ftypes.BYTES)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.frame_header = ProtoField.new("Frame Header", "tmx.quantumfeed.xmtheader.udp.v1.1.frameheader", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.message_length = ProtoField.new("Message Length", "tmx.quantumfeed.xmtheader.udp.v1.1.messagelength", ftypes.UINT16)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_length = ProtoField.new("Msg Length", "tmx.quantumfeed.xmtheader.udp.v1.1.msglength", ftypes.UINT16)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_type = ProtoField.new("Msg Type", "tmx.quantumfeed.xmtheader.udp.v1.1.msgtype", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_version = ProtoField.new("Msg Version", "tmx.quantumfeed.xmtheader.udp.v1.1.msgversion", ftypes.UINT8)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.num_body = ProtoField.new("Num Body", "tmx.quantumfeed.xmtheader.udp.v1.1.numbody", ftypes.UINT8)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.packet = ProtoField.new("Packet", "tmx.quantumfeed.xmtheader.udp.v1.1.packet", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.quantumfeed.xmtheader.udp.v1.1.protocolname", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.quantumfeed.xmtheader.udp.v1.1.protocolversion", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.quantumfeed.xmtheader.udp.v1.1.sequence0", ftypes.UINT8)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.quantumfeed.xmtheader.udp.v1.1.sequence1", ftypes.UINT32)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.session_id = ProtoField.new("Session Id", "tmx.quantumfeed.xmtheader.udp.v1.1.sessionid", ftypes.UINT32)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.source_id = ProtoField.new("Source Id", "tmx.quantumfeed.xmtheader.udp.v1.1.sourceid", ftypes.STRING)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.quantumfeed.xmtheader.udp.v1.1.startofframe", ftypes.INT8)
tmx_quantumfeed_xmtheader_udp_v1_1.fields.stream_id = ProtoField.new("Stream Id", "tmx.quantumfeed.xmtheader.udp.v1.1.streamid", ftypes.UINT16)

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
tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body = Pref.bool("Show Body", show.body, "Parse and add Body to protocol tree")
tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_header = Pref.bool("Show Body Header", show.body_header, "Parse and add Body Header to protocol tree")
tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_message = Pref.bool("Show Body Message", show.body_message, "Parse and add Body Message to protocol tree")
tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_business_header = Pref.bool("Show Business Header", show.business_header, "Parse and add Business Header to protocol tree")
tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_frame_header = Pref.bool("Show Frame Header", show.frame_header, "Parse and add Frame Header to protocol tree")
tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")

-- Handle changed preferences
function tmx_quantumfeed_xmtheader_udp_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.body ~= tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body then
    show.body = tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body
    changed = true
  end
  if show.body_header ~= tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_header then
    show.body_header = tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_header
    changed = true
  end
  if show.body_message ~= tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_message then
    show.body_message = tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_body_message
    changed = true
  end
  if show.business_header ~= tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_business_header then
    show.business_header = tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_business_header
    changed = true
  end
  if show.frame_header ~= tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_frame_header then
    show.frame_header = tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_frame_header
    changed = true
  end
  if show.packet ~= tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_packet then
    show.packet = tmx_quantumfeed_xmtheader_udp_v1_1.prefs.show_packet
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

-- Display: Business Message
tmx_quantumfeed_xmtheader_udp_v1_1_display.business_message = function(value)
  return "Business Message: "..value
end

-- Dissect runtime sized field: Business Message
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.business_message = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.business_message(value, buffer, offset, packet, parent, size)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.business_message, range, value, display)

  return offset + size
end

-- Size: Sequence 1
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.sequence_1 = 4

-- Display: Sequence 1
tmx_quantumfeed_xmtheader_udp_v1_1_display.sequence_1 = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.sequence_1 = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.sequence_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.sequence_1(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Size: Sequence 0
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.sequence_0 = 1

-- Display: Sequence 0
tmx_quantumfeed_xmtheader_udp_v1_1_display.sequence_0 = function(value)
  return "Sequence 0: "..value
end

-- Dissect: Sequence 0
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.sequence_0 = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.sequence_0
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.sequence_0(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Size: Stream Id
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.stream_id = 2

-- Display: Stream Id
tmx_quantumfeed_xmtheader_udp_v1_1_display.stream_id = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.stream_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.stream_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.stream_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Size: Source Id
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.source_id = 1

-- Display: Source Id
tmx_quantumfeed_xmtheader_udp_v1_1_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.source_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.source_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.source_id, range, value, display)

  return offset + length, value
end

-- Size: Msg Version
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.msg_version = 1

-- Display: Msg Version
tmx_quantumfeed_xmtheader_udp_v1_1_display.msg_version = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.msg_version = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.msg_version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.msg_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Business Header
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.business_header = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.msg_version

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.source_id

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.stream_id

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.sequence_0

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.sequence_1

  return index
end

-- Display: Business Header
tmx_quantumfeed_xmtheader_udp_v1_1_display.business_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Header
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.business_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: 1 Byte Unsigned Fixed Width Integer
  index, msg_version = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.msg_version(buffer, index, packet, parent)

  -- Source Id: 1 Byte Ascii String
  index, source_id = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.source_id(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.stream_id(buffer, index, packet, parent)

  -- Sequence 0: 1 Byte Unsigned Fixed Width Integer
  index, sequence_0 = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.sequence_0(buffer, index, packet, parent)

  -- Sequence 1: 4 Byte Unsigned Fixed Width Integer
  index, sequence_1 = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.sequence_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.business_header = function(buffer, offset, packet, parent)
  if show.business_header then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.business_header, buffer(offset, 0))
    local index = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.business_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.business_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_xmtheader_udp_v1_1_dissect.business_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Body Message
tmx_quantumfeed_xmtheader_udp_v1_1_display.body_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Message
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_message_fields = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.business_header(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Business Message
  local size_of_business_message = msg_length - 12

  -- Business Message: 0 Byte
  index = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.business_message(buffer, index, packet, parent, size_of_business_message)

  return index
end

-- Dissect: Body Message
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_message = function(buffer, offset, packet, parent, size_of_body_message)
  -- Optionally add struct element to protocol tree
  if show.body_message then
    local range = buffer(offset, size_of_body_message)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.body_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_message, range, display)
  end

  tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_message_fields(buffer, offset, packet, parent, size_of_body_message)

  return offset + size_of_body_message
end

-- Size: Msg Type
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.msg_type = 1

-- Display: Msg Type
tmx_quantumfeed_xmtheader_udp_v1_1_display.msg_type = function(value)
  return "Msg Type: "..value
end

-- Dissect: Msg Type
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.msg_type = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.msg_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.msg_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Size: Msg Length
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.msg_length = 2

-- Display: Msg Length
tmx_quantumfeed_xmtheader_udp_v1_1_display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.msg_length = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.msg_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Body Header
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.body_header = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.msg_length

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.msg_type

  return index
end

-- Display: Body Header
tmx_quantumfeed_xmtheader_udp_v1_1_display.body_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Header
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.msg_length(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Ascii String
  index, msg_type = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.msg_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_header = function(buffer, offset, packet, parent)
  if show.body_header then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.body_header, buffer(offset, 0))
    local index = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.body_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Body
tmx_quantumfeed_xmtheader_udp_v1_1_display.body = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_fields = function(buffer, offset, packet, parent, size_of_body)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_header(buffer, index, packet, parent)

  -- Dependency element: Num Body
  local num_body = buffer(offset - 1, 1):uint()

  -- Body Message: Struct of 2 fields
  for i = 1, num_body do

    -- Dependency element: Msg Length
    local msg_length = buffer(index - 3, 2):le_uint()

    -- Runtime Size Of: Body Message
    local size_of_body_message = msg_length - 3

    -- Body Message: Struct of 2 fields
    index = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_message(buffer, index, packet, parent, size_of_body_message)
  end

  return index
end

-- Dissect: Body
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body = function(buffer, offset, packet, parent, size_of_body)
  -- Optionally add struct element to protocol tree
  if show.body then
    local range = buffer(offset, size_of_body)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.body, range, display)
  end

  tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body_fields(buffer, offset, packet, parent, size_of_body)

  return offset + size_of_body
end

-- Size: Num Body
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.num_body = 1

-- Display: Num Body
tmx_quantumfeed_xmtheader_udp_v1_1_display.num_body = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.num_body = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.num_body
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.num_body(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.num_body, range, value, display)

  return offset + length, value
end

-- Size: Ack Required Poss Dup
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.ack_required_poss_dup = 1

-- Display: Ack Required Poss Dup
tmx_quantumfeed_xmtheader_udp_v1_1_display.ack_required_poss_dup = function(value)
  if value == "0" then
    return "Ack Required Poss Dup: Unused (0)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.ack_required_poss_dup = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.ack_required_poss_dup
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.ack_required_poss_dup(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Size: Session Id
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.session_id = 4

-- Display: Session Id
tmx_quantumfeed_xmtheader_udp_v1_1_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.session_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.session_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Message Length
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.message_length = 2

-- Display: Message Length
tmx_quantumfeed_xmtheader_udp_v1_1_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.message_length = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.message_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Protocol Version
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.protocol_version = 1

-- Display: Protocol Version
tmx_quantumfeed_xmtheader_udp_v1_1_display.protocol_version = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.protocol_version = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.protocol_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.protocol_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Size: Protocol Name
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.protocol_name = 1

-- Display: Protocol Name
tmx_quantumfeed_xmtheader_udp_v1_1_display.protocol_name = function(value)
  if value == "X" then
    return "Protocol Name: Xmt (X)"
  end

  return "Protocol Name: Unknown("..value..")"
end

-- Dissect: Protocol Name
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.protocol_name = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.protocol_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.protocol_name(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Size: Start Of Frame
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.start_of_frame = 1

-- Display: Start Of Frame
tmx_quantumfeed_xmtheader_udp_v1_1_display.start_of_frame = function(value)
  if value == 2 then
    return "Start Of Frame: New Frame (2)"
  end

  return "Start Of Frame: Unknown("..value..")"
end

-- Dissect: Start Of Frame
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.start_of_frame = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_xmtheader_udp_v1_1_size_of.start_of_frame
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.start_of_frame(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Calculate size of: Frame Header
tmx_quantumfeed_xmtheader_udp_v1_1_size_of.frame_header = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.start_of_frame

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.protocol_name

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.protocol_version

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.message_length

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.session_id

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.ack_required_poss_dup

  index = index + tmx_quantumfeed_xmtheader_udp_v1_1_size_of.num_body

  return index
end

-- Display: Frame Header
tmx_quantumfeed_xmtheader_udp_v1_1_display.frame_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame Header
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.frame_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: 1 Byte Fixed Width Integer Enum with 1 values
  index, start_of_frame = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.start_of_frame(buffer, index, packet, parent)

  -- Protocol Name: 1 Byte Ascii String Enum with 1 values
  index, protocol_name = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.protocol_name(buffer, index, packet, parent)

  -- Protocol Version: 1 Byte Ascii String
  index, protocol_version = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.protocol_version(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.message_length(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.session_id(buffer, index, packet, parent)

  -- Ack Required Poss Dup: 1 Byte Ascii String Enum with 1 values
  index, ack_required_poss_dup = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.ack_required_poss_dup(buffer, index, packet, parent)

  -- Num Body: 1 Byte Unsigned Fixed Width Integer
  index, num_body = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.num_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.frame_header = function(buffer, offset, packet, parent)
  if show.frame_header then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_xmtheader_udp_v1_1.fields.frame_header, buffer(offset, 0))
    local index = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.frame_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_xmtheader_udp_v1_1_display.frame_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_xmtheader_udp_v1_1_dissect.frame_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
tmx_quantumfeed_xmtheader_udp_v1_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.frame_header(buffer, index, packet, parent)

    -- Dependency element: Msg Length
    local msg_length = buffer(index, 2):le_uint()

    -- Body: Struct of 2 fields
    index = tmx_quantumfeed_xmtheader_udp_v1_1_dissect.body(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function tmx_quantumfeed_xmtheader_udp_v1_1.init()
end

-- Dissector for Tmx QuantumFeed XmtHeader Udp 1.1
function tmx_quantumfeed_xmtheader_udp_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = tmx_quantumfeed_xmtheader_udp_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(tmx_quantumfeed_xmtheader_udp_v1_1, buffer(), tmx_quantumfeed_xmtheader_udp_v1_1.description, "("..buffer:len().." Bytes)")
  return tmx_quantumfeed_xmtheader_udp_v1_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, tmx_quantumfeed_xmtheader_udp_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.tmx_quantumfeed_xmtheader_udp_v1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Tmx QuantumFeed XmtHeader Udp 1.1
local function tmx_quantumfeed_xmtheader_udp_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.tmx_quantumfeed_xmtheader_udp_v1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = tmx_quantumfeed_xmtheader_udp_v1_1
  tmx_quantumfeed_xmtheader_udp_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx QuantumFeed XmtHeader Udp 1.1
tmx_quantumfeed_xmtheader_udp_v1_1:register_heuristic("udp", tmx_quantumfeed_xmtheader_udp_v1_1_heuristic)

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
