-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Common SoupBin Tcp 3.0 Protocol
local omi_nasdaq_common_soupbin_tcp_v3_0 = Proto("Omi.Nasdaq.Common.SoupBin.Tcp.v3.0", "Nasdaq Common SoupBin Tcp 3.0")

-- Protocol table
local nasdaq_common_soupbin_tcp_v3_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Common SoupBin Tcp 3.0 Fields
omi_nasdaq_common_soupbin_tcp_v3_0.fields.client_packet_type = ProtoField.new("Packet Type", "nasdaq.common.soupbin.tcp.v3.0.clientpackettype", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.common.soupbin.tcp.v3.0.packetlength", ftypes.UINT16)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.password = ProtoField.new("Password", "nasdaq.common.soupbin.tcp.v3.0.password", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.common.soupbin.tcp.v3.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.common.soupbin.tcp.v3.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.common.soupbin.tcp.v3.0.requestedsession", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.common.soupbin.tcp.v3.0.sequencenumber", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "nasdaq.common.soupbin.tcp.v3.0.sequencedmessage", ftypes.BYTES)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.common.soupbin.tcp.v3.0.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.server_packet_type = ProtoField.new("Packet Type", "nasdaq.common.soupbin.tcp.v3.0.serverpackettype", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.session = ProtoField.new("Session", "nasdaq.common.soupbin.tcp.v3.0.session", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.text = ProtoField.new("Text", "nasdaq.common.soupbin.tcp.v3.0.text", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.common.soupbin.tcp.v3.0.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.common.soupbin.tcp.v3.0.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.username = ProtoField.new("Username", "nasdaq.common.soupbin.tcp.v3.0.username", ftypes.STRING)

-- Nasdaq Common SoupBin Tcp 3.0 Headers
omi_nasdaq_common_soupbin_tcp_v3_0.fields.client_packet = ProtoField.new("Packet", "nasdaq.common.soupbin.tcp.v3.0.clientpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.client_packet_header = ProtoField.new("Packet Header", "nasdaq.common.soupbin.tcp.v3.0.clientpacketheader", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.client_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.common.soupbin.tcp.v3.0.clientsoupbintcppacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.server_packet = ProtoField.new("Packet", "nasdaq.common.soupbin.tcp.v3.0.serverpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.server_packet_header = ProtoField.new("Packet Header", "nasdaq.common.soupbin.tcp.v3.0.serverpacketheader", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.server_soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.common.soupbin.tcp.v3.0.serversoupbintcppacket", ftypes.STRING)

-- Nasdaq Common SoupBin 3.0 Session Messages
omi_nasdaq_common_soupbin_tcp_v3_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.common.soupbin.tcp.v3.0.debugpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.common.soupbin.tcp.v3.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.common.soupbin.tcp.v3.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.common.soupbin.tcp.v3.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.common.soupbin.tcp.v3.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.common.soupbin.tcp.v3.0.unsequenceddatapacket", ftypes.STRING)

-- Nasdaq Common SoupBin Tcp 3.0 generated fields
omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_data_packet_sequence_number = ProtoField.new("Sequenced Data Packet Sequence Number", "nasdaq.common.soupbin.tcp.v3.0.sequenceddatapacketsequencenumber", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Common SoupBin Tcp 3.0 Element Dissection Options
show.structs = true
show.session_messages = true
show.sequences = true

-- Register Nasdaq Common SoupBin Tcp 3.0 Show Options
local role_enum = {
  { 1, "Resolve from the conversation", 0 },
  { 2, "Initiator", 1 },
  { 3, "Acceptor", 2 }
}
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.acceptor_port = Pref.uint("Acceptor Port", 0, "Port the acceptor listens on; 0 resolves each frame's role from its conversation")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.assume_role = Pref.enum("Assume Role", 0, "Connection role assumed for every frame, for captures that start mid conversation", role_enum, false)
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.swap_sides = Pref.bool("Swap Sides", false, "The first frame seen of each conversation was the acceptor's, not the initiator's; for captures that start mid conversation")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_sequences = Pref.bool("Show Sequence Numbers", show.sequences, "Show each message's own feed sequence number in the protocol tree")

-- Handle changed preferences
function omi_nasdaq_common_soupbin_tcp_v3_0.prefs_changed()

  -- Check if preferences have changed
  if show.session_messages ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_session_messages then
    show.session_messages = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_session_messages
  end
  if show.structs ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_structs then
    show.structs = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_structs
  end
  if show.sequences ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_sequences then
    show.sequences = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_sequences
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
nasdaq_common_soupbin_tcp_v3_0.conversation = {}
nasdaq_common_soupbin_tcp_v3_0.conversation.flows = {}

-- Revisit replay cursor for stream sequences: which frame is being
-- re-dissected and which memoized occurrence within it is next
nasdaq_common_soupbin_tcp_v3_0.stream_frame = nil
nasdaq_common_soupbin_tcp_v3_0.stream_occurrence = 0

-- Conversation key for the current packet (src/dst tuple)
nasdaq_common_soupbin_tcp_v3_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
nasdaq_common_soupbin_tcp_v3_0.conversation.data = function(packet)
  local key = nasdaq_common_soupbin_tcp_v3_0.conversation.key(packet)
  local data = nasdaq_common_soupbin_tcp_v3_0.conversation.flows[key]
  if data == nil then
    data = { sequence_number = { last = nil, frames = {} }, sequence = { next = nil, frames = {} } }
    nasdaq_common_soupbin_tcp_v3_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
nasdaq_common_soupbin_tcp_v3_0.conversation.current = nil


-----------------------------------------------------------------------
-- Nasdaq Common SoupBin Tcp 3.0 Fields
-----------------------------------------------------------------------

-- Client Packet Type
nasdaq_common_soupbin_tcp_v3_0.client_packet_type = {}

-- Size: Client Packet Type
nasdaq_common_soupbin_tcp_v3_0.client_packet_type.size = 1

-- Display: Client Packet Type
nasdaq_common_soupbin_tcp_v3_0.client_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "L" then
    return "Packet Type: Login Request Packet (L)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "R" then
    return "Packet Type: Client Heartbeat Packet (R)"
  end
  if value == "O" then
    return "Packet Type: Logout Request Packet (O)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Client Packet Type
nasdaq_common_soupbin_tcp_v3_0.client_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.client_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.client_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.client_packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
nasdaq_common_soupbin_tcp_v3_0.packet_length = {}

-- Size: Packet Length
nasdaq_common_soupbin_tcp_v3_0.packet_length.size = 2

-- Display: Packet Length
nasdaq_common_soupbin_tcp_v3_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
nasdaq_common_soupbin_tcp_v3_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_common_soupbin_tcp_v3_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Password
nasdaq_common_soupbin_tcp_v3_0.password = {}

-- Size: Password
nasdaq_common_soupbin_tcp_v3_0.password.size = 10

-- Display: Password
nasdaq_common_soupbin_tcp_v3_0.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nasdaq_common_soupbin_tcp_v3_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.password.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nasdaq_common_soupbin_tcp_v3_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.password, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
nasdaq_common_soupbin_tcp_v3_0.reject_reason_code = {}

-- Size: Reject Reason Code
nasdaq_common_soupbin_tcp_v3_0.reject_reason_code.size = 1

-- Display: Reject Reason Code
nasdaq_common_soupbin_tcp_v3_0.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
nasdaq_common_soupbin_tcp_v3_0.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
nasdaq_common_soupbin_tcp_v3_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
nasdaq_common_soupbin_tcp_v3_0.requested_sequence_number.size = 20

-- Display: Requested Sequence Number
nasdaq_common_soupbin_tcp_v3_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
nasdaq_common_soupbin_tcp_v3_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_common_soupbin_tcp_v3_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
nasdaq_common_soupbin_tcp_v3_0.requested_session = {}

-- Size: Requested Session
nasdaq_common_soupbin_tcp_v3_0.requested_session.size = 10

-- Display: Requested Session
nasdaq_common_soupbin_tcp_v3_0.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
nasdaq_common_soupbin_tcp_v3_0.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_common_soupbin_tcp_v3_0.sequence_number = {}

-- Size: Sequence Number
nasdaq_common_soupbin_tcp_v3_0.sequence_number.size = 20

-- Display: Sequence Number
nasdaq_common_soupbin_tcp_v3_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_common_soupbin_tcp_v3_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = nasdaq_common_soupbin_tcp_v3_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message
nasdaq_common_soupbin_tcp_v3_0.sequenced_message = {}

-- Display: Sequenced Message
nasdaq_common_soupbin_tcp_v3_0.sequenced_message.display = function(value)
  return "Sequenced Message: "..value
end

-- Dissect runtime sized field: Sequenced Message
nasdaq_common_soupbin_tcp_v3_0.sequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_common_soupbin_tcp_v3_0.sequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_message, range, value, display)

  return offset + size, value
end

-- Sequenced Message Type
nasdaq_common_soupbin_tcp_v3_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
nasdaq_common_soupbin_tcp_v3_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
nasdaq_common_soupbin_tcp_v3_0.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
nasdaq_common_soupbin_tcp_v3_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Server Packet Type
nasdaq_common_soupbin_tcp_v3_0.server_packet_type = {}

-- Size: Server Packet Type
nasdaq_common_soupbin_tcp_v3_0.server_packet_type.size = 1

-- Display: Server Packet Type
nasdaq_common_soupbin_tcp_v3_0.server_packet_type.display = function(value)
  if value == "+" then
    return "Packet Type: Debug Packet (+)"
  end
  if value == "A" then
    return "Packet Type: Login Accepted Packet (A)"
  end
  if value == "J" then
    return "Packet Type: Login Rejected Packet (J)"
  end
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "H" then
    return "Packet Type: Server Heartbeat Packet (H)"
  end
  if value == "Z" then
    return "Packet Type: End Of Session Packet (Z)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Server Packet Type
nasdaq_common_soupbin_tcp_v3_0.server_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.server_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.server_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.server_packet_type, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_common_soupbin_tcp_v3_0.session = {}

-- Size: Session
nasdaq_common_soupbin_tcp_v3_0.session.size = 10

-- Display: Session
nasdaq_common_soupbin_tcp_v3_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
nasdaq_common_soupbin_tcp_v3_0.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.session, range, value, display)

  return offset + length, value
end

-- Text
nasdaq_common_soupbin_tcp_v3_0.text = {}

-- Size: Text
nasdaq_common_soupbin_tcp_v3_0.text.size = 1

-- Display: Text
nasdaq_common_soupbin_tcp_v3_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
nasdaq_common_soupbin_tcp_v3_0.text.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.text, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
nasdaq_common_soupbin_tcp_v3_0.unsequenced_message = {}

-- Display: Unsequenced Message
nasdaq_common_soupbin_tcp_v3_0.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect runtime sized field: Unsequenced Message
nasdaq_common_soupbin_tcp_v3_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = nasdaq_common_soupbin_tcp_v3_0.unsequenced_message.display(value, packet, parent, size)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_message, range, value, display)

  return offset + size, value
end

-- Unsequenced Message Type
nasdaq_common_soupbin_tcp_v3_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
nasdaq_common_soupbin_tcp_v3_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
nasdaq_common_soupbin_tcp_v3_0.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
nasdaq_common_soupbin_tcp_v3_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_common_soupbin_tcp_v3_0.username = {}

-- Size: Username
nasdaq_common_soupbin_tcp_v3_0.username.size = 6

-- Display: Username
nasdaq_common_soupbin_tcp_v3_0.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
nasdaq_common_soupbin_tcp_v3_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.username.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nasdaq_common_soupbin_tcp_v3_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Common SoupBin Tcp 3.0
-----------------------------------------------------------------------

-- End Of Session
nasdaq_common_soupbin_tcp_v3_0.end_of_session = {}

-- Display: End Of Session
nasdaq_common_soupbin_tcp_v3_0.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
nasdaq_common_soupbin_tcp_v3_0.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_common_soupbin_tcp_v3_0.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Server Heartbeat
nasdaq_common_soupbin_tcp_v3_0.server_heartbeat = {}

-- Display: Server Heartbeat
nasdaq_common_soupbin_tcp_v3_0.server_heartbeat.display = function(packet, parent, length)
  return "Server Heartbeat"
end


-- Dissect: Server Heartbeat
nasdaq_common_soupbin_tcp_v3_0.server_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_common_soupbin_tcp_v3_0.server_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Sequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Sequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Implicit Sequenced Data Packet Sequence Number
  local flow = nasdaq_common_soupbin_tcp_v3_0.conversation.current
  if flow ~= nil then
    local memo = flow.sequence.frames[packet.number]
    if not packet.visited then
      if flow.sequence.next == nil then
        flow.sequence.next = tonumber(nasdaq_common_soupbin_tcp_v3_0.sequence_number.current)
      end
      local value = flow.sequence.next
      if value ~= nil then
        if memo == nil then
          memo = {}
          flow.sequence.frames[packet.number] = memo
        end
        memo[#memo + 1] = value
        flow.sequence.next = value + 1
        if show.sequences then
          local sequence = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    else
      if memo ~= nil and #memo > 0 then
        if nasdaq_common_soupbin_tcp_v3_0.stream_frame ~= packet.number or nasdaq_common_soupbin_tcp_v3_0.stream_occurrence >= #memo then
          nasdaq_common_soupbin_tcp_v3_0.stream_frame = packet.number
          nasdaq_common_soupbin_tcp_v3_0.stream_occurrence = 0
        end
        nasdaq_common_soupbin_tcp_v3_0.stream_occurrence = nasdaq_common_soupbin_tcp_v3_0.stream_occurrence + 1
        local value = memo[nasdaq_common_soupbin_tcp_v3_0.stream_occurrence]
        if show.sequences and value ~= nil then
          local sequence = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_data_packet_sequence_number, UInt64.new(value))
          sequence:set_generated()
        end
      end
    end
  end

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = nasdaq_common_soupbin_tcp_v3_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Sequenced Message
  local size_of_sequenced_message = packet_length - 2

  -- Sequenced Message: 0 Byte
  index, sequenced_message = nasdaq_common_soupbin_tcp_v3_0.sequenced_message.dissect(buffer, index, packet, parent, size_of_sequenced_message)

  return index
end

-- Dissect: Sequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Login Rejected Packet
nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet = {}

-- Size: Login Rejected Packet
nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.size =
  nasdaq_common_soupbin_tcp_v3_0.reject_reason_code.size

-- Display: Login Rejected Packet
nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = nasdaq_common_soupbin_tcp_v3_0.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.login_rejected_packet, buffer(offset, 0))
    local index = nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet = {}

