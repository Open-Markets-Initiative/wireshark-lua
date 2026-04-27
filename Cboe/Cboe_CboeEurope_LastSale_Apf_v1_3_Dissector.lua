-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe CboeEurope LastSale Apf 1.3 Protocol
local omi_cboe_cboeeurope_lastsale_apf_v1_3 = Proto("Cboe.CboeEurope.LastSale.Apf.v1.3.Lua", "Cboe CboeEurope LastSale Apf 1.3")

-- Protocol table
local cboe_cboeeurope_lastsale_apf_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe CboeEurope LastSale Apf 1.3 Fields
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.agency_cross_trade = ProtoField.new("Agency Cross Trade", "cboe.cboeeurope.lastsale.apf.v1.3.agencycrosstrade", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.cboeeurope.lastsale.apf.v1.3.algorithmicindicator", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.benchmark_reference_indicator = ProtoField.new("Benchmark Reference Indicator", "cboe.cboeeurope.lastsale.apf.v1.3.benchmarkreferenceindicator", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.cboeeurope.lastsale.apf.v1.3.debugpacket", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "cboe.cboeeurope.lastsale.apf.v1.3.duplicativeindicator", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.cboeeurope.lastsale.apf.v1.3.executedshares", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.cboeeurope.lastsale.apf.v1.3.executionvenue", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.cboeeurope.lastsale.apf.v1.3.loginacceptedpacket", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.cboeeurope.lastsale.apf.v1.3.loginrejectedpacket", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.cboeeurope.lastsale.apf.v1.3.loginrequestpacket", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.modification_indicator = ProtoField.new("Modification Indicator", "cboe.cboeeurope.lastsale.apf.v1.3.modificationindicator", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.negotiation_flag = ProtoField.new("Negotiation Flag", "cboe.cboeeurope.lastsale.apf.v1.3.negotiationflag", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.packet = ProtoField.new("Packet", "cboe.cboeeurope.lastsale.apf.v1.3.packet", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.packet_type = ProtoField.new("Packet Type", "cboe.cboeeurope.lastsale.apf.v1.3.packettype", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.password = ProtoField.new("Password", "cboe.cboeeurope.lastsale.apf.v1.3.password", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "cboe.cboeeurope.lastsale.apf.v1.3.posttradedeferralreason", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.price = ProtoField.new("Price", "cboe.cboeeurope.lastsale.apf.v1.3.price", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.price_currency = ProtoField.new("Price Currency", "cboe.cboeeurope.lastsale.apf.v1.3.pricecurrency", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.price_discovery_process = ProtoField.new("Price Discovery Process", "cboe.cboeeurope.lastsale.apf.v1.3.pricediscoveryprocess", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.publication_date_time = ProtoField.new("Publication Date Time", "cboe.cboeeurope.lastsale.apf.v1.3.publicationdatetime", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.cboeeurope.lastsale.apf.v1.3.rejectreasoncode", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.cboeeurope.lastsale.apf.v1.3.requestedsequencenumber", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.requested_session = ProtoField.new("Requested Session", "cboe.cboeeurope.lastsale.apf.v1.3.requestedsession", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.cboeeurope.lastsale.apf.v1.3.sequencenumber", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.cboeeurope.lastsale.apf.v1.3.sequenceddatapacket", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.cboeeurope.lastsale.apf.v1.3.sequencedmessageheader", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.cboeeurope.lastsale.apf.v1.3.sequencedmessagetype", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.session = ProtoField.new("Session", "cboe.cboeeurope.lastsale.apf.v1.3.session", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.cboeeurope.lastsale.apf.v1.3.souplf", ftypes.INT8)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.special_dividend = ProtoField.new("Special Dividend", "cboe.cboeeurope.lastsale.apf.v1.3.specialdividend", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.symbol = ProtoField.new("Symbol", "cboe.cboeeurope.lastsale.apf.v1.3.symbol", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.text = ProtoField.new("Text", "cboe.cboeeurope.lastsale.apf.v1.3.text", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.timestamp = ProtoField.new("Timestamp", "cboe.cboeeurope.lastsale.apf.v1.3.timestamp", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.trade_id = ProtoField.new("Trade Id", "cboe.cboeeurope.lastsale.apf.v1.3.tradeid", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.trading_date_time = ProtoField.new("Trading Date Time", "cboe.cboeeurope.lastsale.apf.v1.3.tradingdatetime", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.cboeeurope.lastsale.apf.v1.3.transactioncategory", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.cboeeurope.lastsale.apf.v1.3.unsequenceddatapacket", ftypes.STRING)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "cboe.cboeeurope.lastsale.apf.v1.3.unsequencedmessage", ftypes.BYTES)
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.username = ProtoField.new("Username", "cboe.cboeeurope.lastsale.apf.v1.3.username", ftypes.STRING)

-- Cboe CboeEurope Apf LastSale 1.3 Application Messages
omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.last_sale_europe_message = ProtoField.new("Last Sale Europe Message", "cboe.cboeeurope.lastsale.apf.v1.3.lastsaleeuropemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe CboeEurope LastSale Apf 1.3 Element Dissection Options
show.debug_packet = true
show.application_messages = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.packet = true
show.sequenced_data_packet = true
show.sequenced_message_header = true
show.unsequenced_data_packet = true

-- Register Cboe CboeEurope LastSale Apf 1.3 Show Options
omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_sequenced_message_header = Pref.bool("Show Sequenced Message Header", show.sequenced_message_header, "Parse and add Sequenced Message Header to protocol tree")
omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")

-- Handle changed preferences
function omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_application_messages then
    show.application_messages = omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_application_messages
  end
  if show.debug_packet ~= omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_debug_packet then
    show.debug_packet = omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_debug_packet
  end
  if show.login_accepted_packet ~= omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_login_accepted_packet
  end
  if show.login_rejected_packet ~= omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_login_rejected_packet
  end
  if show.login_request_packet ~= omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_login_request_packet then
    show.login_request_packet = omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_login_request_packet
  end
  if show.packet ~= omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_packet then
    show.packet = omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_packet
  end
  if show.sequenced_data_packet ~= omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_sequenced_data_packet
  end
  if show.sequenced_message_header ~= omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_sequenced_message_header then
    show.sequenced_message_header = omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_sequenced_message_header
  end
  if show.unsequenced_data_packet ~= omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_cboe_cboeeurope_lastsale_apf_v1_3.prefs.show_unsequenced_data_packet
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
-- Cboe CboeEurope LastSale Apf 1.3 Fields
-----------------------------------------------------------------------

-- Agency Cross Trade
cboe_cboeeurope_lastsale_apf_v1_3.agency_cross_trade = {}

-- Size: Agency Cross Trade
cboe_cboeeurope_lastsale_apf_v1_3.agency_cross_trade.size = 4

-- Display: Agency Cross Trade
cboe_cboeeurope_lastsale_apf_v1_3.agency_cross_trade.display = function(value)
  if value == "ACTX" then
    return "Agency Cross Trade: Agency Cross Trade (ACTX)"
  end

  return "Agency Cross Trade: Unknown("..value..")"
end

-- Dissect: Agency Cross Trade
cboe_cboeeurope_lastsale_apf_v1_3.agency_cross_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.agency_cross_trade.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.agency_cross_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.agency_cross_trade, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
cboe_cboeeurope_lastsale_apf_v1_3.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
cboe_cboeeurope_lastsale_apf_v1_3.algorithmic_indicator.size = 4

-- Display: Algorithmic Indicator
cboe_cboeeurope_lastsale_apf_v1_3.algorithmic_indicator.display = function(value)
  if value == "ALGO" then
    return "Algorithmic Indicator: Algorithmic Trade (ALGO)"
  end

  return "Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Indicator
cboe_cboeeurope_lastsale_apf_v1_3.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Benchmark Reference Indicator
cboe_cboeeurope_lastsale_apf_v1_3.benchmark_reference_indicator = {}

-- Size: Benchmark Reference Indicator
cboe_cboeeurope_lastsale_apf_v1_3.benchmark_reference_indicator.size = 4

-- Display: Benchmark Reference Indicator
cboe_cboeeurope_lastsale_apf_v1_3.benchmark_reference_indicator.display = function(value)
  if value == "BENC" then
    return "Benchmark Reference Indicator: Benchmark Trade (BENC)"
  end
  if value == "RFPT" then
    return "Benchmark Reference Indicator: Reference Price Trade (RFPT)"
  end

  return "Benchmark Reference Indicator: Unknown("..value..")"
end

-- Dissect: Benchmark Reference Indicator
cboe_cboeeurope_lastsale_apf_v1_3.benchmark_reference_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.benchmark_reference_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.benchmark_reference_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.benchmark_reference_indicator, range, value, display)

  return offset + length, value
end

-- Duplicative Indicator
cboe_cboeeurope_lastsale_apf_v1_3.duplicative_indicator = {}

-- Size: Duplicative Indicator
cboe_cboeeurope_lastsale_apf_v1_3.duplicative_indicator.size = 4

-- Display: Duplicative Indicator
cboe_cboeeurope_lastsale_apf_v1_3.duplicative_indicator.display = function(value)
  if value == "DUPL" then
    return "Duplicative Indicator: Duplicative Trade Report (DUPL)"
  end

  return "Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Duplicative Indicator
cboe_cboeeurope_lastsale_apf_v1_3.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Executed Shares
cboe_cboeeurope_lastsale_apf_v1_3.executed_shares = {}

-- Size: Executed Shares
cboe_cboeeurope_lastsale_apf_v1_3.executed_shares.size = 12

-- Display: Executed Shares
cboe_cboeeurope_lastsale_apf_v1_3.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_cboeeurope_lastsale_apf_v1_3.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.executed_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_cboeeurope_lastsale_apf_v1_3.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Execution Venue
cboe_cboeeurope_lastsale_apf_v1_3.execution_venue = {}

-- Size: Execution Venue
cboe_cboeeurope_lastsale_apf_v1_3.execution_venue.size = 4

-- Display: Execution Venue
cboe_cboeeurope_lastsale_apf_v1_3.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_cboeeurope_lastsale_apf_v1_3.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.execution_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Modification Indicator
cboe_cboeeurope_lastsale_apf_v1_3.modification_indicator = {}

-- Size: Modification Indicator
cboe_cboeeurope_lastsale_apf_v1_3.modification_indicator.size = 4

-- Display: Modification Indicator
cboe_cboeeurope_lastsale_apf_v1_3.modification_indicator.display = function(value)
  if value == "CANC" then
    return "Modification Indicator: Trade Cancellation (CANC)"
  end
  if value == "AMND" then
    return "Modification Indicator: Trade Amendment (AMND)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
cboe_cboeeurope_lastsale_apf_v1_3.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.modification_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Negotiation Flag
cboe_cboeeurope_lastsale_apf_v1_3.negotiation_flag = {}

-- Size: Negotiation Flag
cboe_cboeeurope_lastsale_apf_v1_3.negotiation_flag.size = 4

-- Display: Negotiation Flag
cboe_cboeeurope_lastsale_apf_v1_3.negotiation_flag.display = function(value)
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
cboe_cboeeurope_lastsale_apf_v1_3.negotiation_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.negotiation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.negotiation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.negotiation_flag, range, value, display)

  return offset + length, value
end

-- Packet Type
cboe_cboeeurope_lastsale_apf_v1_3.packet_type = {}

-- Size: Packet Type
cboe_cboeeurope_lastsale_apf_v1_3.packet_type.size = 1

-- Display: Packet Type
cboe_cboeeurope_lastsale_apf_v1_3.packet_type.display = function(value)
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
cboe_cboeeurope_lastsale_apf_v1_3.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_cboeeurope_lastsale_apf_v1_3.password = {}

-- Size: Password
cboe_cboeeurope_lastsale_apf_v1_3.password.size = 10

-- Display: Password
cboe_cboeeurope_lastsale_apf_v1_3.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_cboeeurope_lastsale_apf_v1_3.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.password, range, value, display)

  return offset + length, value
end

-- Post Trade Deferral Reason
cboe_cboeeurope_lastsale_apf_v1_3.post_trade_deferral_reason = {}

-- Size: Post Trade Deferral Reason
cboe_cboeeurope_lastsale_apf_v1_3.post_trade_deferral_reason.size = 4

-- Display: Post Trade Deferral Reason
cboe_cboeeurope_lastsale_apf_v1_3.post_trade_deferral_reason.display = function(value)
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
cboe_cboeeurope_lastsale_apf_v1_3.post_trade_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.post_trade_deferral_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.post_trade_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Price
cboe_cboeeurope_lastsale_apf_v1_3.price = {}

-- Size: Price
cboe_cboeeurope_lastsale_apf_v1_3.price.size = 18

-- Display: Price
cboe_cboeeurope_lastsale_apf_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
cboe_cboeeurope_lastsale_apf_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_cboeeurope_lastsale_apf_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Price Currency
cboe_cboeeurope_lastsale_apf_v1_3.price_currency = {}

-- Size: Price Currency
cboe_cboeeurope_lastsale_apf_v1_3.price_currency.size = 3

-- Display: Price Currency
cboe_cboeeurope_lastsale_apf_v1_3.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
cboe_cboeeurope_lastsale_apf_v1_3.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Discovery Process
cboe_cboeeurope_lastsale_apf_v1_3.price_discovery_process = {}

-- Size: Price Discovery Process
cboe_cboeeurope_lastsale_apf_v1_3.price_discovery_process.size = 4

-- Display: Price Discovery Process
cboe_cboeeurope_lastsale_apf_v1_3.price_discovery_process.display = function(value)
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
cboe_cboeeurope_lastsale_apf_v1_3.price_discovery_process.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.price_discovery_process.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.price_discovery_process.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.price_discovery_process, range, value, display)

  return offset + length, value
end

-- Publication Date Time
cboe_cboeeurope_lastsale_apf_v1_3.publication_date_time = {}

-- Size: Publication Date Time
cboe_cboeeurope_lastsale_apf_v1_3.publication_date_time.size = 27

-- Display: Publication Date Time
cboe_cboeeurope_lastsale_apf_v1_3.publication_date_time.display = function(value)
  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
cboe_cboeeurope_lastsale_apf_v1_3.publication_date_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.publication_date_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.publication_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
cboe_cboeeurope_lastsale_apf_v1_3.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_cboeeurope_lastsale_apf_v1_3.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_cboeeurope_lastsale_apf_v1_3.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_cboeeurope_lastsale_apf_v1_3.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
cboe_cboeeurope_lastsale_apf_v1_3.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_cboeeurope_lastsale_apf_v1_3.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_cboeeurope_lastsale_apf_v1_3.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_cboeeurope_lastsale_apf_v1_3.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_cboeeurope_lastsale_apf_v1_3.requested_session = {}

-- Size: Requested Session
cboe_cboeeurope_lastsale_apf_v1_3.requested_session.size = 10

-- Display: Requested Session
cboe_cboeeurope_lastsale_apf_v1_3.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_cboeeurope_lastsale_apf_v1_3.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_cboeeurope_lastsale_apf_v1_3.sequence_number = {}

-- Size: Sequence Number
cboe_cboeeurope_lastsale_apf_v1_3.sequence_number.size = 10

-- Display: Sequence Number
cboe_cboeeurope_lastsale_apf_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_cboeeurope_lastsale_apf_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_type.display = function(value)
  if value == "u" then
    return "Sequenced Message Type: Last Sale Europe Message (u)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session
cboe_cboeeurope_lastsale_apf_v1_3.session = {}

-- Size: Session
cboe_cboeeurope_lastsale_apf_v1_3.session.size = 10

-- Display: Session
cboe_cboeeurope_lastsale_apf_v1_3.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_cboeeurope_lastsale_apf_v1_3.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.session, range, value, display)

  return offset + length, value
