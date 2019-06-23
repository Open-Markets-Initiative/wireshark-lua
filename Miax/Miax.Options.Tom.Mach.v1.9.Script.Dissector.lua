-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax Options Tom Mach 1.9 Protocol
local miax_options_tom_mach_v1_9 = Proto("Miax.Options.Tom.Mach.v1.9.Lua", "Miax Options Tom Mach 1.9")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax Options Tom Mach 1.9 Fields
miax_options_tom_mach_v1_9.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.options.tom.mach.v1.9.activeonmiax", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.application_message = ProtoField.new("Application Message", "miax.options.tom.mach.v1.9.applicationmessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.bid_condition = ProtoField.new("Bid Condition", "miax.options.tom.mach.v1.9.bidcondition", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.bid_price_2 = ProtoField.new("Bid Price 2", "miax.options.tom.mach.v1.9.bidprice2", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.bid_price_4 = ProtoField.new("Bid Price 4", "miax.options.tom.mach.v1.9.bidprice4", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.bid_priority_customer_size_2 = ProtoField.new("Bid Priority Customer Size 2", "miax.options.tom.mach.v1.9.bidprioritycustomersize2", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.bid_priority_customer_size_4 = ProtoField.new("Bid Priority Customer Size 4", "miax.options.tom.mach.v1.9.bidprioritycustomersize4", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.bid_size_2 = ProtoField.new("Bid Size 2", "miax.options.tom.mach.v1.9.bidsize2", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.bid_size_4 = ProtoField.new("Bid Size 4", "miax.options.tom.mach.v1.9.bidsize4", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.call_or_put = ProtoField.new("Call Or Put", "miax.options.tom.mach.v1.9.callorput", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.closing_time = ProtoField.new("Closing Time", "miax.options.tom.mach.v1.9.closingtime", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.correction_number = ProtoField.new("Correction Number", "miax.options.tom.mach.v1.9.correctionnumber", ftypes.UINT8)
miax_options_tom_mach_v1_9.fields.data = ProtoField.new("Data", "miax.options.tom.mach.v1.9.data", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.double_sided_top_of_market_compact_message = ProtoField.new("Double Sided Top Of Market Compact Message", "miax.options.tom.mach.v1.9.doublesidedtopofmarketcompactmessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.event_reason = ProtoField.new("Event Reason", "miax.options.tom.mach.v1.9.eventreason", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.options.tom.mach.v1.9.expectedeventtimenanosecondspart", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.expiration_date = ProtoField.new("Expiration Date", "miax.options.tom.mach.v1.9.expirationdate", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.options.tom.mach.v1.9.liquidityacceptanceincrementindicator", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.long_term_option = ProtoField.new("Long Term Option", "miax.options.tom.mach.v1.9.longtermoption", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.mbbo_condition = ProtoField.new("Mbbo Condition", "miax.options.tom.mach.v1.9.mbbocondition", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.mbbo_price_2 = ProtoField.new("Mbbo Price 2", "miax.options.tom.mach.v1.9.mbboprice2", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.mbbo_price_4 = ProtoField.new("Mbbo Price 4", "miax.options.tom.mach.v1.9.mbboprice4", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.mbbo_priority_customer_size_2 = ProtoField.new("Mbbo Priority Customer Size 2", "miax.options.tom.mach.v1.9.mbboprioritycustomersize2", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.mbbo_priority_customer_size_4 = ProtoField.new("Mbbo Priority Customer Size 4", "miax.options.tom.mach.v1.9.mbboprioritycustomersize4", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.mbbo_size_2 = ProtoField.new("Mbbo Size 2", "miax.options.tom.mach.v1.9.mbbosize2", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.mbbo_size_4 = ProtoField.new("Mbbo Size 4", "miax.options.tom.mach.v1.9.mbbosize4", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.message = ProtoField.new("Message", "miax.options.tom.mach.v1.9.message", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.message_type = ProtoField.new("Message Type", "miax.options.tom.mach.v1.9.messagetype", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.options.tom.mach.v1.9.miaxbbopostingincrementindicator", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.notification_time = ProtoField.new("Notification Time", "miax.options.tom.mach.v1.9.notificationtime", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.offer_condition = ProtoField.new("Offer Condition", "miax.options.tom.mach.v1.9.offercondition", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.offer_price_2 = ProtoField.new("Offer Price 2", "miax.options.tom.mach.v1.9.offerprice2", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.offer_price_4 = ProtoField.new("Offer Price 4", "miax.options.tom.mach.v1.9.offerprice4", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.offer_priority_customer_size_2 = ProtoField.new("Offer Priority Customer Size 2", "miax.options.tom.mach.v1.9.offerprioritycustomersize2", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.offer_priority_customer_size_4 = ProtoField.new("Offer Priority Customer Size 4", "miax.options.tom.mach.v1.9.offerprioritycustomersize4", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.offer_size_2 = ProtoField.new("Offer Size 2", "miax.options.tom.mach.v1.9.offersize2", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.offer_size_4 = ProtoField.new("Offer Size 4", "miax.options.tom.mach.v1.9.offersize4", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.opening_time = ProtoField.new("Opening Time", "miax.options.tom.mach.v1.9.openingtime", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.options.tom.mach.v1.9.openingunderlyingmarketcode", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.packet = ProtoField.new("Packet", "miax.options.tom.mach.v1.9.packet", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.packet_length = ProtoField.new("Packet Length", "miax.options.tom.mach.v1.9.packetlength", ftypes.UINT16)
miax_options_tom_mach_v1_9.fields.packet_type = ProtoField.new("Packet Type", "miax.options.tom.mach.v1.9.packettype", ftypes.UINT8)
miax_options_tom_mach_v1_9.fields.payload = ProtoField.new("Payload", "miax.options.tom.mach.v1.9.payload", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.options.tom.mach.v1.9.priorityquotewidth", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.options.tom.mach.v1.9.productaddupdatetime", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.product_id = ProtoField.new("Product Id", "miax.options.tom.mach.v1.9.productid", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.options.tom.mach.v1.9.referencecorrectionnumber", ftypes.UINT8)
miax_options_tom_mach_v1_9.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.options.tom.mach.v1.9.referencetradeid", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.reserved = ProtoField.new("Reserved", "miax.options.tom.mach.v1.9.reserved", ftypes.UINT64)
miax_options_tom_mach_v1_9.fields.restricted_option = ProtoField.new("Restricted Option", "miax.options.tom.mach.v1.9.restrictedoption", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.seconds_part = ProtoField.new("Seconds Part", "miax.options.tom.mach.v1.9.secondspart", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.security_symbol = ProtoField.new("Security Symbol", "miax.options.tom.mach.v1.9.securitysymbol", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.sequence_number = ProtoField.new("Sequence Number", "miax.options.tom.mach.v1.9.sequencenumber", ftypes.UINT64)
miax_options_tom_mach_v1_9.fields.series_update = ProtoField.new("Series Update", "miax.options.tom.mach.v1.9.seriesupdate", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.session_id = ProtoField.new("Session Id", "miax.options.tom.mach.v1.9.sessionid", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.session_number = ProtoField.new("Session Number", "miax.options.tom.mach.v1.9.sessionnumber", ftypes.UINT8)
miax_options_tom_mach_v1_9.fields.strike_price = ProtoField.new("Strike Price", "miax.options.tom.mach.v1.9.strikeprice", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.system_state_message = ProtoField.new("System State Message", "miax.options.tom.mach.v1.9.systemstatemessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.system_status = ProtoField.new("System Status", "miax.options.tom.mach.v1.9.systemstatus", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.system_time_message = ProtoField.new("System Time Message", "miax.options.tom.mach.v1.9.systemtimemessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.timestamp = ProtoField.new("Timestamp", "miax.options.tom.mach.v1.9.timestamp", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.to_m_version = ProtoField.new("To M Version", "miax.options.tom.mach.v1.9.tomversion", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.top_of_market_bid_compact_message = ProtoField.new("Top Of Market Bid Compact Message", "miax.options.tom.mach.v1.9.topofmarketbidcompactmessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.top_of_market_offer_compact_message = ProtoField.new("Top Of Market Offer Compact Message", "miax.options.tom.mach.v1.9.topofmarketoffercompactmessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.options.tom.mach.v1.9.tradecancelmessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.trade_condition = ProtoField.new("Trade Condition", "miax.options.tom.mach.v1.9.tradecondition", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.trade_id = ProtoField.new("Trade Id", "miax.options.tom.mach.v1.9.tradeid", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.trade_message = ProtoField.new("Trade Message", "miax.options.tom.mach.v1.9.trademessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.trade_price = ProtoField.new("Trade Price", "miax.options.tom.mach.v1.9.tradeprice", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.trade_size = ProtoField.new("Trade Size", "miax.options.tom.mach.v1.9.tradesize", ftypes.UINT32)
miax_options_tom_mach_v1_9.fields.trading_status = ProtoField.new("Trading Status", "miax.options.tom.mach.v1.9.tradingstatus", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.options.tom.mach.v1.9.underlyingsymbol", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.underlying_trading_status_message = ProtoField.new("Underlying Trading Status Message", "miax.options.tom.mach.v1.9.underlyingtradingstatusmessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.wide_double_sided_top_of_market_message = ProtoField.new("Wide Double Sided Top Of Market Message", "miax.options.tom.mach.v1.9.widedoublesidedtopofmarketmessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.wide_top_of_market_bid_message = ProtoField.new("Wide Top Of Market Bid Message", "miax.options.tom.mach.v1.9.widetopofmarketbidmessage", ftypes.STRING)
miax_options_tom_mach_v1_9.fields.wide_top_of_market_offer_message = ProtoField.new("Wide Top Of Market Offer Message", "miax.options.tom.mach.v1.9.widetopofmarketoffermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax Options Tom Mach 1.9 Element Dissection Options
show.application_message = true
show.double_sided_top_of_market_compact_message = true
show.message = true
show.packet = true
show.series_update = true
show.system_state_message = true
show.system_time_message = true
show.top_of_market_bid_compact_message = true
show.top_of_market_offer_compact_message = true
show.trade_cancel_message = true
show.trade_message = true
show.underlying_trading_status_message = true
show.wide_double_sided_top_of_market_message = true
show.wide_top_of_market_bid_message = true
show.wide_top_of_market_offer_message = true
show.data = false
show.payload = false

-- Register Miax Options Tom Mach 1.9 Show Options
miax_options_tom_mach_v1_9.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_double_sided_top_of_market_compact_message = Pref.bool("Show Double Sided Top Of Market Compact Message", show.double_sided_top_of_market_compact_message, "Parse and add Double Sided Top Of Market Compact Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_series_update = Pref.bool("Show Series Update", show.series_update, "Parse and add Series Update to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_top_of_market_bid_compact_message = Pref.bool("Show Top Of Market Bid Compact Message", show.top_of_market_bid_compact_message, "Parse and add Top Of Market Bid Compact Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_top_of_market_offer_compact_message = Pref.bool("Show Top Of Market Offer Compact Message", show.top_of_market_offer_compact_message, "Parse and add Top Of Market Offer Compact Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_underlying_trading_status_message = Pref.bool("Show Underlying Trading Status Message", show.underlying_trading_status_message, "Parse and add Underlying Trading Status Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_wide_double_sided_top_of_market_message = Pref.bool("Show Wide Double Sided Top Of Market Message", show.wide_double_sided_top_of_market_message, "Parse and add Wide Double Sided Top Of Market Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_wide_top_of_market_bid_message = Pref.bool("Show Wide Top Of Market Bid Message", show.wide_top_of_market_bid_message, "Parse and add Wide Top Of Market Bid Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_wide_top_of_market_offer_message = Pref.bool("Show Wide Top Of Market Offer Message", show.wide_top_of_market_offer_message, "Parse and add Wide Top Of Market Offer Message to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
miax_options_tom_mach_v1_9.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function miax_options_tom_mach_v1_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= miax_options_tom_mach_v1_9.prefs.show_application_message then
    show.application_message = miax_options_tom_mach_v1_9.prefs.show_application_message
    changed = true
  end
  if show.double_sided_top_of_market_compact_message ~= miax_options_tom_mach_v1_9.prefs.show_double_sided_top_of_market_compact_message then
    show.double_sided_top_of_market_compact_message = miax_options_tom_mach_v1_9.prefs.show_double_sided_top_of_market_compact_message
    changed = true
  end
  if show.message ~= miax_options_tom_mach_v1_9.prefs.show_message then
    show.message = miax_options_tom_mach_v1_9.prefs.show_message
    changed = true
  end
  if show.packet ~= miax_options_tom_mach_v1_9.prefs.show_packet then
    show.packet = miax_options_tom_mach_v1_9.prefs.show_packet
    changed = true
  end
  if show.series_update ~= miax_options_tom_mach_v1_9.prefs.show_series_update then
    show.series_update = miax_options_tom_mach_v1_9.prefs.show_series_update
    changed = true
  end
  if show.system_state_message ~= miax_options_tom_mach_v1_9.prefs.show_system_state_message then
    show.system_state_message = miax_options_tom_mach_v1_9.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= miax_options_tom_mach_v1_9.prefs.show_system_time_message then
    show.system_time_message = miax_options_tom_mach_v1_9.prefs.show_system_time_message
    changed = true
  end
  if show.top_of_market_bid_compact_message ~= miax_options_tom_mach_v1_9.prefs.show_top_of_market_bid_compact_message then
    show.top_of_market_bid_compact_message = miax_options_tom_mach_v1_9.prefs.show_top_of_market_bid_compact_message
    changed = true
  end
  if show.top_of_market_offer_compact_message ~= miax_options_tom_mach_v1_9.prefs.show_top_of_market_offer_compact_message then
    show.top_of_market_offer_compact_message = miax_options_tom_mach_v1_9.prefs.show_top_of_market_offer_compact_message
    changed = true
  end
  if show.trade_cancel_message ~= miax_options_tom_mach_v1_9.prefs.show_trade_cancel_message then
    show.trade_cancel_message = miax_options_tom_mach_v1_9.prefs.show_trade_cancel_message
    changed = true
  end
  if show.trade_message ~= miax_options_tom_mach_v1_9.prefs.show_trade_message then
    show.trade_message = miax_options_tom_mach_v1_9.prefs.show_trade_message
    changed = true
  end
  if show.underlying_trading_status_message ~= miax_options_tom_mach_v1_9.prefs.show_underlying_trading_status_message then
    show.underlying_trading_status_message = miax_options_tom_mach_v1_9.prefs.show_underlying_trading_status_message
    changed = true
  end
  if show.wide_double_sided_top_of_market_message ~= miax_options_tom_mach_v1_9.prefs.show_wide_double_sided_top_of_market_message then
    show.wide_double_sided_top_of_market_message = miax_options_tom_mach_v1_9.prefs.show_wide_double_sided_top_of_market_message
    changed = true
  end
  if show.wide_top_of_market_bid_message ~= miax_options_tom_mach_v1_9.prefs.show_wide_top_of_market_bid_message then
    show.wide_top_of_market_bid_message = miax_options_tom_mach_v1_9.prefs.show_wide_top_of_market_bid_message
    changed = true
  end
  if show.wide_top_of_market_offer_message ~= miax_options_tom_mach_v1_9.prefs.show_wide_top_of_market_offer_message then
    show.wide_top_of_market_offer_message = miax_options_tom_mach_v1_9.prefs.show_wide_top_of_market_offer_message
    changed = true
  end
  if show.data ~= miax_options_tom_mach_v1_9.prefs.show_data then
    show.data = miax_options_tom_mach_v1_9.prefs.show_data
    changed = true
  end
  if show.payload ~= miax_options_tom_mach_v1_9.prefs.show_payload then
    show.payload = miax_options_tom_mach_v1_9.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Miax Options Tom Mach 1.9
-----------------------------------------------------------------------

-- Size: Expected Event Time Nano Seconds Part
size_of.expected_event_time_nano_seconds_part = 4

-- Display: Expected Event Time Nano Seconds Part
display.expected_event_time_nano_seconds_part = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
dissect.expected_event_time_nano_seconds_part = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expected_event_time_nano_seconds_part)
  local value = range:le_uint()
  local display = display.expected_event_time_nano_seconds_part(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + size_of.expected_event_time_nano_seconds_part
end

-- Size: Seconds Part
size_of.seconds_part = 4

-- Display: Seconds Part
display.seconds_part = function(value)
  return "Seconds Part: "..value
end

-- Dissect: Seconds Part
dissect.seconds_part = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.seconds_part)
  local value = range:le_uint()
  local display = display.seconds_part(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.seconds_part, range, value, display)

  return offset + size_of.seconds_part
end

-- Size: Event Reason
size_of.event_reason = 1

-- Display: Event Reason
display.event_reason = function(value)
  if value == "A" then
    return "Event Reason: Automatic (A)"
  end
  if value == "M" then
    return "Event Reason: Manual (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
dissect.event_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.event_reason)
  local value = range:string()
  local display = display.event_reason(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.event_reason, range, value, display)

  return offset + size_of.event_reason
end

-- Size: Trading Status
size_of.trading_status = 1

-- Display: Trading Status
display.trading_status = function(value)
  if value == "H" then
    return "Trading Status: Halted (H)"
  end
  if value == "R" then
    return "Trading Status: Resumed (R)"
  end
  if value == "O" then
    return "Trading Status: Opened (O)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
dissect.trading_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_status)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.trading_status, range, value, display)

  return offset + size_of.trading_status
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 11

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_symbol)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.underlying_symbol, range, value, display)

  return offset + size_of.underlying_symbol
end

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.timestamp)
  local value = range:le_uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Display: Underlying Trading Status Message
display.underlying_trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Trading Status Message
dissect.underlying_trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 3 values
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Event Reason: 1 Byte Ascii String Enum with 2 values
  index = dissect.event_reason(buffer, index, packet, parent)

  -- Seconds Part: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seconds_part(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: 4 Byte Unsigned Fixed Width Integer
  index = dissect.expected_event_time_nano_seconds_part(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Message
dissect.underlying_trading_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_trading_status_message then
    local range = buffer(offset, 25)
    local display = display.underlying_trading_status_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.underlying_trading_status_message, range, display)
  end

  return dissect.underlying_trading_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Condition
size_of.trade_condition = 1

-- Display: Trade Condition
display.trade_condition = function(value)
  if value == "A" then
    return "Trade Condition: Cancel Of Trade (A)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_condition)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.trade_condition, range, value, display)

  return offset + size_of.trade_condition
end

-- Size: Trade Size
size_of.trade_size = 4

-- Display: Trade Size
display.trade_size = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
dissect.trade_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_size)
  local value = range:le_uint()
  local display = display.trade_size(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.trade_size, range, value, display)

  return offset + size_of.trade_size
end

-- Size: Trade Price
size_of.trade_price = 4

-- Display: Trade Price
display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
dissect.trade_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_price)
  local value = range:le_uint()
  local display = display.trade_price(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.trade_price, range, value, display)

  return offset + size_of.trade_price
end

-- Size: Correction Number
size_of.correction_number = 1

-- Display: Correction Number
display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
dissect.correction_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.correction_number)
  local value = range:le_uint()
  local display = display.correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.correction_number, range, value, display)

  return offset + size_of.correction_number
end

-- Size: Trade Id
size_of.trade_id = 4

-- Display: Trade Id
display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
dissect.trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_id)
  local value = range:le_uint()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.trade_id, range, value, display)

  return offset + size_of.trade_id
end

-- Size: Product Id
size_of.product_id = 4

-- Display: Product Id
display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
dissect.product_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.product_id)
  local value = range:le_uint()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.product_id, range, value, display)

  return offset + size_of.product_id
end

-- Display: Trade Cancel Message
display.trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Message
dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index = dissect.correction_number(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 1 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_message then
    local range = buffer(offset, 22)
    local display = display.trade_cancel_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.trade_cancel_message, range, display)
  end

  return dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Reference Correction Number
size_of.reference_correction_number = 1

-- Display: Reference Correction Number
display.reference_correction_number = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
dissect.reference_correction_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_correction_number)
  local value = range:le_uint()
  local display = display.reference_correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.reference_correction_number, range, value, display)

  return offset + size_of.reference_correction_number
end

-- Size: Reference Trade Id
size_of.reference_trade_id = 4

-- Display: Reference Trade Id
display.reference_trade_id = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
dissect.reference_trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_trade_id)
  local value = range:le_uint()
  local display = display.reference_trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.reference_trade_id, range, value, display)

  return offset + size_of.reference_trade_id
end

-- Display: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index = dissect.correction_number(buffer, index, packet, parent)

  -- Reference Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.reference_trade_id(buffer, index, packet, parent)

  -- Reference Correction Number: 1 Byte Unsigned Fixed Width Integer
  index = dissect.reference_correction_number(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 1 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local range = buffer(offset, 27)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Condition
size_of.offer_condition = 1

-- Display: Offer Condition
display.offer_condition = function(value)
  if value == "A" then
    return "Offer Condition: Regular (A)"
  end
  if value == "B" then
    return "Offer Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Offer Condition: Not Firm (C)"
  end
  if value == "T" then
    return "Offer Condition: Trading Halt (T)"
  end

  return "Offer Condition: Unknown("..value..")"
end

-- Dissect: Offer Condition
dissect.offer_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_condition)
  local value = range:string()
  local display = display.offer_condition(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.offer_condition, range, value, display)

  return offset + size_of.offer_condition
end

-- Size: Offer Priority Customer Size 4
size_of.offer_priority_customer_size_4 = 4

-- Display: Offer Priority Customer Size 4
display.offer_priority_customer_size_4 = function(value)
  return "Offer Priority Customer Size 4: "..value
end

-- Dissect: Offer Priority Customer Size 4
dissect.offer_priority_customer_size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_priority_customer_size_4)
  local value = range:le_uint()
  local display = display.offer_priority_customer_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.offer_priority_customer_size_4, range, value, display)

  return offset + size_of.offer_priority_customer_size_4
end

-- Size: Offer Size 4
size_of.offer_size_4 = 4

-- Display: Offer Size 4
display.offer_size_4 = function(value)
  return "Offer Size 4: "..value
end

-- Dissect: Offer Size 4
dissect.offer_size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_size_4)
  local value = range:le_uint()
  local display = display.offer_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.offer_size_4, range, value, display)

  return offset + size_of.offer_size_4
end

-- Size: Offer Price 4
size_of.offer_price_4 = 4

-- Display: Offer Price 4
display.offer_price_4 = function(value)
  return "Offer Price 4: "..value
end

-- Dissect: Offer Price 4
dissect.offer_price_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_price_4)
  local value = range:le_uint()
  local display = display.offer_price_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.offer_price_4, range, value, display)

  return offset + size_of.offer_price_4
end

-- Size: Bid Condition
size_of.bid_condition = 1

-- Display: Bid Condition
display.bid_condition = function(value)
  if value == "A" then
    return "Bid Condition: Regular (A)"
  end
  if value == "B" then
    return "Bid Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Bid Condition: Not Firm (C)"
  end
  if value == "T" then
    return "Bid Condition: Trading Halt (T)"
  end

  return "Bid Condition: Unknown("..value..")"
end

-- Dissect: Bid Condition
dissect.bid_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_condition)
  local value = range:string()
  local display = display.bid_condition(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.bid_condition, range, value, display)

  return offset + size_of.bid_condition
end

-- Size: Bid Priority Customer Size 4
size_of.bid_priority_customer_size_4 = 4

-- Display: Bid Priority Customer Size 4
display.bid_priority_customer_size_4 = function(value)
  return "Bid Priority Customer Size 4: "..value
end

-- Dissect: Bid Priority Customer Size 4
dissect.bid_priority_customer_size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_priority_customer_size_4)
  local value = range:le_uint()
  local display = display.bid_priority_customer_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.bid_priority_customer_size_4, range, value, display)

  return offset + size_of.bid_priority_customer_size_4
end

-- Size: Bid Size 4
size_of.bid_size_4 = 4

-- Display: Bid Size 4
display.bid_size_4 = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
dissect.bid_size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_size_4)
  local value = range:le_uint()
  local display = display.bid_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.bid_size_4, range, value, display)

  return offset + size_of.bid_size_4
end

-- Size: Bid Price 4
size_of.bid_price_4 = 4

-- Display: Bid Price 4
display.bid_price_4 = function(value)
  return "Bid Price 4: "..value
end

-- Dissect: Bid Price 4
dissect.bid_price_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price_4)
  local value = range:le_uint()
  local display = display.bid_price_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.bid_price_4, range, value, display)

  return offset + size_of.bid_price_4
end

-- Display: Wide Double Sided Top Of Market Message
display.wide_double_sided_top_of_market_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Double Sided Top Of Market Message
dissect.wide_double_sided_top_of_market_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Bid Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_priority_customer_size_4(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  -- Offer Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_priority_customer_size_4(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Double Sided Top Of Market Message
dissect.wide_double_sided_top_of_market_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_double_sided_top_of_market_message then
    local range = buffer(offset, 34)
    local display = display.wide_double_sided_top_of_market_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.wide_double_sided_top_of_market_message, range, display)
  end

  return dissect.wide_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Priority Customer Size 2
size_of.offer_priority_customer_size_2 = 2

-- Display: Offer Priority Customer Size 2
display.offer_priority_customer_size_2 = function(value)
  return "Offer Priority Customer Size 2: "..value
end

-- Dissect: Offer Priority Customer Size 2
dissect.offer_priority_customer_size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_priority_customer_size_2)
  local value = range:le_uint()
  local display = display.offer_priority_customer_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.offer_priority_customer_size_2, range, value, display)

  return offset + size_of.offer_priority_customer_size_2
end

-- Size: Offer Size 2
size_of.offer_size_2 = 2

-- Display: Offer Size 2
display.offer_size_2 = function(value)
  return "Offer Size 2: "..value
end

-- Dissect: Offer Size 2
dissect.offer_size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_size_2)
  local value = range:le_uint()
  local display = display.offer_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.offer_size_2, range, value, display)

  return offset + size_of.offer_size_2
end

-- Size: Offer Price 2
size_of.offer_price_2 = 2

-- Display: Offer Price 2
display.offer_price_2 = function(value)
  return "Offer Price 2: "..value
end

-- Dissect: Offer Price 2
dissect.offer_price_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_price_2)
  local value = range:le_uint()
  local display = display.offer_price_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.offer_price_2, range, value, display)

  return offset + size_of.offer_price_2
end

-- Size: Bid Priority Customer Size 2
size_of.bid_priority_customer_size_2 = 2

-- Display: Bid Priority Customer Size 2
display.bid_priority_customer_size_2 = function(value)
  return "Bid Priority Customer Size 2: "..value
end

-- Dissect: Bid Priority Customer Size 2
dissect.bid_priority_customer_size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_priority_customer_size_2)
  local value = range:le_uint()
  local display = display.bid_priority_customer_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.bid_priority_customer_size_2, range, value, display)

  return offset + size_of.bid_priority_customer_size_2
end

-- Size: Bid Size 2
size_of.bid_size_2 = 2

-- Display: Bid Size 2
display.bid_size_2 = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
dissect.bid_size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_size_2)
  local value = range:le_uint()
  local display = display.bid_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.bid_size_2, range, value, display)

  return offset + size_of.bid_size_2
end

-- Size: Bid Price 2
size_of.bid_price_2 = 2

-- Display: Bid Price 2
display.bid_price_2 = function(value)
  return "Bid Price 2: "..value
end

-- Dissect: Bid Price 2
dissect.bid_price_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price_2)
  local value = range:le_uint()
  local display = display.bid_price_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.bid_price_2, range, value, display)

  return offset + size_of.bid_price_2
end

-- Display: Double Sided Top Of Market Compact Message
display.double_sided_top_of_market_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Double Sided Top Of Market Compact Message
dissect.double_sided_top_of_market_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Bid Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_priority_customer_size_2(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  -- Offer Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_priority_customer_size_2(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Double Sided Top Of Market Compact Message
dissect.double_sided_top_of_market_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.double_sided_top_of_market_compact_message then
    local range = buffer(offset, 22)
    local display = display.double_sided_top_of_market_compact_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.double_sided_top_of_market_compact_message, range, display)
  end

  return dissect.double_sided_top_of_market_compact_message_fields(buffer, offset, packet, parent)
end

-- Size: Mbbo Condition
size_of.mbbo_condition = 1

-- Display: Mbbo Condition
display.mbbo_condition = function(value)
  if value == "A" then
    return "Mbbo Condition: Regular (A)"
  end
  if value == "B" then
    return "Mbbo Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Mbbo Condition: Not Firm (C)"
  end
  if value == "T" then
    return "Mbbo Condition: Trading Halt (T)"
  end

  return "Mbbo Condition: Unknown("..value..")"
end

-- Dissect: Mbbo Condition
dissect.mbbo_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mbbo_condition)
  local value = range:string()
  local display = display.mbbo_condition(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.mbbo_condition, range, value, display)

  return offset + size_of.mbbo_condition
end

-- Size: Mbbo Priority Customer Size 4
size_of.mbbo_priority_customer_size_4 = 4

-- Display: Mbbo Priority Customer Size 4
display.mbbo_priority_customer_size_4 = function(value)
  return "Mbbo Priority Customer Size 4: "..value
end

-- Dissect: Mbbo Priority Customer Size 4
dissect.mbbo_priority_customer_size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mbbo_priority_customer_size_4)
  local value = range:le_uint()
  local display = display.mbbo_priority_customer_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.mbbo_priority_customer_size_4, range, value, display)

  return offset + size_of.mbbo_priority_customer_size_4
