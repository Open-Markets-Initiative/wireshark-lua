-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Txse Headers Rake Tcp 1.0 Protocol
local omi_txse_headers_rake_tcp_v1_0 = Proto("Txse.Headers.Rake.Tcp.v1.0.Lua", "Txse Headers Rake Tcp 1.0")

-- Protocol table
local txse_headers_rake_tcp_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Txse Headers Rake Tcp 1.0 Fields
omi_txse_headers_rake_tcp_v1_0.fields.debug_message = ProtoField.new("Debug Message", "txse.headers.rake.tcp.v1.0.debugmessage", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.highest_known_sequence_number = ProtoField.new("Highest Known Sequence Number", "txse.headers.rake.tcp.v1.0.highestknownsequencenumber", ftypes.UINT64)
omi_txse_headers_rake_tcp_v1_0.fields.logon_request_packet = ProtoField.new("Logon Request Packet", "txse.headers.rake.tcp.v1.0.logonrequestpacket", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.logon_response_code = ProtoField.new("Logon Response Code", "txse.headers.rake.tcp.v1.0.logonresponsecode", ftypes.UINT8)
omi_txse_headers_rake_tcp_v1_0.fields.logon_response_message = ProtoField.new("Logon Response Message", "txse.headers.rake.tcp.v1.0.logonresponsemessage", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.member_token = ProtoField.new("Member Token", "txse.headers.rake.tcp.v1.0.membertoken", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.message_length = ProtoField.new("Message Length", "txse.headers.rake.tcp.v1.0.messagelength", ftypes.UINT16)
omi_txse_headers_rake_tcp_v1_0.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "txse.headers.rake.tcp.v1.0.nextsequencenumber", ftypes.UINT64)
omi_txse_headers_rake_tcp_v1_0.fields.number_stream_ids = ProtoField.new("Number Stream Ids", "txse.headers.rake.tcp.v1.0.numberstreamids", ftypes.UINT8)
omi_txse_headers_rake_tcp_v1_0.fields.packet = ProtoField.new("Packet", "txse.headers.rake.tcp.v1.0.packet", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.packet_type = ProtoField.new("Packet Type", "txse.headers.rake.tcp.v1.0.packettype", ftypes.UINT8)
omi_txse_headers_rake_tcp_v1_0.fields.payload = ProtoField.new("Payload", "txse.headers.rake.tcp.v1.0.payload", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.rake_instance = ProtoField.new("Rake Instance", "txse.headers.rake.tcp.v1.0.rakeinstance", ftypes.UINT32)
omi_txse_headers_rake_tcp_v1_0.fields.rake_message_header = ProtoField.new("Rake Message Header", "txse.headers.rake.tcp.v1.0.rakemessageheader", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.rake_tcp_message = ProtoField.new("Rake Tcp Message", "txse.headers.rake.tcp.v1.0.raketcpmessage", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "txse.headers.rake.tcp.v1.0.requestedsequencenumber", ftypes.UINT64)
omi_txse_headers_rake_tcp_v1_0.fields.sender_comp = ProtoField.new("Sender Comp", "txse.headers.rake.tcp.v1.0.sendercomp", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "txse.headers.rake.tcp.v1.0.sequencedmessage", ftypes.BYTES)
omi_txse_headers_rake_tcp_v1_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "txse.headers.rake.tcp.v1.0.sequencedmessagetype", ftypes.UINT8)
omi_txse_headers_rake_tcp_v1_0.fields.session = ProtoField.new("Session", "txse.headers.rake.tcp.v1.0.session", ftypes.UINT64)
omi_txse_headers_rake_tcp_v1_0.fields.stream_id = ProtoField.new("Stream Id", "txse.headers.rake.tcp.v1.0.streamid", ftypes.UINT8)
omi_txse_headers_rake_tcp_v1_0.fields.tcp_sequenced_message = ProtoField.new("Tcp Sequenced Message", "txse.headers.rake.tcp.v1.0.tcpsequencedmessage", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.tcp_unsequenced_packet = ProtoField.new("Tcp Unsequenced Packet", "txse.headers.rake.tcp.v1.0.tcpunsequencedpacket", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.text = ProtoField.new("Text", "txse.headers.rake.tcp.v1.0.text", ftypes.STRING)
omi_txse_headers_rake_tcp_v1_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "txse.headers.rake.tcp.v1.0.unsequencedmessage", ftypes.BYTES)
omi_txse_headers_rake_tcp_v1_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "txse.headers.rake.tcp.v1.0.unsequencedmessagetype", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Txse Headers Rake Tcp 1.0 Element Dissection Options
show.debug_message = true
show.logon_request_packet = true
show.logon_response_message = true
show.packet = true
show.rake_message_header = true
show.rake_tcp_message = true
show.tcp_sequenced_message = true
show.tcp_unsequenced_packet = true
show.payload = false

-- Register Txse Headers Rake Tcp 1.0 Show Options
omi_txse_headers_rake_tcp_v1_0.prefs.show_debug_message = Pref.bool("Show Debug Message", show.debug_message, "Parse and add Debug Message to protocol tree")
omi_txse_headers_rake_tcp_v1_0.prefs.show_logon_request_packet = Pref.bool("Show Logon Request Packet", show.logon_request_packet, "Parse and add Logon Request Packet to protocol tree")
omi_txse_headers_rake_tcp_v1_0.prefs.show_logon_response_message = Pref.bool("Show Logon Response Message", show.logon_response_message, "Parse and add Logon Response Message to protocol tree")
omi_txse_headers_rake_tcp_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_txse_headers_rake_tcp_v1_0.prefs.show_rake_message_header = Pref.bool("Show Rake Message Header", show.rake_message_header, "Parse and add Rake Message Header to protocol tree")
omi_txse_headers_rake_tcp_v1_0.prefs.show_rake_tcp_message = Pref.bool("Show Rake Tcp Message", show.rake_tcp_message, "Parse and add Rake Tcp Message to protocol tree")
omi_txse_headers_rake_tcp_v1_0.prefs.show_tcp_sequenced_message = Pref.bool("Show Tcp Sequenced Message", show.tcp_sequenced_message, "Parse and add Tcp Sequenced Message to protocol tree")
omi_txse_headers_rake_tcp_v1_0.prefs.show_tcp_unsequenced_packet = Pref.bool("Show Tcp Unsequenced Packet", show.tcp_unsequenced_packet, "Parse and add Tcp Unsequenced Packet to protocol tree")
omi_txse_headers_rake_tcp_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_txse_headers_rake_tcp_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.debug_message ~= omi_txse_headers_rake_tcp_v1_0.prefs.show_debug_message then
    show.debug_message = omi_txse_headers_rake_tcp_v1_0.prefs.show_debug_message
    changed = true
  end
  if show.logon_request_packet ~= omi_txse_headers_rake_tcp_v1_0.prefs.show_logon_request_packet then
    show.logon_request_packet = omi_txse_headers_rake_tcp_v1_0.prefs.show_logon_request_packet
    changed = true
  end
  if show.logon_response_message ~= omi_txse_headers_rake_tcp_v1_0.prefs.show_logon_response_message then
    show.logon_response_message = omi_txse_headers_rake_tcp_v1_0.prefs.show_logon_response_message
    changed = true
  end
  if show.packet ~= omi_txse_headers_rake_tcp_v1_0.prefs.show_packet then
    show.packet = omi_txse_headers_rake_tcp_v1_0.prefs.show_packet
    changed = true
  end
  if show.rake_message_header ~= omi_txse_headers_rake_tcp_v1_0.prefs.show_rake_message_header then
    show.rake_message_header = omi_txse_headers_rake_tcp_v1_0.prefs.show_rake_message_header
    changed = true
  end
  if show.rake_tcp_message ~= omi_txse_headers_rake_tcp_v1_0.prefs.show_rake_tcp_message then
    show.rake_tcp_message = omi_txse_headers_rake_tcp_v1_0.prefs.show_rake_tcp_message
    changed = true
  end
  if show.tcp_sequenced_message ~= omi_txse_headers_rake_tcp_v1_0.prefs.show_tcp_sequenced_message then
    show.tcp_sequenced_message = omi_txse_headers_rake_tcp_v1_0.prefs.show_tcp_sequenced_message
    changed = true
  end
  if show.tcp_unsequenced_packet ~= omi_txse_headers_rake_tcp_v1_0.prefs.show_tcp_unsequenced_packet then
    show.tcp_unsequenced_packet = omi_txse_headers_rake_tcp_v1_0.prefs.show_tcp_unsequenced_packet
    changed = true
  end
  if show.payload ~= omi_txse_headers_rake_tcp_v1_0.prefs.show_payload then
    show.payload = omi_txse_headers_rake_tcp_v1_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Txse Headers Rake Tcp 1.0
-----------------------------------------------------------------------

-- Sequenced Message
txse_headers_rake_tcp_v1_0.sequenced_message = {}

-- Display: Sequenced Message
txse_headers_rake_tcp_v1_0.sequenced_message.display = function(value)
  return "Sequenced Message: "..value
end

-- Dissect runtime sized field: Sequenced Message
txse_headers_rake_tcp_v1_0.sequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = txse_headers_rake_tcp_v1_0.sequenced_message.display(value, packet, parent, size)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.sequenced_message, range, value, display)

  return offset + size, value
end

-- Sequenced Message Type
txse_headers_rake_tcp_v1_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
txse_headers_rake_tcp_v1_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
txse_headers_rake_tcp_v1_0.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
txse_headers_rake_tcp_v1_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_headers_rake_tcp_v1_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Stream Id
txse_headers_rake_tcp_v1_0.stream_id = {}

-- Size: Stream Id
txse_headers_rake_tcp_v1_0.stream_id.size = 1

-- Display: Stream Id
txse_headers_rake_tcp_v1_0.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
txse_headers_rake_tcp_v1_0.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.stream_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_headers_rake_tcp_v1_0.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Tcp Sequenced Message
txse_headers_rake_tcp_v1_0.tcp_sequenced_message = {}

-- Read runtime size of: Tcp Sequenced Message
txse_headers_rake_tcp_v1_0.tcp_sequenced_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  return message_length - 1
end

-- Display: Tcp Sequenced Message
txse_headers_rake_tcp_v1_0.tcp_sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Sequenced Message
txse_headers_rake_tcp_v1_0.tcp_sequenced_message.fields = function(buffer, offset, packet, parent, size_of_tcp_sequenced_message)
  local index = offset

  -- Stream Id: 1 Byte Unsigned Fixed Width Integer
  index, stream_id = txse_headers_rake_tcp_v1_0.stream_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Unsigned Fixed Width Integer
  index, sequenced_message_type = txse_headers_rake_tcp_v1_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Sequenced Message
  local size_of_sequenced_message = message_length - 2

  -- Sequenced Message: 0 Byte
  index, sequenced_message = txse_headers_rake_tcp_v1_0.sequenced_message.dissect(buffer, index, packet, parent, size_of_sequenced_message)

  return index
end

-- Dissect: Tcp Sequenced Message
txse_headers_rake_tcp_v1_0.tcp_sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_tcp_sequenced_message = txse_headers_rake_tcp_v1_0.tcp_sequenced_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.tcp_sequenced_message then
    local range = buffer(offset, size_of_tcp_sequenced_message)
    local display = txse_headers_rake_tcp_v1_0.tcp_sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_headers_rake_tcp_v1_0.fields.tcp_sequenced_message, range, display)
  end

  txse_headers_rake_tcp_v1_0.tcp_sequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_sequenced_message)

  return offset + size_of_tcp_sequenced_message
end

-- Rake Instance
txse_headers_rake_tcp_v1_0.rake_instance = {}

-- Size: Rake Instance
txse_headers_rake_tcp_v1_0.rake_instance.size = 4

-- Display: Rake Instance
txse_headers_rake_tcp_v1_0.rake_instance.display = function(value)
  return "Rake Instance: "..value
end

-- Dissect: Rake Instance
txse_headers_rake_tcp_v1_0.rake_instance.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.rake_instance.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_headers_rake_tcp_v1_0.rake_instance.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.rake_instance, range, value, display)

  return offset + length, value
end

-- Number Stream Ids
txse_headers_rake_tcp_v1_0.number_stream_ids = {}

-- Size: Number Stream Ids
txse_headers_rake_tcp_v1_0.number_stream_ids.size = 1

-- Display: Number Stream Ids
txse_headers_rake_tcp_v1_0.number_stream_ids.display = function(value)
  return "Number Stream Ids: "..value
end

-- Dissect: Number Stream Ids
txse_headers_rake_tcp_v1_0.number_stream_ids.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.number_stream_ids.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_headers_rake_tcp_v1_0.number_stream_ids.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.number_stream_ids, range, value, display)

  return offset + length, value
end

-- Logon Response Code
txse_headers_rake_tcp_v1_0.logon_response_code = {}

-- Size: Logon Response Code
txse_headers_rake_tcp_v1_0.logon_response_code.size = 1

-- Display: Logon Response Code
txse_headers_rake_tcp_v1_0.logon_response_code.display = function(value)
  if value == 0 then
    return "Logon Response Code: Success (0)"
  end
  if value == 1 then
    return "Logon Response Code: Incorrect Sender Comp (1)"
  end
  if value == 2 then
    return "Logon Response Code: Incorrect Session (2)"
  end
  if value == 3 then
    return "Logon Response Code: Invalid Next Sequence (3)"
  end
  if value == 4 then
    return "Logon Response Code: Invalid Configuration (4)"
  end
  if value == 5 then
    return "Logon Response Code: Incorrect Token (5)"
  end

  return "Logon Response Code: Unknown("..value..")"
end

-- Dissect: Logon Response Code
txse_headers_rake_tcp_v1_0.logon_response_code.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.logon_response_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_headers_rake_tcp_v1_0.logon_response_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.logon_response_code, range, value, display)

  return offset + length, value
