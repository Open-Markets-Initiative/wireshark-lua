-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Coinbase CoinbaseDerivatives Session Tcp 1.2 Protocol
local omi_coinbase_coinbasederivatives_session_tcp_v1_2 = Proto("Coinbase.CoinbaseDerivatives.Session.Tcp.v1.2.Lua", "Coinbase CoinbaseDerivatives Session Tcp 1.2")

-- Protocol table
local coinbase_coinbasederivatives_session_tcp_v1_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Coinbase CoinbaseDerivatives Session Tcp 1.2 Fields
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.block_length = ProtoField.new("Block Length", "coinbase.coinbasederivatives.session.tcp.v1.2.blocklength", ftypes.UINT16)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.correlation_id = ProtoField.new("Correlation Id", "coinbase.coinbasederivatives.session.tcp.v1.2.correlationid", ftypes.INT64)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.details = ProtoField.new("Details", "coinbase.coinbasederivatives.session.tcp.v1.2.details", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.flags = ProtoField.new("Flags", "coinbase.coinbasederivatives.session.tcp.v1.2.flags", ftypes.UINT8)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.from_sequence_number = ProtoField.new("From Sequence Number", "coinbase.coinbasederivatives.session.tcp.v1.2.fromsequencenumber", ftypes.UINT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.heartbeat_interval_seconds = ProtoField.new("Heartbeat Interval Seconds", "coinbase.coinbasederivatives.session.tcp.v1.2.heartbeatintervalseconds", ftypes.INT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.is_resend = ProtoField.new("Is Resend", "coinbase.coinbasederivatives.session.tcp.v1.2.isresend", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.last_processed_seq_no = ProtoField.new("Last Processed Seq No", "coinbase.coinbasederivatives.session.tcp.v1.2.lastprocessedseqno", ftypes.UINT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.message_header = ProtoField.new("Message Header", "coinbase.coinbasederivatives.session.tcp.v1.2.messageheader", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.message_length = ProtoField.new("Message Length", "coinbase.coinbasederivatives.session.tcp.v1.2.messagelength", ftypes.UINT16)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.new_sequence_number = ProtoField.new("New Sequence Number", "coinbase.coinbasederivatives.session.tcp.v1.2.newsequencenumber", ftypes.UINT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.packet = ProtoField.new("Packet", "coinbase.coinbasederivatives.session.tcp.v1.2.packet", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.padding = ProtoField.new("Padding", "coinbase.coinbasederivatives.session.tcp.v1.2.padding", ftypes.UINT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.password = ProtoField.new("Password", "coinbase.coinbasederivatives.session.tcp.v1.2.password", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.protocol_id = ProtoField.new("Protocol Id", "coinbase.coinbasederivatives.session.tcp.v1.2.protocolid", ftypes.UINT8)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reason_reject_reason = ProtoField.new("Reason Reject Reason", "coinbase.coinbasederivatives.session.tcp.v1.2.reasonrejectreason", ftypes.INT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reason_string_64 = ProtoField.new("Reason String 64", "coinbase.coinbasederivatives.session.tcp.v1.2.reasonstring64", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.ref_sequence_number = ProtoField.new("Ref Sequence Number", "coinbase.coinbasederivatives.session.tcp.v1.2.refsequencenumber", ftypes.UINT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reserved = ProtoField.new("Reserved", "coinbase.coinbasederivatives.session.tcp.v1.2.reserved", ftypes.UINT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reserved_bits = ProtoField.new("Reserved Bits", "coinbase.coinbasederivatives.session.tcp.v1.2.reservedbits", ftypes.UINT8, nil, base.DEC, 0x7F)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reset_seq_num = ProtoField.new("Reset Seq Num", "coinbase.coinbasederivatives.session.tcp.v1.2.resetseqnum", ftypes.INT8)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.sbe_message = ProtoField.new("Sbe Message", "coinbase.coinbasederivatives.session.tcp.v1.2.sbemessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.schema_id = ProtoField.new("Schema Id", "coinbase.coinbasederivatives.session.tcp.v1.2.schemaid", ftypes.UINT16)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.send_time_epoch_nanos = ProtoField.new("Send Time Epoch Nanos", "coinbase.coinbasederivatives.session.tcp.v1.2.sendtimeepochnanos", ftypes.INT64)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.sequence_number = ProtoField.new("Sequence Number", "coinbase.coinbasederivatives.session.tcp.v1.2.sequencenumber", ftypes.UINT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.template_id = ProtoField.new("Template Id", "coinbase.coinbasederivatives.session.tcp.v1.2.templateid", ftypes.UINT16)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.to_sequence_number = ProtoField.new("To Sequence Number", "coinbase.coinbasederivatives.session.tcp.v1.2.tosequencenumber", ftypes.UINT32)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.username = ProtoField.new("Username", "coinbase.coinbasederivatives.session.tcp.v1.2.username", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.version = ProtoField.new("Version", "coinbase.coinbasederivatives.session.tcp.v1.2.version", ftypes.UINT16)

-- Coinbase CoinbaseDerivatives Tcp Session 1.2 Application Messages
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.gap_fill_message = ProtoField.new("Gap Fill Message", "coinbase.coinbasederivatives.session.tcp.v1.2.gapfillmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "coinbase.coinbasederivatives.session.tcp.v1.2.heartbeatmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.logged_out_message = ProtoField.new("Logged Out Message", "coinbase.coinbasederivatives.session.tcp.v1.2.loggedoutmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.logon_conf_message = ProtoField.new("Logon Conf Message", "coinbase.coinbasederivatives.session.tcp.v1.2.logonconfmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.logon_message = ProtoField.new("Logon Message", "coinbase.coinbasederivatives.session.tcp.v1.2.logonmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.logout_message = ProtoField.new("Logout Message", "coinbase.coinbasederivatives.session.tcp.v1.2.logoutmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reject_message = ProtoField.new("Reject Message", "coinbase.coinbasederivatives.session.tcp.v1.2.rejectmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.resend_request_message = ProtoField.new("Resend Request Message", "coinbase.coinbasederivatives.session.tcp.v1.2.resendrequestmessage", ftypes.STRING)
omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.test_request_message = ProtoField.new("Test Request Message", "coinbase.coinbasederivatives.session.tcp.v1.2.testrequestmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Coinbase CoinbaseDerivatives Session Tcp 1.2 Element Dissection Options
show.flags = true
show.application_messages = true
show.message_header = true
show.packet = true
show.sbe_message = true

-- Register Coinbase CoinbaseDerivatives Session Tcp 1.2 Show Options
omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_flags = Pref.bool("Show Flags", show.flags, "Parse and add Flags to protocol tree")
omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")

-- Handle changed preferences
function omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_application_messages then
    show.application_messages = omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_application_messages
  end
  if show.flags ~= omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_flags then
    show.flags = omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_flags
  end
  if show.message_header ~= omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_message_header then
    show.message_header = omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_message_header
  end
  if show.packet ~= omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_packet then
    show.packet = omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_packet
  end
  if show.sbe_message ~= omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_sbe_message then
    show.sbe_message = omi_coinbase_coinbasederivatives_session_tcp_v1_2.prefs.show_sbe_message
  end
end


-----------------------------------------------------------------------
-- Coinbase CoinbaseDerivatives Session Tcp 1.2 Fields
-----------------------------------------------------------------------

-- Block Length
coinbase_coinbasederivatives_session_tcp_v1_2.block_length = {}

-- Size: Block Length
coinbase_coinbasederivatives_session_tcp_v1_2.block_length.size = 2

-- Display: Block Length
coinbase_coinbasederivatives_session_tcp_v1_2.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
coinbase_coinbasederivatives_session_tcp_v1_2.block_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.block_length, range, value, display)

  return offset + length, value
end

-- Correlation Id
coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id = {}

-- Size: Correlation Id
coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id.size = 8

-- Display: Correlation Id
coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id.display = function(value)
  return "Correlation Id: "..value
end

-- Dissect: Correlation Id
coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.correlation_id, range, value, display)

  return offset + length, value
end

-- Details
coinbase_coinbasederivatives_session_tcp_v1_2.details = {}

-- Size: Details
coinbase_coinbasederivatives_session_tcp_v1_2.details.size = 64

-- Display: Details
coinbase_coinbasederivatives_session_tcp_v1_2.details.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Details: No Value"
  end

  return "Details: "..value
end

-- Dissect: Details
coinbase_coinbasederivatives_session_tcp_v1_2.details.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.details.size
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

  local display = coinbase_coinbasederivatives_session_tcp_v1_2.details.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.details, range, value, display)

  return offset + length, value
end

-- From Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.from_sequence_number = {}

-- Size: From Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.from_sequence_number.size = 4

-- Display: From Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.from_sequence_number.display = function(value)
  return "From Sequence Number: "..value
end

-- Dissect: From Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.from_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.from_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.from_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.from_sequence_number, range, value, display)

  return offset + length, value
end

-- Heartbeat Interval Seconds
coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_interval_seconds = {}

-- Size: Heartbeat Interval Seconds
coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_interval_seconds.size = 4

-- Display: Heartbeat Interval Seconds
coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_interval_seconds.display = function(value)
  return "Heartbeat Interval Seconds: "..value
end

-- Dissect: Heartbeat Interval Seconds
coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_interval_seconds.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_interval_seconds.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_interval_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.heartbeat_interval_seconds, range, value, display)

  return offset + length, value
end

-- Last Processed Seq No
coinbase_coinbasederivatives_session_tcp_v1_2.last_processed_seq_no = {}

-- Size: Last Processed Seq No
coinbase_coinbasederivatives_session_tcp_v1_2.last_processed_seq_no.size = 4

-- Display: Last Processed Seq No
coinbase_coinbasederivatives_session_tcp_v1_2.last_processed_seq_no.display = function(value)
  return "Last Processed Seq No: "..value
end

-- Dissect: Last Processed Seq No
coinbase_coinbasederivatives_session_tcp_v1_2.last_processed_seq_no.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.last_processed_seq_no.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.last_processed_seq_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.last_processed_seq_no, range, value, display)

  return offset + length, value
end

-- Message Length
coinbase_coinbasederivatives_session_tcp_v1_2.message_length = {}

-- Size: Message Length
coinbase_coinbasederivatives_session_tcp_v1_2.message_length.size = 2

-- Display: Message Length
coinbase_coinbasederivatives_session_tcp_v1_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
coinbase_coinbasederivatives_session_tcp_v1_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- New Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.new_sequence_number = {}

-- Size: New Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.new_sequence_number.size = 4

-- Display: New Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.new_sequence_number.display = function(value)
  return "New Sequence Number: "..value
end

-- Dissect: New Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.new_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.new_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.new_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.new_sequence_number, range, value, display)

  return offset + length, value
end

-- Padding
coinbase_coinbasederivatives_session_tcp_v1_2.padding = {}

-- Display: Padding
coinbase_coinbasederivatives_session_tcp_v1_2.padding.display = function(value)
  return "Padding: "..value
end

-- Dissect runtime sized field: Padding
coinbase_coinbasederivatives_session_tcp_v1_2.padding.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.padding.display(value, packet, parent, size)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.padding, range, value, display)

  return offset + size, value
end

-- Password
coinbase_coinbasederivatives_session_tcp_v1_2.password = {}

-- Size: Password
coinbase_coinbasederivatives_session_tcp_v1_2.password.size = 32

-- Display: Password
coinbase_coinbasederivatives_session_tcp_v1_2.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
coinbase_coinbasederivatives_session_tcp_v1_2.password.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.password.size
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

  local display = coinbase_coinbasederivatives_session_tcp_v1_2.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.password, range, value, display)

  return offset + length, value
end

-- Protocol Id
coinbase_coinbasederivatives_session_tcp_v1_2.protocol_id = {}

-- Size: Protocol Id
coinbase_coinbasederivatives_session_tcp_v1_2.protocol_id.size = 1

-- Display: Protocol Id
coinbase_coinbasederivatives_session_tcp_v1_2.protocol_id.display = function(value)
  return "Protocol Id: "..value
end

-- Dissect: Protocol Id
coinbase_coinbasederivatives_session_tcp_v1_2.protocol_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.protocol_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.protocol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.protocol_id, range, value, display)

  return offset + length, value
end

-- Reason Reject Reason
coinbase_coinbasederivatives_session_tcp_v1_2.reason_reject_reason = {}

-- Size: Reason Reject Reason
coinbase_coinbasederivatives_session_tcp_v1_2.reason_reject_reason.size = 4

-- Display: Reason Reject Reason
coinbase_coinbasederivatives_session_tcp_v1_2.reason_reject_reason.display = function(value)
  if value == 1 then
    return "Reason Reject Reason: Invalid Schema Id (1)"
  end
  if value == 2 then
    return "Reason Reject Reason: Invalid Template Id (2)"
  end
  if value == 3 then
    return "Reason Reject Reason: Invalid Block Length (3)"
  end
  if value == 4 then
    return "Reason Reject Reason: Invalid Field Value (4)"
  end

  return "Reason Reject Reason: Unknown("..value..")"
end

-- Dissect: Reason Reject Reason
coinbase_coinbasederivatives_session_tcp_v1_2.reason_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.reason_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.reason_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reason_reject_reason, range, value, display)

  return offset + length, value
end

-- Reason String 64
coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64 = {}

-- Size: Reason String 64
coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64.size = 64

-- Display: Reason String 64
coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Reason String 64: No Value"
  end

  return "Reason String 64: "..value
end

-- Dissect: Reason String 64
coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64.size
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

  local display = coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reason_string_64, range, value, display)

  return offset + length, value
end

-- Ref Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.ref_sequence_number = {}

-- Size: Ref Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.ref_sequence_number.size = 4

-- Display: Ref Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.ref_sequence_number.display = function(value)
  return "Ref Sequence Number: "..value
end

-- Dissect: Ref Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.ref_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.ref_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.ref_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.ref_sequence_number, range, value, display)

  return offset + length, value
end

-- Reserved
coinbase_coinbasederivatives_session_tcp_v1_2.reserved = {}

-- Size: Reserved
coinbase_coinbasederivatives_session_tcp_v1_2.reserved.size = 4

-- Display: Reserved
coinbase_coinbasederivatives_session_tcp_v1_2.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
coinbase_coinbasederivatives_session_tcp_v1_2.reserved.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.reserved.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reset Seq Num
coinbase_coinbasederivatives_session_tcp_v1_2.reset_seq_num = {}

-- Size: Reset Seq Num
coinbase_coinbasederivatives_session_tcp_v1_2.reset_seq_num.size = 1

-- Display: Reset Seq Num
coinbase_coinbasederivatives_session_tcp_v1_2.reset_seq_num.display = function(value)
  if value == 0 then
    return "Reset Seq Num: False (0)"
  end
  if value == 1 then
    return "Reset Seq Num: True (1)"
  end

  return "Reset Seq Num: Unknown("..value..")"
end

-- Dissect: Reset Seq Num
coinbase_coinbasederivatives_session_tcp_v1_2.reset_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.reset_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.reset_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reset_seq_num, range, value, display)

  return offset + length, value
end

-- Schema Id
coinbase_coinbasederivatives_session_tcp_v1_2.schema_id = {}

-- Size: Schema Id
coinbase_coinbasederivatives_session_tcp_v1_2.schema_id.size = 2

-- Display: Schema Id
coinbase_coinbasederivatives_session_tcp_v1_2.schema_id.display = function(value)
  if value == 1100 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
coinbase_coinbasederivatives_session_tcp_v1_2.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Send Time Epoch Nanos
coinbase_coinbasederivatives_session_tcp_v1_2.send_time_epoch_nanos = {}

-- Size: Send Time Epoch Nanos
coinbase_coinbasederivatives_session_tcp_v1_2.send_time_epoch_nanos.size = 8

-- Display: Send Time Epoch Nanos
coinbase_coinbasederivatives_session_tcp_v1_2.send_time_epoch_nanos.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time Epoch Nanos: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time Epoch Nanos
coinbase_coinbasederivatives_session_tcp_v1_2.send_time_epoch_nanos.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.send_time_epoch_nanos.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.send_time_epoch_nanos.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.send_time_epoch_nanos, range, value, display)

  return offset + length, value
end

-- Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.sequence_number = {}

-- Size: Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.sequence_number.size = 4

-- Display: Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Template Id
coinbase_coinbasederivatives_session_tcp_v1_2.template_id = {}

-- Size: Template Id
coinbase_coinbasederivatives_session_tcp_v1_2.template_id.size = 2

-- Display: Template Id
coinbase_coinbasederivatives_session_tcp_v1_2.template_id.display = function(value)
  if value == 100 then
    return "Template Id: Logon Message (100)"
  end
  if value == 200 then
    return "Template Id: Logon Conf Message (200)"
  end
  if value == 101 then
    return "Template Id: Logout Message (101)"
  end
  if value == 201 then
    return "Template Id: Logged Out Message (201)"
  end
  if value == 10 then
    return "Template Id: Heartbeat Message (10)"
  end
  if value == 11 then
    return "Template Id: Test Request Message (11)"
  end
  if value == 102 then
    return "Template Id: Resend Request Message (102)"
  end
  if value == 202 then
    return "Template Id: Gap Fill Message (202)"
  end
  if value == 210 then
    return "Template Id: Reject Message (210)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
coinbase_coinbasederivatives_session_tcp_v1_2.template_id.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.template_id, range, value, display)

  return offset + length, value
end

-- To Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.to_sequence_number = {}

-- Size: To Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.to_sequence_number.size = 4

-- Display: To Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.to_sequence_number.display = function(value)
  return "To Sequence Number: "..value
end

-- Dissect: To Sequence Number
coinbase_coinbasederivatives_session_tcp_v1_2.to_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.to_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.to_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.to_sequence_number, range, value, display)

  return offset + length, value
end

-- Username
coinbase_coinbasederivatives_session_tcp_v1_2.username = {}

-- Size: Username
coinbase_coinbasederivatives_session_tcp_v1_2.username.size = 16

-- Display: Username
coinbase_coinbasederivatives_session_tcp_v1_2.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
coinbase_coinbasederivatives_session_tcp_v1_2.username.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.username.size
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

  local display = coinbase_coinbasederivatives_session_tcp_v1_2.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.username, range, value, display)

  return offset + length, value
end

-- Version
coinbase_coinbasederivatives_session_tcp_v1_2.version = {}

-- Size: Version
coinbase_coinbasederivatives_session_tcp_v1_2.version.size = 2

-- Display: Version
coinbase_coinbasederivatives_session_tcp_v1_2.version.display = function(value)
  if value == 2 then
    return "Version: Version 1.2"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
coinbase_coinbasederivatives_session_tcp_v1_2.version.dissect = function(buffer, offset, packet, parent)
  local length = coinbase_coinbasederivatives_session_tcp_v1_2.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Coinbase CoinbaseDerivatives Session Tcp 1.2
-----------------------------------------------------------------------

-- Reject Message
coinbase_coinbasederivatives_session_tcp_v1_2.reject_message = {}

-- Size: Reject Message
coinbase_coinbasederivatives_session_tcp_v1_2.reject_message.size =
  coinbase_coinbasederivatives_session_tcp_v1_2.ref_sequence_number.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.reason_reject_reason.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.details.size

-- Display: Reject Message
coinbase_coinbasederivatives_session_tcp_v1_2.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
coinbase_coinbasederivatives_session_tcp_v1_2.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ref Sequence Number: uint32
  index, ref_sequence_number = coinbase_coinbasederivatives_session_tcp_v1_2.ref_sequence_number.dissect(buffer, index, packet, parent)

  -- Reason Reject Reason: RejectReason
  index, reason_reject_reason = coinbase_coinbasederivatives_session_tcp_v1_2.reason_reject_reason.dissect(buffer, index, packet, parent)

  -- Details: String64
  index, details = coinbase_coinbasederivatives_session_tcp_v1_2.details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
coinbase_coinbasederivatives_session_tcp_v1_2.reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reject_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Gap Fill Message
coinbase_coinbasederivatives_session_tcp_v1_2.gap_fill_message = {}

-- Calculate size of: Gap Fill Message
coinbase_coinbasederivatives_session_tcp_v1_2.gap_fill_message.size = function(buffer, offset)
  local index = 0

  index = index + coinbase_coinbasederivatives_session_tcp_v1_2.new_sequence_number.size

  local message_length = buffer(offset + index - 34, 2):le_uint()

  if message_length - (index - offset) > 0 then
    -- Parse runtime size of: Padding
    index = index + buffer(offset + index - 34, 2):le_uint()

  end

  return index
end

-- Display: Gap Fill Message
coinbase_coinbasederivatives_session_tcp_v1_2.gap_fill_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Fill Message
coinbase_coinbasederivatives_session_tcp_v1_2.gap_fill_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- New Sequence Number: uint32
  index, new_sequence_number = coinbase_coinbasederivatives_session_tcp_v1_2.new_sequence_number.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 30, 2):le_uint()

  -- Runtime optional field: Padding
  local padding = nil

  local padding_exists = message_length - (index - offset) > 0

  if padding_exists then

    -- Runtime Size Of: Padding
    local size_of_padding = message_length - (index - offset)

    -- Padding: uint32
    index, padding = coinbase_coinbasederivatives_session_tcp_v1_2.padding.dissect(buffer, index, packet, parent, size_of_padding)
  end

  return index
end

-- Dissect: Gap Fill Message
coinbase_coinbasederivatives_session_tcp_v1_2.gap_fill_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.gap_fill_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.gap_fill_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.gap_fill_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.gap_fill_message.fields(buffer, offset, packet, parent)
  end
end

-- Resend Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.resend_request_message = {}

-- Size: Resend Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.resend_request_message.size =
  coinbase_coinbasederivatives_session_tcp_v1_2.from_sequence_number.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.to_sequence_number.size

-- Display: Resend Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.resend_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Resend Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.resend_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- From Sequence Number: uint32
  index, from_sequence_number = coinbase_coinbasederivatives_session_tcp_v1_2.from_sequence_number.dissect(buffer, index, packet, parent)

  -- To Sequence Number: uint32
  index, to_sequence_number = coinbase_coinbasederivatives_session_tcp_v1_2.to_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Resend Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.resend_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.resend_request_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.resend_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.resend_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.resend_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.test_request_message = {}

-- Size: Test Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.test_request_message.size =
  coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id.size

-- Display: Test Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.test_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.test_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: int64
  index, correlation_id = coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Request Message
coinbase_coinbasederivatives_session_tcp_v1_2.test_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.test_request_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.test_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.test_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.test_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Message
coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_message = {}

-- Size: Heartbeat Message
coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_message.size =
  coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id.size

-- Display: Heartbeat Message
coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Message
coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Correlation Id: int64
  index, correlation_id = coinbase_coinbasederivatives_session_tcp_v1_2.correlation_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Message
coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.heartbeat_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_message.fields(buffer, offset, packet, parent)
  end
end

-- Logged Out Message
coinbase_coinbasederivatives_session_tcp_v1_2.logged_out_message = {}

-- Size: Logged Out Message
coinbase_coinbasederivatives_session_tcp_v1_2.logged_out_message.size =
  coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64.size

-- Display: Logged Out Message
coinbase_coinbasederivatives_session_tcp_v1_2.logged_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logged Out Message
coinbase_coinbasederivatives_session_tcp_v1_2.logged_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason String 64: String64
  index, reason_string_64 = coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logged Out Message
coinbase_coinbasederivatives_session_tcp_v1_2.logged_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.logged_out_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.logged_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.logged_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.logged_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Message
coinbase_coinbasederivatives_session_tcp_v1_2.logout_message = {}

-- Size: Logout Message
coinbase_coinbasederivatives_session_tcp_v1_2.logout_message.size =
  coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64.size

-- Display: Logout Message
coinbase_coinbasederivatives_session_tcp_v1_2.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
coinbase_coinbasederivatives_session_tcp_v1_2.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason String 64: String64
  index, reason_string_64 = coinbase_coinbasederivatives_session_tcp_v1_2.reason_string_64.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
coinbase_coinbasederivatives_session_tcp_v1_2.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.logout_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Conf Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_conf_message = {}

-- Size: Logon Conf Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_conf_message.size =
  coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_interval_seconds.size

-- Display: Logon Conf Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_conf_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Conf Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_conf_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Heartbeat Interval Seconds: int32
  index, heartbeat_interval_seconds = coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_interval_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Conf Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_conf_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.logon_conf_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.logon_conf_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.logon_conf_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.logon_conf_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_message = {}

-- Size: Logon Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_message.size =
  coinbase_coinbasederivatives_session_tcp_v1_2.username.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.password.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.reset_seq_num.size

-- Display: Logon Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: String16
  index, username = coinbase_coinbasederivatives_session_tcp_v1_2.username.dissect(buffer, index, packet, parent)

  -- Password: String32
  index, password = coinbase_coinbasederivatives_session_tcp_v1_2.password.dissect(buffer, index, packet, parent)

  -- Reset Seq Num: Bool
  index, reset_seq_num = coinbase_coinbasederivatives_session_tcp_v1_2.reset_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
coinbase_coinbasederivatives_session_tcp_v1_2.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.logon_message, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
coinbase_coinbasederivatives_session_tcp_v1_2.payload = {}

-- Dissect: Payload
coinbase_coinbasederivatives_session_tcp_v1_2.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Logon Message
  if template_id == 100 then
    return coinbase_coinbasederivatives_session_tcp_v1_2.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Conf Message
  if template_id == 200 then
    return coinbase_coinbasederivatives_session_tcp_v1_2.logon_conf_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 101 then
    return coinbase_coinbasederivatives_session_tcp_v1_2.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logged Out Message
  if template_id == 201 then
    return coinbase_coinbasederivatives_session_tcp_v1_2.logged_out_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 10 then
    return coinbase_coinbasederivatives_session_tcp_v1_2.heartbeat_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Test Request Message
  if template_id == 11 then
    return coinbase_coinbasederivatives_session_tcp_v1_2.test_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Resend Request Message
  if template_id == 102 then
    return coinbase_coinbasederivatives_session_tcp_v1_2.resend_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gap Fill Message
  if template_id == 202 then
    return coinbase_coinbasederivatives_session_tcp_v1_2.gap_fill_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if template_id == 210 then
    return coinbase_coinbasederivatives_session_tcp_v1_2.reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Flags
coinbase_coinbasederivatives_session_tcp_v1_2.flags = {}

-- Size: Flags
coinbase_coinbasederivatives_session_tcp_v1_2.flags.size = 1

-- Display: Flags
coinbase_coinbasederivatives_session_tcp_v1_2.flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Resend flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Is Resend"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Flags
coinbase_coinbasederivatives_session_tcp_v1_2.flags.bits = function(range, value, packet, parent)

  -- Reserved Bits: 7 Bit
  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.reserved_bits, range, value)

  -- Is Resend: 1 Bit
  parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.is_resend, range, value)
