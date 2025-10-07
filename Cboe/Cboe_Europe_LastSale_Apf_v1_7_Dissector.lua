-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Europe LastSale Apf 1.7 Protocol
local omi_cboe_europe_lastsale_apf_v1_7 = Proto("Cboe.Europe.LastSale.Apf.v1.7.Lua", "Cboe Europe LastSale Apf 1.7")

-- Protocol table
local cboe_europe_lastsale_apf_v1_7 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Europe LastSale Apf 1.7 Fields
omi_cboe_europe_lastsale_apf_v1_7.fields.agency_cross_trade = ProtoField.new("Agency Cross Trade", "cboe.europe.lastsale.apf.v1.7.agencycrosstrade", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.algorithmic_indicator = ProtoField.new("Algorithmic Indicator", "cboe.europe.lastsale.apf.v1.7.algorithmicindicator", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.benchmark_indicator = ProtoField.new("Benchmark Indicator", "cboe.europe.lastsale.apf.v1.7.benchmarkindicator", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.benchmark_reference_indicator = ProtoField.new("Benchmark Reference Indicator", "cboe.europe.lastsale.apf.v1.7.benchmarkreferenceindicator", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.contingent_flag = ProtoField.new("Contingent Flag", "cboe.europe.lastsale.apf.v1.7.contingentflag", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.debug_packet = ProtoField.new("Debug Packet", "cboe.europe.lastsale.apf.v1.7.debugpacket", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.deferral_illiquid_instrument = ProtoField.new("Deferral Illiquid Instrument", "cboe.europe.lastsale.apf.v1.7.deferralilliquidinstrument", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.deferral_or_enrichment_type = ProtoField.new("Deferral Or Enrichment Type", "cboe.europe.lastsale.apf.v1.7.deferralorenrichmenttype", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.deferral_size_specific = ProtoField.new("Deferral Size Specific", "cboe.europe.lastsale.apf.v1.7.deferralsizespecific", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.duplicative_across_jurisdiction = ProtoField.new("Duplicative Across Jurisdiction", "cboe.europe.lastsale.apf.v1.7.duplicativeacrossjurisdiction", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.duplicative_indicator = ProtoField.new("Duplicative Indicator", "cboe.europe.lastsale.apf.v1.7.duplicativeindicator", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.duplicative_within_jurisdiction = ProtoField.new("Duplicative Within Jurisdiction", "cboe.europe.lastsale.apf.v1.7.duplicativewithinjurisdiction", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.executed_shares = ProtoField.new("Executed Shares", "cboe.europe.lastsale.apf.v1.7.executedshares", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.execution_venue = ProtoField.new("Execution Venue", "cboe.europe.lastsale.apf.v1.7.executionvenue", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.giveup_flag = ProtoField.new("Giveup Flag", "cboe.europe.lastsale.apf.v1.7.giveupflag", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.intra_group_indicator = ProtoField.new("Intra Group Indicator", "cboe.europe.lastsale.apf.v1.7.intragroupindicator", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.jurisdiction = ProtoField.new("Jurisdiction", "cboe.europe.lastsale.apf.v1.7.jurisdiction", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.login_accepted_packet = ProtoField.new("Login Accepted Packet", "cboe.europe.lastsale.apf.v1.7.loginacceptedpacket", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.login_rejected_packet = ProtoField.new("Login Rejected Packet", "cboe.europe.lastsale.apf.v1.7.loginrejectedpacket", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.login_request_packet = ProtoField.new("Login Request Packet", "cboe.europe.lastsale.apf.v1.7.loginrequestpacket", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.market_mechanism = ProtoField.new("Market Mechanism", "cboe.europe.lastsale.apf.v1.7.marketmechanism", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.modification_indicator = ProtoField.new("Modification Indicator", "cboe.europe.lastsale.apf.v1.7.modificationindicator", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.negotiation_flag = ProtoField.new("Negotiation Flag", "cboe.europe.lastsale.apf.v1.7.negotiationflag", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.notional_amount = ProtoField.new("Notional Amount", "cboe.europe.lastsale.apf.v1.7.notionalamount", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.notional_currency = ProtoField.new("Notional Currency", "cboe.europe.lastsale.apf.v1.7.notionalcurrency", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.off_book_automated = ProtoField.new("Off Book Automated", "cboe.europe.lastsale.apf.v1.7.offbookautomated", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.packet = ProtoField.new("Packet", "cboe.europe.lastsale.apf.v1.7.packet", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.packet_type = ProtoField.new("Packet Type", "cboe.europe.lastsale.apf.v1.7.packettype", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.password = ProtoField.new("Password", "cboe.europe.lastsale.apf.v1.7.password", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.payload = ProtoField.new("Payload", "cboe.europe.lastsale.apf.v1.7.payload", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.portfolio_flag = ProtoField.new("Portfolio Flag", "cboe.europe.lastsale.apf.v1.7.portfolioflag", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.post_trade_deferral_reason = ProtoField.new("Post Trade Deferral Reason", "cboe.europe.lastsale.apf.v1.7.posttradedeferralreason", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.pre_trade_transparency_waiver = ProtoField.new("Pre Trade Transparency Waiver", "cboe.europe.lastsale.apf.v1.7.pretradetransparencywaiver", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.price = ProtoField.new("Price", "cboe.europe.lastsale.apf.v1.7.price", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.price_currency = ProtoField.new("Price Currency", "cboe.europe.lastsale.apf.v1.7.pricecurrency", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.price_discovery_process = ProtoField.new("Price Discovery Process", "cboe.europe.lastsale.apf.v1.7.pricediscoveryprocess", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.price_notation = ProtoField.new("Price Notation", "cboe.europe.lastsale.apf.v1.7.pricenotation", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.publication_date_time = ProtoField.new("Publication Date Time", "cboe.europe.lastsale.apf.v1.7.publicationdatetime", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "cboe.europe.lastsale.apf.v1.7.rejectreasoncode", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "cboe.europe.lastsale.apf.v1.7.requestedsequencenumber", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.requested_session = ProtoField.new("Requested Session", "cboe.europe.lastsale.apf.v1.7.requestedsession", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.europe.lastsale.apf.v1.7.sequencenumber", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "cboe.europe.lastsale.apf.v1.7.sequenceddatapacket", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.sequenced_message = ProtoField.new("Sequenced Message", "cboe.europe.lastsale.apf.v1.7.sequencedmessage", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.sequenced_message_header = ProtoField.new("Sequenced Message Header", "cboe.europe.lastsale.apf.v1.7.sequencedmessageheader", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "cboe.europe.lastsale.apf.v1.7.sequencedmessagetype", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.session = ProtoField.new("Session", "cboe.europe.lastsale.apf.v1.7.session", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.soup_lf = ProtoField.new("Soup Lf", "cboe.europe.lastsale.apf.v1.7.souplf", ftypes.INT8)
omi_cboe_europe_lastsale_apf_v1_7.fields.special_dividend = ProtoField.new("Special Dividend", "cboe.europe.lastsale.apf.v1.7.specialdividend", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.symbol = ProtoField.new("Symbol", "cboe.europe.lastsale.apf.v1.7.symbol", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.text = ProtoField.new("Text", "cboe.europe.lastsale.apf.v1.7.text", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.third_country_trading_venue = ProtoField.new("Third Country Trading Venue", "cboe.europe.lastsale.apf.v1.7.thirdcountrytradingvenue", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.timestamp = ProtoField.new("Timestamp", "cboe.europe.lastsale.apf.v1.7.timestamp", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.trade_id = ProtoField.new("Trade Id", "cboe.europe.lastsale.apf.v1.7.tradeid", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.trading_date_time = ProtoField.new("Trading Date Time", "cboe.europe.lastsale.apf.v1.7.tradingdatetime", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.trading_mode = ProtoField.new("Trading Mode", "cboe.europe.lastsale.apf.v1.7.tradingmode", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.transaction_category = ProtoField.new("Transaction Category", "cboe.europe.lastsale.apf.v1.7.transactioncategory", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "cboe.europe.lastsale.apf.v1.7.unsequenceddatapacket", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.username = ProtoField.new("Username", "cboe.europe.lastsale.apf.v1.7.username", ftypes.STRING)

-- Cboe Europe LastSale Apf 1.7 messages
omi_cboe_europe_lastsale_apf_v1_7.fields.last_sale_europe_message = ProtoField.new("Last Sale Europe Message", "cboe.europe.lastsale.apf.v1.7.lastsaleeuropemessage", ftypes.STRING)
omi_cboe_europe_lastsale_apf_v1_7.fields.last_sale_europe_message_new = ProtoField.new("Last Sale Europe Message New", "cboe.europe.lastsale.apf.v1.7.lastsaleeuropemessagenew", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_debug_packet = Pref.bool("Show Debug Packet", show.debug_packet, "Parse and add Debug Packet to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message = Pref.bool("Show Last Sale Europe Message", show.last_sale_europe_message, "Parse and add Last Sale Europe Message to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message_new = Pref.bool("Show Last Sale Europe Message New", show.last_sale_europe_message_new, "Parse and add Last Sale Europe Message New to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_login_accepted_packet = Pref.bool("Show Login Accepted Packet", show.login_accepted_packet, "Parse and add Login Accepted Packet to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_login_rejected_packet = Pref.bool("Show Login Rejected Packet", show.login_rejected_packet, "Parse and add Login Rejected Packet to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_login_request_packet = Pref.bool("Show Login Request Packet", show.login_request_packet, "Parse and add Login Request Packet to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message_header = Pref.bool("Show Sequenced Message Header", show.sequenced_message_header, "Parse and add Sequenced Message Header to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")

-- Handle changed preferences
function omi_cboe_europe_lastsale_apf_v1_7.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.debug_packet ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_debug_packet then
    show.debug_packet = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_debug_packet
    changed = true
  end
  if show.last_sale_europe_message ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message then
    show.last_sale_europe_message = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message
    changed = true
  end
  if show.last_sale_europe_message_new ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message_new then
    show.last_sale_europe_message_new = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_last_sale_europe_message_new
    changed = true
  end
  if show.login_accepted_packet ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_login_accepted_packet then
    show.login_accepted_packet = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_login_accepted_packet
    changed = true
  end
  if show.login_rejected_packet ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_login_rejected_packet then
    show.login_rejected_packet = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_login_rejected_packet
    changed = true
  end
  if show.login_request_packet ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_login_request_packet then
    show.login_request_packet = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_login_request_packet
    changed = true
  end
  if show.packet ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_packet then
    show.packet = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_packet
    changed = true
  end
  if show.sequenced_data_packet ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.sequenced_message_header ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message_header then
    show.sequenced_message_header = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message_header
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_payload then
    show.payload = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= omi_cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message then
    show.sequenced_message = omi_cboe_europe_lastsale_apf_v1_7.prefs.show_sequenced_message
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

-- Soup Lf
cboe_europe_lastsale_apf_v1_7.soup_lf = {}

-- Size: Soup Lf
cboe_europe_lastsale_apf_v1_7.soup_lf.size = 1

-- Display: Soup Lf
cboe_europe_lastsale_apf_v1_7.soup_lf.display = function(value)
  return "Soup Lf: "..value
end

-- Dissect: Soup Lf
cboe_europe_lastsale_apf_v1_7.soup_lf.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.soup_lf.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = cboe_europe_lastsale_apf_v1_7.soup_lf.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.soup_lf, range, value, display)

  return offset + length, value
end

-- Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet = {}

-- Size: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet.size =
  cboe_europe_lastsale_apf_v1_7.unsequenced_message.size

-- Display: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unsequenced Message
  index, unsequenced_message = cboe_europe_lastsale_apf_v1_7.unsequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsequenced Data Packet
cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  if show.unsequenced_data_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.unsequenced_data_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet.fields(buffer, offset, packet, parent)
  end
end

-- Requested Sequence Number
cboe_europe_lastsale_apf_v1_7.requested_sequence_number = {}

-- Size: Requested Sequence Number
cboe_europe_lastsale_apf_v1_7.requested_sequence_number.size = 10

-- Display: Requested Sequence Number
cboe_europe_lastsale_apf_v1_7.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
cboe_europe_lastsale_apf_v1_7.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
cboe_europe_lastsale_apf_v1_7.requested_session = {}

-- Size: Requested Session
cboe_europe_lastsale_apf_v1_7.requested_session.size = 10

-- Display: Requested Session
cboe_europe_lastsale_apf_v1_7.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
cboe_europe_lastsale_apf_v1_7.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.requested_session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Password
cboe_europe_lastsale_apf_v1_7.password = {}

-- Size: Password
cboe_europe_lastsale_apf_v1_7.password.size = 10

-- Display: Password
cboe_europe_lastsale_apf_v1_7.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_europe_lastsale_apf_v1_7.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.password, range, value, display)

  return offset + length, value
end

-- Username
cboe_europe_lastsale_apf_v1_7.username = {}

-- Size: Username
cboe_europe_lastsale_apf_v1_7.username.size = 6

-- Display: Username
cboe_europe_lastsale_apf_v1_7.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_europe_lastsale_apf_v1_7.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.username, range, value, display)

  return offset + length, value
end

-- Login Request Packet
cboe_europe_lastsale_apf_v1_7.login_request_packet = {}

-- Size: Login Request Packet
cboe_europe_lastsale_apf_v1_7.login_request_packet.size =
  cboe_europe_lastsale_apf_v1_7.username.size + 
  cboe_europe_lastsale_apf_v1_7.password.size + 
  cboe_europe_lastsale_apf_v1_7.requested_session.size + 
  cboe_europe_lastsale_apf_v1_7.requested_sequence_number.size

-- Display: Login Request Packet
cboe_europe_lastsale_apf_v1_7.login_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Packet
cboe_europe_lastsale_apf_v1_7.login_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Username: 6 Byte Ascii String
  index, username = cboe_europe_lastsale_apf_v1_7.username.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_europe_lastsale_apf_v1_7.password.dissect(buffer, index, packet, parent)

  -- Requested Session: 10 Byte Ascii String
  index, requested_session = cboe_europe_lastsale_apf_v1_7.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 10 Byte Ascii String
  index, requested_sequence_number = cboe_europe_lastsale_apf_v1_7.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request Packet
cboe_europe_lastsale_apf_v1_7.login_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.login_request_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7.login_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7.login_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7.login_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Jurisdiction
cboe_europe_lastsale_apf_v1_7.jurisdiction = {}

-- Size: Jurisdiction
cboe_europe_lastsale_apf_v1_7.jurisdiction.size = 2

-- Display: Jurisdiction
cboe_europe_lastsale_apf_v1_7.jurisdiction.display = function(value)
  if value == "EU" then
    return "Jurisdiction: Trade Executed On An Eu Regulated Venue Or Apa (EU)"
  end
  if value == "UK" then
    return "Jurisdiction: Trade Executed On A Non Eu Regulated Venue Or Apa (UK)"
  end

  return "Jurisdiction: Unknown("..value..")"
end

-- Dissect: Jurisdiction
cboe_europe_lastsale_apf_v1_7.jurisdiction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.jurisdiction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.jurisdiction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.jurisdiction, range, value, display)

  return offset + length, value
end

-- Intra Group Indicator
cboe_europe_lastsale_apf_v1_7.intra_group_indicator = {}

-- Size: Intra Group Indicator
cboe_europe_lastsale_apf_v1_7.intra_group_indicator.size = 4

-- Display: Intra Group Indicator
cboe_europe_lastsale_apf_v1_7.intra_group_indicator.display = function(value)
  if value == "IGRP" then
    return "Intra Group Indicator: Intra Group Trade (IGRP)"
  end

  return "Intra Group Indicator: Unknown("..value..")"
end

-- Dissect: Intra Group Indicator
cboe_europe_lastsale_apf_v1_7.intra_group_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.intra_group_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.intra_group_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.intra_group_indicator, range, value, display)

  return offset + length, value
end

-- Duplicative Across Jurisdiction
cboe_europe_lastsale_apf_v1_7.duplicative_across_jurisdiction = {}

-- Size: Duplicative Across Jurisdiction
cboe_europe_lastsale_apf_v1_7.duplicative_across_jurisdiction.size = 4

-- Display: Duplicative Across Jurisdiction
cboe_europe_lastsale_apf_v1_7.duplicative_across_jurisdiction.display = function(value)
  if value == "XBDT" then
    return "Duplicative Across Jurisdiction: Cross Border Duplicative Trade Report (XBDT)"
  end

  return "Duplicative Across Jurisdiction: Unknown("..value..")"
end

-- Dissect: Duplicative Across Jurisdiction
cboe_europe_lastsale_apf_v1_7.duplicative_across_jurisdiction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.duplicative_across_jurisdiction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.duplicative_across_jurisdiction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.duplicative_across_jurisdiction, range, value, display)

  return offset + length, value
end

-- Duplicative Within Jurisdiction
cboe_europe_lastsale_apf_v1_7.duplicative_within_jurisdiction = {}

-- Size: Duplicative Within Jurisdiction
cboe_europe_lastsale_apf_v1_7.duplicative_within_jurisdiction.size = 4

-- Display: Duplicative Within Jurisdiction
cboe_europe_lastsale_apf_v1_7.duplicative_within_jurisdiction.display = function(value)
  if value == "DUPL" then
    return "Duplicative Within Jurisdiction: Duplicative Trade Report (DUPL)"
  end

  return "Duplicative Within Jurisdiction: Unknown("..value..")"
end

-- Dissect: Duplicative Within Jurisdiction
cboe_europe_lastsale_apf_v1_7.duplicative_within_jurisdiction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.duplicative_within_jurisdiction.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.duplicative_within_jurisdiction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.duplicative_within_jurisdiction, range, value, display)

  return offset + length, value
end

-- Deferral Size Specific
cboe_europe_lastsale_apf_v1_7.deferral_size_specific = {}

-- Size: Deferral Size Specific
cboe_europe_lastsale_apf_v1_7.deferral_size_specific.size = 4

-- Display: Deferral Size Specific
cboe_europe_lastsale_apf_v1_7.deferral_size_specific.display = function(value)
  if value == "SIZE" then
    return "Deferral Size Specific: Deferral For Size Specific (SIZE)"
  end

  return "Deferral Size Specific: Unknown("..value..")"
end

-- Dissect: Deferral Size Specific
cboe_europe_lastsale_apf_v1_7.deferral_size_specific.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.deferral_size_specific.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.deferral_size_specific.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.deferral_size_specific, range, value, display)

  return offset + length, value
end

-- Deferral Illiquid Instrument
cboe_europe_lastsale_apf_v1_7.deferral_illiquid_instrument = {}

-- Size: Deferral Illiquid Instrument
cboe_europe_lastsale_apf_v1_7.deferral_illiquid_instrument.size = 4

-- Display: Deferral Illiquid Instrument
cboe_europe_lastsale_apf_v1_7.deferral_illiquid_instrument.display = function(value)
  if value == "ILQD" then
    return "Deferral Illiquid Instrument: Non Immediate Publication Deferral For Illiquid Instrument (ILQD)"
  end

  return "Deferral Illiquid Instrument: Unknown("..value..")"
end

-- Dissect: Deferral Illiquid Instrument
cboe_europe_lastsale_apf_v1_7.deferral_illiquid_instrument.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.deferral_illiquid_instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.deferral_illiquid_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.deferral_illiquid_instrument, range, value, display)

  return offset + length, value
end

-- Deferral Or Enrichment Type
cboe_europe_lastsale_apf_v1_7.deferral_or_enrichment_type = {}

-- Size: Deferral Or Enrichment Type
cboe_europe_lastsale_apf_v1_7.deferral_or_enrichment_type.size = 4

-- Display: Deferral Or Enrichment Type
cboe_europe_lastsale_apf_v1_7.deferral_or_enrichment_type.display = function(value)
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
cboe_europe_lastsale_apf_v1_7.deferral_or_enrichment_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.deferral_or_enrichment_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.deferral_or_enrichment_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.deferral_or_enrichment_type, range, value, display)

  return offset + length, value
end

-- Post Trade Deferral Reason
cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason = {}

-- Size: Post Trade Deferral Reason
cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason.size = 4

-- Display: Post Trade Deferral Reason
cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason.display = function(value)
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
cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.post_trade_deferral_reason, range, value, display)

  return offset + length, value
end

-- Giveup Flag
cboe_europe_lastsale_apf_v1_7.giveup_flag = {}

-- Size: Giveup Flag
cboe_europe_lastsale_apf_v1_7.giveup_flag.size = 4

-- Display: Giveup Flag
cboe_europe_lastsale_apf_v1_7.giveup_flag.display = function(value)
  if value == "GIVE" then
    return "Giveup Flag: Rfmd Give Up Trade (GIVE)"
  end

  return "Giveup Flag: Unknown("..value..")"
end

-- Dissect: Giveup Flag
cboe_europe_lastsale_apf_v1_7.giveup_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.giveup_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.giveup_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.giveup_flag, range, value, display)

  return offset + length, value
end

-- Contingent Flag
cboe_europe_lastsale_apf_v1_7.contingent_flag = {}

-- Size: Contingent Flag
cboe_europe_lastsale_apf_v1_7.contingent_flag.size = 4

-- Display: Contingent Flag
cboe_europe_lastsale_apf_v1_7.contingent_flag.display = function(value)
  return "Contingent Flag: "..value
end

-- Dissect: Contingent Flag
cboe_europe_lastsale_apf_v1_7.contingent_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.contingent_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.contingent_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.contingent_flag, range, value, display)

  return offset + length, value
end

-- Portfolio Flag
cboe_europe_lastsale_apf_v1_7.portfolio_flag = {}

-- Size: Portfolio Flag
cboe_europe_lastsale_apf_v1_7.portfolio_flag.size = 4

-- Display: Portfolio Flag
cboe_europe_lastsale_apf_v1_7.portfolio_flag.display = function(value)
  if value == "PORT" then
    return "Portfolio Flag: Portfolio Trade (PORT)"
  end
  if value == "CONT" then
    return "Portfolio Flag: Contingent Trade (CONT)"
  end

  return "Portfolio Flag: Unknown("..value..")"
end

-- Dissect: Portfolio Flag
cboe_europe_lastsale_apf_v1_7.portfolio_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.portfolio_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.portfolio_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.portfolio_flag, range, value, display)

  return offset + length, value
end

-- Pre Trade Transparency Waiver
cboe_europe_lastsale_apf_v1_7.pre_trade_transparency_waiver = {}

-- Size: Pre Trade Transparency Waiver
cboe_europe_lastsale_apf_v1_7.pre_trade_transparency_waiver.size = 4

-- Display: Pre Trade Transparency Waiver
cboe_europe_lastsale_apf_v1_7.pre_trade_transparency_waiver.display = function(value)
  if value == "SIZE" then
    return "Pre Trade Transparency Waiver: Pre Trade Transparency Waiver For Above Standard Market Size On An Si (SIZE)"
  end
  if value == "NTLS" then
    return "Pre Trade Transparency Waiver: Negotiated Trade Larger Than Lis Brought Onto A Venue (NTLS)"
  end

  return "Pre Trade Transparency Waiver: Unknown("..value..")"
end

-- Dissect: Pre Trade Transparency Waiver
cboe_europe_lastsale_apf_v1_7.pre_trade_transparency_waiver.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.pre_trade_transparency_waiver.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.pre_trade_transparency_waiver.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.pre_trade_transparency_waiver, range, value, display)

  return offset + length, value
end

-- Algorithmic Indicator
cboe_europe_lastsale_apf_v1_7.algorithmic_indicator = {}

-- Size: Algorithmic Indicator
cboe_europe_lastsale_apf_v1_7.algorithmic_indicator.size = 4

-- Display: Algorithmic Indicator
cboe_europe_lastsale_apf_v1_7.algorithmic_indicator.display = function(value)
  if value == "ALGO" then
    return "Algorithmic Indicator: Algorithmic Trade (ALGO)"
  end

  return "Algorithmic Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Indicator
cboe_europe_lastsale_apf_v1_7.algorithmic_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.algorithmic_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.algorithmic_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.algorithmic_indicator, range, value, display)

  return offset + length, value
end

-- Price Discovery Process
cboe_europe_lastsale_apf_v1_7.price_discovery_process = {}

-- Size: Price Discovery Process
cboe_europe_lastsale_apf_v1_7.price_discovery_process.size = 4

-- Display: Price Discovery Process
cboe_europe_lastsale_apf_v1_7.price_discovery_process.display = function(value)
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
cboe_europe_lastsale_apf_v1_7.price_discovery_process.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.price_discovery_process.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.price_discovery_process.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.price_discovery_process, range, value, display)

  return offset + length, value
end

-- Off Book Automated
cboe_europe_lastsale_apf_v1_7.off_book_automated = {}

-- Size: Off Book Automated
cboe_europe_lastsale_apf_v1_7.off_book_automated.size = 4

-- Display: Off Book Automated
cboe_europe_lastsale_apf_v1_7.off_book_automated.display = function(value)
  if value == "M" then
    return "Off Book Automated: Off Book Non Automated (M)"
  end
  if value == "Q" then
    return "Off Book Automated: Off Book Automated (Q)"
  end

  return "Off Book Automated: Unknown("..value..")"
end

-- Dissect: Off Book Automated
cboe_europe_lastsale_apf_v1_7.off_book_automated.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.off_book_automated.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.off_book_automated.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.off_book_automated, range, value, display)

  return offset + length, value
end

-- Special Dividend
cboe_europe_lastsale_apf_v1_7.special_dividend = {}

-- Size: Special Dividend
cboe_europe_lastsale_apf_v1_7.special_dividend.size = 4

-- Display: Special Dividend
cboe_europe_lastsale_apf_v1_7.special_dividend.display = function(value)
  if value == "SDIV" then
    return "Special Dividend: Special Dividend Trade (SDIV)"
  end

  return "Special Dividend: Unknown("..value..")"
end

-- Dissect: Special Dividend
cboe_europe_lastsale_apf_v1_7.special_dividend.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.special_dividend.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.special_dividend.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.special_dividend, range, value, display)

  return offset + length, value
end

-- Benchmark Indicator
cboe_europe_lastsale_apf_v1_7.benchmark_indicator = {}

-- Size: Benchmark Indicator
cboe_europe_lastsale_apf_v1_7.benchmark_indicator.size = 4

-- Display: Benchmark Indicator
cboe_europe_lastsale_apf_v1_7.benchmark_indicator.display = function(value)
  return "Benchmark Indicator: "..value
end

-- Dissect: Benchmark Indicator
cboe_europe_lastsale_apf_v1_7.benchmark_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.benchmark_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.benchmark_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.benchmark_indicator, range, value, display)

  return offset + length, value
end

-- Modification Indicator
cboe_europe_lastsale_apf_v1_7.modification_indicator = {}

-- Size: Modification Indicator
cboe_europe_lastsale_apf_v1_7.modification_indicator.size = 4

-- Display: Modification Indicator
cboe_europe_lastsale_apf_v1_7.modification_indicator.display = function(value)
  if value == "CANC" then
    return "Modification Indicator: Trade Cancellation (CANC)"
  end
  if value == "AMND" then
    return "Modification Indicator: Trade Amendment (AMND)"
  end

  return "Modification Indicator: Unknown("..value..")"
end

-- Dissect: Modification Indicator
cboe_europe_lastsale_apf_v1_7.modification_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.modification_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.modification_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.modification_indicator, range, value, display)

  return offset + length, value
end

-- Agency Cross Trade
cboe_europe_lastsale_apf_v1_7.agency_cross_trade = {}

-- Size: Agency Cross Trade
cboe_europe_lastsale_apf_v1_7.agency_cross_trade.size = 4

-- Display: Agency Cross Trade
cboe_europe_lastsale_apf_v1_7.agency_cross_trade.display = function(value)
  if value == "ACTX" then
    return "Agency Cross Trade: Agency Cross Trade (ACTX)"
  end

  return "Agency Cross Trade: Unknown("..value..")"
end

-- Dissect: Agency Cross Trade
cboe_europe_lastsale_apf_v1_7.agency_cross_trade.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.agency_cross_trade.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.agency_cross_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.agency_cross_trade, range, value, display)

  return offset + length, value
end

-- Negotiation Flag
cboe_europe_lastsale_apf_v1_7.negotiation_flag = {}

-- Size: Negotiation Flag
cboe_europe_lastsale_apf_v1_7.negotiation_flag.size = 4

-- Display: Negotiation Flag
cboe_europe_lastsale_apf_v1_7.negotiation_flag.display = function(value)
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
cboe_europe_lastsale_apf_v1_7.negotiation_flag.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.negotiation_flag.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.negotiation_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.negotiation_flag, range, value, display)

  return offset + length, value
end

-- Transaction Category
cboe_europe_lastsale_apf_v1_7.transaction_category = {}

-- Size: Transaction Category
cboe_europe_lastsale_apf_v1_7.transaction_category.size = 4

-- Display: Transaction Category
cboe_europe_lastsale_apf_v1_7.transaction_category.display = function(value)
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
cboe_europe_lastsale_apf_v1_7.transaction_category.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.transaction_category.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.transaction_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.transaction_category, range, value, display)

  return offset + length, value
end

-- Trading Mode
cboe_europe_lastsale_apf_v1_7.trading_mode = {}

-- Size: Trading Mode
cboe_europe_lastsale_apf_v1_7.trading_mode.size = 4

-- Display: Trading Mode
cboe_europe_lastsale_apf_v1_7.trading_mode.display = function(value)
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
cboe_europe_lastsale_apf_v1_7.trading_mode.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.trading_mode.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.trading_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.trading_mode, range, value, display)

  return offset + length, value
end

-- Market Mechanism
cboe_europe_lastsale_apf_v1_7.market_mechanism = {}

-- Size: Market Mechanism
cboe_europe_lastsale_apf_v1_7.market_mechanism.size = 4

-- Display: Market Mechanism
cboe_europe_lastsale_apf_v1_7.market_mechanism.display = function(value)
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
cboe_europe_lastsale_apf_v1_7.market_mechanism.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.market_mechanism.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.market_mechanism.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.market_mechanism, range, value, display)

  return offset + length, value
end

-- Trade Id
cboe_europe_lastsale_apf_v1_7.trade_id = {}

-- Size: Trade Id
cboe_europe_lastsale_apf_v1_7.trade_id.size = 12

-- Display: Trade Id
cboe_europe_lastsale_apf_v1_7.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
cboe_europe_lastsale_apf_v1_7.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.trade_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Publication Date Time
cboe_europe_lastsale_apf_v1_7.publication_date_time = {}

-- Size: Publication Date Time
cboe_europe_lastsale_apf_v1_7.publication_date_time.size = 27

-- Display: Publication Date Time
cboe_europe_lastsale_apf_v1_7.publication_date_time.display = function(value)
  return "Publication Date Time: "..value
end

-- Dissect: Publication Date Time
cboe_europe_lastsale_apf_v1_7.publication_date_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.publication_date_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.publication_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.publication_date_time, range, value, display)

  return offset + length, value
end

-- Third Country Trading Venue
cboe_europe_lastsale_apf_v1_7.third_country_trading_venue = {}

-- Size: Third Country Trading Venue
cboe_europe_lastsale_apf_v1_7.third_country_trading_venue.size = 4

-- Display: Third Country Trading Venue
cboe_europe_lastsale_apf_v1_7.third_country_trading_venue.display = function(value)
  return "Third Country Trading Venue: "..value
end

-- Dissect: Third Country Trading Venue
cboe_europe_lastsale_apf_v1_7.third_country_trading_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.third_country_trading_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.third_country_trading_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.third_country_trading_venue, range, value, display)

  return offset + length, value
end

-- Execution Venue
cboe_europe_lastsale_apf_v1_7.execution_venue = {}

-- Size: Execution Venue
cboe_europe_lastsale_apf_v1_7.execution_venue.size = 4

-- Display: Execution Venue
cboe_europe_lastsale_apf_v1_7.execution_venue.display = function(value)
  return "Execution Venue: "..value
end

-- Dissect: Execution Venue
cboe_europe_lastsale_apf_v1_7.execution_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.execution_venue.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.execution_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.execution_venue, range, value, display)

  return offset + length, value
end

-- Notional Currency
cboe_europe_lastsale_apf_v1_7.notional_currency = {}

-- Size: Notional Currency
cboe_europe_lastsale_apf_v1_7.notional_currency.size = 3

-- Display: Notional Currency
cboe_europe_lastsale_apf_v1_7.notional_currency.display = function(value)
  return "Notional Currency: "..value
end

-- Dissect: Notional Currency
cboe_europe_lastsale_apf_v1_7.notional_currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.notional_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.notional_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.notional_currency, range, value, display)

  return offset + length, value
end

-- Notional Amount
cboe_europe_lastsale_apf_v1_7.notional_amount = {}

-- Size: Notional Amount
cboe_europe_lastsale_apf_v1_7.notional_amount.size = 18

-- Display: Notional Amount
cboe_europe_lastsale_apf_v1_7.notional_amount.display = function(value)
  return "Notional Amount: "..value
end

-- Dissect: Notional Amount
cboe_europe_lastsale_apf_v1_7.notional_amount.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.notional_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_7.notional_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.notional_amount, range, value, display)

  return offset + length, value
end

-- Executed Shares
cboe_europe_lastsale_apf_v1_7.executed_shares = {}

-- Size: Executed Shares
cboe_europe_lastsale_apf_v1_7.executed_shares.size = 12

-- Display: Executed Shares
cboe_europe_lastsale_apf_v1_7.executed_shares.display = function(value)
  return "Executed Shares: "..value
end

-- Dissect: Executed Shares
cboe_europe_lastsale_apf_v1_7.executed_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.executed_shares.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_7.executed_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.executed_shares, range, value, display)

  return offset + length, value
end

-- Price Currency
cboe_europe_lastsale_apf_v1_7.price_currency = {}

-- Size: Price Currency
cboe_europe_lastsale_apf_v1_7.price_currency.size = 3

-- Display: Price Currency
cboe_europe_lastsale_apf_v1_7.price_currency.display = function(value)
  return "Price Currency: "..value
end

-- Dissect: Price Currency
cboe_europe_lastsale_apf_v1_7.price_currency.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.price_currency, range, value, display)

  return offset + length, value
end

-- Price Notation
cboe_europe_lastsale_apf_v1_7.price_notation = {}

-- Size: Price Notation
cboe_europe_lastsale_apf_v1_7.price_notation.size = 4

-- Display: Price Notation
cboe_europe_lastsale_apf_v1_7.price_notation.display = function(value)
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
cboe_europe_lastsale_apf_v1_7.price_notation.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.price_notation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.price_notation, range, value, display)

  return offset + length, value
end

-- Price
cboe_europe_lastsale_apf_v1_7.price = {}

-- Size: Price
cboe_europe_lastsale_apf_v1_7.price.size = 18

-- Display: Price
cboe_europe_lastsale_apf_v1_7.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
cboe_europe_lastsale_apf_v1_7.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_7.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.price, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_europe_lastsale_apf_v1_7.symbol = {}

-- Size: Symbol
cboe_europe_lastsale_apf_v1_7.symbol.size = 12

-- Display: Symbol
cboe_europe_lastsale_apf_v1_7.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_europe_lastsale_apf_v1_7.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.symbol, range, value, display)

  return offset + length, value
end

-- Trading Date Time
cboe_europe_lastsale_apf_v1_7.trading_date_time = {}

-- Size: Trading Date Time
cboe_europe_lastsale_apf_v1_7.trading_date_time.size = 27

-- Display: Trading Date Time
cboe_europe_lastsale_apf_v1_7.trading_date_time.display = function(value)
  return "Trading Date Time: "..value
end

-- Dissect: Trading Date Time
cboe_europe_lastsale_apf_v1_7.trading_date_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.trading_date_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.trading_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.trading_date_time, range, value, display)

  return offset + length, value
end

-- Last Sale Europe Message New
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new = {}

-- Size: Last Sale Europe Message New
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new.size =
  cboe_europe_lastsale_apf_v1_7.trading_date_time.size + 
  cboe_europe_lastsale_apf_v1_7.symbol.size + 
  cboe_europe_lastsale_apf_v1_7.price.size + 
  cboe_europe_lastsale_apf_v1_7.price_notation.size + 
  cboe_europe_lastsale_apf_v1_7.price_currency.size + 
  cboe_europe_lastsale_apf_v1_7.executed_shares.size + 
  cboe_europe_lastsale_apf_v1_7.notional_amount.size + 
  cboe_europe_lastsale_apf_v1_7.notional_currency.size + 
  cboe_europe_lastsale_apf_v1_7.execution_venue.size + 
  cboe_europe_lastsale_apf_v1_7.third_country_trading_venue.size + 
  cboe_europe_lastsale_apf_v1_7.publication_date_time.size + 
  cboe_europe_lastsale_apf_v1_7.trade_id.size + 
  cboe_europe_lastsale_apf_v1_7.market_mechanism.size + 
  cboe_europe_lastsale_apf_v1_7.trading_mode.size + 
  cboe_europe_lastsale_apf_v1_7.transaction_category.size + 
  cboe_europe_lastsale_apf_v1_7.negotiation_flag.size + 
  cboe_europe_lastsale_apf_v1_7.agency_cross_trade.size + 
  cboe_europe_lastsale_apf_v1_7.modification_indicator.size + 
  cboe_europe_lastsale_apf_v1_7.benchmark_indicator.size + 
  cboe_europe_lastsale_apf_v1_7.special_dividend.size + 
  cboe_europe_lastsale_apf_v1_7.off_book_automated.size + 
  cboe_europe_lastsale_apf_v1_7.price_discovery_process.size + 
  cboe_europe_lastsale_apf_v1_7.algorithmic_indicator.size + 
  cboe_europe_lastsale_apf_v1_7.pre_trade_transparency_waiver.size + 
  cboe_europe_lastsale_apf_v1_7.portfolio_flag.size + 
  cboe_europe_lastsale_apf_v1_7.contingent_flag.size + 
  cboe_europe_lastsale_apf_v1_7.giveup_flag.size + 
  cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason.size + 
  cboe_europe_lastsale_apf_v1_7.deferral_or_enrichment_type.size + 
  cboe_europe_lastsale_apf_v1_7.deferral_illiquid_instrument.size + 
  cboe_europe_lastsale_apf_v1_7.deferral_size_specific.size + 
  cboe_europe_lastsale_apf_v1_7.duplicative_within_jurisdiction.size + 
  cboe_europe_lastsale_apf_v1_7.duplicative_across_jurisdiction.size + 
  cboe_europe_lastsale_apf_v1_7.intra_group_indicator.size + 
  cboe_europe_lastsale_apf_v1_7.jurisdiction.size

-- Display: Last Sale Europe Message New
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Europe Message New
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = cboe_europe_lastsale_apf_v1_7.trading_date_time.dissect(buffer, index, packet, parent)

  -- Symbol: 12 Byte Ascii String
  index, symbol = cboe_europe_lastsale_apf_v1_7.symbol.dissect(buffer, index, packet, parent)

  -- Price: 18 Byte Ascii String
  index, price = cboe_europe_lastsale_apf_v1_7.price.dissect(buffer, index, packet, parent)

  -- Price Notation: 4 Byte Ascii String Enum with 4 values
  index, price_notation = cboe_europe_lastsale_apf_v1_7.price_notation.dissect(buffer, index, packet, parent)

  -- Price Currency: 3 Byte Ascii String
  index, price_currency = cboe_europe_lastsale_apf_v1_7.price_currency.dissect(buffer, index, packet, parent)

  -- Executed Shares: 12 Byte Ascii String
  index, executed_shares = cboe_europe_lastsale_apf_v1_7.executed_shares.dissect(buffer, index, packet, parent)

  -- Notional Amount: 18 Byte Ascii String
  index, notional_amount = cboe_europe_lastsale_apf_v1_7.notional_amount.dissect(buffer, index, packet, parent)

  -- Notional Currency: 3 Byte Ascii String
  index, notional_currency = cboe_europe_lastsale_apf_v1_7.notional_currency.dissect(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_europe_lastsale_apf_v1_7.execution_venue.dissect(buffer, index, packet, parent)

  -- Third Country Trading Venue: 4 Byte Ascii String
  index, third_country_trading_venue = cboe_europe_lastsale_apf_v1_7.third_country_trading_venue.dissect(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String
  index, publication_date_time = cboe_europe_lastsale_apf_v1_7.publication_date_time.dissect(buffer, index, packet, parent)

  -- Trade Id: 12 Byte Ascii String
  index, trade_id = cboe_europe_lastsale_apf_v1_7.trade_id.dissect(buffer, index, packet, parent)

  -- Market Mechanism: 4 Byte Ascii String Enum with 9 values
  index, market_mechanism = cboe_europe_lastsale_apf_v1_7.market_mechanism.dissect(buffer, index, packet, parent)

  -- Trading Mode: 4 Byte Ascii String Enum with 12 values
  index, trading_mode = cboe_europe_lastsale_apf_v1_7.trading_mode.dissect(buffer, index, packet, parent)

  -- Transaction Category: 4 Byte Ascii String Enum with 4 values
  index, transaction_category = cboe_europe_lastsale_apf_v1_7.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Flag: 4 Byte Ascii String Enum with 5 values
  index, negotiation_flag = cboe_europe_lastsale_apf_v1_7.negotiation_flag.dissect(buffer, index, packet, parent)

  -- Agency Cross Trade: 4 Byte Ascii String Enum with 1 values
  index, agency_cross_trade = cboe_europe_lastsale_apf_v1_7.agency_cross_trade.dissect(buffer, index, packet, parent)

  -- Modification Indicator: 4 Byte Ascii String Enum with 2 values
  index, modification_indicator = cboe_europe_lastsale_apf_v1_7.modification_indicator.dissect(buffer, index, packet, parent)

  -- Benchmark Indicator: 4 Byte Ascii String
  index, benchmark_indicator = cboe_europe_lastsale_apf_v1_7.benchmark_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend: 4 Byte Ascii String Enum with 1 values
  index, special_dividend = cboe_europe_lastsale_apf_v1_7.special_dividend.dissect(buffer, index, packet, parent)

  -- Off Book Automated: 4 Byte Ascii String Enum with 2 values
  index, off_book_automated = cboe_europe_lastsale_apf_v1_7.off_book_automated.dissect(buffer, index, packet, parent)

  -- Price Discovery Process: 4 Byte Ascii String Enum with 4 values
  index, price_discovery_process = cboe_europe_lastsale_apf_v1_7.price_discovery_process.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: 4 Byte Ascii String Enum with 1 values
  index, algorithmic_indicator = cboe_europe_lastsale_apf_v1_7.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Pre Trade Transparency Waiver: 4 Byte Ascii String Enum with 2 values
  index, pre_trade_transparency_waiver = cboe_europe_lastsale_apf_v1_7.pre_trade_transparency_waiver.dissect(buffer, index, packet, parent)

  -- Portfolio Flag: 4 Byte Ascii String Enum with 2 values
  index, portfolio_flag = cboe_europe_lastsale_apf_v1_7.portfolio_flag.dissect(buffer, index, packet, parent)

  -- Contingent Flag: 4 Byte Ascii String
  index, contingent_flag = cboe_europe_lastsale_apf_v1_7.contingent_flag.dissect(buffer, index, packet, parent)

  -- Giveup Flag: 4 Byte Ascii String Enum with 1 values
  index, giveup_flag = cboe_europe_lastsale_apf_v1_7.giveup_flag.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 4 Byte Ascii String Enum with 4 values
  index, post_trade_deferral_reason = cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Deferral Or Enrichment Type: 4 Byte Ascii String Enum with 11 values
  index, deferral_or_enrichment_type = cboe_europe_lastsale_apf_v1_7.deferral_or_enrichment_type.dissect(buffer, index, packet, parent)

  -- Deferral Illiquid Instrument: 4 Byte Ascii String Enum with 1 values
  index, deferral_illiquid_instrument = cboe_europe_lastsale_apf_v1_7.deferral_illiquid_instrument.dissect(buffer, index, packet, parent)

  -- Deferral Size Specific: 4 Byte Ascii String Enum with 1 values
  index, deferral_size_specific = cboe_europe_lastsale_apf_v1_7.deferral_size_specific.dissect(buffer, index, packet, parent)

  -- Duplicative Within Jurisdiction: 4 Byte Ascii String Enum with 1 values
  index, duplicative_within_jurisdiction = cboe_europe_lastsale_apf_v1_7.duplicative_within_jurisdiction.dissect(buffer, index, packet, parent)

  -- Duplicative Across Jurisdiction: 4 Byte Ascii String Enum with 1 values
  index, duplicative_across_jurisdiction = cboe_europe_lastsale_apf_v1_7.duplicative_across_jurisdiction.dissect(buffer, index, packet, parent)

  -- Intra Group Indicator: 4 Byte Ascii String Enum with 1 values
  index, intra_group_indicator = cboe_europe_lastsale_apf_v1_7.intra_group_indicator.dissect(buffer, index, packet, parent)

  -- Jurisdiction: 2 Byte Ascii String Enum with 2 values
  index, jurisdiction = cboe_europe_lastsale_apf_v1_7.jurisdiction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Europe Message New
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new.dissect = function(buffer, offset, packet, parent)
  if show.last_sale_europe_message_new then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.last_sale_europe_message_new, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new.fields(buffer, offset, packet, parent)
  end
end

-- Duplicative Indicator
cboe_europe_lastsale_apf_v1_7.duplicative_indicator = {}

-- Size: Duplicative Indicator
cboe_europe_lastsale_apf_v1_7.duplicative_indicator.size = 4

-- Display: Duplicative Indicator
cboe_europe_lastsale_apf_v1_7.duplicative_indicator.display = function(value)
  if value == "DUPL" then
    return "Duplicative Indicator: Duplicative Trade Report (DUPL)"
  end

  return "Duplicative Indicator: Unknown("..value..")"
end

-- Dissect: Duplicative Indicator
cboe_europe_lastsale_apf_v1_7.duplicative_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.duplicative_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.duplicative_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.duplicative_indicator, range, value, display)

  return offset + length, value
end

-- Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_7.benchmark_reference_indicator = {}

-- Size: Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_7.benchmark_reference_indicator.size = 4

-- Display: Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_7.benchmark_reference_indicator.display = function(value)
  if value == "BENC" then
    return "Benchmark Reference Indicator: Benchmark Trade (BENC)"
  end
  if value == "RFPT" then
    return "Benchmark Reference Indicator: Reference Price Trade (RFPT)"
  end

  return "Benchmark Reference Indicator: Unknown("..value..")"
end

-- Dissect: Benchmark Reference Indicator
cboe_europe_lastsale_apf_v1_7.benchmark_reference_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.benchmark_reference_indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = cboe_europe_lastsale_apf_v1_7.benchmark_reference_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.benchmark_reference_indicator, range, value, display)

  return offset + length, value
end

-- Last Sale Europe Message
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message = {}

-- Size: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message.size =
  cboe_europe_lastsale_apf_v1_7.trading_date_time.size + 
  cboe_europe_lastsale_apf_v1_7.symbol.size + 
  cboe_europe_lastsale_apf_v1_7.price.size + 
  cboe_europe_lastsale_apf_v1_7.price_currency.size + 
  cboe_europe_lastsale_apf_v1_7.executed_shares.size + 
  cboe_europe_lastsale_apf_v1_7.execution_venue.size + 
  cboe_europe_lastsale_apf_v1_7.publication_date_time.size + 
  cboe_europe_lastsale_apf_v1_7.trade_id.size + 
  cboe_europe_lastsale_apf_v1_7.transaction_category.size + 
  cboe_europe_lastsale_apf_v1_7.negotiation_flag.size + 
  cboe_europe_lastsale_apf_v1_7.agency_cross_trade.size + 
  cboe_europe_lastsale_apf_v1_7.modification_indicator.size + 
  cboe_europe_lastsale_apf_v1_7.benchmark_reference_indicator.size + 
  cboe_europe_lastsale_apf_v1_7.special_dividend.size + 
  cboe_europe_lastsale_apf_v1_7.price_discovery_process.size + 
  cboe_europe_lastsale_apf_v1_7.algorithmic_indicator.size + 
  cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason.size + 
  cboe_europe_lastsale_apf_v1_7.duplicative_indicator.size + 
  cboe_europe_lastsale_apf_v1_7.jurisdiction.size

-- Display: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Date Time: 27 Byte Ascii String
  index, trading_date_time = cboe_europe_lastsale_apf_v1_7.trading_date_time.dissect(buffer, index, packet, parent)

  -- Symbol: 12 Byte Ascii String
  index, symbol = cboe_europe_lastsale_apf_v1_7.symbol.dissect(buffer, index, packet, parent)

  -- Price: 18 Byte Ascii String
  index, price = cboe_europe_lastsale_apf_v1_7.price.dissect(buffer, index, packet, parent)

  -- Price Currency: 3 Byte Ascii String
  index, price_currency = cboe_europe_lastsale_apf_v1_7.price_currency.dissect(buffer, index, packet, parent)

  -- Executed Shares: 12 Byte Ascii String
  index, executed_shares = cboe_europe_lastsale_apf_v1_7.executed_shares.dissect(buffer, index, packet, parent)

  -- Execution Venue: 4 Byte Ascii String
  index, execution_venue = cboe_europe_lastsale_apf_v1_7.execution_venue.dissect(buffer, index, packet, parent)

  -- Publication Date Time: 27 Byte Ascii String
  index, publication_date_time = cboe_europe_lastsale_apf_v1_7.publication_date_time.dissect(buffer, index, packet, parent)

  -- Trade Id: 12 Byte Ascii String
  index, trade_id = cboe_europe_lastsale_apf_v1_7.trade_id.dissect(buffer, index, packet, parent)

  -- Transaction Category: 4 Byte Ascii String Enum with 4 values
  index, transaction_category = cboe_europe_lastsale_apf_v1_7.transaction_category.dissect(buffer, index, packet, parent)

  -- Negotiation Flag: 4 Byte Ascii String Enum with 5 values
  index, negotiation_flag = cboe_europe_lastsale_apf_v1_7.negotiation_flag.dissect(buffer, index, packet, parent)

  -- Agency Cross Trade: 4 Byte Ascii String Enum with 1 values
  index, agency_cross_trade = cboe_europe_lastsale_apf_v1_7.agency_cross_trade.dissect(buffer, index, packet, parent)

  -- Modification Indicator: 4 Byte Ascii String Enum with 2 values
  index, modification_indicator = cboe_europe_lastsale_apf_v1_7.modification_indicator.dissect(buffer, index, packet, parent)

  -- Benchmark Reference Indicator: 4 Byte Ascii String Enum with 2 values
  index, benchmark_reference_indicator = cboe_europe_lastsale_apf_v1_7.benchmark_reference_indicator.dissect(buffer, index, packet, parent)

  -- Special Dividend: 4 Byte Ascii String Enum with 1 values
  index, special_dividend = cboe_europe_lastsale_apf_v1_7.special_dividend.dissect(buffer, index, packet, parent)

  -- Price Discovery Process: 4 Byte Ascii String Enum with 4 values
  index, price_discovery_process = cboe_europe_lastsale_apf_v1_7.price_discovery_process.dissect(buffer, index, packet, parent)

  -- Algorithmic Indicator: 4 Byte Ascii String Enum with 1 values
  index, algorithmic_indicator = cboe_europe_lastsale_apf_v1_7.algorithmic_indicator.dissect(buffer, index, packet, parent)

  -- Post Trade Deferral Reason: 4 Byte Ascii String Enum with 4 values
  index, post_trade_deferral_reason = cboe_europe_lastsale_apf_v1_7.post_trade_deferral_reason.dissect(buffer, index, packet, parent)

  -- Duplicative Indicator: 4 Byte Ascii String Enum with 1 values
  index, duplicative_indicator = cboe_europe_lastsale_apf_v1_7.duplicative_indicator.dissect(buffer, index, packet, parent)

  -- Jurisdiction: 2 Byte Ascii String Enum with 2 values
  index, jurisdiction = cboe_europe_lastsale_apf_v1_7.jurisdiction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Europe Message
cboe_europe_lastsale_apf_v1_7.last_sale_europe_message.dissect = function(buffer, offset, packet, parent)
  if show.last_sale_europe_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.last_sale_europe_message, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7.last_sale_europe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7.last_sale_europe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7.last_sale_europe_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
cboe_europe_lastsale_apf_v1_7.sequenced_message = {}

-- Calculate runtime size of: Sequenced Message
cboe_europe_lastsale_apf_v1_7.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of Last Sale Europe Message
  if sequenced_message_type == "u" then
    return cboe_europe_lastsale_apf_v1_7.last_sale_europe_message.size(buffer, offset)
  end
  -- Size of Last Sale Europe Message New
  if sequenced_message_type == "7" then
    return cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
cboe_europe_lastsale_apf_v1_7.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
cboe_europe_lastsale_apf_v1_7.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Last Sale Europe Message
  if sequenced_message_type == "u" then
    return cboe_europe_lastsale_apf_v1_7.last_sale_europe_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Europe Message New
  if sequenced_message_type == "7" then
    return cboe_europe_lastsale_apf_v1_7.last_sale_europe_message_new.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
cboe_europe_lastsale_apf_v1_7.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return cboe_europe_lastsale_apf_v1_7.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_europe_lastsale_apf_v1_7.sequenced_message.size(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_europe_lastsale_apf_v1_7.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.sequenced_message, range, display)

  return cboe_europe_lastsale_apf_v1_7.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Sequenced Message Type
cboe_europe_lastsale_apf_v1_7.sequenced_message_type = {}

-- Size: Sequenced Message Type
cboe_europe_lastsale_apf_v1_7.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
cboe_europe_lastsale_apf_v1_7.sequenced_message_type.display = function(value)
  if value == "u" then
    return "Sequenced Message Type: Last Sale Europe Message (u)"
  end
  if value == "7" then
    return "Sequenced Message Type: Last Sale Europe Message New (7)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
cboe_europe_lastsale_apf_v1_7.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Timestamp
cboe_europe_lastsale_apf_v1_7.timestamp = {}

-- Size: Timestamp
cboe_europe_lastsale_apf_v1_7.timestamp.size = 8

-- Display: Timestamp
cboe_europe_lastsale_apf_v1_7.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
cboe_europe_lastsale_apf_v1_7.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = cboe_europe_lastsale_apf_v1_7.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Sequenced Message Header
cboe_europe_lastsale_apf_v1_7.sequenced_message_header = {}

-- Size: Sequenced Message Header
cboe_europe_lastsale_apf_v1_7.sequenced_message_header.size =
  cboe_europe_lastsale_apf_v1_7.timestamp.size + 
  cboe_europe_lastsale_apf_v1_7.sequenced_message_type.size

-- Display: Sequenced Message Header
cboe_europe_lastsale_apf_v1_7.sequenced_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message Header
cboe_europe_lastsale_apf_v1_7.sequenced_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 8 Byte Ascii String
  index, timestamp = cboe_europe_lastsale_apf_v1_7.timestamp.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String Enum with 2 values
  index, sequenced_message_type = cboe_europe_lastsale_apf_v1_7.sequenced_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Message Header
cboe_europe_lastsale_apf_v1_7.sequenced_message_header.dissect = function(buffer, offset, packet, parent)
  if show.sequenced_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.sequenced_message_header, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7.sequenced_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7.sequenced_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7.sequenced_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Data Packet
cboe_europe_lastsale_apf_v1_7.sequenced_data_packet = {}

-- Calculate size of: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_7.sequenced_data_packet.size = function(buffer, offset)
  local index = 0

  index = index + cboe_europe_lastsale_apf_v1_7.sequenced_message_header.size

  -- Calculate runtime size of Sequenced Message field
  local sequenced_message_offset = offset + index
  local sequenced_message_type = buffer(sequenced_message_offset - 1, 1):string()
  index = index + cboe_europe_lastsale_apf_v1_7.sequenced_message.size(buffer, sequenced_message_offset, sequenced_message_type)

  return index
end

-- Display: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_7.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_7.sequenced_data_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequenced Message Header: Struct of 2 fields
  index, sequenced_message_header = cboe_europe_lastsale_apf_v1_7.sequenced_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sequenced Message Type
  local sequenced_message_type = trim_right_spaces(buffer(index - 1, 1):string())

  -- Sequenced Message: Runtime Type with 2 branches
  index = cboe_europe_lastsale_apf_v1_7.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
cboe_europe_lastsale_apf_v1_7.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_data_packet then
    local length = cboe_europe_lastsale_apf_v1_7.sequenced_data_packet.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_europe_lastsale_apf_v1_7.sequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.sequenced_data_packet, range, display)
  end

  return cboe_europe_lastsale_apf_v1_7.sequenced_data_packet.fields(buffer, offset, packet, parent)
end

-- Reject Reason Code
cboe_europe_lastsale_apf_v1_7.reject_reason_code = {}

-- Size: Reject Reason Code
cboe_europe_lastsale_apf_v1_7.reject_reason_code.size = 1

-- Display: Reject Reason Code
cboe_europe_lastsale_apf_v1_7.reject_reason_code.display = function(value)
  return "Reject Reason Code: "..value
end

-- Dissect: Reject Reason Code
cboe_europe_lastsale_apf_v1_7.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Login Rejected Packet
cboe_europe_lastsale_apf_v1_7.login_rejected_packet = {}

-- Size: Login Rejected Packet
cboe_europe_lastsale_apf_v1_7.login_rejected_packet.size =
  cboe_europe_lastsale_apf_v1_7.reject_reason_code.size

-- Display: Login Rejected Packet
cboe_europe_lastsale_apf_v1_7.login_rejected_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Rejected Packet
cboe_europe_lastsale_apf_v1_7.login_rejected_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: 1 Byte Ascii String
  index, reject_reason_code = cboe_europe_lastsale_apf_v1_7.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Rejected Packet
cboe_europe_lastsale_apf_v1_7.login_rejected_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_rejected_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.login_rejected_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7.login_rejected_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7.login_rejected_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7.login_rejected_packet.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number
cboe_europe_lastsale_apf_v1_7.sequence_number = {}

-- Size: Sequence Number
cboe_europe_lastsale_apf_v1_7.sequence_number.size = 10

-- Display: Sequence Number
cboe_europe_lastsale_apf_v1_7.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_europe_lastsale_apf_v1_7.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.sequence_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
cboe_europe_lastsale_apf_v1_7.session = {}

-- Size: Session
cboe_europe_lastsale_apf_v1_7.session.size = 10

-- Display: Session
cboe_europe_lastsale_apf_v1_7.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
cboe_europe_lastsale_apf_v1_7.session.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.session.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.session, range, value, display)

  return offset + length, value
end

-- Login Accepted Packet
cboe_europe_lastsale_apf_v1_7.login_accepted_packet = {}

-- Size: Login Accepted Packet
cboe_europe_lastsale_apf_v1_7.login_accepted_packet.size =
  cboe_europe_lastsale_apf_v1_7.session.size + 
  cboe_europe_lastsale_apf_v1_7.sequence_number.size

-- Display: Login Accepted Packet
cboe_europe_lastsale_apf_v1_7.login_accepted_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Accepted Packet
cboe_europe_lastsale_apf_v1_7.login_accepted_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = cboe_europe_lastsale_apf_v1_7.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = cboe_europe_lastsale_apf_v1_7.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Accepted Packet
cboe_europe_lastsale_apf_v1_7.login_accepted_packet.dissect = function(buffer, offset, packet, parent)
  if show.login_accepted_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.login_accepted_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7.login_accepted_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7.login_accepted_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7.login_accepted_packet.fields(buffer, offset, packet, parent)
  end
end

-- Text
cboe_europe_lastsale_apf_v1_7.text = {}

-- Size: Text
cboe_europe_lastsale_apf_v1_7.text.size = 1

-- Display: Text
cboe_europe_lastsale_apf_v1_7.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_europe_lastsale_apf_v1_7.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.text, range, value, display)

  return offset + length, value
end

-- Debug Packet
cboe_europe_lastsale_apf_v1_7.debug_packet = {}

-- Size: Debug Packet
cboe_europe_lastsale_apf_v1_7.debug_packet.size =
  cboe_europe_lastsale_apf_v1_7.text.size

-- Display: Debug Packet
cboe_europe_lastsale_apf_v1_7.debug_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Packet
cboe_europe_lastsale_apf_v1_7.debug_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text: 1 Byte Ascii String
  index, text = cboe_europe_lastsale_apf_v1_7.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Debug Packet
cboe_europe_lastsale_apf_v1_7.debug_packet.dissect = function(buffer, offset, packet, parent)
  if show.debug_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.debug_packet, buffer(offset, 0))
    local index = cboe_europe_lastsale_apf_v1_7.debug_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_europe_lastsale_apf_v1_7.debug_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_europe_lastsale_apf_v1_7.debug_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
cboe_europe_lastsale_apf_v1_7.payload = {}

-- Calculate runtime size of: Payload
cboe_europe_lastsale_apf_v1_7.payload.size = function(buffer, offset, packet_type)
  -- Size of Debug Packet
  if packet_type == "+" then
    return cboe_europe_lastsale_apf_v1_7.debug_packet.size(buffer, offset)
  end
  -- Size of Login Accepted Packet
  if packet_type == "A" then
    return cboe_europe_lastsale_apf_v1_7.login_accepted_packet.size(buffer, offset)
  end
  -- Size of Login Rejected Packet
  if packet_type == "J" then
    return cboe_europe_lastsale_apf_v1_7.login_rejected_packet.size(buffer, offset)
  end
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return cboe_europe_lastsale_apf_v1_7.sequenced_data_packet.size(buffer, offset)
  end
  -- Size of Login Request Packet
  if packet_type == "L" then
    return cboe_europe_lastsale_apf_v1_7.login_request_packet.size(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
cboe_europe_lastsale_apf_v1_7.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
cboe_europe_lastsale_apf_v1_7.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Debug Packet
  if packet_type == "+" then
    return cboe_europe_lastsale_apf_v1_7.debug_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Accepted Packet
  if packet_type == "A" then
    return cboe_europe_lastsale_apf_v1_7.login_accepted_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Rejected Packet
  if packet_type == "J" then
    return cboe_europe_lastsale_apf_v1_7.login_rejected_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return cboe_europe_lastsale_apf_v1_7.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request Packet
  if packet_type == "L" then
    return cboe_europe_lastsale_apf_v1_7.login_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return cboe_europe_lastsale_apf_v1_7.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
cboe_europe_lastsale_apf_v1_7.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return cboe_europe_lastsale_apf_v1_7.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_europe_lastsale_apf_v1_7.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_europe_lastsale_apf_v1_7.payload.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.payload, range, display)

  return cboe_europe_lastsale_apf_v1_7.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
cboe_europe_lastsale_apf_v1_7.packet_type = {}

-- Size: Packet Type
cboe_europe_lastsale_apf_v1_7.packet_type.size = 1

-- Display: Packet Type
cboe_europe_lastsale_apf_v1_7.packet_type.display = function(value)
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
cboe_europe_lastsale_apf_v1_7.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_europe_lastsale_apf_v1_7.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_europe_lastsale_apf_v1_7.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_europe_lastsale_apf_v1_7.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet
cboe_europe_lastsale_apf_v1_7.packet = {}

-- Dissect Packet
cboe_europe_lastsale_apf_v1_7.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Packet Type: 1 Byte Ascii String Enum with 9 values
    index, packet_type = cboe_europe_lastsale_apf_v1_7.packet_type.dissect(buffer, index, packet, parent)

    -- Payload: Runtime Type with 6 branches
    index = cboe_europe_lastsale_apf_v1_7.payload.dissect(buffer, index, packet, parent, packet_type)

    -- Soup Lf: 1 Byte Fixed Width Integer Static
    index, soup_lf = cboe_europe_lastsale_apf_v1_7.soup_lf.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_europe_lastsale_apf_v1_7.init()
end

-- Dissector for Cboe Europe LastSale Apf 1.7
function omi_cboe_europe_lastsale_apf_v1_7.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_europe_lastsale_apf_v1_7.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_europe_lastsale_apf_v1_7, buffer(), omi_cboe_europe_lastsale_apf_v1_7.description, "("..buffer:len().." Bytes)")
  return cboe_europe_lastsale_apf_v1_7.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_cboe_europe_lastsale_apf_v1_7)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_europe_lastsale_apf_v1_7.packet.requiredsize = function(buffer)

  return true
end

-- Verify Soup Lf Field
cboe_europe_lastsale_apf_v1_7.soup_lf.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(459, 1):int()

  if value == 10 then
    return true
  end

  return false
end

-- Dissector Heuristic for Cboe Europe LastSale Apf 1.7
local function omi_cboe_europe_lastsale_apf_v1_7_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_europe_lastsale_apf_v1_7.packet.requiredsize(buffer) then return false end

  -- Verify Soup Lf
  if not cboe_europe_lastsale_apf_v1_7.soup_lf.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_europe_lastsale_apf_v1_7
  omi_cboe_europe_lastsale_apf_v1_7.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Europe LastSale Apf 1.7
omi_cboe_europe_lastsale_apf_v1_7:register_heuristic("tcp", omi_cboe_europe_lastsale_apf_v1_7_heuristic)

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