end

-- Highest Known Sequence Number
txse_headers_rake_tcp_v1_0.highest_known_sequence_number = {}

-- Size: Highest Known Sequence Number
txse_headers_rake_tcp_v1_0.highest_known_sequence_number.size = 8

-- Display: Highest Known Sequence Number
txse_headers_rake_tcp_v1_0.highest_known_sequence_number.display = function(value)
  return "Highest Known Sequence Number: "..value
end

-- Dissect: Highest Known Sequence Number
txse_headers_rake_tcp_v1_0.highest_known_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.highest_known_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_headers_rake_tcp_v1_0.highest_known_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.highest_known_sequence_number, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
txse_headers_rake_tcp_v1_0.next_sequence_number = {}

-- Size: Next Sequence Number
txse_headers_rake_tcp_v1_0.next_sequence_number.size = 8

-- Display: Next Sequence Number
txse_headers_rake_tcp_v1_0.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
txse_headers_rake_tcp_v1_0.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_headers_rake_tcp_v1_0.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Session
txse_headers_rake_tcp_v1_0.session = {}

-- Size: Session
txse_headers_rake_tcp_v1_0.session.size = 8

-- Display: Session
txse_headers_rake_tcp_v1_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
txse_headers_rake_tcp_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.session.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_headers_rake_tcp_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Logon Response Message
txse_headers_rake_tcp_v1_0.logon_response_message = {}

