-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq Common SoupBin Tcp 3.0 Protocol
local omi_nasdaq_common_soupbin_tcp_v3_0 = Proto("Nasdaq.Common.SoupBin.Tcp.v3.0.Lua", "Nasdaq Common SoupBin Tcp 3.0")

-- Protocol table
local nasdaq_common_soupbin_tcp_v3_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq Common SoupBin Tcp 3.0 Fields
omi_nasdaq_common_soupbin_tcp_v3_0.fields.packet = ProtoField.new("Packet", "nasdaq.common.soupbin.tcp.v3.0.packet", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.common.soupbin.tcp.v3.0.packetheader", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.packet_length = ProtoField.new("Packet Length", "nasdaq.common.soupbin.tcp.v3.0.packetlength", ftypes.UINT16)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.packet_type = ProtoField.new("Packet Type", "nasdaq.common.soupbin.tcp.v3.0.packettype", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.password = ProtoField.new("Password", "nasdaq.common.soupbin.tcp.v3.0.password", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.payload = ProtoField.new("Payload", "nasdaq.common.soupbin.tcp.v3.0.payload", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "nasdaq.common.soupbin.tcp.v3.0.rejectreasoncode", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "nasdaq.common.soupbin.tcp.v3.0.requestedsequencenumber", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.requested_session = ProtoField.new("Requested Session", "nasdaq.common.soupbin.tcp.v3.0.requestedsession", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.common.soupbin.tcp.v3.0.sequencenumber", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_message = ProtoField.new("Sequenced Message", "nasdaq.common.soupbin.tcp.v3.0.sequencedmessage", ftypes.BYTES)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "nasdaq.common.soupbin.tcp.v3.0.sequencedmessagetype", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.session = ProtoField.new("Session", "nasdaq.common.soupbin.tcp.v3.0.session", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.soup_bin_tcp_packet = ProtoField.new("Soup Bin Tcp Packet", "nasdaq.common.soupbin.tcp.v3.0.soupbintcppacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.text = ProtoField.new("Text", "nasdaq.common.soupbin.tcp.v3.0.text", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "nasdaq.common.soupbin.tcp.v3.0.unsequencedmessage", ftypes.BYTES)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "nasdaq.common.soupbin.tcp.v3.0.unsequencedmessagetype", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.username = ProtoField.new("Username", "nasdaq.common.soupbin.tcp.v3.0.username", ftypes.STRING)

-- Nasdaq Common Tcp SoupBin 3.0 Session Messages
omi_nasdaq_common_soupbin_tcp_v3_0.fields.debug_packet = ProtoField.new("Debug Packet", "nasdaq.common.soupbin.tcp.v3.0.debugpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "nasdaq.common.soupbin.tcp.v3.0.loginacceptedpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "nasdaq.common.soupbin.tcp.v3.0.loginrejectedpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.login_request_packet = ProtoField.new("Login Request Packet", "nasdaq.common.soupbin.tcp.v3.0.loginrequestpacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "nasdaq.common.soupbin.tcp.v3.0.sequenceddatapacket", ftypes.STRING)
omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "nasdaq.common.soupbin.tcp.v3.0.unsequenceddatapacket", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq Common SoupBin Tcp 3.0 Element Dissection Options
show.debug_packet = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.packet = true
show.packet_header = true
show.sequenced_data_packet = true
show.soup_bin_tcp_packet = true
show.unsequenced_data_packet = true
show.payload = false

-- Register Nasdaq Common SoupBin Tcp 3.0 Show Options
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_soup_bin_tcp_packet = Pref.bool("Show Soup Bin Tcp Packet", show.soup_bin_tcp_packet, "Parse and add Soup Bin Tcp Packet to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nasdaq_common_soupbin_tcp_v3_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.debug_packet ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_debug_packet then
    show.debug_packet = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_debug_packet
    changed = true
  end
  if show.login_accepted_packet ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_login_request_packet then
    show.login_request_packet = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_login_request_packet
    changed = true
  end
  if show.packet ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_packet then
    show.packet = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_packet_header
    changed = true
  end
  if show.sequenced_data_packet ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.soup_bin_tcp_packet ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_soup_bin_tcp_packet then
    show.soup_bin_tcp_packet = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_soup_bin_tcp_packet
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_payload then
    show.payload = omi_nasdaq_common_soupbin_tcp_v3_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nasdaq Common SoupBin Tcp 3.0
-----------------------------------------------------------------------

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
nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.unsequenced_data_packet, range, display)
  end

  nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
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
  local value = range:string()
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

-- Password
nasdaq_common_soupbin_tcp_v3_0.password = {}

-- Size: Password
nasdaq_common_soupbin_tcp_v3_0.password.size = 10

-- Display: Password
nasdaq_common_soupbin_tcp_v3_0.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nasdaq_common_soupbin_tcp_v3_0.password.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.password, range, value, display)

  return offset + length, value
end

-- Username
nasdaq_common_soupbin_tcp_v3_0.username = {}

-- Size: Username
nasdaq_common_soupbin_tcp_v3_0.username.size = 6

-- Display: Username
nasdaq_common_soupbin_tcp_v3_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
nasdaq_common_soupbin_tcp_v3_0.username.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.username, range, value, display)

  return offset + length, value
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
  if show.login_request_packet then
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
nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequenced_data_packet, range, display)
  end

  nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
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
  if show.login_rejected_packet then
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
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.sequence_number, range, value, display)

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

  return index