end

-- Soup Lf
cboe_cboeeurope_lastsale_apf_v1_3.soup_lf = {}

-- Size: Soup Lf
cboe_cboeeurope_lastsale_apf_v1_3.soup_lf.size = 1

-- Display: Soup Lf
cboe_cboeeurope_lastsale_apf_v1_3.soup_lf.display = function(value)
  if value == 10 then
    return "Soup Lf: Line Feed"
  end

  return "Soup Lf: Unknown("..value..")"
end

-- Dissect: Soup Lf
cboe_cboeeurope_lastsale_apf_v1_3.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Special Dividend
cboe_cboeeurope_lastsale_apf_v1_3.special_dividend = {}

-- Size: Special Dividend
cboe_cboeeurope_lastsale_apf_v1_3.special_dividend.size = 4

-- Display: Special Dividend
cboe_cboeeurope_lastsale_apf_v1_3.special_dividend.display = function(value)
  return "Special Dividend: "..value
end

-- Dissect: Special Dividend
cboe_cboeeurope_lastsale_apf_v1_3.special_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.special_dividend.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.special_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.special_dividend, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_cboeeurope_lastsale_apf_v1_3.symbol = {}

-- Size: Symbol
cboe_cboeeurope_lastsale_apf_v1_3.symbol.size = 12