end

-- Size: Mbbo Size 4
size_of.mbbo_size_4 = 4

-- Display: Mbbo Size 4
display.mbbo_size_4 = function(value)
  return "Mbbo Size 4: "..value
end

-- Dissect: Mbbo Size 4
dissect.mbbo_size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mbbo_size_4)
  local value = range:le_uint()
  local display = display.mbbo_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.mbbo_size_4, range, value, display)

  return offset + size_of.mbbo_size_4
end

-- Size: Mbbo Price 4
size_of.mbbo_price_4 = 4

-- Display: Mbbo Price 4
display.mbbo_price_4 = function(value)
  return "Mbbo Price 4: "..value
end

-- Dissect: Mbbo Price 4
dissect.mbbo_price_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mbbo_price_4)
  local value = range:le_uint()
  local display = display.mbbo_price_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.mbbo_price_4, range, value, display)

  return offset + size_of.mbbo_price_4
end

-- Display: Wide Top Of Market Offer Message
display.wide_top_of_market_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Top Of Market Offer Message
dissect.wide_top_of_market_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_price_4(buffer, index, packet, parent)

  -- Mbbo Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_size_4(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_priority_customer_size_4(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top Of Market Offer Message
dissect.wide_top_of_market_offer_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_top_of_market_offer_message then
    local range = buffer(offset, 21)
    local display = display.wide_top_of_market_offer_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.wide_top_of_market_offer_message, range, display)
  end

  return dissect.wide_top_of_market_offer_message_fields(buffer, offset, packet, parent)
end

-- Display: Wide Top Of Market Bid Message
display.wide_top_of_market_bid_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wide Top Of Market Bid Message
dissect.wide_top_of_market_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_price_4(buffer, index, packet, parent)

  -- Mbbo Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_size_4(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_priority_customer_size_4(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top Of Market Bid Message
dissect.wide_top_of_market_bid_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wide_top_of_market_bid_message then
    local range = buffer(offset, 21)
    local display = display.wide_top_of_market_bid_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.wide_top_of_market_bid_message, range, display)
  end

  return dissect.wide_top_of_market_bid_message_fields(buffer, offset, packet, parent)
end

-- Size: Mbbo Priority Customer Size 2
size_of.mbbo_priority_customer_size_2 = 2

-- Display: Mbbo Priority Customer Size 2
display.mbbo_priority_customer_size_2 = function(value)
  return "Mbbo Priority Customer Size 2: "..value
end

-- Dissect: Mbbo Priority Customer Size 2
dissect.mbbo_priority_customer_size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mbbo_priority_customer_size_2)
  local value = range:le_uint()
  local display = display.mbbo_priority_customer_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.mbbo_priority_customer_size_2, range, value, display)

  return offset + size_of.mbbo_priority_customer_size_2