-- Size: Logon Response Message
txse_headers_rake_tcp_v1_0.logon_response_message.size =
  txse_headers_rake_tcp_v1_0.session.size + 
  txse_headers_rake_tcp_v1_0.next_sequence_number.size + 
  txse_headers_rake_tcp_v1_0.highest_known_sequence_number.size + 
  txse_headers_rake_tcp_v1_0.logon_response_code.size + 
  txse_headers_rake_tcp_v1_0.number_stream_ids.size + 
  txse_headers_rake_tcp_v1_0.rake_instance.size

-- Display: Logon Response Message
txse_headers_rake_tcp_v1_0.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
txse_headers_rake_tcp_v1_0.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 8 Byte Unsigned Fixed Width Integer
  index, session = txse_headers_rake_tcp_v1_0.session.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, next_sequence_number = txse_headers_rake_tcp_v1_0.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Highest Known Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_known_sequence_number = txse_headers_rake_tcp_v1_0.highest_known_sequence_number.dissect(buffer, index, packet, parent)

  -- Logon Response Code: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, logon_response_code = txse_headers_rake_tcp_v1_0.logon_response_code.dissect(buffer, index, packet, parent)

  -- Number Stream Ids: 1 Byte Unsigned Fixed Width Integer
  index, number_stream_ids = txse_headers_rake_tcp_v1_0.number_stream_ids.dissect(buffer, index, packet, parent)

  -- Rake Instance: 4 Byte Unsigned Fixed Width Integer
  index, rake_instance = txse_headers_rake_tcp_v1_0.rake_instance.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