-- Display: Symbol
cboe_cboeeurope_lastsale_apf_v1_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_cboeeurope_lastsale_apf_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Text
cboe_cboeeurope_lastsale_apf_v1_3.text = {}

-- Size: Text
cboe_cboeeurope_lastsale_apf_v1_3.text.size = 1

-- Display: Text
cboe_cboeeurope_lastsale_apf_v1_3.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_cboeeurope_lastsale_apf_v1_3.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.text, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_cboeeurope_lastsale_apf_v1_3.timestamp = {}

-- Size: Timestamp
cboe_cboeeurope_lastsale_apf_v1_3.timestamp.size = 8

-- Display: Timestamp
cboe_cboeeurope_lastsale_apf_v1_3.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_cboeeurope_lastsale_apf_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_cboeeurope_lastsale_apf_v1_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_cboeeurope_lastsale_apf_v1_3.trade_id = {}

-- Size: Trade Id
cboe_cboeeurope_lastsale_apf_v1_3.trade_id.size = 12

-- Display: Trade Id
cboe_cboeeurope_lastsale_apf_v1_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_cboeeurope_lastsale_apf_v1_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.trade_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Date Time
cboe_cboeeurope_lastsale_apf_v1_3.trading_date_time = {}

-- Size: Trading Date Time
cboe_cboeeurope_lastsale_apf_v1_3.trading_date_time.size = 27