end

-- Size: Mbbo Size 2
size_of.mbbo_size_2 = 2

-- Display: Mbbo Size 2
display.mbbo_size_2 = function(value)
  return "Mbbo Size 2: "..value
end

-- Dissect: Mbbo Size 2
dissect.mbbo_size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mbbo_size_2)
  local value = range:le_uint()
  local display = display.mbbo_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.mbbo_size_2, range, value, display)

  return offset + size_of.mbbo_size_2
end

-- Size: Mbbo Price 2
size_of.mbbo_price_2 = 2

-- Display: Mbbo Price 2
display.mbbo_price_2 = function(value)
  return "Mbbo Price 2: "..value
end

-- Dissect: Mbbo Price 2
dissect.mbbo_price_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mbbo_price_2)
  local value = range:le_uint()
  local display = display.mbbo_price_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.mbbo_price_2, range, value, display)

  return offset + size_of.mbbo_price_2
end

-- Display: Top Of Market Offer Compact Message
display.top_of_market_offer_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Top Of Market Offer Compact Message
dissect.top_of_market_offer_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_price_2(buffer, index, packet, parent)

  -- Mbbo Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_size_2(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_priority_customer_size_2(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Offer Compact Message
dissect.top_of_market_offer_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.top_of_market_offer_compact_message then
    local range = buffer(offset, 15)
    local display = display.top_of_market_offer_compact_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.top_of_market_offer_compact_message, range, display)
  end

  return dissect.top_of_market_offer_compact_message_fields(buffer, offset, packet, parent)
end

-- Display: Top Of Market Bid Compact Message
display.top_of_market_bid_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Top Of Market Bid Compact Message
dissect.top_of_market_bid_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_price_2(buffer, index, packet, parent)

  -- Mbbo Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_size_2(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mbbo_priority_customer_size_2(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Bid Compact Message
dissect.top_of_market_bid_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.top_of_market_bid_compact_message then
    local range = buffer(offset, 15)
    local display = display.top_of_market_bid_compact_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.top_of_market_bid_compact_message, range, display)
  end

  return dissect.top_of_market_bid_compact_message_fields(buffer, offset, packet, parent)
end

-- Size: System Status
size_of.system_status = 1

-- Display: System Status
display.system_status = function(value)
  if value == "S" then
    return "System Status: Start Of System Hours (S)"
  end
  if value == "C" then
    return "System Status: End Of System Hours (C)"
  end
  if value == "1" then
    return "System Status: Start Test Session (1)"
  end
  if value == "2" then
    return "System Status: End Of Test Session (2)"
  end
  if value == "B" then
    return "System Status: Top Bid (B)"
  end
  if value == "O" then
    return "System Status: Top Offer (O)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect: System Status
dissect.system_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.system_status)
  local value = range:string()
  local display = display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.system_status, range, value, display)

  return offset + size_of.system_status
