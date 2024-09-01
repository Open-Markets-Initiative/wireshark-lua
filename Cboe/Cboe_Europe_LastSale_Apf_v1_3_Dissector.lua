-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Europe LastSale Apf 1.3 Protocol
local cboe_europe_lastsale_apf_v1_3 = Proto("Cboe.Europe.LastSale.Apf.v1.3.Lua", "Cboe Europe LastSale Apf 1.3")

-- Component Tables
local show = {}
local format = {}
local cboe_europe_lastsale_apf_v1_3_display = {}
local cboe_europe_lastsale_apf_v1_3_dissect = {}
local cboe_europe_lastsale_apf_v1_3_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Europe LastSale Apf 1.3 Fields
cboe_europe_lastsale_apf_v1_3.fields.agency_cross_trade = ProtoField.new("Agency Cross Trade", "cboe.europe.lastsale.apf.v1.3.agencycrosstrade", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.europe.lastsale.apf.v1.3.algorithmicindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.benchmark_reference_indicator = ProtoField.new("Benchmark Reference Indicator", "cboe.europe.lastsale.apf.v1.3.benchmarkreferenceindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.europe.lastsale.apf.v1.3.debugpacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "cboe.europe.lastsale.apf.v1.3.duplicativeindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.europe.lastsale.apf.v1.3.executedshares", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.europe.lastsale.apf.v1.3.executionvenue", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.last_sale_europe_message = ProtoField.new("Last Sale Europe Message", "cboe.europe.lastsale.apf.v1.3.lastsaleeuropemessage", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.europe.lastsale.apf.v1.3.loginacceptedpacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.europe.lastsale.apf.v1.3.loginrejectedpacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.europe.lastsale.apf.v1.3.loginrequestpacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.modification_indicator = ProtoField.new("Modification Indicator", "cboe.europe.lastsale.apf.v1.3.modificationindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.negotiation_flag = ProtoField.new("Negotiation Flag", "cboe.europe.lastsale.apf.v1.3.negotiationflag", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.packet = ProtoField.new("Packet", "cboe.europe.lastsale.apf.v1.3.packet", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.packet_type = ProtoField.new("Packet Type", "cboe.europe.lastsale.apf.v1.3.packettype", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.password = ProtoField.new("Password", "cboe.europe.lastsale.apf.v1.3.password", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.payload = ProtoField.new("Payload", "cboe.europe.lastsale.apf.v1.3.payload", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "cboe.europe.lastsale.apf.v1.3.posttradedeferralreason", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.price = ProtoField.new("Price", "cboe.europe.lastsale.apf.v1.3.price", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.price_currency = ProtoField.new("Price Currency", "cboe.europe.lastsale.apf.v1.3.pricecurrency", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.price_discovery_process = ProtoField.new("Price Discovery Process", "cboe.europe.lastsale.apf.v1.3.pricediscoveryprocess", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.publication_date_time = ProtoField.new("Publication Date Time", "cboe.europe.lastsale.apf.v1.3.publicationdatetime", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.europe.lastsale.apf.v1.3.rejectreasoncode", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.europe.lastsale.apf.v1.3.requestedsequencenumber", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.requested_session = ProtoField.new("Requested Session", "cboe.europe.lastsale.apf.v1.3.requestedsession", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.europe.lastsale.apf.v1.3.sequencenumber", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.europe.lastsale.apf.v1.3.sequenceddatapacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.sequenced_message = ProtoField.new("Sequenced Message", "cboe.europe.lastsale.apf.v1.3.sequencedmessage", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.europe.lastsale.apf.v1.3.sequencedmessageheader", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.europe.lastsale.apf.v1.3.sequencedmessagetype", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.session = ProtoField.new("Session", "cboe.europe.lastsale.apf.v1.3.session", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.europe.lastsale.apf.v1.3.souplf", ftypes.INT8)
cboe_europe_lastsale_apf_v1_3.fields.special_dividend = ProtoField.new("Special Dividend", "cboe.europe.lastsale.apf.v1.3.specialdividend", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.symbol = ProtoField.new("Symbol", "cboe.europe.lastsale.apf.v1.3.symbol", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.text = ProtoField.new("Text", "cboe.europe.lastsale.apf.v1.3.text", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.timestamp = ProtoField.new("Timestamp", "cboe.europe.lastsale.apf.v1.3.timestamp", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.trade_id = ProtoField.new("Trade Id", "cboe.europe.lastsale.apf.v1.3.tradeid", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.trading_date_time = ProtoField.new("Trading Date Time", "cboe.europe.lastsale.apf.v1.3.tradingdatetime", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.europe.lastsale.apf.v1.3.transactioncategory", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.europe.lastsale.apf.v1.3.unsequenceddatapacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_3.fields.username = ProtoField.new("Username", "cboe.europe.lastsale.apf.v1.3.username", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Europe LastSale Apf 1.3 Element Dissection Options
show.debug_packet = true
show.last_sale_europe_message = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.packet = true
show.sequenced_data_packet = true
show.sequenced_message_header = true
show.unsequenced_data_packet = true
show.payload = false
show.sequenced_message = false

-- Register Cboe Europe LastSale Apf 1.3 Show Options
cboe_europe_lastsale_apf_v1_3.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_last_sale_europe_message = Pref.bool("Show Last Sale Europe Message", show.last_sale_europe_message, "Parse and add Last Sale Europe Message to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_sequenced_message_header = Pref.bool("Show Sequenced Message Header", show.sequenced_message_header, "Parse and add Sequenced Message Header to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
cboe_europe_lastsale_apf_v1_3.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")

-- Handle changed preferences
function cboe_europe_lastsale_apf_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.debug_packet ~= cboe_europe_lastsale_apf_v1_3.prefs.show_debug_packet then
    show.debug_packet = cboe_europe_lastsale_apf_v1_3.prefs.show_debug_packet
    changed = true
  end
  if show.last_sale_europe_message ~= cboe_europe_lastsale_apf_v1_3.prefs.show_last_sale_europe_message then
    show.last_sale_europe_message = cboe_europe_lastsale_apf_v1_3.prefs.show_last_sale_europe_message
    changed = true
  end
  if show.login_accepted_packet ~= cboe_europe_lastsale_apf_v1_3.prefs.show_login_accepted_packet then
    show.login_accepted_packet = cboe_europe_lastsale_apf_v1_3.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= cboe_europe_lastsale_apf_v1_3.prefs.show_login_rejected_packet then
    show.login_rejected_packet = cboe_europe_lastsale_apf_v1_3.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= cboe_europe_lastsale_apf_v1_3.prefs.show_login_request_packet then
    show.login_request_packet = cboe_europe_lastsale_apf_v1_3.prefs.show_login_request_packet
    changed = true
  end
  if show.packet ~= cboe_europe_lastsale_apf_v1_3.prefs.show_packet then
    show.packet = cboe_europe_lastsale_apf_v1_3.prefs.show_packet
    changed = true
  end
  if show.sequenced_data_packet ~= cboe_europe_lastsale_apf_v1_3.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = cboe_europe_lastsale_apf_v1_3.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.sequenced_message_header ~= cboe_europe_lastsale_apf_v1_3.prefs.show_sequenced_message_header then
    show.sequenced_message_header = cboe_europe_lastsale_apf_v1_3.prefs.show_sequenced_message_header
    changed = true
  end
  if show.unsequenced_data_packet ~= cboe_europe_lastsale_apf_v1_3.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = cboe_europe_lastsale_apf_v1_3.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= cboe_europe_lastsale_apf_v1_3.prefs.show_payload then
    show.payload = cboe_europe_lastsale_apf_v1_3.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= cboe_europe_lastsale_apf_v1_3.prefs.show_sequenced_message then
    show.sequenced_message = cboe_europe_lastsale_apf_v1_3.prefs.show_sequenced_message
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
-- Dissect Cboe Europe LastSale Apf 1.3
-----------------------------------------------------------------------

-- Size: Soup Lf
cboe_europe_lastsale_apf_v1_3_size_of.soup_lf = 1

-- Display: Soup Lf
cboe_europe_lastsale_apf_v1_3_display.soup_lf = function(value)
  return "Soup Lf: "..value
end

-- Dissect: Soup Lf
cboe_europe_lastsale_apf_v1_3_dissect.soup_lf = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.soup_lf
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_europe_lastsale_apf_v1_3_display.soup_lf(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_3_size_of.unsequenced_data_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.unsequenced_message

  return index
end

-- Display: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_3_display.unsequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_3_dissect.unsequenced_data_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message
  index, unsequenced_message = cboe_europe_lastsale_apf_v1_3_dissect.unsequenced_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_3_dissect.unsequenced_data_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local length = cboe_europe_lastsale_apf_v1_3_size_of.unsequenced_data_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_3_display.unsequenced_data_packet(buffer, packet, parent)
    parent = parent:add(cboe_europe_lastsale_apf_v1_3.fields.unsequenced_data_packet, range, display)
  end

  return cboe_europe_lastsale_apf_v1_3_dissect.unsequenced_data_packet_fields(buffer, offset, packet, parent)
end

-- Size: Requested Sequence Number
cboe_europe_lastsale_apf_v1_3_size_of.requested_sequence_number = 10

-- Display: Requested Sequence Number
cboe_europe_lastsale_apf_v1_3_display.requested_sequence_number = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_europe_lastsale_apf_v1_3_dissect.requested_sequence_number = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.requested_sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.requested_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Requested Session
cboe_europe_lastsale_apf_v1_3_size_of.requested_session = 10

-- Display: Requested Session
cboe_europe_lastsale_apf_v1_3_display.requested_session = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_europe_lastsale_apf_v1_3_dissect.requested_session = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.requested_session
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.requested_session(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Size: Password
cboe_europe_lastsale_apf_v1_3_size_of.password = 10

-- Display: Password
cboe_europe_lastsale_apf_v1_3_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_europe_lastsale_apf_v1_3_dissect.password = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.password
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.password(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.password, range, value, display)

  return offset + length, value
end

-- Size: Username
cboe_europe_lastsale_apf_v1_3_size_of.username = 6

-- Display: Username
cboe_europe_lastsale_apf_v1_3_display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_europe_lastsale_apf_v1_3_dissect.username = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.username
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.username(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.username, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Packet
cboe_europe_lastsale_apf_v1_3_size_of.login_request_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.username

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.password

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.requested_session

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.requested_sequence_number

  return index
end

-- Display: Login Request Packet
cboe_europe_lastsale_apf_v1_3_display.login_request_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_europe_lastsale_apf_v1_3_dissect.login_request_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_europe_lastsale_apf_v1_3_dissect.username(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_europe_lastsale_apf_v1_3_dissect.password(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_europe_lastsale_apf_v1_3_dissect.requested_session(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_europe_lastsale_apf_v1_3_dissect.requested_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_europe_lastsale_apf_v1_3_dissect.login_request_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_request_packet then
    local length = cboe_europe_lastsale_apf_v1_3_size_of.login_request_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_3_display.login_request_packet(buffer, packet, parent)
    parent = parent:add(cboe_europe_lastsale_apf_v1_3.fields.login_request_packet, range, display)
  end

  return cboe_europe_lastsale_apf_v1_3_dissect.login_request_packet_fields(buffer, offset, packet, parent)
end

-- Size: Duplicative Indicator
cboe_europe_lastsale_apf_v1_3_size_of.duplicative_indicator = 4

-- Display: Duplicative Indicator
cboe_europe_lastsale_apf_v1_3_display.duplicative_indicator = function(value)
  if value == "DUPL" then
    return "Duplicative Indicator: Duplicative Trade Report (DUPL)"
  end

  return "Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Duplicative Indicator
cboe_europe_lastsale_apf_v1_3_dissect.duplicative_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.duplicative_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Post Trade Deferral Reason
cboe_europe_lastsale_apf_v1_3_size_of.post_trade_deferral_reason = 4

-- Display: Post Trade Deferral Reason
cboe_europe_lastsale_apf_v1_3_display.post_trade_deferral_reason = function(value)
  if value == "LRGS" then
    return "Post Trade Deferral Reason: Deferral For Large In Scale (LRGS)"
  end
  if value == "ILQD" then
    return "Post Trade Deferral Reason: Deferral For Illiquid Instrument (ILQD)"
  end
  if value == "SIZE" then
    return "Post Trade Deferral Reason: Deferral For Size Specific (SIZE)"
  end

  return "Post Trade Deferral Reason: Unknown("..value..")"
end

-- Dissect: Post Trade Deferral Reason
cboe_europe_lastsale_apf_v1_3_dissect.post_trade_deferral_reason = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.post_trade_deferral_reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.post_trade_deferral_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Size: Algorithmic Indicator
cboe_europe_lastsale_apf_v1_3_size_of.algorithmic_indicator = 4

-- Display: Algorithmic Indicator
cboe_europe_lastsale_apf_v1_3_display.algorithmic_indicator = function(value)
  if value == "ALGO" then
    return "Algorithmic Indicator: Algorithmic Trade (ALGO)"
  end

  return "Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Indicator
cboe_europe_lastsale_apf_v1_3_dissect.algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.algorithmic_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price Discovery Process
cboe_europe_lastsale_apf_v1_3_size_of.price_discovery_process = 4

-- Display: Price Discovery Process
cboe_europe_lastsale_apf_v1_3_display.price_discovery_process = function(value)
  if value == "NPFT" then
    return "Price Discovery Process: Non Price Forming Trade (NPFT)"
  end
  if value == "TNCP" then
    return "Price Discovery Process: Trade Not Contributing To The Price Discovery Process (TNCP)"
  end
  if value == "PNDG" then
    return "Price Discovery Process: Price Is Pending (PNDG)"
  end

  return "Price Discovery Process: Unknown("..value..")"
end

-- Dissect: Price Discovery Process
cboe_europe_lastsale_apf_v1_3_dissect.price_discovery_process = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.price_discovery_process
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.price_discovery_process(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.price_discovery_process, range, value, display)

  return offset + length, value
end

-- Size: Special Dividend
cboe_europe_lastsale_apf_v1_3_size_of.special_dividend = 4

-- Display: Special Dividend
cboe_europe_lastsale_apf_v1_3_display.special_dividend = function(value)
  return "Special Dividend: "..value
end

-- Dissect: Special Dividend
cboe_europe_lastsale_apf_v1_3_dissect.special_dividend = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.special_dividend
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.special_dividend(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.special_dividend, range, value, display)

  return offset + length, value
end

-- Size: Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_3_size_of.benchmark_reference_indicator = 4

-- Display: Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_3_display.benchmark_reference_indicator = function(value)
  if value == "BENC" then
    return "Benchmark Reference Indicator: Benchmark Trade (BENC)"
  end
  if value == "RFPT" then
    return "Benchmark Reference Indicator: Reference Price Trade (RFPT)"
  end

  return "Benchmark Reference Indicator: Unknown("..value..")"
end

-- Dissect: Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_3_dissect.benchmark_reference_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.benchmark_reference_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.benchmark_reference_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.benchmark_reference_indicator, range, value, display)

  return offset + length, value
end

-- Size: Modification Indicator
cboe_europe_lastsale_apf_v1_3_size_of.modification_indicator = 4

-- Display: Modification Indicator
cboe_europe_lastsale_apf_v1_3_display.modification_indicator = function(value)
  if value == "CANC" then
    return "Modification Indicator: Trade Cancellation (CANC)"
  end
  if value == "AMND" then
    return "Modification Indicator: Trade Amendment (AMND)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
cboe_europe_lastsale_apf_v1_3_dissect.modification_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.modification_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.modification_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Agency Cross Trade
cboe_europe_lastsale_apf_v1_3_size_of.agency_cross_trade = 4

-- Display: Agency Cross Trade
cboe_europe_lastsale_apf_v1_3_display.agency_cross_trade = function(value)
  if value == "ACTX" then
    return "Agency Cross Trade: Agency Cross Trade (ACTX)"
  end

  return "Agency Cross Trade: Unknown("..value..")"
end

-- Dissect: Agency Cross Trade
cboe_europe_lastsale_apf_v1_3_dissect.agency_cross_trade = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.agency_cross_trade
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.agency_cross_trade(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.agency_cross_trade, range, value, display)

  return offset + length, value
end

-- Size: Negotiation Flag
cboe_europe_lastsale_apf_v1_3_size_of.negotiation_flag = 4

-- Display: Negotiation Flag
cboe_europe_lastsale_apf_v1_3_display.negotiation_flag = function(value)
  if value == "NLIQ" then
    return "Negotiation Flag: Negotiated Trade In Liquid Instruments (NLIQ)"
  end
  if value == "OILQ" then
    return "Negotiation Flag: Negotiated Trade In Illiquid Instruments (OILQ)"
  end
  if value == "PRIC" then
    return "Negotiation Flag: Negotiated Trade Subject To Conditions Other Than The Current Market Price (PRIC)"
  end
  if value == "ILQD" then
    return "Negotiation Flag: Pre Trade Transparency Waiver For Illiquid Instrument (ILQD)"
  end
  if value == "SIZE" then
    return "Negotiation Flag: Pre Trade Transparency Waiver For Above Standard Size (SIZE)"
  end

  return "Negotiation Flag: Unknown("..value..")"
end

-- Dissect: Negotiation Flag
cboe_europe_lastsale_apf_v1_3_dissect.negotiation_flag = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.negotiation_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.negotiation_flag(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.negotiation_flag, range, value, display)

  return offset + length, value
end

-- Size: Transaction Category
cboe_europe_lastsale_apf_v1_3_size_of.transaction_category = 4

-- Display: Transaction Category
cboe_europe_lastsale_apf_v1_3_display.transaction_category = function(value)
  if value == "RPRI" then
    return "Transaction Category: Trade That Has Received Price Improvement (RPRI)"
  end
  if value == "TPAC" then
    return "Transaction Category: Package Trade (TPAC)"
  end
  if value == "XFPH" then
    return "Transaction Category: Exchange For Physical Trade (XFPH)"
  end

  return "Transaction Category: Unknown("..value..")"
end

-- Dissect: Transaction Category
cboe_europe_lastsale_apf_v1_3_dissect.transaction_category = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.transaction_category
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.transaction_category(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
cboe_europe_lastsale_apf_v1_3_size_of.trade_id = 12

-- Display: Trade Id
cboe_europe_lastsale_apf_v1_3_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_europe_lastsale_apf_v1_3_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.trade_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Publication Date Time
cboe_europe_lastsale_apf_v1_3_size_of.publication_date_time = 27

-- Display: Publication Date Time
cboe_europe_lastsale_apf_v1_3_display.publication_date_time = function(value)
  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
cboe_europe_lastsale_apf_v1_3_dissect.publication_date_time = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.publication_date_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.publication_date_time(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Size: Execution Venue
cboe_europe_lastsale_apf_v1_3_size_of.execution_venue = 4

-- Display: Execution Venue
cboe_europe_lastsale_apf_v1_3_display.execution_venue = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_europe_lastsale_apf_v1_3_dissect.execution_venue = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.execution_venue
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.execution_venue(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Size: Executed Shares
cboe_europe_lastsale_apf_v1_3_size_of.executed_shares = 12

-- Display: Executed Shares
cboe_europe_lastsale_apf_v1_3_display.executed_shares = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_europe_lastsale_apf_v1_3_dissect.executed_shares = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.executed_shares
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_3_display.executed_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Size: Price Currency
cboe_europe_lastsale_apf_v1_3_size_of.price_currency = 3

-- Display: Price Currency
cboe_europe_lastsale_apf_v1_3_display.price_currency = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
cboe_europe_lastsale_apf_v1_3_dissect.price_currency = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.price_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.price_currency(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Size: Price
cboe_europe_lastsale_apf_v1_3_size_of.price = 18

-- Display: Price
cboe_europe_lastsale_apf_v1_3_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
cboe_europe_lastsale_apf_v1_3_dissect.price = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_3_display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cboe_europe_lastsale_apf_v1_3_size_of.symbol = 12

-- Display: Symbol
cboe_europe_lastsale_apf_v1_3_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_europe_lastsale_apf_v1_3_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Trading Date Time
cboe_europe_lastsale_apf_v1_3_size_of.trading_date_time = 27

-- Display: Trading Date Time
cboe_europe_lastsale_apf_v1_3_display.trading_date_time = function(value)
  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
cboe_europe_lastsale_apf_v1_3_dissect.trading_date_time = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.trading_date_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_3_display.trading_date_time(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_3_size_of.last_sale_europe_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.trading_date_time

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.symbol

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.price

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.price_currency

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.executed_shares

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.execution_venue

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.publication_date_time

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.trade_id

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.transaction_category

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.negotiation_flag

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.agency_cross_trade

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.modification_indicator

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.benchmark_reference_indicator

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.special_dividend

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.price_discovery_process

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.algorithmic_indicator

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.post_trade_deferral_reason

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.duplicative_indicator

  return index
end

-- Display: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_3_display.last_sale_europe_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_3_dissect.last_sale_europe_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = cboe_europe_lastsale_apf_v1_3_dissect.trading_date_time(buffer, index, packet, parent)

  -- Symbol: 12 Byte Ascii String
  index, symbol = cboe_europe_lastsale_apf_v1_3_dissect.symbol(buffer, index, packet, parent)

  -- Price: 18 Byte Ascii String
  index, price = cboe_europe_lastsale_apf_v1_3_dissect.price(buffer, index, packet, parent)

  -- Price Currency: 3 Byte Ascii String
  index, price_currency = cboe_europe_lastsale_apf_v1_3_dissect.price_currency(buffer, index, packet, parent)

  -- Executed Shares: 12 Byte Ascii String
  index, executed_shares = cboe_europe_lastsale_apf_v1_3_dissect.executed_shares(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_europe_lastsale_apf_v1_3_dissect.execution_venue(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String
  index, publication_date_time = cboe_europe_lastsale_apf_v1_3_dissect.publication_date_time(buffer, index, packet, parent)

  -- Trade Id: 12 Byte Ascii String
  index, trade_id = cboe_europe_lastsale_apf_v1_3_dissect.trade_id(buffer, index, packet, parent)

  -- Transaction Category: 4 Byte Ascii String Enum with 3 values
  index, transaction_category = cboe_europe_lastsale_apf_v1_3_dissect.transaction_category(buffer, index, packet, parent)

  -- Negotiation Flag: 4 Byte Ascii String Enum with 5 values
  index, negotiation_flag = cboe_europe_lastsale_apf_v1_3_dissect.negotiation_flag(buffer, index, packet, parent)

  -- Agency Cross Trade: 4 Byte Ascii String Enum with 1 values
  index, agency_cross_trade = cboe_europe_lastsale_apf_v1_3_dissect.agency_cross_trade(buffer, index, packet, parent)

  -- Modification Indicator: 4 Byte Ascii String Enum with 2 values
  index, modification_indicator = cboe_europe_lastsale_apf_v1_3_dissect.modification_indicator(buffer, index, packet, parent)

  -- Benchmark Reference Indicator: 4 Byte Ascii String Enum with 2 values
  index, benchmark_reference_indicator = cboe_europe_lastsale_apf_v1_3_dissect.benchmark_reference_indicator(buffer, index, packet, parent)

  -- Special Dividend: 4 Byte Ascii String
  index, special_dividend = cboe_europe_lastsale_apf_v1_3_dissect.special_dividend(buffer, index, packet, parent)

  -- Price Discovery Process: 4 Byte Ascii String Enum with 3 values
  index, price_discovery_process = cboe_europe_lastsale_apf_v1_3_dissect.price_discovery_process(buffer, index, packet, parent)

  -- Algorithmic Indicator: 4 Byte Ascii String Enum with 1 values
  index, algorithmic_indicator = cboe_europe_lastsale_apf_v1_3_dissect.algorithmic_indicator(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 4 Byte Ascii String Enum with 3 values
  index, post_trade_deferral_reason = cboe_europe_lastsale_apf_v1_3_dissect.post_trade_deferral_reason(buffer, index, packet, parent)

  -- Duplicative Indicator: 4 Byte Ascii String Enum with 1 values
  index, duplicative_indicator = cboe_europe_lastsale_apf_v1_3_dissect.duplicative_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_3_dissect.last_sale_europe_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.last_sale_europe_message then
    local length = cboe_europe_lastsale_apf_v1_3_size_of.last_sale_europe_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_3_display.last_sale_europe_message(buffer, packet, parent)
    parent = parent:add(cboe_europe_lastsale_apf_v1_3.fields.last_sale_europe_message, range, display)
  end

  return cboe_europe_lastsale_apf_v1_3_dissect.last_sale_europe_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Sequenced Message
cboe_europe_lastsale_apf_v1_3_size_of.sequenced_message = function(buffer, offset, sequenced_message_type)
  -- Size of Last Sale Europe Message
  if sequenced_message_type == "u" then
    return cboe_europe_lastsale_apf_v1_3_size_of.last_sale_europe_message(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
cboe_europe_lastsale_apf_v1_3_display.sequenced_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message_branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Last Sale Europe Message
  if sequenced_message_type == "u" then
    return cboe_europe_lastsale_apf_v1_3_dissect.last_sale_europe_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_europe_lastsale_apf_v1_3_size_of.sequenced_message(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_europe_lastsale_apf_v1_3_display.sequenced_message(buffer, packet, parent)
  local element = parent:add(cboe_europe_lastsale_apf_v1_3.fields.sequenced_message, range, display)

  return cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Size: Sequenced Message Type
cboe_europe_lastsale_apf_v1_3_size_of.sequenced_message_type = 1

-- Display: Sequenced Message Type
cboe_europe_lastsale_apf_v1_3_display.sequenced_message_type = function(value)
  if value == "u" then
    return "Sequenced Message Type: Last Sale Europe Message (u)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.sequenced_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.sequenced_message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
cboe_europe_lastsale_apf_v1_3_size_of.timestamp = 8

-- Display: Timestamp
cboe_europe_lastsale_apf_v1_3_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_europe_lastsale_apf_v1_3_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.timestamp
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_3_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sequenced Message Header
cboe_europe_lastsale_apf_v1_3_size_of.sequenced_message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.timestamp

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.sequenced_message_type

  return index
end

-- Display: Sequenced Message Header
cboe_europe_lastsale_apf_v1_3_display.sequenced_message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = cboe_europe_lastsale_apf_v1_3_dissect.timestamp(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 1 values
  index, sequenced_message_type = cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequenced_message_header then
    local length = cboe_europe_lastsale_apf_v1_3_size_of.sequenced_message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_3_display.sequenced_message_header(buffer, packet, parent)
    parent = parent:add(cboe_europe_lastsale_apf_v1_3.fields.sequenced_message_header, range, display)
  end

  return cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_3_size_of.sequenced_data_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.sequenced_message_header(buffer, offset + index)

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_europe_lastsale_apf_v1_3_size_of.sequenced_message(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_3_display.sequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_3_dissect.sequenced_data_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message_header(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 1 branches
  index = cboe_europe_lastsale_apf_v1_3_dissect.sequenced_message(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_3_dissect.sequenced_data_packet = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_data_packet then
    local length = cboe_europe_lastsale_apf_v1_3_size_of.sequenced_data_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_3_display.sequenced_data_packet(buffer, packet, parent)
    parent = parent:add(cboe_europe_lastsale_apf_v1_3.fields.sequenced_data_packet, range, display)
  end

  return cboe_europe_lastsale_apf_v1_3_dissect.sequenced_data_packet_fields(buffer, offset, packet, parent)
end

-- Size: Reject Reason Code
cboe_europe_lastsale_apf_v1_3_size_of.reject_reason_code = 1

-- Display: Reject Reason Code
cboe_europe_lastsale_apf_v1_3_display.reject_reason_code = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_europe_lastsale_apf_v1_3_dissect.reject_reason_code = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.reject_reason_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.reject_reason_code(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Rejected Packet
cboe_europe_lastsale_apf_v1_3_size_of.login_rejected_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.reject_reason_code

  return index
end

-- Display: Login Rejected Packet
cboe_europe_lastsale_apf_v1_3_display.login_rejected_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_europe_lastsale_apf_v1_3_dissect.login_rejected_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_europe_lastsale_apf_v1_3_dissect.reject_reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_europe_lastsale_apf_v1_3_dissect.login_rejected_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_rejected_packet then
    local length = cboe_europe_lastsale_apf_v1_3_size_of.login_rejected_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_3_display.login_rejected_packet(buffer, packet, parent)
    parent = parent:add(cboe_europe_lastsale_apf_v1_3.fields.login_rejected_packet, range, display)
  end

  return cboe_europe_lastsale_apf_v1_3_dissect.login_rejected_packet_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
cboe_europe_lastsale_apf_v1_3_size_of.sequence_number = 10

-- Display: Sequence Number
cboe_europe_lastsale_apf_v1_3_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_europe_lastsale_apf_v1_3_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
cboe_europe_lastsale_apf_v1_3_size_of.session = 10

-- Display: Session
cboe_europe_lastsale_apf_v1_3_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_europe_lastsale_apf_v1_3_dissect.session = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.session(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Accepted Packet
cboe_europe_lastsale_apf_v1_3_size_of.login_accepted_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.session

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.sequence_number

  return index
end

-- Display: Login Accepted Packet
cboe_europe_lastsale_apf_v1_3_display.login_accepted_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_europe_lastsale_apf_v1_3_dissect.login_accepted_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_europe_lastsale_apf_v1_3_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_europe_lastsale_apf_v1_3_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_europe_lastsale_apf_v1_3_dissect.login_accepted_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_accepted_packet then
    local length = cboe_europe_lastsale_apf_v1_3_size_of.login_accepted_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_3_display.login_accepted_packet(buffer, packet, parent)
    parent = parent:add(cboe_europe_lastsale_apf_v1_3.fields.login_accepted_packet, range, display)
  end

  return cboe_europe_lastsale_apf_v1_3_dissect.login_accepted_packet_fields(buffer, offset, packet, parent)
end

-- Size: Text
cboe_europe_lastsale_apf_v1_3_size_of.text = 1

-- Display: Text
cboe_europe_lastsale_apf_v1_3_display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_europe_lastsale_apf_v1_3_dissect.text = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.text
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.text(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: Debug Packet
cboe_europe_lastsale_apf_v1_3_size_of.debug_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_3_size_of.text

  return index
end

-- Display: Debug Packet
cboe_europe_lastsale_apf_v1_3_display.debug_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_europe_lastsale_apf_v1_3_dissect.debug_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_europe_lastsale_apf_v1_3_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_europe_lastsale_apf_v1_3_dissect.debug_packet = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.debug_packet then
    local length = cboe_europe_lastsale_apf_v1_3_size_of.debug_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_3_display.debug_packet(buffer, packet, parent)
    parent = parent:add(cboe_europe_lastsale_apf_v1_3.fields.debug_packet, range, display)
  end

  return cboe_europe_lastsale_apf_v1_3_dissect.debug_packet_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
cboe_europe_lastsale_apf_v1_3_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return cboe_europe_lastsale_apf_v1_3_size_of.debug_packet(buffer, offset)
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return cboe_europe_lastsale_apf_v1_3_size_of.login_accepted_packet(buffer, offset)
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return cboe_europe_lastsale_apf_v1_3_size_of.login_rejected_packet(buffer, offset)
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return cboe_europe_lastsale_apf_v1_3_size_of.sequenced_data_packet(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return cboe_europe_lastsale_apf_v1_3_size_of.login_request_packet(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_europe_lastsale_apf_v1_3_size_of.unsequenced_data_packet(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_europe_lastsale_apf_v1_3_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_europe_lastsale_apf_v1_3_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_europe_lastsale_apf_v1_3_dissect.debug_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_europe_lastsale_apf_v1_3_dissect.login_accepted_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_europe_lastsale_apf_v1_3_dissect.login_rejected_packet(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_europe_lastsale_apf_v1_3_dissect.sequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_europe_lastsale_apf_v1_3_dissect.login_request_packet(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_europe_lastsale_apf_v1_3_dissect.unsequenced_data_packet(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_europe_lastsale_apf_v1_3_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return cboe_europe_lastsale_apf_v1_3_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_europe_lastsale_apf_v1_3_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_europe_lastsale_apf_v1_3_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_europe_lastsale_apf_v1_3.fields.payload, range, display)

  return cboe_europe_lastsale_apf_v1_3_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Packet Type
cboe_europe_lastsale_apf_v1_3_size_of.packet_type = 1

-- Display: Packet Type
cboe_europe_lastsale_apf_v1_3_display.packet_type = function(value)
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
cboe_europe_lastsale_apf_v1_3_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_3_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_3_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_3.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Dissect Packet
cboe_europe_lastsale_apf_v1_3_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Packet Type: 1 Byte Ascii String Enum with 9 values
    index, packet_type = cboe_europe_lastsale_apf_v1_3_dissect.packet_type(buffer, index, packet, parent)

    -- Payload: Runtime Type with 6 branches
    index = cboe_europe_lastsale_apf_v1_3_dissect.payload(buffer, index, packet, parent, packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = cboe_europe_lastsale_apf_v1_3_dissect.soup_lf(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_europe_lastsale_apf_v1_3.init()
end

-- Dissector for Cboe Europe LastSale Apf 1.3
function cboe_europe_lastsale_apf_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_europe_lastsale_apf_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(cboe_europe_lastsale_apf_v1_3, buffer(), cboe_europe_lastsale_apf_v1_3.description, "("..buffer:len().." Bytes)")
  return cboe_europe_lastsale_apf_v1_3_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, cboe_europe_lastsale_apf_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_europe_lastsale_apf_v1_3_packet_size = function(buffer)

  return true
end

-- Verify Soup Lf Field
verify.soup_lf = function(buffer)
  -- Attempt to read field
  local value = buffer(223, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe Europe LastSale Apf 1.3
local function cboe_europe_lastsale_apf_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_europe_lastsale_apf_v1_3_packet_size(buffer) then return false end

  -- Verify Soup Lf
  if not verify.soup_lf(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_europe_lastsale_apf_v1_3
  cboe_europe_lastsale_apf_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Europe LastSale Apf 1.3
cboe_europe_lastsale_apf_v1_3:register_heuristic("tcp", cboe_europe_lastsale_apf_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.3
--   Date: Wednesday, July 19, 2017
--   Specification: BATS_Europe_Last_Sale_Specification.pdf
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