-- Size: Login Accepted Packet
nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.size =
  nasdaq_common_soupbin_tcp_v3_0.session.size + 
  nasdaq_common_soupbin_tcp_v3_0.sequence_number.size

-- Display: Login Accepted Packet
nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_common_soupbin_tcp_v3_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 20 Byte Ascii String
  index, sequence_number = nasdaq_common_soupbin_tcp_v3_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Store Sequence Number Value
  nasdaq_common_soupbin_tcp_v3_0.sequence_number.current = sequence_number

  if not packet.visited then
    nasdaq_common_soupbin_tcp_v3_0.conversation.current.sequence_number.last = sequence_number
  end

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.login_accepted_packet, buffer(offset, 0))
    local index = nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
nasdaq_common_soupbin_tcp_v3_0.debug_packet = {}

-- Size: Debug Packet
nasdaq_common_soupbin_tcp_v3_0.debug_packet.size =
  nasdaq_common_soupbin_tcp_v3_0.text.size

-- Display: Debug Packet
nasdaq_common_soupbin_tcp_v3_0.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
nasdaq_common_soupbin_tcp_v3_0.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = nasdaq_common_soupbin_tcp_v3_0.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
nasdaq_common_soupbin_tcp_v3_0.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.debug_packet, buffer(offset, 0))
    local index = nasdaq_common_soupbin_tcp_v3_0.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_common_soupbin_tcp_v3_0.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_common_soupbin_tcp_v3_0.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Server Payload