end

-- Size: Session Id
size_of.session_id = 4

-- Display: Session Id
display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
dissect.session_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session_id)
  local value = range:le_uint()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.session_id, range, value, display)

  return offset + size_of.session_id
end

-- Size: To M Version
size_of.to_m_version = 8

-- Display: To M Version
display.to_m_version = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
dissect.to_m_version = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.to_m_version)
  local value = range:string()
  local display = display.to_m_version(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.to_m_version, range, value, display)

  return offset + size_of.to_m_version
end

-- Size: Notification Time
size_of.notification_time = 4

-- Display: Notification Time
display.notification_time = function(value)
  return "Notification Time: "..value
end

-- Dissect: Notification Time
dissect.notification_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.notification_time)
  local value = range:le_uint()
  local display = display.notification_time(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.notification_time, range, value, display)

  return offset + size_of.notification_time
end

-- Display: System State Message
display.system_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System State Message
dissect.system_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.notification_time(buffer, index, packet, parent)

  -- To M Version: 8 Byte Ascii String
  index = dissect.to_m_version(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.session_id(buffer, index, packet, parent)

  -- System Status: 1 Byte Ascii String Enum with 6 values
  index = dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
dissect.system_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_state_message then
    local range = buffer(offset, 17)
    local display = display.system_state_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.system_state_message, range, display)
  end

  return dissect.system_state_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved
size_of.reserved = 8

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved)
  local value = range:le_uint64()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.reserved, range, value, display)

  return offset + size_of.reserved
end

-- Size: Priority Quote Width
size_of.priority_quote_width = 4

-- Display: Priority Quote Width
display.priority_quote_width = function(value)
  return "Priority Quote Width: "..value
end

-- Dissect: Priority Quote Width
dissect.priority_quote_width = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.priority_quote_width)
  local value = range:le_uint()
  local display = display.priority_quote_width(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.priority_quote_width, range, value, display)

  return offset + size_of.priority_quote_width
end

-- Size: Opening Underlying Market Code
size_of.opening_underlying_market_code = 1

-- Display: Opening Underlying Market Code
display.opening_underlying_market_code = function(value)
  if value == "A" then
    return "Opening Underlying Market Code: Nyse Amex (A)"
  end
  if value == "B" then
    return "Opening Underlying Market Code: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Opening Underlying Market Code: Nse (C)"
  end
  if value == "D" then
    return "Opening Underlying Market Code: Finra Adf (D)"
  end
  if value == "E" then
    return "Opening Underlying Market Code: Market Independent (E)"
  end
  if value == "I" then
    return "Opening Underlying Market Code: Ise (I)"
  end
  if value == "J" then
    return "Opening Underlying Market Code: Edga (J)"
  end
  if value == "K" then
    return "Opening Underlying Market Code: Edgx (K)"
  end
  if value == "M" then
    return "Opening Underlying Market Code: Cse (M)"
  end
  if value == "N" then
    return "Opening Underlying Market Code: Nyse Euronext (N)"
  end
  if value == "P" then
    return "Opening Underlying Market Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Opening Underlying Market Code: Nasdaq Omx Utp (Q)"
  end
  if value == "T" then
    return "Opening Underlying Market Code: Nasdaq Omx Cta (T)"
  end
  if value == "V" then
    return "Opening Underlying Market Code: Iex (V)"
  end
  if value == "X" then
    return "Opening Underlying Market Code: Nasdaq Omx Phlx (X)"
  end
  if value == "Y" then
    return "Opening Underlying Market Code: Bats Y (Y)"
  end
  if value == "Z" then
    return "Opening Underlying Market Code: Bats (Z)"
  end

  return "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
