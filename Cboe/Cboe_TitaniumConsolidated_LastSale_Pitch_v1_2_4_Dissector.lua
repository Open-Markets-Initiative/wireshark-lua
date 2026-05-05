-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated LastSale Pitch 1.2.4 Protocol
local omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4 = Proto("Cboe.TitaniumConsolidated.LastSale.Pitch.v1.2.4.Lua", "Cboe TitaniumConsolidated LastSale Pitch 1.2.4")

-- Protocol table
local cboe_titaniumconsolidated_lastsale_pitch_v1_2_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe TitaniumConsolidated LastSale Pitch 1.2.4 Fields
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.debugpacket", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.executedshares", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.execution_id = ProtoField.new("Execution Id", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.executionid", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.loginacceptedpacket", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.loginrejectedpacket", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.loginrequestpacket", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.packet = ProtoField.new("Packet", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.packet", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.packet_type = ProtoField.new("Packet Type", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.packettype", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.password = ProtoField.new("Password", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.password", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.price_long_price_14 = ProtoField.new("Price Long Price 14", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.pricelongprice14", ftypes.DOUBLE)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.price_numeric_10 = ProtoField.new("Price Numeric 10", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.pricenumeric10", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.rejectreasoncode", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.requestedsequencenumber", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.requested_session = ProtoField.new("Requested Session", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.requestedsession", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.sequencenumber", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.sequenceddatapacket", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.sequencedmessageheader", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.sequencedmessagetype", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.session = ProtoField.new("Session", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.session", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.souplf", ftypes.INT8)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.stock_symbol = ProtoField.new("Stock Symbol", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.stocksymbol", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.text = ProtoField.new("Text", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.text", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.timestamp = ProtoField.new("Timestamp", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.timestamp", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.unsequenceddatapacket", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.unsequencedmessage", ftypes.BYTES)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.username = ProtoField.new("Username", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.username", ftypes.STRING)

-- Cboe TitaniumConsolidated Pitch LastSale 1.2.4 Application Messages
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.last_sale_extended_message = ProtoField.new("Last Sale Extended Message", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.lastsaleextendedmessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.last_sale_message = ProtoField.new("Last Sale Message", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.lastsalemessage", ftypes.STRING)
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.trade_break_message = ProtoField.new("Trade Break Message", "cboe.titaniumconsolidated.lastsale.pitch.v1.2.4.tradebreakmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe TitaniumConsolidated LastSale Pitch 1.2.4 Element Dissection Options
show.debug_packet = true
show.application_messages = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.packet = true
show.sequenced_data_packet = true
show.sequenced_message_header = true
show.unsequenced_data_packet = true

-- Register Cboe TitaniumConsolidated LastSale Pitch 1.2.4 Show Options
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_sequenced_message_header = Pref.bool("Show Sequenced Message Header", show.sequenced_message_header, "Parse and add Sequenced Message Header to protocol tree")
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")

-- Handle changed preferences
function omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_application_messages then
    show.application_messages = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_application_messages
  end
  if show.debug_packet ~= omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_debug_packet then
    show.debug_packet = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_debug_packet
  end
  if show.login_accepted_packet ~= omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_login_accepted_packet
  end
  if show.login_rejected_packet ~= omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_login_rejected_packet
  end
  if show.login_request_packet ~= omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_login_request_packet then
    show.login_request_packet = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_login_request_packet
  end
  if show.packet ~= omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_packet then
    show.packet = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_packet
  end
  if show.sequenced_data_packet ~= omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_sequenced_data_packet
  end
  if show.sequenced_message_header ~= omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_sequenced_message_header then
    show.sequenced_message_header = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_sequenced_message_header
  end
  if show.unsequenced_data_packet ~= omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.prefs.show_unsequenced_data_packet
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
-- Cboe TitaniumConsolidated LastSale Pitch 1.2.4 Fields
-----------------------------------------------------------------------

-- Executed Shares
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares = {}

-- Size: Executed Shares
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares.size = 8

-- Display: Executed Shares
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Id
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id = {}

-- Size: Execution Id
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.size = 12

-- Display: Execution Id
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet_type = {}

-- Size: Packet Type
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet_type.size = 1

-- Display: Packet Type
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet_type.display = function(value)
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
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.password = {}

-- Size: Password
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.password.size = 10

-- Display: Password
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.password, range, value, display)

  return offset + length, value
end

-- Price Long Price 14
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_long_price_14 = {}

-- Size: Price Long Price 14
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_long_price_14.size = 14

-- Display: Price Long Price 14
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_long_price_14.display = function(value)
  return "Price Long Price 14: "..value
end

-- Dissect: Price Long Price 14
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_long_price_14.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_long_price_14.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_long_price_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.price_long_price_14, range, value, display)

  return offset + length, value
end

-- Price Numeric 10
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_numeric_10 = {}

-- Size: Price Numeric 10
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_numeric_10.size = 10

-- Display: Price Numeric 10
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_numeric_10.display = function(value)
  return "Price Numeric 10: "..value
end

-- Dissect: Price Numeric 10
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_numeric_10.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_numeric_10.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_numeric_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.price_numeric_10, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_session = {}

-- Size: Requested Session
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_session.size = 10

-- Display: Requested Session
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequence_number = {}

-- Size: Sequence Number
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequence_number.size = 10

-- Display: Sequence Number
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_type.display = function(value)
  if value == "L" then
    return "Sequenced Message Type: Last Sale Message (L)"
  end
  if value == "5" then
    return "Sequenced Message Type: Last Sale Extended Message (5)"
  end
  if value == "B" then
    return "Sequenced Message Type: Trade Break Message (B)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.session = {}

-- Size: Session
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.session.size = 10

-- Display: Session
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.session, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.soup_lf = {}

-- Size: Soup Lf
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.soup_lf.size = 1

-- Display: Soup Lf
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Stock Symbol
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol = {}

-- Size: Stock Symbol
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol.size = 8

-- Display: Stock Symbol
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol.display = function(value)
  return "Stock Symbol: "..value
end

-- Dissect: Stock Symbol
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.stock_symbol, range, value, display)

  return offset + length, value
end

-- Text
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.text = {}

-- Size: Text
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.text.size = 1

-- Display: Text
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.timestamp = {}

-- Size: Timestamp
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.timestamp.size = 8

-- Display: Timestamp
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_message = {}

-- Size: Unsequenced Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_message.size = 0

-- Display: Unsequenced Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect: Unsequenced Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_message.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.unsequenced_message, range, value, display)

  return offset + length, value
end

-- Username
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.username = {}

-- Size: Username
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.username.size = 6

-- Display: Username
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe TitaniumConsolidated LastSale Pitch 1.2.4
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_data_packet = {}

-- Size: Unsequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_data_packet.size =
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_message.size

-- Display: Unsequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.unsequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_request_packet = {}

-- Size: Login Request Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_request_packet.size =
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.username.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.password.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_session.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_sequence_number.size

-- Display: Login Request Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Trade Break Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.trade_break_message = {}

-- Size: Trade Break Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.trade_break_message.size =
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.size

-- Display: Trade Break Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.trade_break_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Extended Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_extended_message = {}

-- Size: Last Sale Extended Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_extended_message.size =
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_long_price_14.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.size

-- Display: Last Sale Extended Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_extended_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Extended Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_extended_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Executed Shares: Numeric
  index, executed_shares = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price Long Price 14: Long Price
  index, price_long_price_14 = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_long_price_14.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Extended Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_extended_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.last_sale_extended_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_extended_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_extended_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_extended_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_message = {}

-- Size: Last Sale Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_message.size =
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_numeric_10.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.size

-- Display: Last Sale Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Executed Shares: Numeric
  index, executed_shares = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.executed_shares.dissect(buffer, index, packet, parent)

  -- Stock Symbol: Alpha
  index, stock_symbol = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.stock_symbol.dissect(buffer, index, packet, parent)

  -- Price Numeric 10: Numeric
  index, price_numeric_10 = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.price_numeric_10.dissect(buffer, index, packet, parent)

  -- Execution Id: Base 36 Numeric
  index, execution_id = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.last_sale_message, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message = {}

-- Dissect: Sequenced Message
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Last Sale Message
  if sequenced_message_type == "L" then
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Extended Message
  if sequenced_message_type == "5" then
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.last_sale_extended_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if sequenced_message_type == "B" then
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.trade_break_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header.size =
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.timestamp.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Timestamp
  index, timestamp = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: Alphanumeric
  index, sequenced_message_type = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 3 branches
  index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_rejected_packet.size =
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_accepted_packet.size =
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.session.size + 
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequence_number.size

-- Display: Login Accepted Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.debug_packet = {}

-- Size: Debug Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.debug_packet.size =
  cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.text.size

-- Display: Debug Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.fields.debug_packet, buffer(offset, 0))
    local index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.payload = {}

-- Dissect: Payload
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet = {}

-- Verify required size of Tcp packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet_type.size
end

-- Dissect Packet
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Packet Type: 1 Byte Ascii String Enum with 9 values
    index, packet_type = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet_type.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 6 branches
    index = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.payload.dissect(buffer, index, packet, parent, packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.init()
end

-- Dissector for Cboe TitaniumConsolidated LastSale Pitch 1.2.4
function omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4, buffer(), omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.description, "("..buffer:len().." Bytes)")
  return cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Soup Lf Field
cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.soup_lf.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(160, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe TitaniumConsolidated LastSale Pitch 1.2.4 (Tcp)
local function omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.packet.requiredsize(buffer) then return false end

  -- Verify Soup Lf
  if not cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.soup_lf.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4
  omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe TitaniumConsolidated LastSale Pitch 1.2.4
omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4:register_heuristic("tcp", omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4_tcp_heuristic)

-- Register Cboe TitaniumConsolidated LastSale Pitch 1.2.4 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_cboe_titaniumconsolidated_lastsale_pitch_v1_2_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.2.4
--   Date: Wednesday, January 15, 2025
--   Specification: Cboe_US_Equities_Last_Sale_Specification.pdf
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