nasdaq_common_soupbin_tcp_v3_0.server_payload = {}

-- Dissect: Server Payload
nasdaq_common_soupbin_tcp_v3_0.server_payload.dissect = function(buffer, offset, packet, parent, server_packet_type)
  -- Dissect Debug Packet
  if server_packet_type == "+" then
    return nasdaq_common_soupbin_tcp_v3_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if server_packet_type == "A" then
    return nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if server_packet_type == "J" then
    return nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if server_packet_type == "S" then
    return nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat
  if server_packet_type == "H" then
    return nasdaq_common_soupbin_tcp_v3_0.server_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if server_packet_type == "Z" then
    return nasdaq_common_soupbin_tcp_v3_0.end_of_session.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Server Packet Header
nasdaq_common_soupbin_tcp_v3_0.server_packet_header = {}

-- Size: Server Packet Header
nasdaq_common_soupbin_tcp_v3_0.server_packet_header.size =
  nasdaq_common_soupbin_tcp_v3_0.packet_length.size + 
  nasdaq_common_soupbin_tcp_v3_0.server_packet_type.size

-- Display: Server Packet Header
nasdaq_common_soupbin_tcp_v3_0.server_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Packet Header
nasdaq_common_soupbin_tcp_v3_0.server_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_common_soupbin_tcp_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Server Packet Type: 1 Byte Ascii String Enum with 6 values
  index, server_packet_type = nasdaq_common_soupbin_tcp_v3_0.server_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Server Packet Header