-- Display: Trading Date Time
cboe_cboeeurope_lastsale_apf_v1_3.trading_date_time.display = function(value)
  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
cboe_cboeeurope_lastsale_apf_v1_3.trading_date_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.trading_date_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.trading_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_cboeeurope_lastsale_apf_v1_3.transaction_category = {}

-- Size: Transaction Category
cboe_cboeeurope_lastsale_apf_v1_3.transaction_category.size = 4

-- Display: Transaction Category
cboe_cboeeurope_lastsale_apf_v1_3.transaction_category.display = function(value)
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
cboe_cboeeurope_lastsale_apf_v1_3.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.transaction_category.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_cboeeurope_lastsale_apf_v1_3.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Unsequenced Message
cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_message = {}

-- Size: Unsequenced Message
cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_message.size = 0

-- Display: Unsequenced Message
cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_message.display = function(value)
  return "Unsequenced Message: "..value
end

-- Dissect: Unsequenced Message
cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_message.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.unsequenced_message, range, value, display)

  return offset + length, value
end

-- Username
cboe_cboeeurope_lastsale_apf_v1_3.username = {}

-- Size: Username
cboe_cboeeurope_lastsale_apf_v1_3.username.size = 6

-- Display: Username
cboe_cboeeurope_lastsale_apf_v1_3.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_cboeeurope_lastsale_apf_v1_3.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_cboeeurope_lastsale_apf_v1_3.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_cboeeurope_lastsale_apf_v1_3.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.username, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe CboeEurope LastSale Apf 1.3
-----------------------------------------------------------------------

-- Unsequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_data_packet = {}

-- Size: Unsequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_data_packet.size =
  cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_message.size

-- Display: Unsequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message: 0 Byte
  index, unsequenced_message = cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.unsequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Request Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_request_packet = {}

-- Size: Login Request Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_request_packet.size =
  cboe_cboeeurope_lastsale_apf_v1_3.username.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.password.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.requested_session.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.requested_sequence_number.size

-- Display: Login Request Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_cboeeurope_lastsale_apf_v1_3.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_cboeeurope_lastsale_apf_v1_3.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_cboeeurope_lastsale_apf_v1_3.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_cboeeurope_lastsale_apf_v1_3.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_cboeeurope_lastsale_apf_v1_3.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_lastsale_apf_v1_3.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_lastsale_apf_v1_3.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Europe Message
cboe_cboeeurope_lastsale_apf_v1_3.last_sale_europe_message = {}

-- Size: Last Sale Europe Message
cboe_cboeeurope_lastsale_apf_v1_3.last_sale_europe_message.size =
  cboe_cboeeurope_lastsale_apf_v1_3.trading_date_time.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.symbol.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.price.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.price_currency.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.executed_shares.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.execution_venue.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.publication_date_time.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.trade_id.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.transaction_category.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.negotiation_flag.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.agency_cross_trade.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.modification_indicator.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.benchmark_reference_indicator.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.special_dividend.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.price_discovery_process.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.algorithmic_indicator.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.post_trade_deferral_reason.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.duplicative_indicator.size

