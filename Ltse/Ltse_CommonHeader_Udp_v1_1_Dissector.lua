-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ltse CommonHeader Udp 1.1 Protocol
local omi_ltse_commonheader_udp_v1_1 = Proto("Omi.Ltse.CommonHeader.Udp.v1.1", "Ltse CommonHeader Udp 1.1")

-- Protocol table
local ltse_commonheader_udp_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ltse CommonHeader Udp 1.1 Fields
omi_ltse_commonheader_udp_v1_1.fields.block_length = ProtoField.new("Block Length", "ltse.commonheader.udp.v1.1.blocklength", ftypes.UINT16)
omi_ltse_commonheader_udp_v1_1.fields.common_header = ProtoField.new("Common Header", "ltse.commonheader.udp.v1.1.commonheader", ftypes.STRING)
omi_ltse_commonheader_udp_v1_1.fields.header_length = ProtoField.new("Header Length", "ltse.commonheader.udp.v1.1.headerlength", ftypes.UINT8)
omi_ltse_commonheader_udp_v1_1.fields.message = ProtoField.new("Message", "ltse.commonheader.udp.v1.1.message", ftypes.STRING)
omi_ltse_commonheader_udp_v1_1.fields.message_count = ProtoField.new("Message Count", "ltse.commonheader.udp.v1.1.messagecount", ftypes.UINT16)
omi_ltse_commonheader_udp_v1_1.fields.message_length = ProtoField.new("Message Length", "ltse.commonheader.udp.v1.1.messagelength", ftypes.UINT16)
omi_ltse_commonheader_udp_v1_1.fields.message_type = ProtoField.new("Message Type", "ltse.commonheader.udp.v1.1.messagetype", ftypes.UINT8)
omi_ltse_commonheader_udp_v1_1.fields.packet = ProtoField.new("Packet", "ltse.commonheader.udp.v1.1.packet", ftypes.STRING)
omi_ltse_commonheader_udp_v1_1.fields.payload = ProtoField.new("Payload", "ltse.commonheader.udp.v1.1.payload", ftypes.BYTES)
omi_ltse_commonheader_udp_v1_1.fields.sbe_header = ProtoField.new("Sbe Header", "ltse.commonheader.udp.v1.1.sbeheader", ftypes.STRING)
omi_ltse_commonheader_udp_v1_1.fields.sbe_message = ProtoField.new("Sbe Message", "ltse.commonheader.udp.v1.1.sbemessage", ftypes.STRING)
omi_ltse_commonheader_udp_v1_1.fields.schema_id = ProtoField.new("Schema Id", "ltse.commonheader.udp.v1.1.schemaid", ftypes.UINT8)
omi_ltse_commonheader_udp_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "ltse.commonheader.udp.v1.1.sequencenumber", ftypes.UINT64)
omi_ltse_commonheader_udp_v1_1.fields.sequenced_message = ProtoField.new("Sequenced Message", "ltse.commonheader.udp.v1.1.sequencedmessage", ftypes.STRING)
omi_ltse_commonheader_udp_v1_1.fields.session_id = ProtoField.new("Session Id", "ltse.commonheader.udp.v1.1.sessionid", ftypes.UINT64)
omi_ltse_commonheader_udp_v1_1.fields.template_id = ProtoField.new("Template Id", "ltse.commonheader.udp.v1.1.templateid", ftypes.UINT8)
omi_ltse_commonheader_udp_v1_1.fields.version = ProtoField.new("Version", "ltse.commonheader.udp.v1.1.version", ftypes.UINT16)

