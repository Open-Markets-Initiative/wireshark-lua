-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlEquities HeaderOnly ESesM 1.0.a Protocol
local miax_pearlequities_esesm_v1_0_a = Proto("Miax.PearlEquities.ESesM.v1.0.a.Lua", "Miax PearlEquities HeaderOnly ESesM 1.0.a")

-- Component Tables
local show = {}
local format = {}
local miax_pearlequities_esesm_v1_0_a_display = {}
local miax_pearlequities_esesm_v1_0_a_dissect = {}
local miax_pearlequities_esesm_v1_0_a_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlEquities HeaderOnly ESesM 1.0.a Fields
miax_pearlequities_esesm_v1_0_a.fields.application_protocol = ProtoField.new("Application Protocol", "miax.pearlequities.esesm.v1.0.a.applicationprotocol", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.computer_id = ProtoField.new("Computer Id", "miax.pearlequities.esesm.v1.0.a.computerid", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.pearlequities.esesm.v1.0.a.endsequencenumber", ftypes.UINT64)
miax_pearlequities_esesm_v1_0_a.fields.esesm_tcp_packet = ProtoField.new("Esesm Tcp Packet", "miax.pearlequities.esesm.v1.0.a.esesmtcppacket", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.esesm_version = ProtoField.new("Esesm Version", "miax.pearlequities.esesm.v1.0.a.esesmversion", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.pearlequities.esesm.v1.0.a.goodbyepacket", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.pearlequities.esesm.v1.0.a.highestsequencenumber", ftypes.UINT64)
miax_pearlequities_esesm_v1_0_a.fields.login_request = ProtoField.new("Login Request", "miax.pearlequities.esesm.v1.0.a.loginrequest", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.login_response = ProtoField.new("Login Response", "miax.pearlequities.esesm.v1.0.a.loginresponse", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.login_status = ProtoField.new("Login Status", "miax.pearlequities.esesm.v1.0.a.loginstatus", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.logout_reason = ProtoField.new("Logout Reason", "miax.pearlequities.esesm.v1.0.a.logoutreason", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.logout_request = ProtoField.new("Logout Request", "miax.pearlequities.esesm.v1.0.a.logoutrequest", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.logout_text = ProtoField.new("Logout Text", "miax.pearlequities.esesm.v1.0.a.logouttext", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.pearlequities.esesm.v1.0.a.matchingengineid", ftypes.UINT8)
miax_pearlequities_esesm_v1_0_a.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.pearlequities.esesm.v1.0.a.numberofmatchingengines", ftypes.UINT8)
miax_pearlequities_esesm_v1_0_a.fields.packet = ProtoField.new("Packet", "miax.pearlequities.esesm.v1.0.a.packet", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.packet_header = ProtoField.new("Packet Header", "miax.pearlequities.esesm.v1.0.a.packetheader", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.packet_length = ProtoField.new("Packet Length", "miax.pearlequities.esesm.v1.0.a.packetlength", ftypes.UINT16)
miax_pearlequities_esesm_v1_0_a.fields.packet_type = ProtoField.new("Packet Type", "miax.pearlequities.esesm.v1.0.a.packettype", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.payload = ProtoField.new("Payload", "miax.pearlequities.esesm.v1.0.a.payload", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.pearlequities.esesm.v1.0.a.requestedsequencenumber", ftypes.UINT64)
miax_pearlequities_esesm_v1_0_a.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.pearlequities.esesm.v1.0.a.requestedtradingsessionid", ftypes.UINT8)
miax_pearlequities_esesm_v1_0_a.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.pearlequities.esesm.v1.0.a.retransmissionrequest", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearlequities.esesm.v1.0.a.sequencenumber", ftypes.UINT64)
miax_pearlequities_esesm_v1_0_a.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.pearlequities.esesm.v1.0.a.sequenceddatapacket", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.sequenced_message = ProtoField.new("Sequenced Message", "miax.pearlequities.esesm.v1.0.a.sequencedmessage", ftypes.BYTES)
miax_pearlequities_esesm_v1_0_a.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.pearlequities.esesm.v1.0.a.startsequencenumber", ftypes.UINT64)
miax_pearlequities_esesm_v1_0_a.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.pearlequities.esesm.v1.0.a.synchronizationcomplete", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.test_packet = ProtoField.new("Test Packet", "miax.pearlequities.esesm.v1.0.a.testpacket", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.test_text = ProtoField.new("Test Text", "miax.pearlequities.esesm.v1.0.a.testtext", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.pearlequities.esesm.v1.0.a.tradingsessionid", ftypes.UINT8)
miax_pearlequities_esesm_v1_0_a.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.pearlequities.esesm.v1.0.a.unsequenceddatapacket", ftypes.STRING)
miax_pearlequities_esesm_v1_0_a.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "miax.pearlequities.esesm.v1.0.a.unsequencedmessage", ftypes.BYTES)
miax_pearlequities_esesm_v1_0_a.fields.username = ProtoField.new("Username", "miax.pearlequities.esesm.v1.0.a.username", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax PearlEquities HeaderOnly ESesM 1.0.a Element Dissection Options
show.esesm_tcp_packet = true
show.goodbye_packet = true
show.login_request = true
show.login_response = true
show.logout_request = true
show.packet = true
show.packet_header = true
show.retransmission_request = true
show.sequenced_data_packet = true
show.synchronization_complete = true
show.test_packet = true
show.unsequenced_data_packet = true
show.payload = false

-- Register Miax PearlEquities HeaderOnly ESesM 1.0.a Show Options
miax_pearlequities_esesm_v1_0_a.prefs.show_esesm_tcp_packet = Pref.bool("Show Esesm Tcp Packet", show.esesm_tcp_packet, "Parse and add Esesm Tcp Packet to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_synchronization_complete = Pref.bool("Show Synchronization Complete", show.synchronization_complete, "Parse and add Synchronization Complete to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_test_packet = Pref.bool("Show Test Packet", show.test_packet, "Parse and add Test Packet to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
miax_pearlequities_esesm_v1_0_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function miax_pearlequities_esesm_v1_0_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.esesm_tcp_packet ~= miax_pearlequities_esesm_v1_0_a.prefs.show_esesm_tcp_packet then
    show.esesm_tcp_packet = miax_pearlequities_esesm_v1_0_a.prefs.show_esesm_tcp_packet
    changed = true
  end
  if show.goodbye_packet ~= miax_pearlequities_esesm_v1_0_a.prefs.show_goodbye_packet then
    show.goodbye_packet = miax_pearlequities_esesm_v1_0_a.prefs.show_goodbye_packet
    changed = true
  end
  if show.login_request ~= miax_pearlequities_esesm_v1_0_a.prefs.show_login_request then
    show.login_request = miax_pearlequities_esesm_v1_0_a.prefs.show_login_request
    changed = true
  end
  if show.login_response ~= miax_pearlequities_esesm_v1_0_a.prefs.show_login_response then
    show.login_response = miax_pearlequities_esesm_v1_0_a.prefs.show_login_response
    changed = true
  end
  if show.logout_request ~= miax_pearlequities_esesm_v1_0_a.prefs.show_logout_request then
    show.logout_request = miax_pearlequities_esesm_v1_0_a.prefs.show_logout_request
    changed = true
  end
  if show.packet ~= miax_pearlequities_esesm_v1_0_a.prefs.show_packet then
    show.packet = miax_pearlequities_esesm_v1_0_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= miax_pearlequities_esesm_v1_0_a.prefs.show_packet_header then
    show.packet_header = miax_pearlequities_esesm_v1_0_a.prefs.show_packet_header
    changed = true
  end
  if show.retransmission_request ~= miax_pearlequities_esesm_v1_0_a.prefs.show_retransmission_request then
    show.retransmission_request = miax_pearlequities_esesm_v1_0_a.prefs.show_retransmission_request
    changed = true
  end
  if show.sequenced_data_packet ~= miax_pearlequities_esesm_v1_0_a.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = miax_pearlequities_esesm_v1_0_a.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.synchronization_complete ~= miax_pearlequities_esesm_v1_0_a.prefs.show_synchronization_complete then
    show.synchronization_complete = miax_pearlequities_esesm_v1_0_a.prefs.show_synchronization_complete
    changed = true
  end
  if show.test_packet ~= miax_pearlequities_esesm_v1_0_a.prefs.show_test_packet then
    show.test_packet = miax_pearlequities_esesm_v1_0_a.prefs.show_test_packet
    changed = true
  end
  if show.unsequenced_data_packet ~= miax_pearlequities_esesm_v1_0_a.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = miax_pearlequities_esesm_v1_0_a.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= miax_pearlequities_esesm_v1_0_a.prefs.show_payload then
    show.payload = miax_pearlequities_esesm_v1_0_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


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
-- Dissect Miax PearlEquities HeaderOnly ESesM 1.0.a
-----------------------------------------------------------------------

-- Display: Test Text
miax_pearlequities_esesm_v1_0_a_display.test_text = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_pearlequities_esesm_v1_0_a_dissect.test_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_esesm_v1_0_a_display.test_text(value, buffer, offset, packet, parent, size)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.test_text, range, value, display)

  return offset + size
end

-- Calculate size of: Test Packet
miax_pearlequities_esesm_v1_0_a_size_of.test_packet = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_pearlequities_esesm_v1_0_a_display.test_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Test Packet
miax_pearlequities_esesm_v1_0_a_dissect.test_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index = miax_pearlequities_esesm_v1_0_a_dissect.test_text(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_pearlequities_esesm_v1_0_a_dissect.test_packet = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.test_packet then
    local length = miax_pearlequities_esesm_v1_0_a_size_of.test_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_esesm_v1_0_a_display.test_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.test_packet, range, display)
  end

  return miax_pearlequities_esesm_v1_0_a_dissect.test_packet_fields(buffer, offset, packet, parent)
end

-- Display: Logout Text
miax_pearlequities_esesm_v1_0_a_display.logout_text = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_pearlequities_esesm_v1_0_a_dissect.logout_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_esesm_v1_0_a_display.logout_text(value, buffer, offset, packet, parent, size)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.logout_text, range, value, display)

  return offset + size
end

-- Size: Logout Reason
miax_pearlequities_esesm_v1_0_a_size_of.logout_reason = 1

-- Display: Logout Reason
miax_pearlequities_esesm_v1_0_a_display.logout_reason = function(value)
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
miax_pearlequities_esesm_v1_0_a_dissect.logout_reason = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.logout_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_esesm_v1_0_a_display.logout_reason(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Goodbye Packet
miax_pearlequities_esesm_v1_0_a_size_of.goodbye_packet = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.logout_reason

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_pearlequities_esesm_v1_0_a_display.goodbye_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_pearlequities_esesm_v1_0_a_dissect.goodbye_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_esesm_v1_0_a_dissect.logout_reason(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index = miax_pearlequities_esesm_v1_0_a_dissect.logout_text(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_pearlequities_esesm_v1_0_a_dissect.goodbye_packet = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.goodbye_packet then
    local length = miax_pearlequities_esesm_v1_0_a_size_of.goodbye_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_esesm_v1_0_a_display.goodbye_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.goodbye_packet, range, display)
  end

  return miax_pearlequities_esesm_v1_0_a_dissect.goodbye_packet_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logout Request
miax_pearlequities_esesm_v1_0_a_size_of.logout_request = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.logout_reason

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_pearlequities_esesm_v1_0_a_display.logout_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Request
miax_pearlequities_esesm_v1_0_a_dissect.logout_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_esesm_v1_0_a_dissect.logout_reason(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index = miax_pearlequities_esesm_v1_0_a_dissect.logout_text(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_pearlequities_esesm_v1_0_a_dissect.logout_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.logout_request then
    local length = miax_pearlequities_esesm_v1_0_a_size_of.logout_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_esesm_v1_0_a_display.logout_request(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.logout_request, range, display)
  end

  return miax_pearlequities_esesm_v1_0_a_dissect.logout_request_fields(buffer, offset, packet, parent)
end

-- Size: End Sequence Number
miax_pearlequities_esesm_v1_0_a_size_of.end_sequence_number = 8

-- Display: End Sequence Number
miax_pearlequities_esesm_v1_0_a_display.end_sequence_number = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_pearlequities_esesm_v1_0_a_dissect.end_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.end_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_esesm_v1_0_a_display.end_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Start Sequence Number
miax_pearlequities_esesm_v1_0_a_size_of.start_sequence_number = 8

-- Display: Start Sequence Number
miax_pearlequities_esesm_v1_0_a_display.start_sequence_number = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_pearlequities_esesm_v1_0_a_dissect.start_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.start_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_esesm_v1_0_a_display.start_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmission Request
miax_pearlequities_esesm_v1_0_a_size_of.retransmission_request = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.start_sequence_number

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.end_sequence_number

  return index
end

-- Display: Retransmission Request
miax_pearlequities_esesm_v1_0_a_display.retransmission_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_pearlequities_esesm_v1_0_a_dissect.retransmission_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_pearlequities_esesm_v1_0_a_dissect.start_sequence_number(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_pearlequities_esesm_v1_0_a_dissect.end_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_pearlequities_esesm_v1_0_a_dissect.retransmission_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmission_request then
    local length = miax_pearlequities_esesm_v1_0_a_size_of.retransmission_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_esesm_v1_0_a_display.retransmission_request(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.retransmission_request, range, display)
  end

  return miax_pearlequities_esesm_v1_0_a_dissect.retransmission_request_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Matching Engines
miax_pearlequities_esesm_v1_0_a_size_of.number_of_matching_engines = 1

-- Display: Number Of Matching Engines
miax_pearlequities_esesm_v1_0_a_display.number_of_matching_engines = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_pearlequities_esesm_v1_0_a_dissect.number_of_matching_engines = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.number_of_matching_engines
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_esesm_v1_0_a_display.number_of_matching_engines(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Calculate size of: Synchronization Complete
miax_pearlequities_esesm_v1_0_a_size_of.synchronization_complete = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.number_of_matching_engines

  return index
end

-- Display: Synchronization Complete
miax_pearlequities_esesm_v1_0_a_display.synchronization_complete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_pearlequities_esesm_v1_0_a_dissect.synchronization_complete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearlequities_esesm_v1_0_a_dissect.number_of_matching_engines(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_pearlequities_esesm_v1_0_a_dissect.synchronization_complete = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.synchronization_complete then
    local length = miax_pearlequities_esesm_v1_0_a_size_of.synchronization_complete(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_esesm_v1_0_a_display.synchronization_complete(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.synchronization_complete, range, display)
  end

  return miax_pearlequities_esesm_v1_0_a_dissect.synchronization_complete_fields(buffer, offset, packet, parent)
end

-- Size: Highest Sequence Number
miax_pearlequities_esesm_v1_0_a_size_of.highest_sequence_number = 8

-- Display: Highest Sequence Number
miax_pearlequities_esesm_v1_0_a_display.highest_sequence_number = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_pearlequities_esesm_v1_0_a_dissect.highest_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.highest_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_esesm_v1_0_a_display.highest_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Id
miax_pearlequities_esesm_v1_0_a_size_of.trading_session_id = 1

-- Display: Trading Session Id
miax_pearlequities_esesm_v1_0_a_display.trading_session_id = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_pearlequities_esesm_v1_0_a_dissect.trading_session_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.trading_session_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_esesm_v1_0_a_display.trading_session_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Size: Login Status
miax_pearlequities_esesm_v1_0_a_size_of.login_status = 1

-- Display: Login Status
miax_pearlequities_esesm_v1_0_a_display.login_status = function(value)
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
miax_pearlequities_esesm_v1_0_a_dissect.login_status = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.login_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_esesm_v1_0_a_display.login_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.login_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Response
miax_pearlequities_esesm_v1_0_a_size_of.login_response = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.number_of_matching_engines

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.login_status

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.trading_session_id

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.highest_sequence_number

  return index
end

-- Display: Login Response
miax_pearlequities_esesm_v1_0_a_display.login_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Response
miax_pearlequities_esesm_v1_0_a_dissect.login_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearlequities_esesm_v1_0_a_dissect.number_of_matching_engines(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 9 values
  index, login_status = miax_pearlequities_esesm_v1_0_a_dissect.login_status(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_pearlequities_esesm_v1_0_a_dissect.trading_session_id(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_pearlequities_esesm_v1_0_a_dissect.highest_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_pearlequities_esesm_v1_0_a_dissect.login_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_response then
    local length = miax_pearlequities_esesm_v1_0_a_size_of.login_response(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_esesm_v1_0_a_display.login_response(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.login_response, range, display)
  end

  return miax_pearlequities_esesm_v1_0_a_dissect.login_response_fields(buffer, offset, packet, parent)
end

-- Size: Requested Sequence Number
miax_pearlequities_esesm_v1_0_a_size_of.requested_sequence_number = 8

-- Display: Requested Sequence Number
miax_pearlequities_esesm_v1_0_a_display.requested_sequence_number = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_pearlequities_esesm_v1_0_a_dissect.requested_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.requested_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_esesm_v1_0_a_display.requested_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Requested Trading Session Id
miax_pearlequities_esesm_v1_0_a_size_of.requested_trading_session_id = 1

-- Display: Requested Trading Session Id
miax_pearlequities_esesm_v1_0_a_display.requested_trading_session_id = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_pearlequities_esesm_v1_0_a_dissect.requested_trading_session_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.requested_trading_session_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_esesm_v1_0_a_display.requested_trading_session_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Size: Application Protocol
miax_pearlequities_esesm_v1_0_a_size_of.application_protocol = 8

-- Display: Application Protocol
miax_pearlequities_esesm_v1_0_a_display.application_protocol = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_pearlequities_esesm_v1_0_a_dissect.application_protocol = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.application_protocol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_esesm_v1_0_a_display.application_protocol(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Size: Computer Id
miax_pearlequities_esesm_v1_0_a_size_of.computer_id = 8

-- Display: Computer Id
miax_pearlequities_esesm_v1_0_a_display.computer_id = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_pearlequities_esesm_v1_0_a_dissect.computer_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.computer_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_esesm_v1_0_a_display.computer_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Size: Username
miax_pearlequities_esesm_v1_0_a_size_of.username = 5

-- Display: Username
miax_pearlequities_esesm_v1_0_a_display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_pearlequities_esesm_v1_0_a_dissect.username = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.username
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_esesm_v1_0_a_display.username(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.username, range, value, display)

  return offset + length, value
end

-- Size: Esesm Version
miax_pearlequities_esesm_v1_0_a_size_of.esesm_version = 5

-- Display: Esesm Version
miax_pearlequities_esesm_v1_0_a_display.esesm_version = function(value)
  return "Esesm Version: "..value
end

-- Dissect: Esesm Version
miax_pearlequities_esesm_v1_0_a_dissect.esesm_version = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.esesm_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_esesm_v1_0_a_display.esesm_version(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.esesm_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request
miax_pearlequities_esesm_v1_0_a_size_of.login_request = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.esesm_version

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.username

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.computer_id

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.application_protocol

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.requested_trading_session_id

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.requested_sequence_number

  return index
end

-- Display: Login Request
miax_pearlequities_esesm_v1_0_a_display.login_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request
miax_pearlequities_esesm_v1_0_a_dissect.login_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Esesm Version: 5 Byte Ascii String
  index, esesm_version = miax_pearlequities_esesm_v1_0_a_dissect.esesm_version(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_pearlequities_esesm_v1_0_a_dissect.username(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_pearlequities_esesm_v1_0_a_dissect.computer_id(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_pearlequities_esesm_v1_0_a_dissect.application_protocol(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_pearlequities_esesm_v1_0_a_dissect.requested_trading_session_id(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_pearlequities_esesm_v1_0_a_dissect.requested_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_pearlequities_esesm_v1_0_a_dissect.login_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_request then
    local length = miax_pearlequities_esesm_v1_0_a_size_of.login_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_esesm_v1_0_a_display.login_request(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.login_request, range, display)
  end

  return miax_pearlequities_esesm_v1_0_a_dissect.login_request_fields(buffer, offset, packet, parent)
end

-- Size: Unsequenced Message
miax_pearlequities_esesm_v1_0_a_size_of.unsequenced_message = 0

-- Display: Unsequenced Message
miax_pearlequities_esesm_v1_0_a_display.unsequenced_message = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect: Unsequenced Message
miax_pearlequities_esesm_v1_0_a_dissect.unsequenced_message = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.unsequenced_message
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearlequities_esesm_v1_0_a_display.unsequenced_message(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.unsequenced_message, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Unsequenced Data Packet
miax_pearlequities_esesm_v1_0_a_size_of.unsequenced_data_packet = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 1
end

-- Display: Unsequenced Data Packet
miax_pearlequities_esesm_v1_0_a_display.unsequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_pearlequities_esesm_v1_0_a_dissect.unsequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = miax_pearlequities_esesm_v1_0_a_dissect.unsequenced_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_pearlequities_esesm_v1_0_a_dissect.unsequenced_data_packet = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = miax_pearlequities_esesm_v1_0_a_size_of.unsequenced_data_packet(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = miax_pearlequities_esesm_v1_0_a_display.unsequenced_data_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.unsequenced_data_packet, range, display)
  end

  miax_pearlequities_esesm_v1_0_a_dissect.unsequenced_data_packet_fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Size: Sequenced Message
miax_pearlequities_esesm_v1_0_a_size_of.sequenced_message = 0

-- Display: Sequenced Message
miax_pearlequities_esesm_v1_0_a_display.sequenced_message = function(value)
  return "Sequenced Message: "..value
end

-- Dissect: Sequenced Message
miax_pearlequities_esesm_v1_0_a_dissect.sequenced_message = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.sequenced_message
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = miax_pearlequities_esesm_v1_0_a_display.sequenced_message(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.sequenced_message, range, value, display)

  return offset + length, value
end

-- Size: Matching Engine Id
miax_pearlequities_esesm_v1_0_a_size_of.matching_engine_id = 1

-- Display: Matching Engine Id
miax_pearlequities_esesm_v1_0_a_display.matching_engine_id = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_pearlequities_esesm_v1_0_a_dissect.matching_engine_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.matching_engine_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_esesm_v1_0_a_display.matching_engine_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
miax_pearlequities_esesm_v1_0_a_size_of.sequence_number = 8

-- Display: Sequence Number
miax_pearlequities_esesm_v1_0_a_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearlequities_esesm_v1_0_a_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_esesm_v1_0_a_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Sequenced Data Packet
miax_pearlequities_esesm_v1_0_a_size_of.sequenced_data_packet = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 10
end

-- Display: Sequenced Data Packet
miax_pearlequities_esesm_v1_0_a_display.sequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_pearlequities_esesm_v1_0_a_dissect.sequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearlequities_esesm_v1_0_a_dissect.sequence_number(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_pearlequities_esesm_v1_0_a_dissect.matching_engine_id(buffer, index, packet, parent)

  -- Sequenced Message: 0 Byte
  index, sequenced_message = miax_pearlequities_esesm_v1_0_a_dissect.sequenced_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_pearlequities_esesm_v1_0_a_dissect.sequenced_data_packet = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = miax_pearlequities_esesm_v1_0_a_size_of.sequenced_data_packet(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = miax_pearlequities_esesm_v1_0_a_display.sequenced_data_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.sequenced_data_packet, range, display)
  end

  miax_pearlequities_esesm_v1_0_a_dissect.sequenced_data_packet_fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Calculate runtime size of: Payload
miax_pearlequities_esesm_v1_0_a_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Sequenced Data Packet
  if packet_type == "s" then
    return miax_pearlequities_esesm_v1_0_a_size_of.sequenced_data_packet(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return miax_pearlequities_esesm_v1_0_a_size_of.unsequenced_data_packet(buffer, offset)
  end
  -- Size of Login Request
  if packet_type == "l" then
    return miax_pearlequities_esesm_v1_0_a_size_of.login_request(buffer, offset)
  end
  -- Size of Login Response
  if packet_type == "r" then
    return miax_pearlequities_esesm_v1_0_a_size_of.login_response(buffer, offset)
  end
  -- Size of Synchronization Complete
  if packet_type == "c" then
    return miax_pearlequities_esesm_v1_0_a_size_of.synchronization_complete(buffer, offset)
  end
  -- Size of Retransmission Request
  if packet_type == "a" then
    return miax_pearlequities_esesm_v1_0_a_size_of.retransmission_request(buffer, offset)
  end
  -- Size of Logout Request
  if packet_type == "X" then
    return miax_pearlequities_esesm_v1_0_a_size_of.logout_request(buffer, offset)
  end
  -- Size of Goodbye Packet
  if packet_type == "G" then
    return miax_pearlequities_esesm_v1_0_a_size_of.goodbye_packet(buffer, offset)
  end
  -- Size of Trading Session Update
  if packet_type == "u" then
    return 0
  end
  -- Size of Server Heartbeat
  if packet_type == "0" then
    return 0
  end
  -- Size of Client Heartbeat
  if packet_type == "1" then
    return 0
  end
  -- Size of Test Packet
  if packet_type == "T" then
    return miax_pearlequities_esesm_v1_0_a_size_of.test_packet(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_pearlequities_esesm_v1_0_a_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_pearlequities_esesm_v1_0_a_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Sequenced Data Packet
  if packet_type == "s" then
    return miax_pearlequities_esesm_v1_0_a_dissect.sequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return miax_pearlequities_esesm_v1_0_a_dissect.unsequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if packet_type == "l" then
    return miax_pearlequities_esesm_v1_0_a_dissect.login_request(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if packet_type == "r" then
    return miax_pearlequities_esesm_v1_0_a_dissect.login_response(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if packet_type == "c" then
    return miax_pearlequities_esesm_v1_0_a_dissect.synchronization_complete(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if packet_type == "a" then
    return miax_pearlequities_esesm_v1_0_a_dissect.retransmission_request(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if packet_type == "X" then
    return miax_pearlequities_esesm_v1_0_a_dissect.logout_request(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if packet_type == "G" then
    return miax_pearlequities_esesm_v1_0_a_dissect.goodbye_packet(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Update
  if packet_type == "u" then
  end
  -- Dissect Server Heartbeat
  if packet_type == "0" then
  end
  -- Dissect Client Heartbeat
  if packet_type == "1" then
  end
  -- Dissect Test Packet
  if packet_type == "T" then
    return miax_pearlequities_esesm_v1_0_a_dissect.test_packet(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_pearlequities_esesm_v1_0_a_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_pearlequities_esesm_v1_0_a_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_esesm_v1_0_a_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_esesm_v1_0_a_display.payload(buffer, packet, parent)
  local element = parent:add(miax_pearlequities_esesm_v1_0_a.fields.payload, range, display)

  return miax_pearlequities_esesm_v1_0_a_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Packet Type
miax_pearlequities_esesm_v1_0_a_size_of.packet_type = 1

-- Display: Packet Type
miax_pearlequities_esesm_v1_0_a_display.packet_type = function(value)
  if value == "s" then
    return "Packet Type: Sequenced Data Packet (s)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "l" then
    return "Packet Type: Login Request (l)"
  end
  if value == "r" then
    return "Packet Type: Login Response (r)"
  end
  if value == "c" then
    return "Packet Type: Synchronization Complete (c)"
  end
  if value == "a" then
    return "Packet Type: Retransmission Request (a)"
  end
  if value == "X" then
    return "Packet Type: Logout Request (X)"
  end
  if value == "G" then
    return "Packet Type: Goodbye Packet (G)"
  end
  if value == "u" then
    return "Packet Type: Trading Session Update (u)"
  end
  if value == "0" then
    return "Packet Type: Server Heartbeat (0)"
  end
  if value == "1" then
    return "Packet Type: Client Heartbeat (1)"
  end
  if value == "T" then
    return "Packet Type: Test Packet (T)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_pearlequities_esesm_v1_0_a_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_esesm_v1_0_a_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
miax_pearlequities_esesm_v1_0_a_size_of.packet_length = 2

-- Display: Packet Length
miax_pearlequities_esesm_v1_0_a_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_pearlequities_esesm_v1_0_a_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_esesm_v1_0_a_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_esesm_v1_0_a_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_esesm_v1_0_a.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
miax_pearlequities_esesm_v1_0_a_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.packet_length

  index = index + miax_pearlequities_esesm_v1_0_a_size_of.packet_type

  return index
end

-- Display: Packet Header
miax_pearlequities_esesm_v1_0_a_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
miax_pearlequities_esesm_v1_0_a_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_pearlequities_esesm_v1_0_a_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 12 values
  index, packet_type = miax_pearlequities_esesm_v1_0_a_dissect.packet_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
miax_pearlequities_esesm_v1_0_a_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = miax_pearlequities_esesm_v1_0_a_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_esesm_v1_0_a_display.packet_header(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.packet_header, range, display)
  end

  return miax_pearlequities_esesm_v1_0_a_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Display: Esesm Tcp Packet
miax_pearlequities_esesm_v1_0_a_display.esesm_tcp_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Esesm Tcp Packet
miax_pearlequities_esesm_v1_0_a_dissect.esesm_tcp_packet_fields = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = miax_pearlequities_esesm_v1_0_a_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 12 branches
  index = miax_pearlequities_esesm_v1_0_a_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Esesm Tcp Packet
miax_pearlequities_esesm_v1_0_a_dissect.esesm_tcp_packet = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  -- Optionally add struct element to protocol tree
  if show.esesm_tcp_packet then
    local range = buffer(offset, size_of_esesm_tcp_packet)
    local display = miax_pearlequities_esesm_v1_0_a_display.esesm_tcp_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_esesm_v1_0_a.fields.esesm_tcp_packet, range, display)
  end

  miax_pearlequities_esesm_v1_0_a_dissect.esesm_tcp_packet_fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)

  return offset + size_of_esesm_tcp_packet
end

-- Remaining Bytes For: Esesm Tcp Packet
local esesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_pearlequities_esesm_v1_0_a_size_of.packet_header(buffer, index) then
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

-- Dissect Packet
miax_pearlequities_esesm_v1_0_a_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Esesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Esesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_esesm_tcp_packet = esesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_pearlequities_esesm_v1_0_a_dissect.esesm_tcp_packet(buffer, index, packet, parent, size_of_esesm_tcp_packet)
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
function miax_pearlequities_esesm_v1_0_a.init()
end

-- Dissector for Miax PearlEquities HeaderOnly ESesM 1.0.a
function miax_pearlequities_esesm_v1_0_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_pearlequities_esesm_v1_0_a.name

  -- Dissect protocol
  local protocol = parent:add(miax_pearlequities_esesm_v1_0_a, buffer(), miax_pearlequities_esesm_v1_0_a.description, "("..buffer:len().." Bytes)")
  return miax_pearlequities_esesm_v1_0_a_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, miax_pearlequities_esesm_v1_0_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_pearlequities_esesm_v1_0_a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax PearlEquities HeaderOnly ESesM 1.0.a
local function miax_pearlequities_esesm_v1_0_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_pearlequities_esesm_v1_0_a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_pearlequities_esesm_v1_0_a
  miax_pearlequities_esesm_v1_0_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlEquities HeaderOnly ESesM 1.0.a
miax_pearlequities_esesm_v1_0_a:register_heuristic("tcp", miax_pearlequities_esesm_v1_0_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.0.a
--   Date: Friday, June 26, 2020
--   Specification: TcpSessionMgmt_eSesM_v1.0.a.updated.pdf.pdf
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