txse_headers_rake_tcp_v1_0.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_headers_rake_tcp_v1_0.fields.logon_response_message, buffer(offset, 0))
    local index = txse_headers_rake_tcp_v1_0.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_headers_rake_tcp_v1_0.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_headers_rake_tcp_v1_0.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Text
txse_headers_rake_tcp_v1_0.text = {}

-- Display: Text
txse_headers_rake_tcp_v1_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
txse_headers_rake_tcp_v1_0.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = txse_headers_rake_tcp_v1_0.text.display(value, packet, parent, size)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.text, range, value, display)

  return offset + size, value
end

-- Debug Message
txse_headers_rake_tcp_v1_0.debug_message = {}

-- Calculate size of: Debug Message
txse_headers_rake_tcp_v1_0.debug_message.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Debug Message
txse_headers_rake_tcp_v1_0.debug_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Message
txse_headers_rake_tcp_v1_0.debug_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Text
  local size_of_text = message_length - 1

  -- Text: 1 Byte Ascii String
  index, text = txse_headers_rake_tcp_v1_0.text.dissect(buffer, index, packet, parent, size_of_text)

  return index
end

-- Dissect: Debug Message
txse_headers_rake_tcp_v1_0.debug_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.debug_message then
    local length = txse_headers_rake_tcp_v1_0.debug_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = txse_headers_rake_tcp_v1_0.debug_message.display(buffer, packet, parent)
    parent = parent:add(omi_txse_headers_rake_tcp_v1_0.fields.debug_message, range, display)
  end

  return txse_headers_rake_tcp_v1_0.debug_message.fields(buffer, offset, packet, parent)