-- Ltse CommonHeader Udp 1.1 generated fields
omi_ltse_commonheader_udp_v1_1.fields.message_index = ProtoField.new("Message Index", "ltse.commonheader.udp.v1.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Ltse CommonHeader Udp 1.1 Element Dissection Options
show.common_header = true
show.message = true
show.packet = true
show.sbe_header = true
show.sbe_message = true
show.sequenced_message = true
show.message_index = true

-- Register Ltse CommonHeader Udp 1.1 Show Options
omi_ltse_commonheader_udp_v1_1.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_ltse_commonheader_udp_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_ltse_commonheader_udp_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_ltse_commonheader_udp_v1_1.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_ltse_commonheader_udp_v1_1.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_ltse_commonheader_udp_v1_1.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_ltse_commonheader_udp_v1_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_ltse_commonheader_udp_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.common_header ~= omi_ltse_commonheader_udp_v1_1.prefs.show_common_header then
    show.common_header = omi_ltse_commonheader_udp_v1_1.prefs.show_common_header
  end
  if show.message ~= omi_ltse_commonheader_udp_v1_1.prefs.show_message then
    show.message = omi_ltse_commonheader_udp_v1_1.prefs.show_message
  end
  if show.packet ~= omi_ltse_commonheader_udp_v1_1.prefs.show_packet then
    show.packet = omi_ltse_commonheader_udp_v1_1.prefs.show_packet
  end
  if show.sbe_header ~= omi_ltse_commonheader_udp_v1_1.prefs.show_sbe_header then
    show.sbe_header = omi_ltse_commonheader_udp_v1_1.prefs.show_sbe_header
  end
  if show.sbe_message ~= omi_ltse_commonheader_udp_v1_1.prefs.show_sbe_message then
    show.sbe_message = omi_ltse_commonheader_udp_v1_1.prefs.show_sbe_message
  end
  if show.sequenced_message ~= omi_ltse_commonheader_udp_v1_1.prefs.show_sequenced_message then
    show.sequenced_message = omi_ltse_commonheader_udp_v1_1.prefs.show_sequenced_message
  end
  if show.message_index ~= omi_ltse_commonheader_udp_v1_1.prefs.show_message_index then
    show.message_index = omi_ltse_commonheader_udp_v1_1.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Ltse CommonHeader Udp 1.1 Fields
-----------------------------------------------------------------------

-- Block Length
ltse_commonheader_udp_v1_1.block_length = {}

-- Size: Block Length
ltse_commonheader_udp_v1_1.block_length.size = 2

-- Display: Block Length
ltse_commonheader_udp_v1_1.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
ltse_commonheader_udp_v1_1.block_length.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_udp_v1_1.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Header Length
ltse_commonheader_udp_v1_1.header_length = {}

-- Size: Header Length
ltse_commonheader_udp_v1_1.header_length.size = 1

-- Display: Header Length
ltse_commonheader_udp_v1_1.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
ltse_commonheader_udp_v1_1.header_length.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_udp_v1_1.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Count
ltse_commonheader_udp_v1_1.message_count = {}

-- Size: Message Count
ltse_commonheader_udp_v1_1.message_count.size = 2

-- Display: Message Count
ltse_commonheader_udp_v1_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
ltse_commonheader_udp_v1_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_udp_v1_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
ltse_commonheader_udp_v1_1.message_length = {}

-- Size: Message Length
ltse_commonheader_udp_v1_1.message_length.size = 2

-- Display: Message Length
ltse_commonheader_udp_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
ltse_commonheader_udp_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_udp_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
ltse_commonheader_udp_v1_1.message_type = {}

-- Size: Message Type
ltse_commonheader_udp_v1_1.message_type.size = 1

-- Display: Message Type
ltse_commonheader_udp_v1_1.message_type.display = function(value)
  if value == 0 then
    return "Message Type: Heartbeat Message (0)"
  end
  if value == 1 then
    return "Message Type: Session Shutdown Message (1)"
  end
  if value == 2 then
    return "Message Type: Sequenced Message (2)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
ltse_commonheader_udp_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_udp_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Payload
ltse_commonheader_udp_v1_1.payload = {}

-- Display: Payload
ltse_commonheader_udp_v1_1.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
ltse_commonheader_udp_v1_1.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = ltse_commonheader_udp_v1_1.payload.display(value, packet, parent, size)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.payload, range, value, display)

  return offset + size, value
