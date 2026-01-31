-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Boats CommonHeader Udp 1.1 Protocol
local omi_boats_commonheader_udp_v1_1 = Proto("Boats.CommonHeader.Udp.v1.1.Lua", "Boats CommonHeader Udp 1.1")

-- Protocol table
local boats_commonheader_udp_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Boats CommonHeader Udp 1.1 Fields
omi_boats_commonheader_udp_v1_1.fields.block_length = ProtoField.new("Block Length", "boats.commonheader.udp.v1.1.blocklength", ftypes.UINT16)
omi_boats_commonheader_udp_v1_1.fields.common_header = ProtoField.new("Common Header", "boats.commonheader.udp.v1.1.commonheader", ftypes.STRING)
omi_boats_commonheader_udp_v1_1.fields.header_length = ProtoField.new("Header Length", "boats.commonheader.udp.v1.1.headerlength", ftypes.UINT8)
omi_boats_commonheader_udp_v1_1.fields.message = ProtoField.new("Message", "boats.commonheader.udp.v1.1.message", ftypes.STRING)
omi_boats_commonheader_udp_v1_1.fields.message_count = ProtoField.new("Message Count", "boats.commonheader.udp.v1.1.messagecount", ftypes.UINT16)
omi_boats_commonheader_udp_v1_1.fields.message_length = ProtoField.new("Message Length", "boats.commonheader.udp.v1.1.messagelength", ftypes.UINT16)
omi_boats_commonheader_udp_v1_1.fields.message_type = ProtoField.new("Message Type", "boats.commonheader.udp.v1.1.messagetype", ftypes.UINT8)
omi_boats_commonheader_udp_v1_1.fields.packet = ProtoField.new("Packet", "boats.commonheader.udp.v1.1.packet", ftypes.STRING)
omi_boats_commonheader_udp_v1_1.fields.payload = ProtoField.new("Payload", "boats.commonheader.udp.v1.1.payload", ftypes.BYTES)
omi_boats_commonheader_udp_v1_1.fields.sbe_header = ProtoField.new("Sbe Header", "boats.commonheader.udp.v1.1.sbeheader", ftypes.STRING)
omi_boats_commonheader_udp_v1_1.fields.sbe_message = ProtoField.new("Sbe Message", "boats.commonheader.udp.v1.1.sbemessage", ftypes.STRING)
omi_boats_commonheader_udp_v1_1.fields.schema_id = ProtoField.new("Schema Id", "boats.commonheader.udp.v1.1.schemaid", ftypes.UINT8)
omi_boats_commonheader_udp_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "boats.commonheader.udp.v1.1.sequencenumber", ftypes.UINT64)
omi_boats_commonheader_udp_v1_1.fields.sequenced_message = ProtoField.new("Sequenced Message", "boats.commonheader.udp.v1.1.sequencedmessage", ftypes.STRING)
omi_boats_commonheader_udp_v1_1.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "boats.commonheader.udp.v1.1.sequencedmessages", ftypes.STRING)
omi_boats_commonheader_udp_v1_1.fields.session_id = ProtoField.new("Session Id", "boats.commonheader.udp.v1.1.sessionid", ftypes.UINT64)
omi_boats_commonheader_udp_v1_1.fields.template_id = ProtoField.new("Template Id", "boats.commonheader.udp.v1.1.templateid", ftypes.UINT8)
omi_boats_commonheader_udp_v1_1.fields.version = ProtoField.new("Version", "boats.commonheader.udp.v1.1.version", ftypes.UINT16)