end

-- Dissect: Flags
coinbase_coinbasederivatives_session_tcp_v1_2.flags.dissect = function(buffer, offset, packet, parent)
  local size = coinbase_coinbasederivatives_session_tcp_v1_2.flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = coinbase_coinbasederivatives_session_tcp_v1_2.flags.display(range, value, packet, parent)
  local element = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.flags, range, display)

  if show.flags then
    coinbase_coinbasederivatives_session_tcp_v1_2.flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Message Header
coinbase_coinbasederivatives_session_tcp_v1_2.message_header = {}

-- Size: Message Header
coinbase_coinbasederivatives_session_tcp_v1_2.message_header.size =
  coinbase_coinbasederivatives_session_tcp_v1_2.protocol_id.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.flags.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.flags.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.message_length.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.sequence_number.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.last_processed_seq_no.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.reserved.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.send_time_epoch_nanos.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.block_length.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.template_id.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.schema_id.size + 
  coinbase_coinbasederivatives_session_tcp_v1_2.version.size

-- Display: Message Header
coinbase_coinbasederivatives_session_tcp_v1_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
coinbase_coinbasederivatives_session_tcp_v1_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protocol Id: 1 Byte Unsigned Fixed Width Integer
  index, protocol_id = coinbase_coinbasederivatives_session_tcp_v1_2.protocol_id.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 2 fields
  index, flags = coinbase_coinbasederivatives_session_tcp_v1_2.flags.dissect(buffer, index, packet, parent)

  -- Flags: Struct of 2 fields
  index, flags = coinbase_coinbasederivatives_session_tcp_v1_2.flags.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = coinbase_coinbasederivatives_session_tcp_v1_2.message_length.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = coinbase_coinbasederivatives_session_tcp_v1_2.sequence_number.dissect(buffer, index, packet, parent)

  -- Last Processed Seq No: 4 Byte Unsigned Fixed Width Integer
  index, last_processed_seq_no = coinbase_coinbasederivatives_session_tcp_v1_2.last_processed_seq_no.dissect(buffer, index, packet, parent)

  -- Reserved: 4 Byte Unsigned Fixed Width Integer
  index, reserved = coinbase_coinbasederivatives_session_tcp_v1_2.reserved.dissect(buffer, index, packet, parent)

  -- Send Time Epoch Nanos: 8 Byte Signed Fixed Width Integer
  index, send_time_epoch_nanos = coinbase_coinbasederivatives_session_tcp_v1_2.send_time_epoch_nanos.dissect(buffer, index, packet, parent)

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = coinbase_coinbasederivatives_session_tcp_v1_2.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, template_id = coinbase_coinbasederivatives_session_tcp_v1_2.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = coinbase_coinbasederivatives_session_tcp_v1_2.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = coinbase_coinbasederivatives_session_tcp_v1_2.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
coinbase_coinbasederivatives_session_tcp_v1_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.message_header, buffer(offset, 0))
    local index = coinbase_coinbasederivatives_session_tcp_v1_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return coinbase_coinbasederivatives_session_tcp_v1_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