nasdaq_common_soupbin_tcp_v3_0.server_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.server_packet_header, buffer(offset, 0))
    local index = nasdaq_common_soupbin_tcp_v3_0.server_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_common_soupbin_tcp_v3_0.server_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_common_soupbin_tcp_v3_0.server_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Server Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.server_soup_bin_tcp_packet = {}

-- Display: Server Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.server_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Server Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.server_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset

  -- Server Packet Header: Struct of 2 fields
  index, server_packet_header = nasdaq_common_soupbin_tcp_v3_0.server_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Server Packet Type
  local server_packet_type = buffer(index - 1, 1):string()

  -- Server Payload: Runtime Type with 6 branches
  index = nasdaq_common_soupbin_tcp_v3_0.server_payload.dissect(buffer, index, packet, parent, server_packet_type)

  return index
end

-- Dissect: Server Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.server_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
  local index = offset + size_of_server_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.server_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_common_soupbin_tcp_v3_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)
    parent:set_len(size_of_server_soup_bin_tcp_packet)
    local display = nasdaq_common_soupbin_tcp_v3_0.server_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_common_soupbin_tcp_v3_0.server_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_server_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Server Soup Bin Tcp Packet
local server_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_common_soupbin_tcp_v3_0.server_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Server Packet
nasdaq_common_soupbin_tcp_v3_0.server_packet = {}