end

-- Unsequenced Message
txse_headers_rake_tcp_v1_0.unsequenced_message = {}

-- Display: Unsequenced Message
txse_headers_rake_tcp_v1_0.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
txse_headers_rake_tcp_v1_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = txse_headers_rake_tcp_v1_0.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
txse_headers_rake_tcp_v1_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
txse_headers_rake_tcp_v1_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
txse_headers_rake_tcp_v1_0.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
txse_headers_rake_tcp_v1_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_headers_rake_tcp_v1_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Tcp Unsequenced Packet
txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet = {}

-- Calculate size of: Tcp Unsequenced Packet
txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet.size = function(buffer, offset)
  local index = 0

  index = index + txse_headers_rake_tcp_v1_0.unsequenced_message_type.size

  -- Parse runtime size of: Unsequenced Message
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Tcp Unsequenced Packet
txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Unsequenced Packet
txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Unsigned Fixed Width Integer
  index, unsequenced_message_type = txse_headers_rake_tcp_v1_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = message_length - 1

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = txse_headers_rake_tcp_v1_0.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Tcp Unsequenced Packet
txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tcp_unsequenced_packet then
    local length = txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet.size(buffer, offset)
    local range = buffer(offset, length)
    local display = txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet.display(buffer, packet, parent)
    parent = parent:add(omi_txse_headers_rake_tcp_v1_0.fields.tcp_unsequenced_packet, range, display)
  end

  return txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet.fields(buffer, offset, packet, parent)
end

-- Requested Sequence Number
txse_headers_rake_tcp_v1_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
txse_headers_rake_tcp_v1_0.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
txse_headers_rake_tcp_v1_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
txse_headers_rake_tcp_v1_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_headers_rake_tcp_v1_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Member Token
txse_headers_rake_tcp_v1_0.member_token = {}

-- Size: Member Token
txse_headers_rake_tcp_v1_0.member_token.size = 8

-- Display: Member Token
txse_headers_rake_tcp_v1_0.member_token.display = function(value)
  return "Member Token: "..value
end

-- Dissect: Member Token
txse_headers_rake_tcp_v1_0.member_token.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.member_token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = txse_headers_rake_tcp_v1_0.member_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.member_token, range, value, display)

  return offset + length, value
end

-- Sender Comp
txse_headers_rake_tcp_v1_0.sender_comp = {}

-- Size: Sender Comp
txse_headers_rake_tcp_v1_0.sender_comp.size = 8

-- Display: Sender Comp
txse_headers_rake_tcp_v1_0.sender_comp.display = function(value)
  return "Sender Comp: "..value
end

-- Dissect: Sender Comp
txse_headers_rake_tcp_v1_0.sender_comp.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.sender_comp.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = txse_headers_rake_tcp_v1_0.sender_comp.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.sender_comp, range, value, display)

  return offset + length, value
end

-- Logon Request Packet
txse_headers_rake_tcp_v1_0.logon_request_packet = {}