coinbase_coinbasederivatives_session_tcp_v1_2.sbe_message = {}

-- Display: Sbe Message
coinbase_coinbasederivatives_session_tcp_v1_2.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
coinbase_coinbasederivatives_session_tcp_v1_2.sbe_message.fields = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset

  -- Message Header: Struct of 12 fields
  index, message_header = coinbase_coinbasederivatives_session_tcp_v1_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 9 branches
  index = coinbase_coinbasederivatives_session_tcp_v1_2.payload.dissect(buffer, index, packet, parent, template_id)

  -- Dependency element: Message Length
  local message_length = buffer(offset + 3, 2):le_uint()

  -- Runtime optional field: Padding
  local padding = nil

  local padding_exists = message_length - (index - offset) > 0

  if padding_exists then

    -- Runtime Size Of: Padding
    local size_of_padding = message_length - (index - offset)

    -- Padding: uint32
    index, padding = coinbase_coinbasederivatives_session_tcp_v1_2.padding.dissect(buffer, index, packet, parent, size_of_padding)
  end

  return index
end

-- Dissect: Sbe Message
coinbase_coinbasederivatives_session_tcp_v1_2.sbe_message.dissect = function(buffer, offset, packet, parent, size_of_sbe_message)
  local index = offset + size_of_sbe_message

  -- Optionally add group/struct element to protocol tree
  if show.sbe_message then
    parent = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2.fields.sbe_message, buffer(offset, 0))
    local current = coinbase_coinbasederivatives_session_tcp_v1_2.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)
    parent:set_len(size_of_sbe_message)
    local display = coinbase_coinbasederivatives_session_tcp_v1_2.sbe_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    coinbase_coinbasederivatives_session_tcp_v1_2.sbe_message.fields(buffer, offset, packet, parent, size_of_sbe_message)

    return index
  end