-- Verify required size of Tcp packet
nasdaq_common_soupbin_tcp_v3_0.server_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_common_soupbin_tcp_v3_0.server_packet_header.size
end

-- Dissect Server Packet
nasdaq_common_soupbin_tcp_v3_0.server_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = nasdaq_common_soupbin_tcp_v3_0.conversation.data(packet)
  if not packet.visited then
    data.sequence_number.frames[packet.number] = data.sequence_number.last
  end
  nasdaq_common_soupbin_tcp_v3_0.sequence_number.current = data.sequence_number.frames[packet.number]
  nasdaq_common_soupbin_tcp_v3_0.conversation.current = data

  local index = 0

  -- Dependency for Server Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Server Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_server_soup_bin_tcp_packet = server_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_common_soupbin_tcp_v3_0.server_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_server_soup_bin_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Logout Request
nasdaq_common_soupbin_tcp_v3_0.logout_request = {}

-- Display: Logout Request
nasdaq_common_soupbin_tcp_v3_0.logout_request.display = function(packet, parent, length)
  return "Logout Request"
end


-- Dissect: Logout Request
nasdaq_common_soupbin_tcp_v3_0.logout_request.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_common_soupbin_tcp_v3_0.logout_request.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Client Heartbeat
nasdaq_common_soupbin_tcp_v3_0.client_heartbeat = {}