-- Size: Logon Request Packet
txse_headers_rake_tcp_v1_0.logon_request_packet.size =
  txse_headers_rake_tcp_v1_0.session.size + 
  txse_headers_rake_tcp_v1_0.sender_comp.size + 
  txse_headers_rake_tcp_v1_0.member_token.size + 
  txse_headers_rake_tcp_v1_0.requested_sequence_number.size

-- Display: Logon Request Packet
txse_headers_rake_tcp_v1_0.logon_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request Packet
txse_headers_rake_tcp_v1_0.logon_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 8 Byte Unsigned Fixed Width Integer
  index, session = txse_headers_rake_tcp_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sender Comp: 8 Byte Ascii String
  index, sender_comp = txse_headers_rake_tcp_v1_0.sender_comp.dissect(buffer, index, packet, parent)

  -- Member Token: 8 Byte Ascii String
  index, member_token = txse_headers_rake_tcp_v1_0.member_token.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = txse_headers_rake_tcp_v1_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request Packet
txse_headers_rake_tcp_v1_0.logon_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.logon_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_headers_rake_tcp_v1_0.fields.logon_request_packet, buffer(offset, 0))
    local index = txse_headers_rake_tcp_v1_0.logon_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_headers_rake_tcp_v1_0.logon_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_headers_rake_tcp_v1_0.logon_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
txse_headers_rake_tcp_v1_0.payload = {}

-- Size: Payload
txse_headers_rake_tcp_v1_0.payload.size = function(buffer, offset, packet_type)
  -- Size of Logon Request Packet
  if packet_type == 53 then
    return txse_headers_rake_tcp_v1_0.logon_request_packet.size
  end
  -- Size of Tcp Unsequenced Packet
  if packet_type == 54 then
    return txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet.size(buffer, offset)
  end
  -- Size of Debug Message
  if packet_type == 48 then
    return txse_headers_rake_tcp_v1_0.debug_message.size(buffer, offset)
  end
  -- Size of End Of Session Message
  if packet_type == 52 then
    return 0
  end
  -- Size of Logon Response Message
  if packet_type == 49 then
    return txse_headers_rake_tcp_v1_0.logon_response_message.size
  end
  -- Size of Tcp Sequenced Message
  if packet_type == 50 then
    return txse_headers_rake_tcp_v1_0.tcp_sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
txse_headers_rake_tcp_v1_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
txse_headers_rake_tcp_v1_0.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Logon Request Packet
  if packet_type == 53 then
    return txse_headers_rake_tcp_v1_0.logon_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tcp Unsequenced Packet
  if packet_type == 54 then
    return txse_headers_rake_tcp_v1_0.tcp_unsequenced_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Debug Message
  if packet_type == 48 then
    return txse_headers_rake_tcp_v1_0.debug_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if packet_type == 52 then
  end
  -- Dissect Logon Response Message
  if packet_type == 49 then
    return txse_headers_rake_tcp_v1_0.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tcp Sequenced Message
  if packet_type == 50 then
    return txse_headers_rake_tcp_v1_0.tcp_sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
txse_headers_rake_tcp_v1_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return txse_headers_rake_tcp_v1_0.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = txse_headers_rake_tcp_v1_0.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = txse_headers_rake_tcp_v1_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_txse_headers_rake_tcp_v1_0.fields.payload, range, display)

  return txse_headers_rake_tcp_v1_0.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
txse_headers_rake_tcp_v1_0.packet_type = {}

-- Size: Packet Type
txse_headers_rake_tcp_v1_0.packet_type.size = 1

-- Display: Packet Type
txse_headers_rake_tcp_v1_0.packet_type.display = function(value)
  if value == 53 then
    return "Packet Type: Logon Request Packet (53)"
  end
  if value == 55 then
    return "Packet Type: Member Heartbeat Packet (55)"
  end
  if value == 54 then
    return "Packet Type: Tcp Unsequenced Packet (54)"
  end
  if value == 48 then
    return "Packet Type: Debug Message (48)"
  end
  if value == 52 then
    return "Packet Type: End Of Session Message (52)"
  end
  if value == 49 then
    return "Packet Type: Logon Response Message (49)"
  end
  if value == 51 then
    return "Packet Type: Server Heartbeat Message (51)"
  end
  if value == 50 then
    return "Packet Type: Tcp Sequenced Message (50)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
txse_headers_rake_tcp_v1_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_headers_rake_tcp_v1_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Message Length
txse_headers_rake_tcp_v1_0.message_length = {}