end

-- Remaining Bytes For: Sbe Message
local sbe_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < coinbase_coinbasederivatives_session_tcp_v1_2.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 3, 2):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
coinbase_coinbasederivatives_session_tcp_v1_2.packet = {}

-- Verify required size of Tcp packet
coinbase_coinbasederivatives_session_tcp_v1_2.packet.requiredsize = function(buffer)
  return buffer:len() >= coinbase_coinbasederivatives_session_tcp_v1_2.message_header.size
end

-- Dissect Packet
coinbase_coinbasederivatives_session_tcp_v1_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sbe Message
  local end_of_payload = buffer:len()

  -- Sbe Message: Struct of 3 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sbe_message = sbe_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = coinbase_coinbasederivatives_session_tcp_v1_2.sbe_message.dissect(buffer, index, packet, parent, size_of_sbe_message)
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
function omi_coinbase_coinbasederivatives_session_tcp_v1_2.init()
end

-- Dissector for Coinbase CoinbaseDerivatives Session Tcp 1.2
function omi_coinbase_coinbasederivatives_session_tcp_v1_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_coinbase_coinbasederivatives_session_tcp_v1_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_coinbase_coinbasederivatives_session_tcp_v1_2, buffer(), omi_coinbase_coinbasederivatives_session_tcp_v1_2.description, "("..buffer:len().." Bytes)")
  return coinbase_coinbasederivatives_session_tcp_v1_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
coinbase_coinbasederivatives_session_tcp_v1_2.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(29, 2):le_uint()

  if value == 1100 then
    return true
  end

  return false
end

-- Verify Version Field
coinbase_coinbasederivatives_session_tcp_v1_2.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(31, 2):le_uint()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Coinbase CoinbaseDerivatives Session Tcp 1.2 (Tcp)
local function omi_coinbase_coinbasederivatives_session_tcp_v1_2_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not coinbase_coinbasederivatives_session_tcp_v1_2.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not coinbase_coinbasederivatives_session_tcp_v1_2.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not coinbase_coinbasederivatives_session_tcp_v1_2.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_coinbase_coinbasederivatives_session_tcp_v1_2
  omi_coinbase_coinbasederivatives_session_tcp_v1_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Coinbase CoinbaseDerivatives Session Tcp 1.2
omi_coinbase_coinbasederivatives_session_tcp_v1_2:register_heuristic("tcp", omi_coinbase_coinbasederivatives_session_tcp_v1_2_tcp_heuristic)

-- Register Coinbase CoinbaseDerivatives Session Tcp 1.2 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_coinbase_coinbasederivatives_session_tcp_v1_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Coinbase
--   Version: 1.2
--   Date: Monday, July 27, 2020
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