-- Display: Client Heartbeat
nasdaq_common_soupbin_tcp_v3_0.client_heartbeat.display = function(packet, parent, length)
  return "Client Heartbeat"
end


-- Dissect: Client Heartbeat
nasdaq_common_soupbin_tcp_v3_0.client_heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = nasdaq_common_soupbin_tcp_v3_0.client_heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Unsequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = nasdaq_common_soupbin_tcp_v3_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):uint()

  -- Runtime Size Of: Unsequenced Message
  local size_of_unsequenced_message = packet_length - 2

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = nasdaq_common_soupbin_tcp_v3_0.unsequenced_message.dissect(buffer, index, packet, parent, size_of_unsequenced_message)

  return index
end

-- Dissect: Unsequenced Data Packet
nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Login Request Packet
nasdaq_common_soupbin_tcp_v3_0.login_request_packet = {}

-- Size: Login Request Packet
nasdaq_common_soupbin_tcp_v3_0.login_request_packet.size =
  nasdaq_common_soupbin_tcp_v3_0.username.size + 
  nasdaq_common_soupbin_tcp_v3_0.password.size + 
  nasdaq_common_soupbin_tcp_v3_0.requested_session.size + 
  nasdaq_common_soupbin_tcp_v3_0.requested_sequence_number.size

-- Display: Login Request Packet
nasdaq_common_soupbin_tcp_v3_0.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
nasdaq_common_soupbin_tcp_v3_0.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = nasdaq_common_soupbin_tcp_v3_0.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = nasdaq_common_soupbin_tcp_v3_0.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = nasdaq_common_soupbin_tcp_v3_0.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 20 Byte Ascii String
  index, requested_sequence_number = nasdaq_common_soupbin_tcp_v3_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
nasdaq_common_soupbin_tcp_v3_0.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.session_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.login_request_packet, buffer(offset, 0))
    local index = nasdaq_common_soupbin_tcp_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_common_soupbin_tcp_v3_0.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_common_soupbin_tcp_v3_0.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Client Payload
nasdaq_common_soupbin_tcp_v3_0.client_payload = {}

-- Dissect: Client Payload
nasdaq_common_soupbin_tcp_v3_0.client_payload.dissect = function(buffer, offset, packet, parent, client_packet_type)
  -- Dissect Debug Packet
  if client_packet_type == "+" then
    return nasdaq_common_soupbin_tcp_v3_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if client_packet_type == "L" then
    return nasdaq_common_soupbin_tcp_v3_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if client_packet_type == "U" then
    return nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Client Heartbeat
  if client_packet_type == "R" then
    return nasdaq_common_soupbin_tcp_v3_0.client_heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if client_packet_type == "O" then
    return nasdaq_common_soupbin_tcp_v3_0.logout_request.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Client Packet Header
nasdaq_common_soupbin_tcp_v3_0.client_packet_header = {}