end

-- Schema Id
ltse_commonheader_udp_v1_1.schema_id = {}

-- Size: Schema Id
ltse_commonheader_udp_v1_1.schema_id.size = 1

-- Display: Schema Id
ltse_commonheader_udp_v1_1.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
ltse_commonheader_udp_v1_1.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_udp_v1_1.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
ltse_commonheader_udp_v1_1.sequence_number = {}

-- Size: Sequence Number
ltse_commonheader_udp_v1_1.sequence_number.size = 8

-- Display: Sequence Number
ltse_commonheader_udp_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
ltse_commonheader_udp_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_commonheader_udp_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
ltse_commonheader_udp_v1_1.session_id = {}

-- Size: Session Id
ltse_commonheader_udp_v1_1.session_id.size = 8

-- Display: Session Id
ltse_commonheader_udp_v1_1.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
ltse_commonheader_udp_v1_1.session_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ltse_commonheader_udp_v1_1.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Template Id
ltse_commonheader_udp_v1_1.template_id = {}

-- Size: Template Id
ltse_commonheader_udp_v1_1.template_id.size = 1

-- Display: Template Id
ltse_commonheader_udp_v1_1.template_id.display = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
ltse_commonheader_udp_v1_1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_udp_v1_1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Version
ltse_commonheader_udp_v1_1.version = {}

-- Size: Version
ltse_commonheader_udp_v1_1.version.size = 2

-- Display: Version
ltse_commonheader_udp_v1_1.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
ltse_commonheader_udp_v1_1.version.dissect = function(buffer, offset, packet, parent)
  local length = ltse_commonheader_udp_v1_1.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ltse_commonheader_udp_v1_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_ltse_commonheader_udp_v1_1.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Ltse CommonHeader Udp 1.1
-----------------------------------------------------------------------

-- Sbe Header
ltse_commonheader_udp_v1_1.sbe_header = {}

-- Size: Sbe Header
ltse_commonheader_udp_v1_1.sbe_header.size =
  ltse_commonheader_udp_v1_1.block_length.size + 
  ltse_commonheader_udp_v1_1.template_id.size + 
  ltse_commonheader_udp_v1_1.schema_id.size + 
  ltse_commonheader_udp_v1_1.version.size

-- Display: Sbe Header
ltse_commonheader_udp_v1_1.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
ltse_commonheader_udp_v1_1.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = ltse_commonheader_udp_v1_1.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer
  index, template_id = ltse_commonheader_udp_v1_1.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer
  index, schema_id = ltse_commonheader_udp_v1_1.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer
  index, version = ltse_commonheader_udp_v1_1.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
ltse_commonheader_udp_v1_1.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_udp_v1_1.fields.sbe_header, buffer(offset, 0))
    local index = ltse_commonheader_udp_v1_1.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_udp_v1_1.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_udp_v1_1.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
ltse_commonheader_udp_v1_1.sbe_message = {}

-- Display: Sbe Message
ltse_commonheader_udp_v1_1.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
ltse_commonheader_udp_v1_1.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = ltse_commonheader_udp_v1_1.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Length
  local block_length = buffer(index - 6, 2):uint()

  -- Runtime Size Of: Payload
  index, payload = ltse_commonheader_udp_v1_1.payload.dissect(buffer, index, packet, parent, block_length)

  return index
end

-- Dissect: Sbe Message
ltse_commonheader_udp_v1_1.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_ltse_commonheader_udp_v1_1.fields.sbe_message, buffer(offset, 0))
    local current = ltse_commonheader_udp_v1_1.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = ltse_commonheader_udp_v1_1.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    ltse_commonheader_udp_v1_1.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Message
ltse_commonheader_udp_v1_1.message = {}