-- Boats CommonHeader Udp 1.1 generated fields
omi_boats_commonheader_udp_v1_1.fields.message_index = ProtoField.new("Message Index", "boats.commonheader.udp.v1.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Boats CommonHeader Udp 1.1 Element Dissection Options
show.common_header = true
show.message = true
show.packet = true
show.sbe_header = true
show.sbe_message = true
show.sequenced_message = true
show.sequenced_messages = false

-- Register Boats CommonHeader Udp 1.1 Show Options
omi_boats_commonheader_udp_v1_1.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_boats_commonheader_udp_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_boats_commonheader_udp_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_boats_commonheader_udp_v1_1.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_boats_commonheader_udp_v1_1.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_boats_commonheader_udp_v1_1.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_boats_commonheader_udp_v1_1.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_boats_commonheader_udp_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.common_header ~= omi_boats_commonheader_udp_v1_1.prefs.show_common_header then
    show.common_header = omi_boats_commonheader_udp_v1_1.prefs.show_common_header
    changed = true
  end
  if show.message ~= omi_boats_commonheader_udp_v1_1.prefs.show_message then
    show.message = omi_boats_commonheader_udp_v1_1.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_boats_commonheader_udp_v1_1.prefs.show_packet then
    show.packet = omi_boats_commonheader_udp_v1_1.prefs.show_packet
    changed = true
  end
  if show.sbe_header ~= omi_boats_commonheader_udp_v1_1.prefs.show_sbe_header then
    show.sbe_header = omi_boats_commonheader_udp_v1_1.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_boats_commonheader_udp_v1_1.prefs.show_sbe_message then
    show.sbe_message = omi_boats_commonheader_udp_v1_1.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_boats_commonheader_udp_v1_1.prefs.show_sequenced_message then
    show.sequenced_message = omi_boats_commonheader_udp_v1_1.prefs.show_sequenced_message
    changed = true
  end
  if show.sequenced_messages ~= omi_boats_commonheader_udp_v1_1.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_boats_commonheader_udp_v1_1.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Boats CommonHeader Udp 1.1
-----------------------------------------------------------------------

-- Payload
boats_commonheader_udp_v1_1.payload = {}

-- Display: Payload
boats_commonheader_udp_v1_1.payload.display = function(value)
  return "Payload: "..value
end

-- Dissect runtime sized field: Payload
boats_commonheader_udp_v1_1.payload.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = boats_commonheader_udp_v1_1.payload.display(value, packet, parent, size)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.payload, range, value, display)

  return offset + size, value
end

-- Version
boats_commonheader_udp_v1_1.version = {}

-- Size: Version
boats_commonheader_udp_v1_1.version.size = 2

-- Display: Version
boats_commonheader_udp_v1_1.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
boats_commonheader_udp_v1_1.version.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_commonheader_udp_v1_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
boats_commonheader_udp_v1_1.schema_id = {}

-- Size: Schema Id
boats_commonheader_udp_v1_1.schema_id.size = 1

-- Display: Schema Id
boats_commonheader_udp_v1_1.schema_id.display = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
boats_commonheader_udp_v1_1.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_commonheader_udp_v1_1.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
boats_commonheader_udp_v1_1.template_id = {}

-- Size: Template Id
boats_commonheader_udp_v1_1.template_id.size = 1

-- Display: Template Id
boats_commonheader_udp_v1_1.template_id.display = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
boats_commonheader_udp_v1_1.template_id.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_commonheader_udp_v1_1.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
boats_commonheader_udp_v1_1.block_length = {}

-- Size: Block Length
boats_commonheader_udp_v1_1.block_length.size = 2

-- Display: Block Length
boats_commonheader_udp_v1_1.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
boats_commonheader_udp_v1_1.block_length.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_commonheader_udp_v1_1.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
boats_commonheader_udp_v1_1.sbe_header = {}

-- Size: Sbe Header
boats_commonheader_udp_v1_1.sbe_header.size =
  boats_commonheader_udp_v1_1.block_length.size + 
  boats_commonheader_udp_v1_1.template_id.size + 
  boats_commonheader_udp_v1_1.schema_id.size + 
  boats_commonheader_udp_v1_1.version.size