-- Display: Last Sale Europe Message
cboe_cboeeurope_lastsale_apf_v1_3.last_sale_europe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Europe Message
cboe_cboeeurope_lastsale_apf_v1_3.last_sale_europe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = cboe_cboeeurope_lastsale_apf_v1_3.trading_date_time.dissect(buffer, index, packet, parent)

  -- Symbol: 12 Byte Ascii String
  index, symbol = cboe_cboeeurope_lastsale_apf_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Price: 18 Byte Ascii String
  index, price = cboe_cboeeurope_lastsale_apf_v1_3.price.dissect(buffer, index, packet, parent)

  -- Price Currency: 3 Byte Ascii String
  index, price_currency = cboe_cboeeurope_lastsale_apf_v1_3.price_currency.dissect(buffer, index, packet, parent)

  -- Executed Shares: 12 Byte Ascii String
  index, executed_shares = cboe_cboeeurope_lastsale_apf_v1_3.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_cboeeurope_lastsale_apf_v1_3.execution_venue.dissect(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String
  index, publication_date_time = cboe_cboeeurope_lastsale_apf_v1_3.publication_date_time.dissect(buffer, index, packet, parent)

  -- Trade Id: 12 Byte Ascii String
  index, trade_id = cboe_cboeeurope_lastsale_apf_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Transaction Category: 4 Byte Ascii String Enum with 3 values
  index, transaction_category = cboe_cboeeurope_lastsale_apf_v1_3.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Flag: 4 Byte Ascii String Enum with 5 values
  index, negotiation_flag = cboe_cboeeurope_lastsale_apf_v1_3.negotiation_flag.dissect(buffer, index, packet, parent)

  -- Agency Cross Trade: 4 Byte Ascii String Enum with 1 values
  index, agency_cross_trade = cboe_cboeeurope_lastsale_apf_v1_3.agency_cross_trade.dissect(buffer, index, packet, parent)

  -- Modification Indicator: 4 Byte Ascii String Enum with 2 values
  index, modification_indicator = cboe_cboeeurope_lastsale_apf_v1_3.modification_indicator.dissect(buffer, index, packet, parent)

  -- Benchmark Reference Indicator: 4 Byte Ascii String Enum with 2 values
  index, benchmark_reference_indicator = cboe_cboeeurope_lastsale_apf_v1_3.benchmark_reference_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend: 4 Byte Ascii String
  index, special_dividend = cboe_cboeeurope_lastsale_apf_v1_3.special_dividend.dissect(buffer, index, packet, parent)

  -- Price Discovery Process: 4 Byte Ascii String Enum with 3 values
  index, price_discovery_process = cboe_cboeeurope_lastsale_apf_v1_3.price_discovery_process.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: 4 Byte Ascii String Enum with 1 values
  index, algorithmic_indicator = cboe_cboeeurope_lastsale_apf_v1_3.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 4 Byte Ascii String Enum with 3 values
  index, post_trade_deferral_reason = cboe_cboeeurope_lastsale_apf_v1_3.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: 4 Byte Ascii String Enum with 1 values
  index, duplicative_indicator = cboe_cboeeurope_lastsale_apf_v1_3.duplicative_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Europe Message
cboe_cboeeurope_lastsale_apf_v1_3.last_sale_europe_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.last_sale_europe_message, buffer(offset, 0))
    local index = cboe_cboeeurope_lastsale_apf_v1_3.last_sale_europe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_lastsale_apf_v1_3.last_sale_europe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_lastsale_apf_v1_3.last_sale_europe_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message = {}