-- Display: Message
ltse_commonheader_udp_v1_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
ltse_commonheader_udp_v1_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_ltse_commonheader_udp_v1_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = ltse_commonheader_udp_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = ltse_commonheader_udp_v1_1.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Message
ltse_commonheader_udp_v1_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_ltse_commonheader_udp_v1_1.fields.message, buffer(offset, 0))
    local current = ltse_commonheader_udp_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = ltse_commonheader_udp_v1_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    ltse_commonheader_udp_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Sequenced Message
ltse_commonheader_udp_v1_1.sequenced_message = {}

-- Calculate size of: Sequenced Message
ltse_commonheader_udp_v1_1.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + ltse_commonheader_udp_v1_1.message_count.size

  -- Parse runtime size of: Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Sequenced Message
ltse_commonheader_udp_v1_1.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
ltse_commonheader_udp_v1_1.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = ltse_commonheader_udp_v1_1.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = ltse_commonheader_udp_v1_1.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end

-- Dissect: Sequenced Message
ltse_commonheader_udp_v1_1.sequenced_message.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_udp_v1_1.fields.sequenced_message, buffer(offset, 0))
    local index = ltse_commonheader_udp_v1_1.sequenced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_udp_v1_1.sequenced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_udp_v1_1.sequenced_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Messages
ltse_commonheader_udp_v1_1.sequenced_messages = {}

-- Dissect: Sequenced Messages
ltse_commonheader_udp_v1_1.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return ltse_commonheader_udp_v1_1.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Common Header
ltse_commonheader_udp_v1_1.common_header = {}

-- Size: Common Header
ltse_commonheader_udp_v1_1.common_header.size =
  ltse_commonheader_udp_v1_1.message_type.size + 
  ltse_commonheader_udp_v1_1.header_length.size + 
  ltse_commonheader_udp_v1_1.session_id.size + 
  ltse_commonheader_udp_v1_1.sequence_number.size

-- Display: Common Header
ltse_commonheader_udp_v1_1.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
ltse_commonheader_udp_v1_1.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = ltse_commonheader_udp_v1_1.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = ltse_commonheader_udp_v1_1.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = ltse_commonheader_udp_v1_1.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = ltse_commonheader_udp_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
ltse_commonheader_udp_v1_1.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ltse_commonheader_udp_v1_1.fields.common_header, buffer(offset, 0))
    local index = ltse_commonheader_udp_v1_1.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ltse_commonheader_udp_v1_1.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ltse_commonheader_udp_v1_1.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
ltse_commonheader_udp_v1_1.packet = {}

-- Verify required size of Udp packet
ltse_commonheader_udp_v1_1.packet.requiredsize = function(buffer)
  return buffer:len() >= ltse_commonheader_udp_v1_1.common_header.size
end

-- Dissect Packet
ltse_commonheader_udp_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = ltse_commonheader_udp_v1_1.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = ltse_commonheader_udp_v1_1.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_ltse_commonheader_udp_v1_1.init()
end

-- Dissector for Ltse CommonHeader Udp 1.1
function omi_ltse_commonheader_udp_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_ltse_commonheader_udp_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_ltse_commonheader_udp_v1_1, buffer(), omi_ltse_commonheader_udp_v1_1.description, "("..buffer:len().." Bytes)")
  return ltse_commonheader_udp_v1_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Ltse CommonHeader Udp 1.1 (Udp)
local function omi_ltse_commonheader_udp_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not ltse_commonheader_udp_v1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_ltse_commonheader_udp_v1_1
  omi_ltse_commonheader_udp_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Ltse CommonHeader Udp 1.1
omi_ltse_commonheader_udp_v1_1:register_heuristic("udp", omi_ltse_commonheader_udp_v1_1_udp_heuristic)

-- Register Ltse CommonHeader Udp 1.1 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_ltse_commonheader_udp_v1_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Long-Term Stock Exchange
--   Version: 1.1
--   Date: Wednesday, December 13, 2023
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