-- Display: Sbe Header
boats_commonheader_udp_v1_1.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
boats_commonheader_udp_v1_1.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = boats_commonheader_udp_v1_1.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 1 Byte Unsigned Fixed Width Integer
  index, template_id = boats_commonheader_udp_v1_1.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 1 Byte Unsigned Fixed Width Integer
  index, schema_id = boats_commonheader_udp_v1_1.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer
  index, version = boats_commonheader_udp_v1_1.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
boats_commonheader_udp_v1_1.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_commonheader_udp_v1_1.fields.sbe_header, buffer(offset, 0))
    local index = boats_commonheader_udp_v1_1.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_commonheader_udp_v1_1.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_commonheader_udp_v1_1.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
boats_commonheader_udp_v1_1.sbe_message = {}

-- Display: Sbe Message
boats_commonheader_udp_v1_1.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
boats_commonheader_udp_v1_1.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = boats_commonheader_udp_v1_1.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Length
  local block_length = buffer(index - 6, 2):uint()

  -- Runtime Size Of: Payload
  index, payload = boats_commonheader_udp_v1_1.payload.dissect(buffer, index, packet, parent, block_length)

  return index
end

-- Dissect: Sbe Message
boats_commonheader_udp_v1_1.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_boats_commonheader_udp_v1_1.fields.sbe_message, buffer(offset, 0))
    local current = boats_commonheader_udp_v1_1.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = boats_commonheader_udp_v1_1.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    boats_commonheader_udp_v1_1.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Message Length
boats_commonheader_udp_v1_1.message_length = {}

-- Size: Message Length
boats_commonheader_udp_v1_1.message_length.size = 2

-- Display: Message Length
boats_commonheader_udp_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
boats_commonheader_udp_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_commonheader_udp_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message
boats_commonheader_udp_v1_1.message = {}

-- Display: Message
boats_commonheader_udp_v1_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
boats_commonheader_udp_v1_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_boats_commonheader_udp_v1_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = boats_commonheader_udp_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Dependency element: Block Length
  local block_length = buffer(index, 2):uint()

  -- Runtime Size Of: Sbe Message
  local size_of_sbe_message = block_length + 6

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = boats_commonheader_udp_v1_1.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)

  return index
end

-- Dissect: Message
boats_commonheader_udp_v1_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_boats_commonheader_udp_v1_1.fields.message, buffer(offset, 0))
    local current = boats_commonheader_udp_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = boats_commonheader_udp_v1_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    boats_commonheader_udp_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
boats_commonheader_udp_v1_1.message_count = {}

-- Size: Message Count
boats_commonheader_udp_v1_1.message_count.size = 2

-- Display: Message Count
boats_commonheader_udp_v1_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
boats_commonheader_udp_v1_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_commonheader_udp_v1_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequenced Message
boats_commonheader_udp_v1_1.sequenced_message = {}

-- Calculate size of: Sequenced Message
boats_commonheader_udp_v1_1.sequenced_message.size = function(buffer, offset)
  local index = 0

  index = index + boats_commonheader_udp_v1_1.message_count.size

  -- Parse runtime size of: Message
  index = index + buffer(offset + index - 0, 2):uint()

  return index
end

-- Display: Sequenced Message
boats_commonheader_udp_v1_1.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
boats_commonheader_udp_v1_1.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = boats_commonheader_udp_v1_1.message_count.dissect(buffer, index, packet, parent)

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = boats_commonheader_udp_v1_1.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end

-- Dissect: Sequenced Message
boats_commonheader_udp_v1_1.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = boats_commonheader_udp_v1_1.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = boats_commonheader_udp_v1_1.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_boats_commonheader_udp_v1_1.fields.sequenced_message, range, display)
  end

  return boats_commonheader_udp_v1_1.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Messages
boats_commonheader_udp_v1_1.sequenced_messages = {}