dissect.opening_underlying_market_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.opening_underlying_market_code)
  local value = range:string()
  local display = display.opening_underlying_market_code(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.opening_underlying_market_code, range, value, display)

  return offset + size_of.opening_underlying_market_code
end

-- Size: Liquidity Acceptance Increment Indicator
size_of.liquidity_acceptance_increment_indicator = 1

-- Display: Liquidity Acceptance Increment Indicator
display.liquidity_acceptance_increment_indicator = function(value)
  if value == "P" then
    return "Liquidity Acceptance Increment Indicator: Penny (P)"
  end
  if value == "N" then
    return "Liquidity Acceptance Increment Indicator: Nickel (N)"
  end
  if value == "D" then
    return "Liquidity Acceptance Increment Indicator: Dime (D)"
  end

  return "Liquidity Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Acceptance Increment Indicator
dissect.liquidity_acceptance_increment_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.liquidity_acceptance_increment_indicator)
  local value = range:string()
  local display = display.liquidity_acceptance_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + size_of.liquidity_acceptance_increment_indicator
end

-- Size: Miax Bbo Posting Increment Indicator
size_of.miax_bbo_posting_increment_indicator = 1

-- Display: Miax Bbo Posting Increment Indicator
display.miax_bbo_posting_increment_indicator = function(value)
  if value == "P" then
    return "Miax Bbo Posting Increment Indicator: Penny (P)"
  end
  if value == "N" then
    return "Miax Bbo Posting Increment Indicator: Nickel (N)"
  end
  if value == "D" then
    return "Miax Bbo Posting Increment Indicator: Dime (D)"
  end

  return "Miax Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Miax Bbo Posting Increment Indicator