-- Size: Client Packet Header
nasdaq_common_soupbin_tcp_v3_0.client_packet_header.size =
  nasdaq_common_soupbin_tcp_v3_0.packet_length.size + 
  nasdaq_common_soupbin_tcp_v3_0.client_packet_type.size

-- Display: Client Packet Header
nasdaq_common_soupbin_tcp_v3_0.client_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Packet Header
nasdaq_common_soupbin_tcp_v3_0.client_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_common_soupbin_tcp_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Client Packet Type: 1 Byte Ascii String Enum with 5 values
  index, client_packet_type = nasdaq_common_soupbin_tcp_v3_0.client_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Client Packet Header
nasdaq_common_soupbin_tcp_v3_0.client_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.client_packet_header, buffer(offset, 0))
    local index = nasdaq_common_soupbin_tcp_v3_0.client_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_common_soupbin_tcp_v3_0.client_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_common_soupbin_tcp_v3_0.client_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Client Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.client_soup_bin_tcp_packet = {}

-- Display: Client Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.client_soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Client Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.client_soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset

  -- Client Packet Header: Struct of 2 fields
  index, client_packet_header = nasdaq_common_soupbin_tcp_v3_0.client_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Client Packet Type
  local client_packet_type = buffer(index - 1, 1):string()

  -- Client Payload: Runtime Type with 5 branches
  index = nasdaq_common_soupbin_tcp_v3_0.client_payload.dissect(buffer, index, packet, parent, client_packet_type)

  return index
end

-- Dissect: Client Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.client_soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
  local index = offset + size_of_client_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.client_soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_common_soupbin_tcp_v3_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)
    parent:set_len(size_of_client_soup_bin_tcp_packet)
    local display = nasdaq_common_soupbin_tcp_v3_0.client_soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_common_soupbin_tcp_v3_0.client_soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_client_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Client Soup Bin Tcp Packet
local client_soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_common_soupbin_tcp_v3_0.client_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Client Packet
nasdaq_common_soupbin_tcp_v3_0.client_packet = {}

-- Verify required size of Tcp packet
nasdaq_common_soupbin_tcp_v3_0.client_packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_common_soupbin_tcp_v3_0.client_packet_header.size
end

-- Dissect Client Packet
nasdaq_common_soupbin_tcp_v3_0.client_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Client Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Client Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_client_soup_bin_tcp_packet = client_soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_common_soupbin_tcp_v3_0.client_soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_client_soup_bin_tcp_packet)
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
function omi_nasdaq_common_soupbin_tcp_v3_0.init()
  nasdaq_common_soupbin_tcp_v3_0.sequence_number.current = nil
  nasdaq_common_soupbin_tcp_v3_0.conversation.current = nil
  nasdaq_common_soupbin_tcp_v3_0.conversation.flows = {}
end

-- Connection roles for Nasdaq Common SoupBin Tcp 3.0: Client is the initiator, Server is the acceptor
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
nasdaq_common_soupbin_tcp_v3_0.role = function(packet)
  if omi_nasdaq_common_soupbin_tcp_v3_0.prefs.assume_role == 1 then
    return "initiator"
  end
  if omi_nasdaq_common_soupbin_tcp_v3_0.prefs.assume_role == 2 then
    return "acceptor"
  end
  local port = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.acceptor_port
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
  if omi_nasdaq_common_soupbin_tcp_v3_0.prefs.swap_sides then
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
nasdaq_common_soupbin_tcp_v3_0.swap = function(packet)
  local key = conversation(packet)
  swapped[key] = not swapped[key]
end


-- Dissector for Nasdaq Common SoupBin Tcp 3.0
function omi_nasdaq_common_soupbin_tcp_v3_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_common_soupbin_tcp_v3_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0, buffer(), omi_nasdaq_common_soupbin_tcp_v3_0.description, "("..buffer:len().." Bytes)")
  local role = nasdaq_common_soupbin_tcp_v3_0.role(packet)
  if role == "initiator" then
    return nasdaq_common_soupbin_tcp_v3_0.client_packet.dissect(buffer, packet, protocol)
  end
  return nasdaq_common_soupbin_tcp_v3_0.server_packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Fingerprints