-- Size: Sequenced Messages
boats_commonheader_udp_v1_1.sequenced_messages.size = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return boats_commonheader_udp_v1_1.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
boats_commonheader_udp_v1_1.sequenced_messages.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
boats_commonheader_udp_v1_1.sequenced_messages.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return boats_commonheader_udp_v1_1.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
boats_commonheader_udp_v1_1.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return boats_commonheader_udp_v1_1.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = boats_commonheader_udp_v1_1.sequenced_messages.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = boats_commonheader_udp_v1_1.sequenced_messages.display(buffer, packet, parent)
  local element = parent:add(omi_boats_commonheader_udp_v1_1.fields.sequenced_messages, range, display)

  return boats_commonheader_udp_v1_1.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
end

-- Sequence Number
boats_commonheader_udp_v1_1.sequence_number = {}

-- Size: Sequence Number
boats_commonheader_udp_v1_1.sequence_number.size = 8

-- Display: Sequence Number
boats_commonheader_udp_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
boats_commonheader_udp_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = boats_commonheader_udp_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
boats_commonheader_udp_v1_1.session_id = {}

-- Size: Session Id
boats_commonheader_udp_v1_1.session_id.size = 8

-- Display: Session Id
boats_commonheader_udp_v1_1.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
boats_commonheader_udp_v1_1.session_id.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = boats_commonheader_udp_v1_1.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Header Length
boats_commonheader_udp_v1_1.header_length = {}

-- Size: Header Length
boats_commonheader_udp_v1_1.header_length.size = 1

-- Display: Header Length
boats_commonheader_udp_v1_1.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
boats_commonheader_udp_v1_1.header_length.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_commonheader_udp_v1_1.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Type
boats_commonheader_udp_v1_1.message_type = {}

-- Size: Message Type
boats_commonheader_udp_v1_1.message_type.size = 1

-- Display: Message Type
boats_commonheader_udp_v1_1.message_type.display = function(value)
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
boats_commonheader_udp_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = boats_commonheader_udp_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = boats_commonheader_udp_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_boats_commonheader_udp_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
boats_commonheader_udp_v1_1.common_header = {}

-- Size: Common Header
boats_commonheader_udp_v1_1.common_header.size =
  boats_commonheader_udp_v1_1.message_type.size + 
  boats_commonheader_udp_v1_1.header_length.size + 
  boats_commonheader_udp_v1_1.session_id.size + 
  boats_commonheader_udp_v1_1.sequence_number.size

-- Display: Common Header
boats_commonheader_udp_v1_1.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
boats_commonheader_udp_v1_1.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = boats_commonheader_udp_v1_1.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = boats_commonheader_udp_v1_1.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = boats_commonheader_udp_v1_1.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = boats_commonheader_udp_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
boats_commonheader_udp_v1_1.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_boats_commonheader_udp_v1_1.fields.common_header, buffer(offset, 0))
    local index = boats_commonheader_udp_v1_1.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = boats_commonheader_udp_v1_1.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return boats_commonheader_udp_v1_1.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
boats_commonheader_udp_v1_1.packet = {}

-- Dissect Packet
boats_commonheader_udp_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = boats_commonheader_udp_v1_1.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = boats_commonheader_udp_v1_1.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_boats_commonheader_udp_v1_1.init()
end

-- Dissector for Boats CommonHeader Udp 1.1
function omi_boats_commonheader_udp_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_boats_commonheader_udp_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_boats_commonheader_udp_v1_1, buffer(), omi_boats_commonheader_udp_v1_1.description, "("..buffer:len().." Bytes)")
  return boats_commonheader_udp_v1_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_boats_commonheader_udp_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
boats_commonheader_udp_v1_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Boats CommonHeader Udp 1.1
local function omi_boats_commonheader_udp_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not boats_commonheader_udp_v1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_boats_commonheader_udp_v1_1
  omi_boats_commonheader_udp_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Boats CommonHeader Udp 1.1
omi_boats_commonheader_udp_v1_1:register_heuristic("udp", omi_boats_commonheader_udp_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Blue Ocean Ats
--   Version: 1.1
--   Date: Monday, January 1, 2024
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