end

-- Dissect: Login Accepted Packet
nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
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
  if show.debug_packet then
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

-- Payload
nasdaq_common_soupbin_tcp_v3_0.payload = {}

-- Size: Payload
nasdaq_common_soupbin_tcp_v3_0.payload.size = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return nasdaq_common_soupbin_tcp_v3_0.debug_packet.size
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.size
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.size
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.size(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return nasdaq_common_soupbin_tcp_v3_0.login_request_packet.size
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nasdaq_common_soupbin_tcp_v3_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nasdaq_common_soupbin_tcp_v3_0.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return nasdaq_common_soupbin_tcp_v3_0.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return nasdaq_common_soupbin_tcp_v3_0.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return nasdaq_common_soupbin_tcp_v3_0.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return nasdaq_common_soupbin_tcp_v3_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return nasdaq_common_soupbin_tcp_v3_0.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return nasdaq_common_soupbin_tcp_v3_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nasdaq_common_soupbin_tcp_v3_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return nasdaq_common_soupbin_tcp_v3_0.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nasdaq_common_soupbin_tcp_v3_0.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nasdaq_common_soupbin_tcp_v3_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.payload, range, display)

  return nasdaq_common_soupbin_tcp_v3_0.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
nasdaq_common_soupbin_tcp_v3_0.packet_type = {}

-- Size: Packet Type
nasdaq_common_soupbin_tcp_v3_0.packet_type.size = 1

-- Display: Packet Type
nasdaq_common_soupbin_tcp_v3_0.packet_type.display = function(value)
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

-- Dissect: Packet Type
nasdaq_common_soupbin_tcp_v3_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_common_soupbin_tcp_v3_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_common_soupbin_tcp_v3_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.packet_type, range, value, display)

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

-- Packet Header
nasdaq_common_soupbin_tcp_v3_0.packet_header = {}

-- Size: Packet Header
nasdaq_common_soupbin_tcp_v3_0.packet_header.size =
  nasdaq_common_soupbin_tcp_v3_0.packet_length.size + 
  nasdaq_common_soupbin_tcp_v3_0.packet_type.size

-- Display: Packet Header
nasdaq_common_soupbin_tcp_v3_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_common_soupbin_tcp_v3_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = nasdaq_common_soupbin_tcp_v3_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 10 values
  index, packet_type = nasdaq_common_soupbin_tcp_v3_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_common_soupbin_tcp_v3_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_common_soupbin_tcp_v3_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_common_soupbin_tcp_v3_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_common_soupbin_tcp_v3_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.soup_bin_tcp_packet = {}

-- Display: Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.soup_bin_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.soup_bin_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = nasdaq_common_soupbin_tcp_v3_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 6 branches
  index = nasdaq_common_soupbin_tcp_v3_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Soup Bin Tcp Packet
nasdaq_common_soupbin_tcp_v3_0.soup_bin_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
  local index = offset + size_of_soup_bin_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.soup_bin_tcp_packet then
    parent = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0.fields.soup_bin_tcp_packet, buffer(offset, 0))
    local current = nasdaq_common_soupbin_tcp_v3_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)
    parent:set_len(size_of_soup_bin_tcp_packet)
    local display = nasdaq_common_soupbin_tcp_v3_0.soup_bin_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_common_soupbin_tcp_v3_0.soup_bin_tcp_packet.fields(buffer, offset, packet, parent, size_of_soup_bin_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Soup Bin Tcp Packet
local soup_bin_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nasdaq_common_soupbin_tcp_v3_0.packet_header.size then
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

-- Packet
nasdaq_common_soupbin_tcp_v3_0.packet = {}

-- Dissect Packet
nasdaq_common_soupbin_tcp_v3_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Soup Bin Tcp Packet
  local end_of_payload = buffer:len()

  -- Soup Bin Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_soup_bin_tcp_packet = soup_bin_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nasdaq_common_soupbin_tcp_v3_0.soup_bin_tcp_packet.dissect(buffer, index, packet, parent, size_of_soup_bin_tcp_packet)
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
end

-- Dissector for Nasdaq Common SoupBin Tcp 3.0
function omi_nasdaq_common_soupbin_tcp_v3_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_common_soupbin_tcp_v3_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_common_soupbin_tcp_v3_0, buffer(), omi_nasdaq_common_soupbin_tcp_v3_0.description, "("..buffer:len().." Bytes)")
  return nasdaq_common_soupbin_tcp_v3_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_nasdaq_common_soupbin_tcp_v3_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nasdaq_common_soupbin_tcp_v3_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nasdaq Common SoupBin Tcp 3.0
local function omi_nasdaq_common_soupbin_tcp_v3_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_common_soupbin_tcp_v3_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_common_soupbin_tcp_v3_0
  omi_nasdaq_common_soupbin_tcp_v3_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq Common SoupBin Tcp 3.0
omi_nasdaq_common_soupbin_tcp_v3_0:register_heuristic("tcp", omi_nasdaq_common_soupbin_tcp_v3_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