-----------------------------------------------------------------------

-- Fingerprint of Client Packet: would its message dispatch accept this frame?
nasdaq_common_soupbin_tcp_v3_0.client_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end
  local client_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if client_packet_type == "+" then
    return true
  end

  -- Login Request Packet
  if client_packet_type == "L" then
    return true
  end

  -- Unsequenced Data Packet
  if client_packet_type == "U" then
    return true
  end

  -- Client Heartbeat
  if client_packet_type == "R" then
    return true
  end

  -- Logout Request
  if client_packet_type == "O" then
    return true
  end

  return false
end


-- Fingerprint of Server Packet: would its message dispatch accept this frame?
nasdaq_common_soupbin_tcp_v3_0.server_packet.fingerprint = function(buffer)
  if buffer:len() < 3 then
    return false
  end
  local server_packet_type = buffer(2, 1):string()

  -- Debug Packet
  if server_packet_type == "+" then
    return true
  end

  -- Login Accepted Packet
  if server_packet_type == "A" then
    return true
  end

  -- Login Rejected Packet
  if server_packet_type == "J" then
    return true
  end

  -- Sequenced Data Packet
  if server_packet_type == "S" then
    return true
  end

  -- Server Heartbeat
  if server_packet_type == "H" then
    return true
  end

  -- End Of Session
  if server_packet_type == "Z" then
    return true
  end

  return false
end



-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq Common SoupBin Tcp 3.0 (Tcp)
local function omi_nasdaq_common_soupbin_tcp_v3_0_tcp_initiator_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_common_soupbin_tcp_v3_0.client_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_common_soupbin_tcp_v3_0.client_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_common_soupbin_tcp_v3_0
  omi_nasdaq_common_soupbin_tcp_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq Common SoupBin Tcp 3.0 (Tcp)
local function omi_nasdaq_common_soupbin_tcp_v3_0_tcp_acceptor_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_common_soupbin_tcp_v3_0.server_packet.requiredsize(buffer) then return false end

  -- Verify the frame matches this side's fingerprint
  if not nasdaq_common_soupbin_tcp_v3_0.server_packet.fingerprint(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_common_soupbin_tcp_v3_0
  omi_nasdaq_common_soupbin_tcp_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Nasdaq Common SoupBin Tcp 3.0 (Tcp): apply the heuristic of the sender's connection role
local function omi_nasdaq_common_soupbin_tcp_v3_0_tcp_heuristic(buffer, packet, parent)
  local role = nasdaq_common_soupbin_tcp_v3_0.role(packet)
  local first, second = omi_nasdaq_common_soupbin_tcp_v3_0_tcp_initiator_heuristic, omi_nasdaq_common_soupbin_tcp_v3_0_tcp_acceptor_heuristic
  if role == "acceptor" then
    first, second = second, first
  end
  if first(buffer, packet, parent) then
    return true
  end

  -- The other side may have sent this conversation's first frame: swap, and swap back if it cannot claim either
  nasdaq_common_soupbin_tcp_v3_0.swap(packet)
  if second(buffer, packet, parent) then
    return true
  end
  nasdaq_common_soupbin_tcp_v3_0.swap(packet)

  return false
end

-- Register Heuristics for Nasdaq Common SoupBin Tcp 3.0
omi_nasdaq_common_soupbin_tcp_v3_0:register_heuristic("tcp", omi_nasdaq_common_soupbin_tcp_v3_0_tcp_heuristic)
-- Register Nasdaq Common SoupBin Tcp 3.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nasdaq_common_soupbin_tcp_v3_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 3.0
--   Date: Wednesday, February 22, 2017
--   Specification: soupbintcp.pdf
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
