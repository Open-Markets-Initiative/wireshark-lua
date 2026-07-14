-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax MiaxOptions Mpf Mach 1.1 Protocol
local omi_miax_miaxoptions_mpf_mach_v1_1 = Proto("Omi.Miax.MiaxOptions.Mpf.Mach.v1.1", "Miax MiaxOptions Mpf Mach 1.1")

-- Protocol table
local miax_miaxoptions_mpf_mach_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax MiaxOptions Mpf Mach 1.1 Fields
omi_miax_miaxoptions_mpf_mach_v1_1.fields.application_message = ProtoField.new("Application Message", "miax.miaxoptions.mpf.mach.v1.1.applicationmessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.application_protocol = ProtoField.new("Application Protocol", "miax.miaxoptions.mpf.mach.v1.1.applicationprotocol", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.computer_id = ProtoField.new("Computer Id", "miax.miaxoptions.mpf.mach.v1.1.computerid", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.miaxoptions.mpf.mach.v1.1.endsequencenumber", ftypes.UINT64)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.miaxoptions.mpf.mach.v1.1.goodbyepacket", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.miaxoptions.mpf.mach.v1.1.highestsequencenumber", ftypes.UINT64)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.login_request = ProtoField.new("Login Request", "miax.miaxoptions.mpf.mach.v1.1.loginrequest", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.login_response = ProtoField.new("Login Response", "miax.miaxoptions.mpf.mach.v1.1.loginresponse", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.login_status = ProtoField.new("Login Status", "miax.miaxoptions.mpf.mach.v1.1.loginstatus", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.logout_reason = ProtoField.new("Logout Reason", "miax.miaxoptions.mpf.mach.v1.1.logoutreason", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.logout_request = ProtoField.new("Logout Request", "miax.miaxoptions.mpf.mach.v1.1.logoutrequest", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.logout_text = ProtoField.new("Logout Text", "miax.miaxoptions.mpf.mach.v1.1.logouttext", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.mach_message = ProtoField.new("Mach Message", "miax.miaxoptions.mpf.mach.v1.1.machmessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.miaxoptions.mpf.mach.v1.1.matchingengineid", ftypes.UINT8)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.message_type = ProtoField.new("Message Type", "miax.miaxoptions.mpf.mach.v1.1.messagetype", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.miaxoptions.mpf.mach.v1.1.nanoseconds", ftypes.UINT32)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.miaxoptions.mpf.mach.v1.1.numberofmatchingengines", ftypes.UINT8)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.packet_length = ProtoField.new("Packet Length", "miax.miaxoptions.mpf.mach.v1.1.packetlength", ftypes.UINT16)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.packet_type = ProtoField.new("Packet Type", "miax.miaxoptions.mpf.mach.v1.1.packettype", ftypes.UINT8)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.miaxoptions.mpf.mach.v1.1.refreshmessagetype", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.miaxoptions.mpf.mach.v1.1.requestedsequencenumber", ftypes.UINT64)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.miaxoptions.mpf.mach.v1.1.requestedtradingsessionid", ftypes.UINT8)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.miaxoptions.mpf.mach.v1.1.reserved16", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.miaxoptions.mpf.mach.v1.1.reserved8", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.miaxoptions.mpf.mach.v1.1.retransmissionrequest", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.seconds = ProtoField.new("Seconds", "miax.miaxoptions.mpf.mach.v1.1.seconds", ftypes.UINT32)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "miax.miaxoptions.mpf.mach.v1.1.sequencenumber", ftypes.UINT64)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.miaxoptions.mpf.mach.v1.1.sequenceddatapacket", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.miaxoptions.mpf.mach.v1.1.sequencedmessagetype", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.miaxoptions.mpf.mach.v1.1.sesmpacketheader", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.miaxoptions.mpf.mach.v1.1.sesmpacketlength", ftypes.UINT16)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.miaxoptions.mpf.mach.v1.1.sesmpackettype", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.miaxoptions.mpf.mach.v1.1.sesmtcppacket", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_version = ProtoField.new("Sesm Version", "miax.miaxoptions.mpf.mach.v1.1.sesmversion", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.session_number = ProtoField.new("Session Number", "miax.miaxoptions.mpf.mach.v1.1.sessionnumber", ftypes.UINT8)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.settlement_date = ProtoField.new("Settlement Date", "miax.miaxoptions.mpf.mach.v1.1.settlementdate", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.miaxoptions.mpf.mach.v1.1.startsequencenumber", ftypes.UINT64)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.symbol = ProtoField.new("Symbol", "miax.miaxoptions.mpf.mach.v1.1.symbol", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.symbol_status = ProtoField.new("Symbol Status", "miax.miaxoptions.mpf.mach.v1.1.symbolstatus", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.miaxoptions.mpf.mach.v1.1.synchronizationcomplete", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.synthetic_future_symbol = ProtoField.new("Synthetic Future Symbol", "miax.miaxoptions.mpf.mach.v1.1.syntheticfuturesymbol", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.tcp_packet = ProtoField.new("Tcp Packet", "miax.miaxoptions.mpf.mach.v1.1.tcppacket", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.test_packet = ProtoField.new("Test Packet", "miax.miaxoptions.mpf.mach.v1.1.testpacket", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.test_text = ProtoField.new("Test Text", "miax.miaxoptions.mpf.mach.v1.1.testtext", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.miaxoptions.mpf.mach.v1.1.tradingsessionid", ftypes.UINT8)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.udp_packet = ProtoField.new("Udp Packet", "miax.miaxoptions.mpf.mach.v1.1.udppacket", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.miaxoptions.mpf.mach.v1.1.unsequenceddatapacket", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.miaxoptions.mpf.mach.v1.1.unsequencedmessagetype", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.username = ProtoField.new("Username", "miax.miaxoptions.mpf.mach.v1.1.username", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.value = ProtoField.new("Value", "miax.miaxoptions.mpf.mach.v1.1.value", ftypes.DOUBLE)

-- Miax MiaxOptions Mach Mpf 1.1 Application Messages
omi_miax_miaxoptions_mpf_mach_v1_1.fields.end_of_refresh_notification_message = ProtoField.new("End Of Refresh Notification Message", "miax.miaxoptions.mpf.mach.v1.1.endofrefreshnotificationmessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.index_value_message = ProtoField.new("Index Value Message", "miax.miaxoptions.mpf.mach.v1.1.indexvaluemessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "miax.miaxoptions.mpf.mach.v1.1.refreshrequestmessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.refresh_response_message = ProtoField.new("Refresh Response Message", "miax.miaxoptions.mpf.mach.v1.1.refreshresponsemessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.symbol_definition_message = ProtoField.new("Symbol Definition Message", "miax.miaxoptions.mpf.mach.v1.1.symboldefinitionmessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.synthetic_future_value_message = ProtoField.new("Synthetic Future Value Message", "miax.miaxoptions.mpf.mach.v1.1.syntheticfuturevaluemessage", ftypes.STRING)
omi_miax_miaxoptions_mpf_mach_v1_1.fields.system_time_message = ProtoField.new("System Time Message", "miax.miaxoptions.mpf.mach.v1.1.systemtimemessage", ftypes.STRING)

-- Miax MiaxOptions Mpf Mach 1.1 generated fields
omi_miax_miaxoptions_mpf_mach_v1_1.fields.timestamp = ProtoField.new("Timestamp", "miax.miaxoptions.mpf.mach.v1.1.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax MiaxOptions Mpf Mach 1.1 Element Dissection Options
show.application_message = true
show.application_messages = true
show.goodbye_packet = true
show.login_request = true
show.login_response = true
show.logout_request = true
show.mach_message = true
show.retransmission_request = true
show.sequenced_data_packet = true
show.sesm_packet_header = true
show.sesm_tcp_packet = true
show.synchronization_complete = true
show.tcp_packet = true
show.test_packet = true
show.udp_packet = true
show.unsequenced_data_packet = true

-- Register Miax MiaxOptions Mpf Mach 1.1 Show Options
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_mach_message = Pref.bool("Show Mach Message", show.mach_message, "Parse and add Mach Message to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_sesm_packet_header = Pref.bool("Show Sesm Packet Header", show.sesm_packet_header, "Parse and add Sesm Packet Header to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_sesm_tcp_packet = Pref.bool("Show Sesm Tcp Packet", show.sesm_tcp_packet, "Parse and add Sesm Tcp Packet to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_synchronization_complete = Pref.bool("Show Synchronization Complete", show.synchronization_complete, "Parse and add Synchronization Complete to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_tcp_packet = Pref.bool("Show Tcp Packet", show.tcp_packet, "Parse and add Tcp Packet to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_test_packet = Pref.bool("Show Test Packet", show.test_packet, "Parse and add Test Packet to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_udp_packet = Pref.bool("Show Udp Packet", show.udp_packet, "Parse and add Udp Packet to protocol tree")
omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")


-- Handle changed preferences
function omi_miax_miaxoptions_mpf_mach_v1_1.prefs_changed()

  -- Check if preferences have changed
  if show.application_message ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_application_message then
    show.application_message = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_application_message
  end
  if show.application_messages ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_application_messages then
    show.application_messages = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_application_messages
  end
  if show.goodbye_packet ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_goodbye_packet then
    show.goodbye_packet = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_goodbye_packet
  end
  if show.login_request ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_login_request then
    show.login_request = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_login_request
  end
  if show.login_response ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_login_response then
    show.login_response = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_login_response
  end
  if show.logout_request ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_logout_request then
    show.logout_request = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_logout_request
  end
  if show.mach_message ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_mach_message then
    show.mach_message = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_mach_message
  end
  if show.retransmission_request ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_retransmission_request then
    show.retransmission_request = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_retransmission_request
  end
  if show.sequenced_data_packet ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_sequenced_data_packet
  end
  if show.sesm_packet_header ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_sesm_packet_header then
    show.sesm_packet_header = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_sesm_packet_header
  end
  if show.sesm_tcp_packet ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_sesm_tcp_packet then
    show.sesm_tcp_packet = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_sesm_tcp_packet
  end
  if show.synchronization_complete ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_synchronization_complete then
    show.synchronization_complete = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_synchronization_complete
  end
  if show.tcp_packet ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_tcp_packet then
    show.tcp_packet = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_tcp_packet
  end
  if show.test_packet ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_test_packet then
    show.test_packet = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_test_packet
  end
  if show.udp_packet ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_udp_packet then
    show.udp_packet = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_udp_packet
  end
  if show.unsequenced_data_packet ~= omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_miax_miaxoptions_mpf_mach_v1_1.prefs.show_unsequenced_data_packet
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_miaxoptions_mpf_mach_v1_1.conversation = {}
miax_miaxoptions_mpf_mach_v1_1.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_miaxoptions_mpf_mach_v1_1.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_miaxoptions_mpf_mach_v1_1.conversation.data = function(packet)
  local key = miax_miaxoptions_mpf_mach_v1_1.conversation.key(packet)
  local data = miax_miaxoptions_mpf_mach_v1_1.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_miaxoptions_mpf_mach_v1_1.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_miaxoptions_mpf_mach_v1_1.conversation.current = nil


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Miax MiaxOptions Mpf Mach 1.1 Fields
-----------------------------------------------------------------------

-- Application Protocol
miax_miaxoptions_mpf_mach_v1_1.application_protocol = {}

-- Size: Application Protocol
miax_miaxoptions_mpf_mach_v1_1.application_protocol.size = 8

-- Display: Application Protocol
miax_miaxoptions_mpf_mach_v1_1.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_miaxoptions_mpf_mach_v1_1.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_1.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_miaxoptions_mpf_mach_v1_1.computer_id = {}

-- Size: Computer Id
miax_miaxoptions_mpf_mach_v1_1.computer_id.size = 8

-- Display: Computer Id
miax_miaxoptions_mpf_mach_v1_1.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_miaxoptions_mpf_mach_v1_1.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_1.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.computer_id, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_miaxoptions_mpf_mach_v1_1.end_sequence_number = {}

-- Size: End Sequence Number
miax_miaxoptions_mpf_mach_v1_1.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_miaxoptions_mpf_mach_v1_1.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_miaxoptions_mpf_mach_v1_1.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_1.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_miaxoptions_mpf_mach_v1_1.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_miaxoptions_mpf_mach_v1_1.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_miaxoptions_mpf_mach_v1_1.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_miaxoptions_mpf_mach_v1_1.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_1.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Login Status
miax_miaxoptions_mpf_mach_v1_1.login_status = {}

-- Size: Login Status
miax_miaxoptions_mpf_mach_v1_1.login_status.size = 1

-- Display: Login Status
miax_miaxoptions_mpf_mach_v1_1.login_status.display = function(value)
  if value == "" then
    return "Login Status: Successful (<whitespace>)"
  end
  if value == "S" then
    return "Login Status: Invalid Trading Session Requested (S)"
  end
  if value == "S" then
    return "Login Status: Invalid Start Sequence Number Requested (S)"
  end
  if value == "U" then
    return "Login Status: No Active Trading Session Exists (U)"
  end
  if value == "X" then
    return "Login Status: Rejected (X)"
  end
  if value == "N" then
    return "Login Status: Invalid Start Sequence Number Requested (N)"
  end
  if value == "I" then
    return "Login Status: Incompatible Session Protocol Version (I)"
  end
  if value == "A" then
    return "Login Status: Incompatible Application Protocol Version (A)"
  end
  if value == "L" then
    return "Login Status: Request Rejected Because Client Already Logged In (L)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
miax_miaxoptions_mpf_mach_v1_1.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_miaxoptions_mpf_mach_v1_1.logout_reason = {}

-- Size: Logout Reason
miax_miaxoptions_mpf_mach_v1_1.logout_reason.size = 1

-- Display: Logout Reason
miax_miaxoptions_mpf_mach_v1_1.logout_reason.display = function(value)
  if value == "" then
    return "Logout Reason: Graceful Logout (<whitespace>)"
  end
  if value == "B" then
    return "Logout Reason: Bad Packet (B)"
  end
  if value == "L" then
    return "Logout Reason: Timed Out (L)"
  end
  if value == "A" then
    return "Logout Reason: Application Terminating Connection (A)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
miax_miaxoptions_mpf_mach_v1_1.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_miaxoptions_mpf_mach_v1_1.logout_text = {}

-- Display: Logout Text
miax_miaxoptions_mpf_mach_v1_1.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_miaxoptions_mpf_mach_v1_1.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Matching Engine Id
miax_miaxoptions_mpf_mach_v1_1.matching_engine_id = {}

-- Size: Matching Engine Id
miax_miaxoptions_mpf_mach_v1_1.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_miaxoptions_mpf_mach_v1_1.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_miaxoptions_mpf_mach_v1_1.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Type
miax_miaxoptions_mpf_mach_v1_1.message_type = {}

-- Size: Message Type
miax_miaxoptions_mpf_mach_v1_1.message_type.size = 1

-- Display: Message Type
miax_miaxoptions_mpf_mach_v1_1.message_type.display = function(value)
  if value == "1" then
    return "Message Type: System Time Message (1)"
  end
  if value == "s" then
    return "Message Type: Symbol Definition Message (s)"
  end
  if value == "I" then
    return "Message Type: Index Value Message (I)"
  end
  if value == "Z" then
    return "Message Type: Synthetic Future Value Message (Z)"
  end
  if value == "R" then
    return "Message Type: Refresh Request Message (R)"
  end
  if value == "r" then
    return "Message Type: Refresh Response Message (r)"
  end
  if value == "E" then
    return "Message Type: End Of Refresh Notification Message (E)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_miaxoptions_mpf_mach_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_miaxoptions_mpf_mach_v1_1.nanoseconds = {}

-- Size: Nanoseconds
miax_miaxoptions_mpf_mach_v1_1.nanoseconds.size = 4

-- Display: Nanoseconds
miax_miaxoptions_mpf_mach_v1_1.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_miaxoptions_mpf_mach_v1_1.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_miaxoptions_mpf_mach_v1_1.packet_length = {}

-- Size: Packet Length
miax_miaxoptions_mpf_mach_v1_1.packet_length.size = 2

-- Display: Packet Length
miax_miaxoptions_mpf_mach_v1_1.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_miaxoptions_mpf_mach_v1_1.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_miaxoptions_mpf_mach_v1_1.packet_type = {}

-- Size: Packet Type
miax_miaxoptions_mpf_mach_v1_1.packet_type.size = 1

-- Display: Packet Type
miax_miaxoptions_mpf_mach_v1_1.packet_type.display = function(value)
  if value == 0 then
    return "Packet Type: Heartbeat (0)"
  end
  if value == 1 then
    return "Packet Type: Start Of Session (1)"
  end
  if value == 2 then
    return "Packet Type: End Of Session (2)"
  end
  if value == 3 then
    return "Packet Type: Application Message (3)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_miaxoptions_mpf_mach_v1_1.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_miaxoptions_mpf_mach_v1_1.refresh_message_type = {}

-- Size: Refresh Message Type
miax_miaxoptions_mpf_mach_v1_1.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_miaxoptions_mpf_mach_v1_1.refresh_message_type.display = function(value)
  if value == "I" then
    return "Refresh Message Type: Index Update Refresh (I)"
  end
  if value == "Z" then
    return "Refresh Message Type: Synthetic Future Values (Z)"
  end

  return "Refresh Message Type: Unknown("..value..")"
end

-- Dissect: Refresh Message Type
miax_miaxoptions_mpf_mach_v1_1.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_miaxoptions_mpf_mach_v1_1.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_miaxoptions_mpf_mach_v1_1.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_miaxoptions_mpf_mach_v1_1.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_miaxoptions_mpf_mach_v1_1.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_1.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_miaxoptions_mpf_mach_v1_1.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_miaxoptions_mpf_mach_v1_1.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_miaxoptions_mpf_mach_v1_1.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_miaxoptions_mpf_mach_v1_1.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Reserved 16
miax_miaxoptions_mpf_mach_v1_1.reserved_16 = {}

-- Size: Reserved 16
miax_miaxoptions_mpf_mach_v1_1.reserved_16.size = 16

-- Display: Reserved 16
miax_miaxoptions_mpf_mach_v1_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_miaxoptions_mpf_mach_v1_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.reserved_16.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 8
miax_miaxoptions_mpf_mach_v1_1.reserved_8 = {}

-- Size: Reserved 8
miax_miaxoptions_mpf_mach_v1_1.reserved_8.size = 8

-- Display: Reserved 8
miax_miaxoptions_mpf_mach_v1_1.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_miaxoptions_mpf_mach_v1_1.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Seconds
miax_miaxoptions_mpf_mach_v1_1.seconds = {}

-- Size: Seconds
miax_miaxoptions_mpf_mach_v1_1.seconds.size = 4

-- Store: Seconds
miax_miaxoptions_mpf_mach_v1_1.seconds.current = nil

-- Generated: Seconds
miax_miaxoptions_mpf_mach_v1_1.seconds.generated = function(value, range, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_1.seconds.display(value)
  local seconds = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.seconds, range, value, display)
  seconds:set_generated()
end

-- Display: Seconds
miax_miaxoptions_mpf_mach_v1_1.seconds.display = function(value)
  -- Parse unix seconds timestamp
  return "Seconds: "..os.date("%Y-%m-%d %H:%M:%S.", value)
end

-- Dissect: Seconds
miax_miaxoptions_mpf_mach_v1_1.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.seconds, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_miaxoptions_mpf_mach_v1_1.sequence_number = {}

-- Size: Sequence Number
miax_miaxoptions_mpf_mach_v1_1.sequence_number.size = 8

-- Display: Sequence Number
miax_miaxoptions_mpf_mach_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_miaxoptions_mpf_mach_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_miaxoptions_mpf_mach_v1_1.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_miaxoptions_mpf_mach_v1_1.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_miaxoptions_mpf_mach_v1_1.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
miax_miaxoptions_mpf_mach_v1_1.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_type.display = function(value)
  if value == "s" then
    return "Sesm Packet Type: Sequenced Data Packet (s)"
  end
  if value == "U" then
    return "Sesm Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "l" then
    return "Sesm Packet Type: Login Request (l)"
  end
  if value == "r" then
    return "Sesm Packet Type: Login Response (r)"
  end
  if value == "c" then
    return "Sesm Packet Type: Synchronization Complete (c)"
  end
  if value == "a" then
    return "Sesm Packet Type: Retransmission Request (a)"
  end
  if value == "X" then
    return "Sesm Packet Type: Logout Request (X)"
  end
  if value == "G" then
    return "Sesm Packet Type: Goodbye Packet (G)"
  end
  if value == "u" then
    return "Sesm Packet Type: Trading Session Update (u)"
  end
  if value == "0" then
    return "Sesm Packet Type: Server Heartbeat (0)"
  end
  if value == "1" then
    return "Sesm Packet Type: Client Heartbeat (1)"
  end
  if value == "T" then
    return "Sesm Packet Type: Test Packet (T)"
  end

  return "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_miaxoptions_mpf_mach_v1_1.sesm_version = {}

-- Size: Sesm Version
miax_miaxoptions_mpf_mach_v1_1.sesm_version.size = 5

-- Display: Sesm Version
miax_miaxoptions_mpf_mach_v1_1.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_miaxoptions_mpf_mach_v1_1.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.sesm_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Number
miax_miaxoptions_mpf_mach_v1_1.session_number = {}

-- Size: Session Number
miax_miaxoptions_mpf_mach_v1_1.session_number.size = 1

-- Display: Session Number
miax_miaxoptions_mpf_mach_v1_1.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_miaxoptions_mpf_mach_v1_1.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.session_number, range, value, display)

  return offset + length, value
end

-- Settlement Date
miax_miaxoptions_mpf_mach_v1_1.settlement_date = {}

-- Size: Settlement Date
miax_miaxoptions_mpf_mach_v1_1.settlement_date.size = 8

-- Display: Settlement Date
miax_miaxoptions_mpf_mach_v1_1.settlement_date.display = function(value)
  return "Settlement Date: "..value
end

-- Dissect: Settlement Date
miax_miaxoptions_mpf_mach_v1_1.settlement_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.settlement_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_1.settlement_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.settlement_date, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_miaxoptions_mpf_mach_v1_1.start_sequence_number = {}

-- Size: Start Sequence Number
miax_miaxoptions_mpf_mach_v1_1.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_miaxoptions_mpf_mach_v1_1.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_miaxoptions_mpf_mach_v1_1.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_mpf_mach_v1_1.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Symbol
miax_miaxoptions_mpf_mach_v1_1.symbol = {}

-- Size: Symbol
miax_miaxoptions_mpf_mach_v1_1.symbol.size = 5

-- Display: Symbol
miax_miaxoptions_mpf_mach_v1_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
miax_miaxoptions_mpf_mach_v1_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Status
miax_miaxoptions_mpf_mach_v1_1.symbol_status = {}

-- Size: Symbol Status
miax_miaxoptions_mpf_mach_v1_1.symbol_status.size = 1

-- Display: Symbol Status
miax_miaxoptions_mpf_mach_v1_1.symbol_status.display = function(value)
  if value == "A" then
    return "Symbol Status: Active Future (A)"
  end
  if value == "I" then
    return "Symbol Status: Inactive Future (I)"
  end

  return "Symbol Status: Unknown("..value..")"
end

-- Dissect: Symbol Status
miax_miaxoptions_mpf_mach_v1_1.symbol_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.symbol_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.symbol_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.symbol_status, range, value, display)

  return offset + length, value
end

-- Synthetic Future Symbol
miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol = {}

-- Size: Synthetic Future Symbol
miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol.size = 8

-- Display: Synthetic Future Symbol
miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol.display = function(value)
  return "Synthetic Future Symbol: "..value
end

-- Dissect: Synthetic Future Symbol
miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.synthetic_future_symbol, range, value, display)

  return offset + length, value
end

-- Test Text
miax_miaxoptions_mpf_mach_v1_1.test_text = {}

-- Display: Test Text
miax_miaxoptions_mpf_mach_v1_1.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_miaxoptions_mpf_mach_v1_1.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.test_text, range, value, display)

  return offset + size, value
end

-- Trading Session Id
miax_miaxoptions_mpf_mach_v1_1.trading_session_id = {}

-- Size: Trading Session Id
miax_miaxoptions_mpf_mach_v1_1.trading_session_id.size = 1

-- Display: Trading Session Id
miax_miaxoptions_mpf_mach_v1_1.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_miaxoptions_mpf_mach_v1_1.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_miaxoptions_mpf_mach_v1_1.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_miaxoptions_mpf_mach_v1_1.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_miaxoptions_mpf_mach_v1_1.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_miaxoptions_mpf_mach_v1_1.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
miax_miaxoptions_mpf_mach_v1_1.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_mpf_mach_v1_1.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_miaxoptions_mpf_mach_v1_1.username = {}

-- Size: Username
miax_miaxoptions_mpf_mach_v1_1.username.size = 5

-- Display: Username
miax_miaxoptions_mpf_mach_v1_1.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_miaxoptions_mpf_mach_v1_1.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_mpf_mach_v1_1.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.username, range, value, display)

  return offset + length, value
end

-- Value
miax_miaxoptions_mpf_mach_v1_1.value = {}

-- Size: Value
miax_miaxoptions_mpf_mach_v1_1.value.size = 4

-- Display: Value
miax_miaxoptions_mpf_mach_v1_1.value.display = function(value)
  return "Value: "..value
end

-- Translate: Value
miax_miaxoptions_mpf_mach_v1_1.value.translate = function(raw)
  return raw/100
end

-- Dissect: Value
miax_miaxoptions_mpf_mach_v1_1.value.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.value.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_mpf_mach_v1_1.value.translate(raw)
  local display = miax_miaxoptions_mpf_mach_v1_1.value.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.value, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_miaxoptions_mpf_mach_v1_1.timestamp = {}

-- Translate: Timestamp
miax_miaxoptions_mpf_mach_v1_1.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_miaxoptions_mpf_mach_v1_1.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_miaxoptions_mpf_mach_v1_1.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_miaxoptions_mpf_mach_v1_1.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_miaxoptions_mpf_mach_v1_1.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_miaxoptions_mpf_mach_v1_1.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.timestamp, range, value, display)

  miax_miaxoptions_mpf_mach_v1_1.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_miaxoptions_mpf_mach_v1_1.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_miaxoptions_mpf_mach_v1_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_seconds = miax_miaxoptions_mpf_mach_v1_1.seconds.current

  if stored_seconds ~= nil then
    return miax_miaxoptions_mpf_mach_v1_1.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
  end

  return miax_miaxoptions_mpf_mach_v1_1.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax MiaxOptions Mpf Mach 1.1
-----------------------------------------------------------------------

-- Test Packet
miax_miaxoptions_mpf_mach_v1_1.test_packet = {}

-- Calculate size of: Test Packet
miax_miaxoptions_mpf_mach_v1_1.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_miaxoptions_mpf_mach_v1_1.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_miaxoptions_mpf_mach_v1_1.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_miaxoptions_mpf_mach_v1_1.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_miaxoptions_mpf_mach_v1_1.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.test_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.test_packet, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Goodbye Packet
miax_miaxoptions_mpf_mach_v1_1.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_miaxoptions_mpf_mach_v1_1.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_mpf_mach_v1_1.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_miaxoptions_mpf_mach_v1_1.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_miaxoptions_mpf_mach_v1_1.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_miaxoptions_mpf_mach_v1_1.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_mpf_mach_v1_1.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_miaxoptions_mpf_mach_v1_1.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.goodbye_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_miaxoptions_mpf_mach_v1_1.logout_request = {}

-- Calculate size of: Logout Request
miax_miaxoptions_mpf_mach_v1_1.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_mpf_mach_v1_1.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_miaxoptions_mpf_mach_v1_1.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_miaxoptions_mpf_mach_v1_1.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_miaxoptions_mpf_mach_v1_1.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_miaxoptions_mpf_mach_v1_1.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_miaxoptions_mpf_mach_v1_1.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.logout_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.logout_request, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_miaxoptions_mpf_mach_v1_1.retransmission_request = {}

-- Size: Retransmission Request
miax_miaxoptions_mpf_mach_v1_1.retransmission_request.size =
  miax_miaxoptions_mpf_mach_v1_1.start_sequence_number.size + 
  miax_miaxoptions_mpf_mach_v1_1.end_sequence_number.size

-- Display: Retransmission Request
miax_miaxoptions_mpf_mach_v1_1.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_miaxoptions_mpf_mach_v1_1.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_miaxoptions_mpf_mach_v1_1.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_miaxoptions_mpf_mach_v1_1.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_miaxoptions_mpf_mach_v1_1.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.retransmission_request, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_miaxoptions_mpf_mach_v1_1.synchronization_complete = {}

-- Size: Synchronization Complete
miax_miaxoptions_mpf_mach_v1_1.synchronization_complete.size =
  miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_miaxoptions_mpf_mach_v1_1.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_miaxoptions_mpf_mach_v1_1.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_miaxoptions_mpf_mach_v1_1.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.synchronization_complete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_miaxoptions_mpf_mach_v1_1.login_response = {}

-- Size: Login Response
miax_miaxoptions_mpf_mach_v1_1.login_response.size =
  miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines.size + 
  miax_miaxoptions_mpf_mach_v1_1.login_status.size + 
  miax_miaxoptions_mpf_mach_v1_1.trading_session_id.size + 
  miax_miaxoptions_mpf_mach_v1_1.highest_sequence_number.size

-- Display: Login Response
miax_miaxoptions_mpf_mach_v1_1.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_miaxoptions_mpf_mach_v1_1.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_miaxoptions_mpf_mach_v1_1.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 9 values
  index, login_status = miax_miaxoptions_mpf_mach_v1_1.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_miaxoptions_mpf_mach_v1_1.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_miaxoptions_mpf_mach_v1_1.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_miaxoptions_mpf_mach_v1_1.login_response.dissect = function(buffer, offset, packet, parent)
  if show.login_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.login_response, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_miaxoptions_mpf_mach_v1_1.login_request = {}

-- Size: Login Request
miax_miaxoptions_mpf_mach_v1_1.login_request.size =
  miax_miaxoptions_mpf_mach_v1_1.sesm_version.size + 
  miax_miaxoptions_mpf_mach_v1_1.username.size + 
  miax_miaxoptions_mpf_mach_v1_1.computer_id.size + 
  miax_miaxoptions_mpf_mach_v1_1.application_protocol.size + 
  miax_miaxoptions_mpf_mach_v1_1.requested_trading_session_id.size + 
  miax_miaxoptions_mpf_mach_v1_1.requested_sequence_number.size

-- Display: Login Request
miax_miaxoptions_mpf_mach_v1_1.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_miaxoptions_mpf_mach_v1_1.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_miaxoptions_mpf_mach_v1_1.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_miaxoptions_mpf_mach_v1_1.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_miaxoptions_mpf_mach_v1_1.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_miaxoptions_mpf_mach_v1_1.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_miaxoptions_mpf_mach_v1_1.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_miaxoptions_mpf_mach_v1_1.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_miaxoptions_mpf_mach_v1_1.login_request.dissect = function(buffer, offset, packet, parent)
  if show.login_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.login_request, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_1.end_of_refresh_notification_message = {}

-- Size: End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_1.end_of_refresh_notification_message.size =
  miax_miaxoptions_mpf_mach_v1_1.refresh_message_type.size

-- Display: End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_1.end_of_refresh_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_1.end_of_refresh_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_miaxoptions_mpf_mach_v1_1.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh Notification Message
miax_miaxoptions_mpf_mach_v1_1.end_of_refresh_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.end_of_refresh_notification_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.end_of_refresh_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Synthetic Future Value Message
miax_miaxoptions_mpf_mach_v1_1.synthetic_future_value_message = {}

-- Size: Synthetic Future Value Message
miax_miaxoptions_mpf_mach_v1_1.synthetic_future_value_message.size =
  miax_miaxoptions_mpf_mach_v1_1.nanoseconds.size + 
  miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol.size + 
  miax_miaxoptions_mpf_mach_v1_1.value.size + 
  miax_miaxoptions_mpf_mach_v1_1.reserved_8.size

-- Display: Synthetic Future Value Message
miax_miaxoptions_mpf_mach_v1_1.synthetic_future_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synthetic Future Value Message
miax_miaxoptions_mpf_mach_v1_1.synthetic_future_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_mpf_mach_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Synthetic Future Symbol: Alphanumeric
  index, synthetic_future_symbol = miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol.dissect(buffer, index, packet, parent)

  -- Value: BinaryPrc2U
  index, value = miax_miaxoptions_mpf_mach_v1_1.value.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_miaxoptions_mpf_mach_v1_1.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synthetic Future Value Message
miax_miaxoptions_mpf_mach_v1_1.synthetic_future_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.synthetic_future_value_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.synthetic_future_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.synthetic_future_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.synthetic_future_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Value Message
miax_miaxoptions_mpf_mach_v1_1.index_value_message = {}

-- Size: Index Value Message
miax_miaxoptions_mpf_mach_v1_1.index_value_message.size =
  miax_miaxoptions_mpf_mach_v1_1.nanoseconds.size + 
  miax_miaxoptions_mpf_mach_v1_1.symbol.size + 
  miax_miaxoptions_mpf_mach_v1_1.value.size

-- Display: Index Value Message
miax_miaxoptions_mpf_mach_v1_1.index_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Value Message
miax_miaxoptions_mpf_mach_v1_1.index_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_mpf_mach_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = miax_miaxoptions_mpf_mach_v1_1.symbol.dissect(buffer, index, packet, parent)

  -- Value: BinaryPrc2U
  index, value = miax_miaxoptions_mpf_mach_v1_1.value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Value Message
miax_miaxoptions_mpf_mach_v1_1.index_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.index_value_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.index_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.index_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.index_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Definition Message
miax_miaxoptions_mpf_mach_v1_1.symbol_definition_message = {}

-- Size: Symbol Definition Message
miax_miaxoptions_mpf_mach_v1_1.symbol_definition_message.size =
  miax_miaxoptions_mpf_mach_v1_1.nanoseconds.size + 
  miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol.size + 
  miax_miaxoptions_mpf_mach_v1_1.settlement_date.size + 
  miax_miaxoptions_mpf_mach_v1_1.symbol_status.size + 
  miax_miaxoptions_mpf_mach_v1_1.reserved_16.size

-- Display: Symbol Definition Message
miax_miaxoptions_mpf_mach_v1_1.symbol_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Definition Message
miax_miaxoptions_mpf_mach_v1_1.symbol_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_miaxoptions_mpf_mach_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Synthetic Future Symbol: Alphanumeric
  index, synthetic_future_symbol = miax_miaxoptions_mpf_mach_v1_1.synthetic_future_symbol.dissect(buffer, index, packet, parent)

  -- Settlement Date: Alphanumeric
  index, settlement_date = miax_miaxoptions_mpf_mach_v1_1.settlement_date.dissect(buffer, index, packet, parent)

  -- Symbol Status: Alphanumeric
  index, symbol_status = miax_miaxoptions_mpf_mach_v1_1.symbol_status.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_miaxoptions_mpf_mach_v1_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Definition Message
miax_miaxoptions_mpf_mach_v1_1.symbol_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.symbol_definition_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.symbol_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.symbol_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.symbol_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_miaxoptions_mpf_mach_v1_1.system_time_message = {}

-- Size: System Time Message
miax_miaxoptions_mpf_mach_v1_1.system_time_message.size =
  miax_miaxoptions_mpf_mach_v1_1.seconds.size

-- Display: System Time Message
miax_miaxoptions_mpf_mach_v1_1.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_miaxoptions_mpf_mach_v1_1.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_miaxoptions_mpf_mach_v1_1.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_miaxoptions_mpf_mach_v1_1.seconds.current = seconds

  if not packet.visited then
    miax_miaxoptions_mpf_mach_v1_1.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: System Time Message
miax_miaxoptions_mpf_mach_v1_1.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.system_time_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_miaxoptions_mpf_mach_v1_1.data = {}

-- Dissect: Data
miax_miaxoptions_mpf_mach_v1_1.data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == "1" then
    return miax_miaxoptions_mpf_mach_v1_1.system_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Definition Message
  if message_type == "s" then
    return miax_miaxoptions_mpf_mach_v1_1.symbol_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Value Message
  if message_type == "I" then
    return miax_miaxoptions_mpf_mach_v1_1.index_value_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synthetic Future Value Message
  if message_type == "Z" then
    return miax_miaxoptions_mpf_mach_v1_1.synthetic_future_value_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_miaxoptions_mpf_mach_v1_1.application_message = {}

-- Display: Application Message
miax_miaxoptions_mpf_mach_v1_1.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_miaxoptions_mpf_mach_v1_1.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 7 values
  index, message_type = miax_miaxoptions_mpf_mach_v1_1.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 4 branches
  index = miax_miaxoptions_mpf_mach_v1_1.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_miaxoptions_mpf_mach_v1_1.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.application_message then
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.application_message, buffer(offset, 0))
    local current = miax_miaxoptions_mpf_mach_v1_1.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_miaxoptions_mpf_mach_v1_1.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_mpf_mach_v1_1.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Refresh Response Message
miax_miaxoptions_mpf_mach_v1_1.refresh_response_message = {}

-- Calculate size of: Refresh Response Message
miax_miaxoptions_mpf_mach_v1_1.refresh_response_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_mpf_mach_v1_1.sequence_number.size

  -- Parse runtime size of: Application Message
  index = index + buffer(offset + index - 12, 2):le_uint()

  return index
end

-- Display: Refresh Response Message
miax_miaxoptions_mpf_mach_v1_1.refresh_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response Message
miax_miaxoptions_mpf_mach_v1_1.refresh_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_miaxoptions_mpf_mach_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Application Message
  local size_of_application_message = sesm_packet_length - 12

  -- Application Message: Struct of 2 fields
  index, application_message = miax_miaxoptions_mpf_mach_v1_1.application_message.dissect(buffer, index, packet, parent, size_of_application_message)

  return index
end

-- Dissect: Refresh Response Message
miax_miaxoptions_mpf_mach_v1_1.refresh_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.refresh_response_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.refresh_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.refresh_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.refresh_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
miax_miaxoptions_mpf_mach_v1_1.refresh_request_message = {}

-- Size: Refresh Request Message
miax_miaxoptions_mpf_mach_v1_1.refresh_request_message.size =
  miax_miaxoptions_mpf_mach_v1_1.refresh_message_type.size

-- Display: Refresh Request Message
miax_miaxoptions_mpf_mach_v1_1.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
miax_miaxoptions_mpf_mach_v1_1.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_miaxoptions_mpf_mach_v1_1.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
miax_miaxoptions_mpf_mach_v1_1.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.refresh_request_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_miaxoptions_mpf_mach_v1_1.unsequenced_message = {}

-- Dissect: Unsequenced Message
miax_miaxoptions_mpf_mach_v1_1.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Refresh Request Message
  if unsequenced_message_type == "R" then
    return miax_miaxoptions_mpf_mach_v1_1.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Response Message
  if unsequenced_message_type == "r" then
    return miax_miaxoptions_mpf_mach_v1_1.refresh_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Refresh Notification Message
  if unsequenced_message_type == "E" then
    return miax_miaxoptions_mpf_mach_v1_1.end_of_refresh_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 2
end

-- Display: Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = miax_miaxoptions_mpf_mach_v1_1.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = miax_miaxoptions_mpf_mach_v1_1.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.unsequenced_data_packet then
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 11
end

-- Display: Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_miaxoptions_mpf_mach_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_miaxoptions_mpf_mach_v1_1.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = miax_miaxoptions_mpf_mach_v1_1.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message
  index, sequenced_message = miax_miaxoptions_mpf_mach_v1_1.sequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.sequenced_data_packet then
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_miaxoptions_mpf_mach_v1_1.sesm_payload = {}

-- Dissect: Sesm Payload
miax_miaxoptions_mpf_mach_v1_1.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  -- Dissect Sequenced Data Packet
  if sesm_packet_type == "s" then
    return miax_miaxoptions_mpf_mach_v1_1.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if sesm_packet_type == "U" then
    return miax_miaxoptions_mpf_mach_v1_1.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if sesm_packet_type == "l" then
    return miax_miaxoptions_mpf_mach_v1_1.login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if sesm_packet_type == "r" then
    return miax_miaxoptions_mpf_mach_v1_1.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if sesm_packet_type == "c" then
    return miax_miaxoptions_mpf_mach_v1_1.synchronization_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if sesm_packet_type == "a" then
    return miax_miaxoptions_mpf_mach_v1_1.retransmission_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if sesm_packet_type == "X" then
    return miax_miaxoptions_mpf_mach_v1_1.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if sesm_packet_type == "G" then
    return miax_miaxoptions_mpf_mach_v1_1.goodbye_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Update
  if sesm_packet_type == "u" then
    return offset
  end
  -- Dissect Server Heartbeat
  if sesm_packet_type == "0" then
    return offset
  end
  -- Dissect Client Heartbeat
  if sesm_packet_type == "1" then
    return offset
  end
  -- Dissect Test Packet
  if sesm_packet_type == "T" then
    return miax_miaxoptions_mpf_mach_v1_1.test_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.size =
  miax_miaxoptions_mpf_mach_v1_1.sesm_packet_length.size + 
  miax_miaxoptions_mpf_mach_v1_1.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_miaxoptions_mpf_mach_v1_1.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_miaxoptions_mpf_mach_v1_1.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.sesm_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_miaxoptions_mpf_mach_v1_1.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_miaxoptions_mpf_mach_v1_1.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_miaxoptions_mpf_mach_v1_1.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_miaxoptions_mpf_mach_v1_1.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_miaxoptions_mpf_mach_v1_1.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.sesm_tcp_packet then
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_miaxoptions_mpf_mach_v1_1.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_miaxoptions_mpf_mach_v1_1.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_miaxoptions_mpf_mach_v1_1.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.size then
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

-- Tcp Packet
miax_miaxoptions_mpf_mach_v1_1.tcp_packet = {}

-- Verify required size of Tcp packet
miax_miaxoptions_mpf_mach_v1_1.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_miaxoptions_mpf_mach_v1_1.sesm_packet_header.size
end

-- Dissect Tcp Packet
miax_miaxoptions_mpf_mach_v1_1.tcp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_miaxoptions_mpf_mach_v1_1.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_miaxoptions_mpf_mach_v1_1.seconds.current = data.seconds.frames[packet.number]
  miax_miaxoptions_mpf_mach_v1_1.conversation.current = data

  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_miaxoptions_mpf_mach_v1_1.sesm_tcp_packet.dissect(buffer, index, packet, parent, size_of_sesm_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- End Of Session
miax_miaxoptions_mpf_mach_v1_1.end_of_session = {}

-- Display: End Of Session
miax_miaxoptions_mpf_mach_v1_1.end_of_session.display = function(packet, parent, length)
  return "End Of Session"
end


-- Dissect: End Of Session
miax_miaxoptions_mpf_mach_v1_1.end_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_1.end_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Start Of Session
miax_miaxoptions_mpf_mach_v1_1.start_of_session = {}

-- Display: Start Of Session
miax_miaxoptions_mpf_mach_v1_1.start_of_session.display = function(packet, parent, length)
  return "Start Of Session"
end


-- Dissect: Start Of Session
miax_miaxoptions_mpf_mach_v1_1.start_of_session.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_1.start_of_session.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Heartbeat
miax_miaxoptions_mpf_mach_v1_1.heartbeat = {}

-- Display: Heartbeat
miax_miaxoptions_mpf_mach_v1_1.heartbeat.display = function(packet, parent, length)
  return "Heartbeat"
end


-- Dissect: Heartbeat
miax_miaxoptions_mpf_mach_v1_1.heartbeat.dissect = function(buffer, offset, packet, parent)
  local display = miax_miaxoptions_mpf_mach_v1_1.heartbeat.display(packet, parent, 0)
  packet.cols.info = display

  return offset
end

-- Payload
miax_miaxoptions_mpf_mach_v1_1.payload = {}

-- Dissect: Payload
miax_miaxoptions_mpf_mach_v1_1.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Heartbeat
  if packet_type == 0 then
    return miax_miaxoptions_mpf_mach_v1_1.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Session
  if packet_type == 1 then
    return miax_miaxoptions_mpf_mach_v1_1.start_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if packet_type == 2 then
    return miax_miaxoptions_mpf_mach_v1_1.end_of_session.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_miaxoptions_mpf_mach_v1_1.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Message
miax_miaxoptions_mpf_mach_v1_1.mach_message = {}

-- Calculate size of: Mach Message
miax_miaxoptions_mpf_mach_v1_1.mach_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_mpf_mach_v1_1.sequence_number.size

  index = index + miax_miaxoptions_mpf_mach_v1_1.packet_length.size

  index = index + miax_miaxoptions_mpf_mach_v1_1.packet_type.size

  index = index + miax_miaxoptions_mpf_mach_v1_1.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_miaxoptions_mpf_mach_v1_1.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Mach Message
miax_miaxoptions_mpf_mach_v1_1.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_miaxoptions_mpf_mach_v1_1.mach_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_miaxoptions_mpf_mach_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_miaxoptions_mpf_mach_v1_1.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_miaxoptions_mpf_mach_v1_1.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_miaxoptions_mpf_mach_v1_1.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 4 branches
  index = miax_miaxoptions_mpf_mach_v1_1.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Mach Message
miax_miaxoptions_mpf_mach_v1_1.mach_message.dissect = function(buffer, offset, packet, parent)
  if show.mach_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1.fields.mach_message, buffer(offset, 0))
    local index = miax_miaxoptions_mpf_mach_v1_1.mach_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_mpf_mach_v1_1.mach_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_mpf_mach_v1_1.mach_message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
miax_miaxoptions_mpf_mach_v1_1.udp_packet = {}

-- Verify required size of Udp packet
miax_miaxoptions_mpf_mach_v1_1.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_miaxoptions_mpf_mach_v1_1.sequence_number.size + miax_miaxoptions_mpf_mach_v1_1.packet_length.size + miax_miaxoptions_mpf_mach_v1_1.packet_type.size + miax_miaxoptions_mpf_mach_v1_1.session_number.size
end

-- Dissect Udp Packet
miax_miaxoptions_mpf_mach_v1_1.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_miaxoptions_mpf_mach_v1_1.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_miaxoptions_mpf_mach_v1_1.seconds.current = data.seconds.frames[packet.number]
  miax_miaxoptions_mpf_mach_v1_1.conversation.current = data

  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 5 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, mach_message = miax_miaxoptions_mpf_mach_v1_1.mach_message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_miaxoptions_mpf_mach_v1_1.init()
  miax_miaxoptions_mpf_mach_v1_1.seconds.current = nil
  miax_miaxoptions_mpf_mach_v1_1.conversation.current = nil
  miax_miaxoptions_mpf_mach_v1_1.conversation.flows = {}
end

-- Dissector for Miax MiaxOptions Mpf Mach 1.1
function omi_miax_miaxoptions_mpf_mach_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_miaxoptions_mpf_mach_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_miaxoptions_mpf_mach_v1_1, buffer(), omi_miax_miaxoptions_mpf_mach_v1_1.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    return miax_miaxoptions_mpf_mach_v1_1.tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return miax_miaxoptions_mpf_mach_v1_1.udp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax MiaxOptions Mpf Mach 1.1 (Udp)
local function omi_miax_miaxoptions_mpf_mach_v1_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_mpf_mach_v1_1.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_mpf_mach_v1_1
  omi_miax_miaxoptions_mpf_mach_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Miax MiaxOptions Mpf Mach 1.1 (Tcp)
local function omi_miax_miaxoptions_mpf_mach_v1_1_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_mpf_mach_v1_1.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_mpf_mach_v1_1
  omi_miax_miaxoptions_mpf_mach_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Miax MiaxOptions Mpf Mach 1.1
omi_miax_miaxoptions_mpf_mach_v1_1:register_heuristic("udp", omi_miax_miaxoptions_mpf_mach_v1_1_udp_heuristic)
omi_miax_miaxoptions_mpf_mach_v1_1:register_heuristic("tcp", omi_miax_miaxoptions_mpf_mach_v1_1_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.1
--   Date: Wednesday, February 20, 2019
--   Specification: MIAX_Product_Feed_v1.1_re.pdf
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