-- Size: Message Length
txse_headers_rake_tcp_v1_0.message_length.size = 2

-- Display: Message Length
txse_headers_rake_tcp_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
txse_headers_rake_tcp_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = txse_headers_rake_tcp_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_headers_rake_tcp_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_headers_rake_tcp_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Rake Message Header
txse_headers_rake_tcp_v1_0.rake_message_header = {}

-- Size: Rake Message Header
txse_headers_rake_tcp_v1_0.rake_message_header.size =
  txse_headers_rake_tcp_v1_0.message_length.size + 
  txse_headers_rake_tcp_v1_0.packet_type.size

-- Display: Rake Message Header
txse_headers_rake_tcp_v1_0.rake_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rake Message Header
txse_headers_rake_tcp_v1_0.rake_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = txse_headers_rake_tcp_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, packet_type = txse_headers_rake_tcp_v1_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rake Message Header
txse_headers_rake_tcp_v1_0.rake_message_header.dissect = function(buffer, offset, packet, parent)
  if show.rake_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_headers_rake_tcp_v1_0.fields.rake_message_header, buffer(offset, 0))
    local index = txse_headers_rake_tcp_v1_0.rake_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_headers_rake_tcp_v1_0.rake_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_headers_rake_tcp_v1_0.rake_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Rake Tcp Message
txse_headers_rake_tcp_v1_0.rake_tcp_message = {}

-- Display: Rake Tcp Message
txse_headers_rake_tcp_v1_0.rake_tcp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rake Tcp Message
txse_headers_rake_tcp_v1_0.rake_tcp_message.fields = function(buffer, offset, packet, parent, size_of_rake_tcp_message)
  local index = offset

  -- Rake Message Header: Struct of 2 fields
  index, rake_message_header = txse_headers_rake_tcp_v1_0.rake_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 6 branches
  index = txse_headers_rake_tcp_v1_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Rake Tcp Message
txse_headers_rake_tcp_v1_0.rake_tcp_message.dissect = function(buffer, offset, packet, parent, size_of_rake_tcp_message)
  local index = offset + size_of_rake_tcp_message

  -- Optionally add group/struct element to protocol tree
  if show.rake_tcp_message then
    parent = parent:add(omi_txse_headers_rake_tcp_v1_0.fields.rake_tcp_message, buffer(offset, 0))
    local current = txse_headers_rake_tcp_v1_0.rake_tcp_message.fields(buffer, offset, packet, parent, size_of_rake_tcp_message)
    parent:set_len(size_of_rake_tcp_message)
    local display = txse_headers_rake_tcp_v1_0.rake_tcp_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_headers_rake_tcp_v1_0.rake_tcp_message.fields(buffer, offset, packet, parent, size_of_rake_tcp_message)

    return index
  end
end

-- Remaining Bytes For: Rake Tcp Message
local rake_tcp_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < txse_headers_rake_tcp_v1_0.rake_message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
txse_headers_rake_tcp_v1_0.packet = {}

-- Dissect Packet
txse_headers_rake_tcp_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Rake Tcp Message
  local end_of_payload = buffer:len()

  -- Rake Tcp Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_rake_tcp_message = rake_tcp_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = txse_headers_rake_tcp_v1_0.rake_tcp_message.dissect(buffer, index, packet, parent, size_of_rake_tcp_message)
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
function omi_txse_headers_rake_tcp_v1_0.init()
end

-- Dissector for Txse Headers Rake Tcp 1.0
function omi_txse_headers_rake_tcp_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_txse_headers_rake_tcp_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_txse_headers_rake_tcp_v1_0, buffer(), omi_txse_headers_rake_tcp_v1_0.description, "("..buffer:len().." Bytes)")
  return txse_headers_rake_tcp_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_txse_headers_rake_tcp_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
txse_headers_rake_tcp_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Txse Headers Rake Tcp 1.0
local function omi_txse_headers_rake_tcp_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not txse_headers_rake_tcp_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_txse_headers_rake_tcp_v1_0
  omi_txse_headers_rake_tcp_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Txse Headers Rake Tcp 1.0
omi_txse_headers_rake_tcp_v1_0:register_heuristic("tcp", omi_txse_headers_rake_tcp_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Texas Stock Exchange
--   Version: 1.0
--   Date: Saturday, February 22, 2025
--   Specification: 690b822aa6a477417395edae_RAKE.pdf
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