dissect.miax_bbo_posting_increment_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.miax_bbo_posting_increment_indicator)
  local value = range:string()
  local display = display.miax_bbo_posting_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + size_of.miax_bbo_posting_increment_indicator
end

-- Size: Active On Miax
size_of.active_on_miax = 1

-- Display: Active On Miax
display.active_on_miax = function(value)
  return "Active On Miax: "..value
end

-- Dissect: Active On Miax
dissect.active_on_miax = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.active_on_miax)
  local value = range:string()
  local display = display.active_on_miax(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.active_on_miax, range, value, display)

  return offset + size_of.active_on_miax
end

-- Size: Long Term Option
size_of.long_term_option = 1

-- Display: Long Term Option
display.long_term_option = function(value)
  return "Long Term Option: "..value
end

-- Dissect: Long Term Option
dissect.long_term_option = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.long_term_option)
  local value = range:string()
  local display = display.long_term_option(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.long_term_option, range, value, display)

  return offset + size_of.long_term_option
end

-- Size: Restricted Option
size_of.restricted_option = 1

-- Display: Restricted Option
display.restricted_option = function(value)
  return "Restricted Option: "..value
end

-- Dissect: Restricted Option
dissect.restricted_option = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.restricted_option)
  local value = range:string()
  local display = display.restricted_option(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.restricted_option, range, value, display)

  return offset + size_of.restricted_option
end

-- Size: Closing Time
size_of.closing_time = 8

-- Display: Closing Time
display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
dissect.closing_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.closing_time)
  local value = range:string()
  local display = display.closing_time(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.closing_time, range, value, display)

  return offset + size_of.closing_time
end

-- Size: Opening Time
size_of.opening_time = 8

-- Display: Opening Time
display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
dissect.opening_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.opening_time)
  local value = range:string()
  local display = display.opening_time(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.opening_time, range, value, display)

  return offset + size_of.opening_time
end

-- Size: Call Or Put
size_of.call_or_put = 1

-- Display: Call Or Put
display.call_or_put = function(value)
  return "Call Or Put: "..value
end

-- Dissect: Call Or Put
dissect.call_or_put = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.call_or_put)
  local value = range:string()
  local display = display.call_or_put(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.call_or_put, range, value, display)

  return offset + size_of.call_or_put
end

-- Size: Strike Price
size_of.strike_price = 4

-- Display: Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price)
  local value = range:le_uint()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.strike_price, range, value, display)

  return offset + size_of.strike_price
end

-- Size: Expiration Date
size_of.expiration_date = 8

-- Display: Expiration Date
display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
dissect.expiration_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_date)
  local value = range:string()
  local display = display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.expiration_date, range, value, display)

  return offset + size_of.expiration_date
end

-- Size: Security Symbol
size_of.security_symbol = 6

-- Display: Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
dissect.security_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_symbol)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.security_symbol, range, value, display)

  return offset + size_of.security_symbol
end

-- Size: Product Add Update Time
size_of.product_add_update_time = 4

-- Display: Product Add Update Time
display.product_add_update_time = function(value)
  return "Product Add Update Time: "..value
end

-- Dissect: Product Add Update Time
dissect.product_add_update_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.product_add_update_time)
  local value = range:le_uint()
  local display = display.product_add_update_time(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.product_add_update_time, range, value, display)

  return offset + size_of.product_add_update_time
end

