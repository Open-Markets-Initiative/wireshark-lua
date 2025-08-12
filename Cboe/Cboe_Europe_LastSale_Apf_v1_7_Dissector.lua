-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Europe LastSale Apf 1.7 Protocol
local cboe_europe_lastsale_apf_v1_7 = Proto("Cboe.Europe.LastSale.Apf.v1.7.Lua", "Cboe Europe LastSale Apf 1.7")

-- Component Tables
local show = {}
local format = {}
local cboe_europe_lastsale_apf_v1_7_display = {}
local cboe_europe_lastsale_apf_v1_7_dissect = {}
local cboe_europe_lastsale_apf_v1_7_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Europe LastSale Apf 1.7 Fields
cboe_europe_lastsale_apf_v1_7.fields.agency_cross_trade = ProtoField.new("Agency Cross Trade", "cboe.europe.lastsale.apf.v1.7.agencycrosstrade", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.europe.lastsale.apf.v1.7.algorithmicindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.benchmark_indicator = ProtoField.new("Benchmark Indicator", "cboe.europe.lastsale.apf.v1.7.benchmarkindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.benchmark_reference_indicator = ProtoField.new("Benchmark Reference Indicator", "cboe.europe.lastsale.apf.v1.7.benchmarkreferenceindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.contingent_flag = ProtoField.new("Contingent Flag", "cboe.europe.lastsale.apf.v1.7.contingentflag", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.europe.lastsale.apf.v1.7.debugpacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.deferral_illiquid_instrument = ProtoField.new("Deferral Illiquid Instrument", "cboe.europe.lastsale.apf.v1.7.deferralilliquidinstrument", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.deferral_or_enrichment_type = ProtoField.new("Deferral Or Enrichment Type", "cboe.europe.lastsale.apf.v1.7.deferralorenrichmenttype", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.deferral_size_specific = ProtoField.new("Deferral Size Specific", "cboe.europe.lastsale.apf.v1.7.deferralsizespecific", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.duplicative_across_jurisdiction = ProtoField.new("Duplicative Across Jurisdiction", "cboe.europe.lastsale.apf.v1.7.duplicativeacrossjurisdiction", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "cboe.europe.lastsale.apf.v1.7.duplicativeindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.duplicative_within_jurisdiction = ProtoField.new("Duplicative Within Jurisdiction", "cboe.europe.lastsale.apf.v1.7.duplicativewithinjurisdiction", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.europe.lastsale.apf.v1.7.executedshares", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.europe.lastsale.apf.v1.7.executionvenue", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.giveup_flag = ProtoField.new("Giveup Flag", "cboe.europe.lastsale.apf.v1.7.giveupflag", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.intra_group_indicator = ProtoField.new("Intra Group Indicator", "cboe.europe.lastsale.apf.v1.7.intragroupindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.jurisdiction = ProtoField.new("Jurisdiction", "cboe.europe.lastsale.apf.v1.7.jurisdiction", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.last_sale_europe_message = ProtoField.new("Last Sale Europe Message", "cboe.europe.lastsale.apf.v1.7.lastsaleeuropemessage", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.last_sale_europe_message_new = ProtoField.new("Last Sale Europe Message New", "cboe.europe.lastsale.apf.v1.7.lastsaleeuropemessagenew", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.europe.lastsale.apf.v1.7.loginacceptedpacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.europe.lastsale.apf.v1.7.loginrejectedpacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.europe.lastsale.apf.v1.7.loginrequestpacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.europe.lastsale.apf.v1.7.marketmechanism", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.modification_indicator = ProtoField.new("Modification Indicator", "cboe.europe.lastsale.apf.v1.7.modificationindicator", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.negotiation_flag = ProtoField.new("Negotiation Flag", "cboe.europe.lastsale.apf.v1.7.negotiationflag", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.notional_amount = ProtoField.new("Notional Amount", "cboe.europe.lastsale.apf.v1.7.notionalamount", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.notional_currency = ProtoField.new("Notional Currency", "cboe.europe.lastsale.apf.v1.7.notionalcurrency", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.off_book_automated = ProtoField.new("Off Book Automated", "cboe.europe.lastsale.apf.v1.7.offbookautomated", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.packet = ProtoField.new("Packet", "cboe.europe.lastsale.apf.v1.7.packet", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.packet_type = ProtoField.new("Packet Type", "cboe.europe.lastsale.apf.v1.7.packettype", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.password = ProtoField.new("Password", "cboe.europe.lastsale.apf.v1.7.password", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.payload = ProtoField.new("Payload", "cboe.europe.lastsale.apf.v1.7.payload", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.portfolio_flag = ProtoField.new("Portfolio Flag", "cboe.europe.lastsale.apf.v1.7.portfolioflag", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "cboe.europe.lastsale.apf.v1.7.posttradedeferralreason", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.pre_trade_transparency_waiver = ProtoField.new("Pre Trade Transparency Waiver", "cboe.europe.lastsale.apf.v1.7.pretradetransparencywaiver", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.price = ProtoField.new("Price", "cboe.europe.lastsale.apf.v1.7.price", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.price_currency = ProtoField.new("Price Currency", "cboe.europe.lastsale.apf.v1.7.pricecurrency", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.price_discovery_process = ProtoField.new("Price Discovery Process", "cboe.europe.lastsale.apf.v1.7.pricediscoveryprocess", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.price_notation = ProtoField.new("Price Notation", "cboe.europe.lastsale.apf.v1.7.pricenotation", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.publication_date_time = ProtoField.new("Publication Date Time", "cboe.europe.lastsale.apf.v1.7.publicationdatetime", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.europe.lastsale.apf.v1.7.rejectreasoncode", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.europe.lastsale.apf.v1.7.requestedsequencenumber", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.requested_session = ProtoField.new("Requested Session", "cboe.europe.lastsale.apf.v1.7.requestedsession", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.europe.lastsale.apf.v1.7.sequencenumber", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.europe.lastsale.apf.v1.7.sequenceddatapacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.sequenced_message = ProtoField.new("Sequenced Message", "cboe.europe.lastsale.apf.v1.7.sequencedmessage", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.europe.lastsale.apf.v1.7.sequencedmessageheader", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.europe.lastsale.apf.v1.7.sequencedmessagetype", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.session = ProtoField.new("Session", "cboe.europe.lastsale.apf.v1.7.session", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.europe.lastsale.apf.v1.7.souplf", ftypes.INT8)
cboe_europe_lastsale_apf_v1_7.fields.special_dividend = ProtoField.new("Special Dividend", "cboe.europe.lastsale.apf.v1.7.specialdividend", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.symbol = ProtoField.new("Symbol", "cboe.europe.lastsale.apf.v1.7.symbol", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.text = ProtoField.new("Text", "cboe.europe.lastsale.apf.v1.7.text", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.third_country_trading_venue = ProtoField.new("Third Country Trading Venue", "cboe.europe.lastsale.apf.v1.7.thirdcountrytradingvenue", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.timestamp = ProtoField.new("Timestamp", "cboe.europe.lastsale.apf.v1.7.timestamp", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.trade_id = ProtoField.new("Trade Id", "cboe.europe.lastsale.apf.v1.7.tradeid", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.trading_date_time = ProtoField.new("Trading Date Time", "cboe.europe.lastsale.apf.v1.7.tradingdatetime", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.europe.lastsale.apf.v1.7.tradingmode", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.europe.lastsale.apf.v1.7.transactioncategory", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.europe.lastsale.apf.v1.7.unsequenceddatapacket", ftypes.STRING)
cboe_europe_lastsale_apf_v1_7.fields.username = ProtoField.new("Username", "cboe.europe.lastsale.apf.v1.7.username", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Europe LastSale Apf 1.7 Element Dissection Options
show.debug_packet = true
show.last_sale_europe_message = true
show.last_sale_europe_message_new = true
show.login_accepted_packet = true
show.login_rejected_packet = true
show.login_request_packet = true
show.packet = true
show.sequenced_data_packet = true
show.sequenced_message_header = true
show.unsequenced_data_packet = true
show.payload = false
show.sequenced_message = false

-- Register Cboe Europe LastSale Apf 1.7 Show Options
cboe_europe_lastsale_apf_v1_7.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message = Pref.bool("Show Last Sale Europe Message", show.last_sale_europe_message, "Parse and add Last Sale Europe Message to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message_new = Pref.bool("Show Last Sale Europe Message New", show.last_sale_europe_message_new, "Parse and add Last Sale Europe Message New to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message_header = Pref.bool("Show Sequenced Message Header", show.sequenced_message_header, "Parse and add Sequenced Message Header to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")

-- Handle changed preferences
function cboe_europe_lastsale_apf_v1_7.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.debug_packet ~= cboe_europe_lastsale_apf_v1_7.prefs.show_debug_packet then
    show.debug_packet = cboe_europe_lastsale_apf_v1_7.prefs.show_debug_packet
    changed = true
  end
  if show.last_sale_europe_message ~= cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message then
    show.last_sale_europe_message = cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message
    changed = true
  end
  if show.last_sale_europe_message_new ~= cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message_new then
    show.last_sale_europe_message_new = cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message_new
    changed = true
  end
  if show.login_accepted_packet ~= cboe_europe_lastsale_apf_v1_7.prefs.show_login_accepted_packet then
    show.login_accepted_packet = cboe_europe_lastsale_apf_v1_7.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= cboe_europe_lastsale_apf_v1_7.prefs.show_login_rejected_packet then
    show.login_rejected_packet = cboe_europe_lastsale_apf_v1_7.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= cboe_europe_lastsale_apf_v1_7.prefs.show_login_request_packet then
    show.login_request_packet = cboe_europe_lastsale_apf_v1_7.prefs.show_login_request_packet
    changed = true
  end
  if show.packet ~= cboe_europe_lastsale_apf_v1_7.prefs.show_packet then
    show.packet = cboe_europe_lastsale_apf_v1_7.prefs.show_packet
    changed = true
  end
  if show.sequenced_data_packet ~= cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.sequenced_message_header ~= cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message_header then
    show.sequenced_message_header = cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message_header
    changed = true
  end
  if show.unsequenced_data_packet ~= cboe_europe_lastsale_apf_v1_7.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = cboe_europe_lastsale_apf_v1_7.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= cboe_europe_lastsale_apf_v1_7.prefs.show_payload then
    show.payload = cboe_europe_lastsale_apf_v1_7.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message then
    show.sequenced_message = cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message
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
-- Dissect Cboe Europe LastSale Apf 1.7
-----------------------------------------------------------------------

-- Size: Soup Lf
cboe_europe_lastsale_apf_v1_7_size_of.soup_lf = 1

-- Display: Soup Lf
cboe_europe_lastsale_apf_v1_7_display.soup_lf = function(value)
  return "Soup Lf: "..value
end

-- Dissect: Soup Lf
cboe_europe_lastsale_apf_v1_7_dissect.soup_lf = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.soup_lf
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_europe_lastsale_apf_v1_7_display.soup_lf(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_7_size_of.unsequenced_data_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.unsequenced_message

  return index
end

-- Display: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_7_display.unsequenced_data_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_7_dissect.unsequenced_data_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message
  index, unsequenced_message = cboe_europe_lastsale_apf_v1_7_dissect.unsequenced_message(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_7_dissect.unsequenced_data_packet = function(buffer, offset, packet, parent)
  if show.unsequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_europe_lastsale_apf_v1_7.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7_dissect.unsequenced_data_packet_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7_display.unsequenced_data_packet(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7_dissect.unsequenced_data_packet_fields(buffer, offset, packet, parent)
  end
end

-- Size: Requested Sequence Number
cboe_europe_lastsale_apf_v1_7_size_of.requested_sequence_number = 10

-- Display: Requested Sequence Number
cboe_europe_lastsale_apf_v1_7_display.requested_sequence_number = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_europe_lastsale_apf_v1_7_dissect.requested_sequence_number = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.requested_sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.requested_sequence_number(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Requested Session
cboe_europe_lastsale_apf_v1_7_size_of.requested_session = 10

-- Display: Requested Session
cboe_europe_lastsale_apf_v1_7_display.requested_session = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_europe_lastsale_apf_v1_7_dissect.requested_session = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.requested_session
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.requested_session(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Size: Password
cboe_europe_lastsale_apf_v1_7_size_of.password = 10

-- Display: Password
cboe_europe_lastsale_apf_v1_7_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_europe_lastsale_apf_v1_7_dissect.password = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.password
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.password(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.password, range, value, display)

  return offset + length, value
end

-- Size: Username
cboe_europe_lastsale_apf_v1_7_size_of.username = 6

-- Display: Username
cboe_europe_lastsale_apf_v1_7_display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_europe_lastsale_apf_v1_7_dissect.username = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.username
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.username(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.username, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Packet
cboe_europe_lastsale_apf_v1_7_size_of.login_request_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.username

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.password

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.requested_session

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.requested_sequence_number

  return index
end

-- Display: Login Request Packet
cboe_europe_lastsale_apf_v1_7_display.login_request_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_europe_lastsale_apf_v1_7_dissect.login_request_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_europe_lastsale_apf_v1_7_dissect.username(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_europe_lastsale_apf_v1_7_dissect.password(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_europe_lastsale_apf_v1_7_dissect.requested_session(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_europe_lastsale_apf_v1_7_dissect.requested_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_europe_lastsale_apf_v1_7_dissect.login_request_packet = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_europe_lastsale_apf_v1_7.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7_dissect.login_request_packet_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7_display.login_request_packet(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7_dissect.login_request_packet_fields(buffer, offset, packet, parent)
  end
end

-- Size: Jurisdiction
cboe_europe_lastsale_apf_v1_7_size_of.jurisdiction = 2

-- Display: Jurisdiction
cboe_europe_lastsale_apf_v1_7_display.jurisdiction = function(value)
  if value == "EU" then
    return "Jurisdiction: Trade Executed On An Eu Regulated Venue Or Apa (EU)"
  end
  if value == "UK" then
    return "Jurisdiction: Trade Executed On A Non Eu Regulated Venue Or Apa (UK)"
  end

  return "Jurisdiction: Unknown("..value..")"
end

-- Dissect: Jurisdiction
cboe_europe_lastsale_apf_v1_7_dissect.jurisdiction = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.jurisdiction
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.jurisdiction(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.jurisdiction, range, value, display)

  return offset + length, value
end

-- Size: Intra Group Indicator
cboe_europe_lastsale_apf_v1_7_size_of.intra_group_indicator = 4

-- Display: Intra Group Indicator
cboe_europe_lastsale_apf_v1_7_display.intra_group_indicator = function(value)
  if value == "IGRP" then
    return "Intra Group Indicator: Intra Group Trade (IGRP)"
  end

  return "Intra Group Indicator: Unknown("..value..")"
end

-- Dissect: Intra Group Indicator
cboe_europe_lastsale_apf_v1_7_dissect.intra_group_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.intra_group_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.intra_group_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.intra_group_indicator, range, value, display)

  return offset + length, value
end

-- Size: Duplicative Across Jurisdiction
cboe_europe_lastsale_apf_v1_7_size_of.duplicative_across_jurisdiction = 4

-- Display: Duplicative Across Jurisdiction
cboe_europe_lastsale_apf_v1_7_display.duplicative_across_jurisdiction = function(value)
  if value == "XBDT" then
    return "Duplicative Across Jurisdiction: Cross Border Duplicative Trade Report (XBDT)"
  end

  return "Duplicative Across Jurisdiction: Unknown("..value..")"
end

-- Dissect: Duplicative Across Jurisdiction
cboe_europe_lastsale_apf_v1_7_dissect.duplicative_across_jurisdiction = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.duplicative_across_jurisdiction
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.duplicative_across_jurisdiction(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.duplicative_across_jurisdiction, range, value, display)

  return offset + length, value
end

-- Size: Duplicative Within Jurisdiction
cboe_europe_lastsale_apf_v1_7_size_of.duplicative_within_jurisdiction = 4

-- Display: Duplicative Within Jurisdiction
cboe_europe_lastsale_apf_v1_7_display.duplicative_within_jurisdiction = function(value)
  if value == "DUPL" then
    return "Duplicative Within Jurisdiction: Duplicative Trade Report (DUPL)"
  end

  return "Duplicative Within Jurisdiction: Unknown("..value..")"
end

-- Dissect: Duplicative Within Jurisdiction
cboe_europe_lastsale_apf_v1_7_dissect.duplicative_within_jurisdiction = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.duplicative_within_jurisdiction
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.duplicative_within_jurisdiction(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.duplicative_within_jurisdiction, range, value, display)

  return offset + length, value
end

-- Size: Deferral Size Specific
cboe_europe_lastsale_apf_v1_7_size_of.deferral_size_specific = 4

-- Display: Deferral Size Specific
cboe_europe_lastsale_apf_v1_7_display.deferral_size_specific = function(value)
  if value == "SIZE" then
    return "Deferral Size Specific: Deferral For Size Specific (SIZE)"
  end

  return "Deferral Size Specific: Unknown("..value..")"
end

-- Dissect: Deferral Size Specific
cboe_europe_lastsale_apf_v1_7_dissect.deferral_size_specific = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.deferral_size_specific
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.deferral_size_specific(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.deferral_size_specific, range, value, display)

  return offset + length, value
end

-- Size: Deferral Illiquid Instrument
cboe_europe_lastsale_apf_v1_7_size_of.deferral_illiquid_instrument = 4

-- Display: Deferral Illiquid Instrument
cboe_europe_lastsale_apf_v1_7_display.deferral_illiquid_instrument = function(value)
  if value == "ILQD" then
    return "Deferral Illiquid Instrument: Non Immediate Publication Deferral For Illiquid Instrument (ILQD)"
  end

  return "Deferral Illiquid Instrument: Unknown("..value..")"
end

-- Dissect: Deferral Illiquid Instrument
cboe_europe_lastsale_apf_v1_7_dissect.deferral_illiquid_instrument = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.deferral_illiquid_instrument
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.deferral_illiquid_instrument(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.deferral_illiquid_instrument, range, value, display)

  return offset + length, value
end

-- Size: Deferral Or Enrichment Type
cboe_europe_lastsale_apf_v1_7_size_of.deferral_or_enrichment_type = 4

-- Display: Deferral Or Enrichment Type
cboe_europe_lastsale_apf_v1_7_display.deferral_or_enrichment_type = function(value)
  if value == "LMTF" then
    return "Deferral Or Enrichment Type: Limited Details Trade (LMTF)"
  end
  if value == "DATF" then
    return "Deferral Or Enrichment Type: Daily Aggregated Trade (DATF)"
  end
  if value == "VOLO" then
    return "Deferral Or Enrichment Type: Volume Omission Trade (VOLO)"
  end
  if value == "FWAF" then
    return "Deferral Or Enrichment Type: Four Weeks Aggregation Trade (FWAF)"
  end
  if value == "IDAF" then
    return "Deferral Or Enrichment Type: Indefinite Aggregation Trade (IDAF)"
  end
  if value == "VOLW" then
    return "Deferral Or Enrichment Type: Volume Omission Trade (VOLW)"
  end
  if value == "FULF" then
    return "Deferral Or Enrichment Type: Full Details Of Earlier Limited Details Trade (FULF)"
  end
  if value == "FULA" then
    return "Deferral Or Enrichment Type: Full Details Of Earlier Daily Aggregated Trade (FULA)"
  end
  if value == "FULV" then
    return "Deferral Or Enrichment Type: Full Details Of Earlier Volume Omission Trade (FULV)"
  end
  if value == "FULJ" then
    return "Deferral Or Enrichment Type: Full Details Of Earlier Four Weeks Aggregation Trade (FULJ)"
  end
  if value == "COAF" then
    return "Deferral Or Enrichment Type: Full Details In Aggregated Form Of Earlier Volume Omission Trade (COAF)"
  end

  return "Deferral Or Enrichment Type: Unknown("..value..")"
end

-- Dissect: Deferral Or Enrichment Type
cboe_europe_lastsale_apf_v1_7_dissect.deferral_or_enrichment_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.deferral_or_enrichment_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.deferral_or_enrichment_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.deferral_or_enrichment_type, range, value, display)

  return offset + length, value
end

-- Size: Post Trade Deferral Reason
cboe_europe_lastsale_apf_v1_7_size_of.post_trade_deferral_reason = 4

-- Display: Post Trade Deferral Reason
cboe_europe_lastsale_apf_v1_7_display.post_trade_deferral_reason = function(value)
  if value == "NI" then
    return "Post Trade Deferral Reason: Non Immediate Publication (NI)"
  end
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
cboe_europe_lastsale_apf_v1_7_dissect.post_trade_deferral_reason = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.post_trade_deferral_reason
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.post_trade_deferral_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Size: Giveup Flag
cboe_europe_lastsale_apf_v1_7_size_of.giveup_flag = 4

-- Display: Giveup Flag
cboe_europe_lastsale_apf_v1_7_display.giveup_flag = function(value)
  if value == "GIVE" then
    return "Giveup Flag: Rfmd Give Up Trade (GIVE)"
  end

  return "Giveup Flag: Unknown("..value..")"
end

-- Dissect: Giveup Flag
cboe_europe_lastsale_apf_v1_7_dissect.giveup_flag = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.giveup_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.giveup_flag(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.giveup_flag, range, value, display)

  return offset + length, value
end

-- Size: Contingent Flag
cboe_europe_lastsale_apf_v1_7_size_of.contingent_flag = 4

-- Display: Contingent Flag
cboe_europe_lastsale_apf_v1_7_display.contingent_flag = function(value)
  return "Contingent Flag: "..value
end

-- Dissect: Contingent Flag
cboe_europe_lastsale_apf_v1_7_dissect.contingent_flag = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.contingent_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.contingent_flag(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.contingent_flag, range, value, display)

  return offset + length, value
end

-- Size: Portfolio Flag
cboe_europe_lastsale_apf_v1_7_size_of.portfolio_flag = 4

-- Display: Portfolio Flag
cboe_europe_lastsale_apf_v1_7_display.portfolio_flag = function(value)
  if value == "PORT" then
    return "Portfolio Flag: Portfolio Trade (PORT)"
  end
  if value == "CONT" then
    return "Portfolio Flag: Contingent Trade (CONT)"
  end

  return "Portfolio Flag: Unknown("..value..")"
end

-- Dissect: Portfolio Flag
cboe_europe_lastsale_apf_v1_7_dissect.portfolio_flag = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.portfolio_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.portfolio_flag(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.portfolio_flag, range, value, display)

  return offset + length, value
end

-- Size: Pre Trade Transparency Waiver
cboe_europe_lastsale_apf_v1_7_size_of.pre_trade_transparency_waiver = 4

-- Display: Pre Trade Transparency Waiver
cboe_europe_lastsale_apf_v1_7_display.pre_trade_transparency_waiver = function(value)
  if value == "SIZE" then
    return "Pre Trade Transparency Waiver: Pre Trade Transparency Waiver For Above Standard Market Size On An Si (SIZE)"
  end
  if value == "NTLS" then
    return "Pre Trade Transparency Waiver: Negotiated Trade Larger Than Lis Brought Onto A Venue (NTLS)"
  end

  return "Pre Trade Transparency Waiver: Unknown("..value..")"
end

-- Dissect: Pre Trade Transparency Waiver
cboe_europe_lastsale_apf_v1_7_dissect.pre_trade_transparency_waiver = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.pre_trade_transparency_waiver
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.pre_trade_transparency_waiver(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.pre_trade_transparency_waiver, range, value, display)

  return offset + length, value
end

-- Size: Algorithmic Indicator
cboe_europe_lastsale_apf_v1_7_size_of.algorithmic_indicator = 4

-- Display: Algorithmic Indicator
cboe_europe_lastsale_apf_v1_7_display.algorithmic_indicator = function(value)
  if value == "ALGO" then
    return "Algorithmic Indicator: Algorithmic Trade (ALGO)"
  end

  return "Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Indicator
cboe_europe_lastsale_apf_v1_7_dissect.algorithmic_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.algorithmic_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.algorithmic_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price Discovery Process
cboe_europe_lastsale_apf_v1_7_size_of.price_discovery_process = 4

-- Display: Price Discovery Process
cboe_europe_lastsale_apf_v1_7_display.price_discovery_process = function(value)
  if value == "NPFT" then
    return "Price Discovery Process: Non Price Forming Trade (NPFT)"
  end
  if value == "TNCP" then
    return "Price Discovery Process: Trade Not Contributing To The Price Discovery Process (TNCP)"
  end
  if value == "PNDG" then
    return "Price Discovery Process: Price Is Pending (PNDG)"
  end
  if value == NOAP then
    return "Price Discovery Process: No Value"
  end

  return "Price Discovery Process: Unknown("..value..")"
end

-- Dissect: Price Discovery Process
cboe_europe_lastsale_apf_v1_7_dissect.price_discovery_process = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.price_discovery_process
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.price_discovery_process(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.price_discovery_process, range, value, display)

  return offset + length, value
end

-- Size: Off Book Automated
cboe_europe_lastsale_apf_v1_7_size_of.off_book_automated = 4

-- Display: Off Book Automated
cboe_europe_lastsale_apf_v1_7_display.off_book_automated = function(value)
  if value == "M" then
    return "Off Book Automated: Off Book Non Automated (M)"
  end
  if value == "Q" then
    return "Off Book Automated: Off Book Automated (Q)"
  end

  return "Off Book Automated: Unknown("..value..")"
end

-- Dissect: Off Book Automated
cboe_europe_lastsale_apf_v1_7_dissect.off_book_automated = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.off_book_automated
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.off_book_automated(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.off_book_automated, range, value, display)

  return offset + length, value
end

-- Size: Special Dividend
cboe_europe_lastsale_apf_v1_7_size_of.special_dividend = 4

-- Display: Special Dividend
cboe_europe_lastsale_apf_v1_7_display.special_dividend = function(value)
  if value == "SDIV" then
    return "Special Dividend: Special Dividend Trade (SDIV)"
  end

  return "Special Dividend: Unknown("..value..")"
end

-- Dissect: Special Dividend
cboe_europe_lastsale_apf_v1_7_dissect.special_dividend = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.special_dividend
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.special_dividend(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.special_dividend, range, value, display)

  return offset + length, value
end

-- Size: Benchmark Indicator
cboe_europe_lastsale_apf_v1_7_size_of.benchmark_indicator = 4

-- Display: Benchmark Indicator
cboe_europe_lastsale_apf_v1_7_display.benchmark_indicator = function(value)
  return "Benchmark Indicator: "..value
end

-- Dissect: Benchmark Indicator
cboe_europe_lastsale_apf_v1_7_dissect.benchmark_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.benchmark_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.benchmark_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Size: Modification Indicator
cboe_europe_lastsale_apf_v1_7_size_of.modification_indicator = 4

-- Display: Modification Indicator
cboe_europe_lastsale_apf_v1_7_display.modification_indicator = function(value)
  if value == "CANC" then
    return "Modification Indicator: Trade Cancellation (CANC)"
  end
  if value == "AMND" then
    return "Modification Indicator: Trade Amendment (AMND)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
cboe_europe_lastsale_apf_v1_7_dissect.modification_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.modification_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.modification_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Size: Agency Cross Trade
cboe_europe_lastsale_apf_v1_7_size_of.agency_cross_trade = 4

-- Display: Agency Cross Trade
cboe_europe_lastsale_apf_v1_7_display.agency_cross_trade = function(value)
  if value == "ACTX" then
    return "Agency Cross Trade: Agency Cross Trade (ACTX)"
  end

  return "Agency Cross Trade: Unknown("..value..")"
end

-- Dissect: Agency Cross Trade
cboe_europe_lastsale_apf_v1_7_dissect.agency_cross_trade = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.agency_cross_trade
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.agency_cross_trade(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.agency_cross_trade, range, value, display)

  return offset + length, value
end

-- Size: Negotiation Flag
cboe_europe_lastsale_apf_v1_7_size_of.negotiation_flag = 4

-- Display: Negotiation Flag
cboe_europe_lastsale_apf_v1_7_display.negotiation_flag = function(value)
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
cboe_europe_lastsale_apf_v1_7_dissect.negotiation_flag = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.negotiation_flag
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.negotiation_flag(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.negotiation_flag, range, value, display)

  return offset + length, value
end

-- Size: Transaction Category
cboe_europe_lastsale_apf_v1_7_size_of.transaction_category = 4

-- Display: Transaction Category
cboe_europe_lastsale_apf_v1_7_display.transaction_category = function(value)
  if value == "D" then
    return "Transaction Category: Dark Trade (D)"
  end
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
cboe_europe_lastsale_apf_v1_7_dissect.transaction_category = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.transaction_category
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.transaction_category(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Size: Trading Mode
cboe_europe_lastsale_apf_v1_7_size_of.trading_mode = 4

-- Display: Trading Mode
cboe_europe_lastsale_apf_v1_7_display.trading_mode = function(value)
  if value == "AU" then
    return "Trading Mode: Undefined Auction (AU)"
  end
  if value == "OA" then
    return "Trading Mode: Scheduled Opening Auction (OA)"
  end
  if value == "CA" then
    return "Trading Mode: Scheduled Closing Auction (CA)"
  end
  if value == "IA" then
    return "Trading Mode: Scheduled Intraday Auction (IA)"
  end
  if value == "UA" then
    return "Trading Mode: Unscheduled Auction (UA)"
  end
  if value == "OD" then
    return "Trading Mode: On Demand Auction (OD)"
  end
  if value == "CT" then
    return "Trading Mode: Continuous Trading (CT)"
  end
  if value == "AC" then
    return "Trading Mode: At Market Close Trading (AC)"
  end
  if value == "OT" then
    return "Trading Mode: Out Of Main Session Trading (OT)"
  end
  if value == "ON" then
    return "Trading Mode: Trade Reporting On Exchange (ON)"
  end
  if value == "OF" then
    return "Trading Mode: Trade Reporting Oﬀ Exchange (OF)"
  end
  if value == "SI" then
    return "Trading Mode: Trade Reporting Systematic Internaliser (SI)"
  end

  return "Trading Mode: Unknown("..value..")"
end

-- Dissect: Trading Mode
cboe_europe_lastsale_apf_v1_7_dissect.trading_mode = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.trading_mode
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.trading_mode(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Size: Market Mechanism
cboe_europe_lastsale_apf_v1_7_size_of.market_mechanism = 4

-- Display: Market Mechanism
cboe_europe_lastsale_apf_v1_7_display.market_mechanism = function(value)
  if value == "LB" then
    return "Market Mechanism: Central Limit Order Book (LB)"
  end
  if value == "QB" then
    return "Market Mechanism: Quote Driven Market (QB)"
  end
  if value == "DB" then
    return "Market Mechanism: Dark Order Book (DB)"
  end
  if value == "OB" then
    return "Market Mechanism: Oﬀ Book (OB)"
  end
  if value == "PA" then
    return "Market Mechanism: Periodic Auction (PA)"
  end
  if value == "RQ" then
    return "Market Mechanism: Request For Quotes (RQ)"
  end
  if value == "AH" then
    return "Market Mechanism: Any Other (AH)"
  end
  if value == "HS" then
    return "Market Mechanism: Hybrid System (HS)"
  end
  if value == "AO" then
    return "Market Mechanism: Any Other (AO)"
  end

  return "Market Mechanism: Unknown("..value..")"
end

-- Dissect: Market Mechanism
cboe_europe_lastsale_apf_v1_7_dissect.market_mechanism = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.market_mechanism
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.market_mechanism(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
cboe_europe_lastsale_apf_v1_7_size_of.trade_id = 12

-- Display: Trade Id
cboe_europe_lastsale_apf_v1_7_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_europe_lastsale_apf_v1_7_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.trade_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Publication Date Time
cboe_europe_lastsale_apf_v1_7_size_of.publication_date_time = 27

-- Display: Publication Date Time
cboe_europe_lastsale_apf_v1_7_display.publication_date_time = function(value)
  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
cboe_europe_lastsale_apf_v1_7_dissect.publication_date_time = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.publication_date_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.publication_date_time(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Size: Third Country Trading Venue
cboe_europe_lastsale_apf_v1_7_size_of.third_country_trading_venue = 4

-- Display: Third Country Trading Venue
cboe_europe_lastsale_apf_v1_7_display.third_country_trading_venue = function(value)
  return "Third Country Trading Venue: "..value
end

-- Dissect: Third Country Trading Venue
cboe_europe_lastsale_apf_v1_7_dissect.third_country_trading_venue = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.third_country_trading_venue
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.third_country_trading_venue(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.third_country_trading_venue, range, value, display)

  return offset + length, value
end

-- Size: Execution Venue
cboe_europe_lastsale_apf_v1_7_size_of.execution_venue = 4

-- Display: Execution Venue
cboe_europe_lastsale_apf_v1_7_display.execution_venue = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_europe_lastsale_apf_v1_7_dissect.execution_venue = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.execution_venue
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.execution_venue(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Size: Notional Currency
cboe_europe_lastsale_apf_v1_7_size_of.notional_currency = 3

-- Display: Notional Currency
cboe_europe_lastsale_apf_v1_7_display.notional_currency = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
cboe_europe_lastsale_apf_v1_7_dissect.notional_currency = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.notional_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.notional_currency(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Size: Notional Amount
cboe_europe_lastsale_apf_v1_7_size_of.notional_amount = 18

-- Display: Notional Amount
cboe_europe_lastsale_apf_v1_7_display.notional_amount = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
cboe_europe_lastsale_apf_v1_7_dissect.notional_amount = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.notional_amount
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_7_display.notional_amount(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Size: Executed Shares
cboe_europe_lastsale_apf_v1_7_size_of.executed_shares = 12

-- Display: Executed Shares
cboe_europe_lastsale_apf_v1_7_display.executed_shares = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_europe_lastsale_apf_v1_7_dissect.executed_shares = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.executed_shares
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_7_display.executed_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Size: Price Currency
cboe_europe_lastsale_apf_v1_7_size_of.price_currency = 3

-- Display: Price Currency
cboe_europe_lastsale_apf_v1_7_display.price_currency = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
cboe_europe_lastsale_apf_v1_7_dissect.price_currency = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.price_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.price_currency(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Size: Price Notation
cboe_europe_lastsale_apf_v1_7_size_of.price_notation = 4

-- Display: Price Notation
cboe_europe_lastsale_apf_v1_7_display.price_notation = function(value)
  if value == "MONE" then
    return "Price Notation: Monetary Value In The Case Of Equity And Equitylike Financial Instruments (MONE)"
  end
  if value == "PERC" then
    return "Price Notation: Percentage In The Case Of Certificates And Other Equitylike Financial Instruments (PERC)"
  end
  if value == "YIEL" then
    return "Price Notation: Yield In The Case Of Certificates And Other Equitylike Financial Instruments (YIEL)"
  end
  if value == "BAPO" then
    return "Price Notation: Basis Points In The Case Of Certificates And Other Equitylike Financial Instruments (BAPO)"
  end

  return "Price Notation: Unknown("..value..")"
end

-- Dissect: Price Notation
cboe_europe_lastsale_apf_v1_7_dissect.price_notation = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.price_notation
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.price_notation(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Size: Price
cboe_europe_lastsale_apf_v1_7_size_of.price = 18

-- Display: Price
cboe_europe_lastsale_apf_v1_7_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
cboe_europe_lastsale_apf_v1_7_dissect.price = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_7_display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cboe_europe_lastsale_apf_v1_7_size_of.symbol = 12

-- Display: Symbol
cboe_europe_lastsale_apf_v1_7_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_europe_lastsale_apf_v1_7_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Trading Date Time
cboe_europe_lastsale_apf_v1_7_size_of.trading_date_time = 27

-- Display: Trading Date Time
cboe_europe_lastsale_apf_v1_7_display.trading_date_time = function(value)
  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
cboe_europe_lastsale_apf_v1_7_dissect.trading_date_time = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.trading_date_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.trading_date_time(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Last Sale Europe Message New
cboe_europe_lastsale_apf_v1_7_size_of.last_sale_europe_message_new = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.trading_date_time

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.symbol

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.price

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.price_notation

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.price_currency

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.executed_shares

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.notional_amount

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.notional_currency

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.execution_venue

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.third_country_trading_venue

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.publication_date_time

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.trade_id

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.market_mechanism

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.trading_mode

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.transaction_category

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.negotiation_flag

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.agency_cross_trade

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.modification_indicator

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.benchmark_indicator

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.special_dividend

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.off_book_automated

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.price_discovery_process

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.algorithmic_indicator

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.pre_trade_transparency_waiver

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.portfolio_flag

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.contingent_flag

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.giveup_flag

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.post_trade_deferral_reason

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.deferral_or_enrichment_type

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.deferral_illiquid_instrument

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.deferral_size_specific

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.duplicative_within_jurisdiction

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.duplicative_across_jurisdiction

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.intra_group_indicator

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.jurisdiction

  return index
end

-- Display: Last Sale Europe Message New
cboe_europe_lastsale_apf_v1_7_display.last_sale_europe_message_new = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Europe Message New
cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message_new_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = cboe_europe_lastsale_apf_v1_7_dissect.trading_date_time(buffer, index, packet, parent)

  -- Symbol: 12 Byte Ascii String
  index, symbol = cboe_europe_lastsale_apf_v1_7_dissect.symbol(buffer, index, packet, parent)

  -- Price: 18 Byte Ascii String
  index, price = cboe_europe_lastsale_apf_v1_7_dissect.price(buffer, index, packet, parent)

  -- Price Notation: 4 Byte Ascii String Enum with 4 values
  index, price_notation = cboe_europe_lastsale_apf_v1_7_dissect.price_notation(buffer, index, packet, parent)

  -- Price Currency: 3 Byte Ascii String
  index, price_currency = cboe_europe_lastsale_apf_v1_7_dissect.price_currency(buffer, index, packet, parent)

  -- Executed Shares: 12 Byte Ascii String
  index, executed_shares = cboe_europe_lastsale_apf_v1_7_dissect.executed_shares(buffer, index, packet, parent)

  -- Notional Amount: 18 Byte Ascii String
  index, notional_amount = cboe_europe_lastsale_apf_v1_7_dissect.notional_amount(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = cboe_europe_lastsale_apf_v1_7_dissect.notional_currency(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_europe_lastsale_apf_v1_7_dissect.execution_venue(buffer, index, packet, parent)

  -- Third Country Trading Venue: 4 Byte Ascii String
  index, third_country_trading_venue = cboe_europe_lastsale_apf_v1_7_dissect.third_country_trading_venue(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String
  index, publication_date_time = cboe_europe_lastsale_apf_v1_7_dissect.publication_date_time(buffer, index, packet, parent)

  -- Trade Id: 12 Byte Ascii String
  index, trade_id = cboe_europe_lastsale_apf_v1_7_dissect.trade_id(buffer, index, packet, parent)

  -- Market Mechanism: 4 Byte Ascii String Enum with 9 values
  index, market_mechanism = cboe_europe_lastsale_apf_v1_7_dissect.market_mechanism(buffer, index, packet, parent)

  -- Trading Mode: 4 Byte Ascii String Enum with 12 values
  index, trading_mode = cboe_europe_lastsale_apf_v1_7_dissect.trading_mode(buffer, index, packet, parent)

  -- Transaction Category: 4 Byte Ascii String Enum with 4 values
  index, transaction_category = cboe_europe_lastsale_apf_v1_7_dissect.transaction_category(buffer, index, packet, parent)

  -- Negotiation Flag: 4 Byte Ascii String Enum with 5 values
  index, negotiation_flag = cboe_europe_lastsale_apf_v1_7_dissect.negotiation_flag(buffer, index, packet, parent)

  -- Agency Cross Trade: 4 Byte Ascii String Enum with 1 values
  index, agency_cross_trade = cboe_europe_lastsale_apf_v1_7_dissect.agency_cross_trade(buffer, index, packet, parent)

  -- Modification Indicator: 4 Byte Ascii String Enum with 2 values
  index, modification_indicator = cboe_europe_lastsale_apf_v1_7_dissect.modification_indicator(buffer, index, packet, parent)

  -- Benchmark Indicator: 4 Byte Ascii String
  index, benchmark_indicator = cboe_europe_lastsale_apf_v1_7_dissect.benchmark_indicator(buffer, index, packet, parent)

  -- Special Dividend: 4 Byte Ascii String Enum with 1 values
  index, special_dividend = cboe_europe_lastsale_apf_v1_7_dissect.special_dividend(buffer, index, packet, parent)

  -- Off Book Automated: 4 Byte Ascii String Enum with 2 values
  index, off_book_automated = cboe_europe_lastsale_apf_v1_7_dissect.off_book_automated(buffer, index, packet, parent)

  -- Price Discovery Process: 4 Byte Ascii String Enum with 4 values
  index, price_discovery_process = cboe_europe_lastsale_apf_v1_7_dissect.price_discovery_process(buffer, index, packet, parent)

  -- Algorithmic Indicator: 4 Byte Ascii String Enum with 1 values
  index, algorithmic_indicator = cboe_europe_lastsale_apf_v1_7_dissect.algorithmic_indicator(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: 4 Byte Ascii String Enum with 2 values
  index, pre_trade_transparency_waiver = cboe_europe_lastsale_apf_v1_7_dissect.pre_trade_transparency_waiver(buffer, index, packet, parent)

  -- Portfolio Flag: 4 Byte Ascii String Enum with 2 values
  index, portfolio_flag = cboe_europe_lastsale_apf_v1_7_dissect.portfolio_flag(buffer, index, packet, parent)

  -- Contingent Flag: 4 Byte Ascii String
  index, contingent_flag = cboe_europe_lastsale_apf_v1_7_dissect.contingent_flag(buffer, index, packet, parent)

  -- Giveup Flag: 4 Byte Ascii String Enum with 1 values
  index, giveup_flag = cboe_europe_lastsale_apf_v1_7_dissect.giveup_flag(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 4 Byte Ascii String Enum with 4 values
  index, post_trade_deferral_reason = cboe_europe_lastsale_apf_v1_7_dissect.post_trade_deferral_reason(buffer, index, packet, parent)

  -- Deferral Or Enrichment Type: 4 Byte Ascii String Enum with 11 values
  index, deferral_or_enrichment_type = cboe_europe_lastsale_apf_v1_7_dissect.deferral_or_enrichment_type(buffer, index, packet, parent)

  -- Deferral Illiquid Instrument: 4 Byte Ascii String Enum with 1 values
  index, deferral_illiquid_instrument = cboe_europe_lastsale_apf_v1_7_dissect.deferral_illiquid_instrument(buffer, index, packet, parent)

  -- Deferral Size Specific: 4 Byte Ascii String Enum with 1 values
  index, deferral_size_specific = cboe_europe_lastsale_apf_v1_7_dissect.deferral_size_specific(buffer, index, packet, parent)

  -- Duplicative Within Jurisdiction: 4 Byte Ascii String Enum with 1 values
  index, duplicative_within_jurisdiction = cboe_europe_lastsale_apf_v1_7_dissect.duplicative_within_jurisdiction(buffer, index, packet, parent)

  -- Duplicative Across Jurisdiction: 4 Byte Ascii String Enum with 1 values
  index, duplicative_across_jurisdiction = cboe_europe_lastsale_apf_v1_7_dissect.duplicative_across_jurisdiction(buffer, index, packet, parent)

  -- Intra Group Indicator: 4 Byte Ascii String Enum with 1 values
  index, intra_group_indicator = cboe_europe_lastsale_apf_v1_7_dissect.intra_group_indicator(buffer, index, packet, parent)

  -- Jurisdiction: 2 Byte Ascii String Enum with 2 values
  index, jurisdiction = cboe_europe_lastsale_apf_v1_7_dissect.jurisdiction(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Europe Message New
cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message_new = function(buffer, offset, packet, parent)
  if show.last_sale_europe_message_new then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_europe_lastsale_apf_v1_7.fields.last_sale_europe_message_new, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message_new_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7_display.last_sale_europe_message_new(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message_new_fields(buffer, offset, packet, parent)
  end
end

-- Size: Duplicative Indicator
cboe_europe_lastsale_apf_v1_7_size_of.duplicative_indicator = 4

-- Display: Duplicative Indicator
cboe_europe_lastsale_apf_v1_7_display.duplicative_indicator = function(value)
  if value == "DUPL" then
    return "Duplicative Indicator: Duplicative Trade Report (DUPL)"
  end

  return "Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Duplicative Indicator
cboe_europe_lastsale_apf_v1_7_dissect.duplicative_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.duplicative_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.duplicative_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Size: Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_7_size_of.benchmark_reference_indicator = 4

-- Display: Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_7_display.benchmark_reference_indicator = function(value)
  if value == "BENC" then
    return "Benchmark Reference Indicator: Benchmark Trade (BENC)"
  end
  if value == "RFPT" then
    return "Benchmark Reference Indicator: Reference Price Trade (RFPT)"
  end

  return "Benchmark Reference Indicator: Unknown("..value..")"
end

-- Dissect: Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_7_dissect.benchmark_reference_indicator = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.benchmark_reference_indicator
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7_display.benchmark_reference_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.benchmark_reference_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_7_size_of.last_sale_europe_message = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.trading_date_time

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.symbol

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.price

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.price_currency

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.executed_shares

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.execution_venue

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.publication_date_time

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.trade_id

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.transaction_category

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.negotiation_flag

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.agency_cross_trade

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.modification_indicator

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.benchmark_reference_indicator

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.special_dividend

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.price_discovery_process

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.algorithmic_indicator

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.post_trade_deferral_reason

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.duplicative_indicator

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.jurisdiction

  return index
end

-- Display: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_7_display.last_sale_europe_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = cboe_europe_lastsale_apf_v1_7_dissect.trading_date_time(buffer, index, packet, parent)

  -- Symbol: 12 Byte Ascii String
  index, symbol = cboe_europe_lastsale_apf_v1_7_dissect.symbol(buffer, index, packet, parent)

  -- Price: 18 Byte Ascii String
  index, price = cboe_europe_lastsale_apf_v1_7_dissect.price(buffer, index, packet, parent)

  -- Price Currency: 3 Byte Ascii String
  index, price_currency = cboe_europe_lastsale_apf_v1_7_dissect.price_currency(buffer, index, packet, parent)

  -- Executed Shares: 12 Byte Ascii String
  index, executed_shares = cboe_europe_lastsale_apf_v1_7_dissect.executed_shares(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_europe_lastsale_apf_v1_7_dissect.execution_venue(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String
  index, publication_date_time = cboe_europe_lastsale_apf_v1_7_dissect.publication_date_time(buffer, index, packet, parent)

  -- Trade Id: 12 Byte Ascii String
  index, trade_id = cboe_europe_lastsale_apf_v1_7_dissect.trade_id(buffer, index, packet, parent)

  -- Transaction Category: 4 Byte Ascii String Enum with 4 values
  index, transaction_category = cboe_europe_lastsale_apf_v1_7_dissect.transaction_category(buffer, index, packet, parent)

  -- Negotiation Flag: 4 Byte Ascii String Enum with 5 values
  index, negotiation_flag = cboe_europe_lastsale_apf_v1_7_dissect.negotiation_flag(buffer, index, packet, parent)

  -- Agency Cross Trade: 4 Byte Ascii String Enum with 1 values
  index, agency_cross_trade = cboe_europe_lastsale_apf_v1_7_dissect.agency_cross_trade(buffer, index, packet, parent)

  -- Modification Indicator: 4 Byte Ascii String Enum with 2 values
  index, modification_indicator = cboe_europe_lastsale_apf_v1_7_dissect.modification_indicator(buffer, index, packet, parent)

  -- Benchmark Reference Indicator: 4 Byte Ascii String Enum with 2 values
  index, benchmark_reference_indicator = cboe_europe_lastsale_apf_v1_7_dissect.benchmark_reference_indicator(buffer, index, packet, parent)

  -- Special Dividend: 4 Byte Ascii String Enum with 1 values
  index, special_dividend = cboe_europe_lastsale_apf_v1_7_dissect.special_dividend(buffer, index, packet, parent)

  -- Price Discovery Process: 4 Byte Ascii String Enum with 4 values
  index, price_discovery_process = cboe_europe_lastsale_apf_v1_7_dissect.price_discovery_process(buffer, index, packet, parent)

  -- Algorithmic Indicator: 4 Byte Ascii String Enum with 1 values
  index, algorithmic_indicator = cboe_europe_lastsale_apf_v1_7_dissect.algorithmic_indicator(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 4 Byte Ascii String Enum with 4 values
  index, post_trade_deferral_reason = cboe_europe_lastsale_apf_v1_7_dissect.post_trade_deferral_reason(buffer, index, packet, parent)

  -- Duplicative Indicator: 4 Byte Ascii String Enum with 1 values
  index, duplicative_indicator = cboe_europe_lastsale_apf_v1_7_dissect.duplicative_indicator(buffer, index, packet, parent)

  -- Jurisdiction: 2 Byte Ascii String Enum with 2 values
  index, jurisdiction = cboe_europe_lastsale_apf_v1_7_dissect.jurisdiction(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message = function(buffer, offset, packet, parent)
  if show.last_sale_europe_message then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_europe_lastsale_apf_v1_7.fields.last_sale_europe_message, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7_display.last_sale_europe_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Sequenced Message
cboe_europe_lastsale_apf_v1_7_size_of.sequenced_message = function(buffer, offset, sequenced_message_type)
  -- Size of Last Sale Europe Message
  if sequenced_message_type == "u" then
    return cboe_europe_lastsale_apf_v1_7_size_of.last_sale_europe_message(buffer, offset)
  end
  -- Size of Last Sale Europe Message New
  if sequenced_message_type == "7" then
    return cboe_europe_lastsale_apf_v1_7_size_of.last_sale_europe_message_new(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
cboe_europe_lastsale_apf_v1_7_display.sequenced_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Last Sale Europe Message
  if sequenced_message_type == "u" then
    return cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Europe Message New
  if sequenced_message_type == "7" then
    return cboe_europe_lastsale_apf_v1_7_dissect.last_sale_europe_message_new(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_europe_lastsale_apf_v1_7_size_of.sequenced_message(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_europe_lastsale_apf_v1_7_display.sequenced_message(buffer, packet, parent)
  local element = parent:add(cboe_europe_lastsale_apf_v1_7.fields.sequenced_message, range, display)

  return cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Size: Sequenced Message Type
cboe_europe_lastsale_apf_v1_7_size_of.sequenced_message_type = 1

-- Display: Sequenced Message Type
cboe_europe_lastsale_apf_v1_7_display.sequenced_message_type = function(value)
  if value == "u" then
    return "Sequenced Message Type: Last Sale Europe Message (u)"
  end
  if value == "7" then
    return "Sequenced Message Type: Last Sale Europe Message New (7)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.sequenced_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.sequenced_message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
cboe_europe_lastsale_apf_v1_7_size_of.timestamp = 8

-- Display: Timestamp
cboe_europe_lastsale_apf_v1_7_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_europe_lastsale_apf_v1_7_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.timestamp
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_7_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sequenced Message Header
cboe_europe_lastsale_apf_v1_7_size_of.sequenced_message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.timestamp

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.sequenced_message_type

  return index
end

-- Display: Sequenced Message Header
cboe_europe_lastsale_apf_v1_7_display.sequenced_message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = cboe_europe_lastsale_apf_v1_7_dissect.timestamp(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 2 values
  index, sequenced_message_type = cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_header = function(buffer, offset, packet, parent)
  if show.sequenced_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_europe_lastsale_apf_v1_7.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7_display.sequenced_message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_header_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_7_size_of.sequenced_data_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.sequenced_message_header(buffer, offset + index)

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_europe_lastsale_apf_v1_7_size_of.sequenced_message(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_7_display.sequenced_data_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_7_dissect.sequenced_data_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message_header(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 2 branches
  index = cboe_europe_lastsale_apf_v1_7_dissect.sequenced_message(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_7_dissect.sequenced_data_packet = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_data_packet then
    local length = cboe_europe_lastsale_apf_v1_7_size_of.sequenced_data_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_7_display.sequenced_data_packet(buffer, packet, parent)
    parent = parent:add(cboe_europe_lastsale_apf_v1_7.fields.sequenced_data_packet, range, display)
  end

  return cboe_europe_lastsale_apf_v1_7_dissect.sequenced_data_packet_fields(buffer, offset, packet, parent)
end

-- Size: Reject Reason Code
cboe_europe_lastsale_apf_v1_7_size_of.reject_reason_code = 1

-- Display: Reject Reason Code
cboe_europe_lastsale_apf_v1_7_display.reject_reason_code = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_europe_lastsale_apf_v1_7_dissect.reject_reason_code = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.reject_reason_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.reject_reason_code(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Rejected Packet
cboe_europe_lastsale_apf_v1_7_size_of.login_rejected_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.reject_reason_code

  return index
end

-- Display: Login Rejected Packet
cboe_europe_lastsale_apf_v1_7_display.login_rejected_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_europe_lastsale_apf_v1_7_dissect.login_rejected_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_europe_lastsale_apf_v1_7_dissect.reject_reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_europe_lastsale_apf_v1_7_dissect.login_rejected_packet = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_europe_lastsale_apf_v1_7.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7_dissect.login_rejected_packet_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7_display.login_rejected_packet(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7_dissect.login_rejected_packet_fields(buffer, offset, packet, parent)
  end
end

-- Size: Sequence Number
cboe_europe_lastsale_apf_v1_7_size_of.sequence_number = 10

-- Display: Sequence Number
cboe_europe_lastsale_apf_v1_7_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_europe_lastsale_apf_v1_7_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
cboe_europe_lastsale_apf_v1_7_size_of.session = 10

-- Display: Session
cboe_europe_lastsale_apf_v1_7_display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_europe_lastsale_apf_v1_7_dissect.session = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.session(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Accepted Packet
cboe_europe_lastsale_apf_v1_7_size_of.login_accepted_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.session

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.sequence_number

  return index
end

-- Display: Login Accepted Packet
cboe_europe_lastsale_apf_v1_7_display.login_accepted_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_europe_lastsale_apf_v1_7_dissect.login_accepted_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_europe_lastsale_apf_v1_7_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_europe_lastsale_apf_v1_7_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_europe_lastsale_apf_v1_7_dissect.login_accepted_packet = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_europe_lastsale_apf_v1_7.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7_dissect.login_accepted_packet_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7_display.login_accepted_packet(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7_dissect.login_accepted_packet_fields(buffer, offset, packet, parent)
  end
end

-- Size: Text
cboe_europe_lastsale_apf_v1_7_size_of.text = 1

-- Display: Text
cboe_europe_lastsale_apf_v1_7_display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_europe_lastsale_apf_v1_7_dissect.text = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.text
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.text(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.text, range, value, display)

  return offset + length, value
end

-- Calculate size of: Debug Packet
cboe_europe_lastsale_apf_v1_7_size_of.debug_packet = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7_size_of.text

  return index
end

-- Display: Debug Packet
cboe_europe_lastsale_apf_v1_7_display.debug_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_europe_lastsale_apf_v1_7_dissect.debug_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_europe_lastsale_apf_v1_7_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_europe_lastsale_apf_v1_7_dissect.debug_packet = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(cboe_europe_lastsale_apf_v1_7.fields.debug_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7_dissect.debug_packet_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7_display.debug_packet(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7_dissect.debug_packet_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Payload
cboe_europe_lastsale_apf_v1_7_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return cboe_europe_lastsale_apf_v1_7_size_of.debug_packet(buffer, offset)
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return cboe_europe_lastsale_apf_v1_7_size_of.login_accepted_packet(buffer, offset)
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return cboe_europe_lastsale_apf_v1_7_size_of.login_rejected_packet(buffer, offset)
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return cboe_europe_lastsale_apf_v1_7_size_of.sequenced_data_packet(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return cboe_europe_lastsale_apf_v1_7_size_of.login_request_packet(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_europe_lastsale_apf_v1_7_size_of.unsequenced_data_packet(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_europe_lastsale_apf_v1_7_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_europe_lastsale_apf_v1_7_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_europe_lastsale_apf_v1_7_dissect.debug_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_europe_lastsale_apf_v1_7_dissect.login_accepted_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_europe_lastsale_apf_v1_7_dissect.login_rejected_packet(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_europe_lastsale_apf_v1_7_dissect.sequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_europe_lastsale_apf_v1_7_dissect.login_request_packet(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_europe_lastsale_apf_v1_7_dissect.unsequenced_data_packet(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_europe_lastsale_apf_v1_7_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return cboe_europe_lastsale_apf_v1_7_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_europe_lastsale_apf_v1_7_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_europe_lastsale_apf_v1_7_display.payload(buffer, packet, parent)
  local element = parent:add(cboe_europe_lastsale_apf_v1_7.fields.payload, range, display)

  return cboe_europe_lastsale_apf_v1_7_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Packet Type
cboe_europe_lastsale_apf_v1_7_size_of.packet_type = 1

-- Display: Packet Type
cboe_europe_lastsale_apf_v1_7_display.packet_type = function(value)
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
cboe_europe_lastsale_apf_v1_7_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(cboe_europe_lastsale_apf_v1_7.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Dissect Packet
cboe_europe_lastsale_apf_v1_7_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Packet Type: 1 Byte Ascii String Enum with 9 values
    index, packet_type = cboe_europe_lastsale_apf_v1_7_dissect.packet_type(buffer, index, packet, parent)

    -- Payload: Runtime Type with 6 branches
    index = cboe_europe_lastsale_apf_v1_7_dissect.payload(buffer, index, packet, parent, packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = cboe_europe_lastsale_apf_v1_7_dissect.soup_lf(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_europe_lastsale_apf_v1_7.init()
end

-- Dissector for Cboe Europe LastSale Apf 1.7
function cboe_europe_lastsale_apf_v1_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_europe_lastsale_apf_v1_7.name

  -- Dissect protocol
  local protocol = parent:add(cboe_europe_lastsale_apf_v1_7, buffer(), cboe_europe_lastsale_apf_v1_7.description, "("..buffer:len().." Bytes)")
  return cboe_europe_lastsale_apf_v1_7_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, cboe_europe_lastsale_apf_v1_7)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_europe_lastsale_apf_v1_7_packet_size = function(buffer)

  return true
end

-- Verify Soup Lf Field
verify.soup_lf = function(buffer)
  -- Attempt to read field
  local value = buffer(459, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe Europe LastSale Apf 1.7
local function cboe_europe_lastsale_apf_v1_7_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_europe_lastsale_apf_v1_7_packet_size(buffer) then return false end

  -- Verify Soup Lf
  if not verify.soup_lf(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_europe_lastsale_apf_v1_7
  cboe_europe_lastsale_apf_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Europe LastSale Apf 1.7
cboe_europe_lastsale_apf_v1_7:register_heuristic("tcp", cboe_europe_lastsale_apf_v1_7_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.7
--   Date: Monday, October 2, 2023
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