-- Dissect: Sequenced Message
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Last Sale Europe Message
  if sequenced_message_type == "u" then
    return cboe_cboeeurope_lastsale_apf_v1_3.last_sale_europe_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Message Header
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header.size =
  cboe_cboeeurope_lastsale_apf_v1_3.timestamp.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = cboe_cboeeurope_lastsale_apf_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 1 values
  index, sequenced_message_type = cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 1 branches
  index = cboe_cboeeurope_lastsale_apf_v1_3.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_cboeeurope_lastsale_apf_v1_3.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.sequenced_data_packet, buffer(offset, 0))
    local index = cboe_cboeeurope_lastsale_apf_v1_3.sequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_lastsale_apf_v1_3.sequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_lastsale_apf_v1_3.sequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Rejected Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_rejected_packet.size =
  cboe_cboeeurope_lastsale_apf_v1_3.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_cboeeurope_lastsale_apf_v1_3.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_cboeeurope_lastsale_apf_v1_3.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_lastsale_apf_v1_3.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_lastsale_apf_v1_3.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Login Accepted Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_accepted_packet.size =
  cboe_cboeeurope_lastsale_apf_v1_3.session.size + 
  cboe_cboeeurope_lastsale_apf_v1_3.sequence_number.size

-- Display: Login Accepted Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_cboeeurope_lastsale_apf_v1_3.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_cboeeurope_lastsale_apf_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_cboeeurope_lastsale_apf_v1_3.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_cboeeurope_lastsale_apf_v1_3.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_lastsale_apf_v1_3.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_lastsale_apf_v1_3.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Debug Packet
cboe_cboeeurope_lastsale_apf_v1_3.debug_packet = {}

-- Size: Debug Packet
cboe_cboeeurope_lastsale_apf_v1_3.debug_packet.size =
  cboe_cboeeurope_lastsale_apf_v1_3.text.size

-- Display: Debug Packet
cboe_cboeeurope_lastsale_apf_v1_3.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_cboeeurope_lastsale_apf_v1_3.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_cboeeurope_lastsale_apf_v1_3.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_cboeeurope_lastsale_apf_v1_3.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3.fields.debug_packet, buffer(offset, 0))
    local index = cboe_cboeeurope_lastsale_apf_v1_3.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_cboeeurope_lastsale_apf_v1_3.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_cboeeurope_lastsale_apf_v1_3.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_cboeeurope_lastsale_apf_v1_3.payload = {}

-- Dissect: Payload
cboe_cboeeurope_lastsale_apf_v1_3.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_cboeeurope_lastsale_apf_v1_3.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_cboeeurope_lastsale_apf_v1_3.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_cboeeurope_lastsale_apf_v1_3.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_cboeeurope_lastsale_apf_v1_3.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_cboeeurope_lastsale_apf_v1_3.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_cboeeurope_lastsale_apf_v1_3.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet
cboe_cboeeurope_lastsale_apf_v1_3.packet = {}

-- Verify size of Tcp packet
cboe_cboeeurope_lastsale_apf_v1_3.packet.requiredsize = function(buffer)

  return true
end

-- Dissect Packet
cboe_cboeeurope_lastsale_apf_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Packet Type: 1 Byte Ascii String Enum with 9 values
    index, packet_type = cboe_cboeeurope_lastsale_apf_v1_3.packet_type.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 6 branches
    index = cboe_cboeeurope_lastsale_apf_v1_3.payload.dissect(buffer, index, packet, parent, packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = cboe_cboeeurope_lastsale_apf_v1_3.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_cboeeurope_lastsale_apf_v1_3.init()
end

-- Dissector for Cboe CboeEurope LastSale Apf 1.3
function omi_cboe_cboeeurope_lastsale_apf_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_cboeeurope_lastsale_apf_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_cboeeurope_lastsale_apf_v1_3, buffer(), omi_cboe_cboeeurope_lastsale_apf_v1_3.description, "("..buffer:len().." Bytes)")
  return cboe_cboeeurope_lastsale_apf_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_cboe_cboeeurope_lastsale_apf_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Soup Lf Field
cboe_cboeeurope_lastsale_apf_v1_3.soup_lf.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(223, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe CboeEurope LastSale Apf 1.3 (Tcp)
local function omi_cboe_cboeeurope_lastsale_apf_v1_3_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_cboeeurope_lastsale_apf_v1_3.packet.requiredsize(buffer) then return false end

  -- Verify Soup Lf
  if not cboe_cboeeurope_lastsale_apf_v1_3.soup_lf.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_cboeeurope_lastsale_apf_v1_3
  omi_cboe_cboeeurope_lastsale_apf_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe CboeEurope LastSale Apf 1.3
omi_cboe_cboeeurope_lastsale_apf_v1_3:register_heuristic("tcp", omi_cboe_cboeeurope_lastsale_apf_v1_3_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