-- Display: Series Update
display.series_update = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Series Update
dissect.series_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_add_update_time(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index = dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Date: 8 Byte Ascii String
  index = dissect.expiration_date(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price(buffer, index, packet, parent)

  -- Call Or Put: 1 Byte Ascii String
  index = dissect.call_or_put(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Ascii String
  index = dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Ascii String
  index = dissect.closing_time(buffer, index, packet, parent)

  -- Restricted Option: 1 Byte Ascii String
  index = dissect.restricted_option(buffer, index, packet, parent)

  -- Long Term Option: 1 Byte Ascii String
  index = dissect.long_term_option(buffer, index, packet, parent)

  -- Active On Miax: 1 Byte Ascii String
  index = dissect.active_on_miax(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index = dissect.miax_bbo_posting_increment_indicator(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index = dissect.liquidity_acceptance_increment_indicator(buffer, index, packet, parent)

  -- Opening Underlying Market Code: 1 Byte Ascii String Enum with 17 values
  index = dissect.opening_underlying_market_code(buffer, index, packet, parent)

  -- Priority Quote Width: 4 Byte Unsigned Fixed Width Integer
  index = dissect.priority_quote_width(buffer, index, packet, parent)

  -- Reserved: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Update
dissect.series_update = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.series_update then
    local range = buffer(offset, 72)
    local display = display.series_update(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.series_update, range, display)
  end

  return dissect.series_update_fields(buffer, offset, packet, parent)
end

-- Display: System Time Message
display.system_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Time Message
dissect.system_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
dissect.system_time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_time_message then
    local range = buffer(offset, 4)
    local display = display.system_time_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.system_time_message, range, display)
  end

  return dissect.system_time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
size_of.data = function(buffer, offset, messagetype)
  -- Size of System Time Message
  if messagetype == "1" then
    return 4
  end
  -- Size of Series Update
  if messagetype == "P" then
    return 72
  end
  -- Size of System State Message
  if messagetype == "S" then
    return 17
  end
  -- Size of Top Of Market Bid Compact Message
  if messagetype == "B" then
    return 15
  end
  -- Size of Top Of Market Offer Compact Message
  if messagetype == "O" then
    return 15
  end
  -- Size of Wide Top Of Market Bid Message
  if messagetype == "W" then
    return 21
  end
  -- Size of Wide Top Of Market Offer Message
  if messagetype == "A" then
    return 21
  end
  -- Size of Double Sided Top Of Market Compact Message
  if messagetype == "d" then
    return 22
  end
  -- Size of Wide Double Sided Top Of Market Message
  if messagetype == "D" then
    return 34
  end
  -- Size of Trade Message
  if messagetype == "T" then
    return 27
  end
  -- Size of Trade Cancel Message
  if messagetype == "X" then
    return 22
  end
  -- Size of Underlying Trading Status Message
  if messagetype == "H" then
    return 25
  end

  return 0
end

-- Display: Data
display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
dissect.data_branches = function(buffer, offset, packet, parent, messagetype)
  -- Dissect System Time Message
  if messagetype == "1" then
    return dissect.system_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Series Update
  if messagetype == "P" then
    return dissect.series_update(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if messagetype == "S" then
    return dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Market Bid Compact Message
  if messagetype == "B" then
    return dissect.top_of_market_bid_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Market Offer Compact Message
  if messagetype == "O" then
    return dissect.top_of_market_offer_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top Of Market Bid Message
  if messagetype == "W" then
    return dissect.wide_top_of_market_bid_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top Of Market Offer Message
  if messagetype == "A" then
    return dissect.wide_top_of_market_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Double Sided Top Of Market Compact Message
  if messagetype == "d" then
    return dissect.double_sided_top_of_market_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Double Sided Top Of Market Message
  if messagetype == "D" then
    return dissect.wide_double_sided_top_of_market_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if messagetype == "T" then
    return dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if messagetype == "X" then
    return dissect.trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Message
  if messagetype == "H" then
    return dissect.underlying_trading_status_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
dissect.data = function(buffer, offset, packet, parent, code)
  if not show.data then
    return dissect.data_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.data(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.data(buffer, packet, parent)
  local element = parent:add(miax_options_tom_mach_v1_9.fields.data, range, display)

  return dissect.data_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  if value == "1" then
    return "Message Type: System Time Message (1)"
  end
  if value == "P" then
    return "Message Type: Series Update (P)"
  end
  if value == "S" then
    return "Message Type: System State Message (S)"
  end
  if value == "B" then
    return "Message Type: Top Of Market Bid Compact Message (B)"
  end
  if value == "O" then
    return "Message Type: Top Of Market Offer Compact Message (O)"
  end
  if value == "W" then
    return "Message Type: Wide Top Of Market Bid Message (W)"
  end
  if value == "A" then
    return "Message Type: Wide Top Of Market Offer Message (A)"
  end
  if value == "d" then
    return "Message Type: Double Sided Top Of Market Compact Message (d)"
  end
  if value == "D" then
    return "Message Type: Wide Double Sided Top Of Market Message (D)"
  end
  if value == "T" then
    return "Message Type: Trade Message (T)"
  end
  if value == "X" then
    return "Message Type: Trade Cancel Message (X)"
  end
  if value == "H" then
    return "Message Type: Underlying Trading Status Message (H)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_type)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.message_type, range, value, display)

  return offset + size_of.message_type
end

-- Calculate runtime size: Application Message
size_of.application_message = function(buffer, offset)
  local index = 0

  index = index + 1

  -- Calculate runtime size of Data field
  local data_offset = offset + index
  local data_type = buffer(data_offset - 1, 1):string()
  index = index + size_of.data(buffer, data_offset, data_type)

  return index
end

-- Display: Application Message
display.application_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Application Message
dissect.application_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index = dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  local code = buffer(index - 1, 1):string()
  index = dissect.data(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Application Message
dissect.application_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.application_message then
    local length = size_of.application_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.application_message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.application_message, range, display)
  end

  return dissect.application_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, packettype)
  -- Size of Application Message
  if packettype == 3 then
    return size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, packettype)
  -- Dissect Application Message
  if packettype == 3 then
    return dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, code)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(miax_options_tom_mach_v1_9.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Session Number
size_of.session_number = 1

-- Display: Session Number
display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
dissect.session_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session_number)
  local value = range:le_uint()
  local display = display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.session_number, range, value, display)

  return offset + size_of.session_number
end

-- Size: Packet Type
size_of.packet_type = 1

-- Display: Packet Type
display.packet_type = function(value)
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
dissect.packet_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.packet_type)
  local value = range:le_uint()
  local display = display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.packet_type, range, value, display)

  return offset + size_of.packet_type
end

-- Size: Packet Length
size_of.packet_length = 2

-- Display: Packet Length
display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
dissect.packet_length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.packet_length)
  local value = range:le_uint()
  local display = display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.packet_length, range, value, display)

  return offset + size_of.packet_length
end

-- Size: Sequence Number
size_of.sequence_number = 8

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence_number)
  local value = range:le_uint64()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_options_tom_mach_v1_9.fields.sequence_number, range, value, display)

  return offset + size_of.sequence_number
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 12

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index = dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  local code = buffer(index - 2, 1):le_uint()
  index = dissect.payload(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(miax_options_tom_mach_v1_9.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Message: Struct of 5 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end


  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_options_tom_mach_v1_9.init()
end

-- Dissector for Miax Options Tom Mach 1.9
function miax_options_tom_mach_v1_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_options_tom_mach_v1_9.name

  -- Dissect protocol
  local protocol = parent:add(miax_options_tom_mach_v1_9, buffer(), miax_options_tom_mach_v1_9.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_options_tom_mach_v1_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_options_tom_mach_v1_9_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax Options Tom Mach 1.9
local function miax_options_tom_mach_v1_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_options_tom_mach_v1_9_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_options_tom_mach_v1_9
  miax_options_tom_mach_v1_9.dissector(buffer, packet, parent)

  return true
end

-- Register Miax Options Tom Mach 1.9 Heuristic
miax_options_tom_mach_v1_9:register_heuristic("udp", miax_options_tom_mach_v1_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Securities Exchange
--   Version: 1.9
--   Date: Friday, January 15, 2016
--   Specification: Top_Of_Market_Feed_ToM_v1_9.pdf
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
