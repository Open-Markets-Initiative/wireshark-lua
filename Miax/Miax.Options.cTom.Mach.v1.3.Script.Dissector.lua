-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax Options cTom Mach 1.3 Protocol
local miax_options_ctom_mach_v1_3 = Proto("Miax.Options.cTom.Mach.v1.3.Lua", "Miax Options cTom Mach 1.3")

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

-- Miax Options cTom Mach 1.3 Fields
miax_options_ctom_mach_v1_3.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.options.ctom.mach.v1.3.activeonmiax", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.application_message = ProtoField.new("Application Message", "miax.options.ctom.mach.v1.3.applicationmessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.bid_condition = ProtoField.new("Bid Condition", "miax.options.ctom.mach.v1.3.bidcondition", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.bid_price_2 = ProtoField.new("Bid Price 2", "miax.options.ctom.mach.v1.3.bidprice2", ftypes.INT16)
miax_options_ctom_mach_v1_3.fields.bid_price_8 = ProtoField.new("Bid Price 8", "miax.options.ctom.mach.v1.3.bidprice8", ftypes.INT64)
miax_options_ctom_mach_v1_3.fields.bid_priority_customer_size_2 = ProtoField.new("Bid Priority Customer Size 2", "miax.options.ctom.mach.v1.3.bidprioritycustomersize2", ftypes.UINT16)
miax_options_ctom_mach_v1_3.fields.bid_priority_customer_size_4 = ProtoField.new("Bid Priority Customer Size 4", "miax.options.ctom.mach.v1.3.bidprioritycustomersize4", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.bid_size_2 = ProtoField.new("Bid Size 2", "miax.options.ctom.mach.v1.3.bidsize2", ftypes.UINT16)
miax_options_ctom_mach_v1_3.fields.bid_size_4 = ProtoField.new("Bid Size 4", "miax.options.ctom.mach.v1.3.bidsize4", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.call_or_put = ProtoField.new("Call Or Put", "miax.options.ctom.mach.v1.3.callorput", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.closing_time = ProtoField.new("Closing Time", "miax.options.ctom.mach.v1.3.closingtime", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.complex_double_sided_top_of_market_compact_message = ProtoField.new("Complex Double Sided Top Of Market Compact Message", "miax.options.ctom.mach.v1.3.complexdoublesidedtopofmarketcompactmessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.complex_double_sided_top_of_market_wide_message = ProtoField.new("Complex Double Sided Top Of Market Wide Message", "miax.options.ctom.mach.v1.3.complexdoublesidedtopofmarketwidemessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.complex_strategy_definition_message = ProtoField.new("Complex Strategy Definition Message", "miax.options.ctom.mach.v1.3.complexstrategydefinitionmessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.complex_top_of_market_bid_compact_message = ProtoField.new("Complex Top Of Market Bid Compact Message", "miax.options.ctom.mach.v1.3.complextopofmarketbidcompactmessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.complex_top_of_market_bid_wide_message = ProtoField.new("Complex Top Of Market Bid Wide Message", "miax.options.ctom.mach.v1.3.complextopofmarketbidwidemessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.complex_top_of_market_offer_compact_message = ProtoField.new("Complex Top Of Market Offer Compact Message", "miax.options.ctom.mach.v1.3.complextopofmarketoffercompactmessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.complex_top_of_market_offer_wide_message = ProtoField.new("Complex Top Of Market Offer Wide Message", "miax.options.ctom.mach.v1.3.complextopofmarketofferwidemessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.data = ProtoField.new("Data", "miax.options.ctom.mach.v1.3.data", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.event_reason = ProtoField.new("Event Reason", "miax.options.ctom.mach.v1.3.eventreason", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.expected_event_time_nano_seconds = ProtoField.new("Expected Event Time Nano Seconds", "miax.options.ctom.mach.v1.3.expectedeventtimenanoseconds", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.expected_event_time_seconds = ProtoField.new("Expected Event Time Seconds", "miax.options.ctom.mach.v1.3.expectedeventtimeseconds", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.expiration_date = ProtoField.new("Expiration Date", "miax.options.ctom.mach.v1.3.expirationdate", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.leg_definition = ProtoField.new("Leg Definition", "miax.options.ctom.mach.v1.3.legdefinition", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "miax.options.ctom.mach.v1.3.legratioqty", ftypes.UINT16)
miax_options_ctom_mach_v1_3.fields.leg_side = ProtoField.new("Leg Side", "miax.options.ctom.mach.v1.3.legside", ftypes.BYTES)
miax_options_ctom_mach_v1_3.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.options.ctom.mach.v1.3.liquidityacceptanceincrementindicator", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.long_term_option = ProtoField.new("Long Term Option", "miax.options.ctom.mach.v1.3.longtermoption", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.message = ProtoField.new("Message", "miax.options.ctom.mach.v1.3.message", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.message_type = ProtoField.new("Message Type", "miax.options.ctom.mach.v1.3.messagetype", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.options.ctom.mach.v1.3.miaxbbopostingincrementindicator", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.net_price = ProtoField.new("Net Price", "miax.options.ctom.mach.v1.3.netprice", ftypes.INT64)
miax_options_ctom_mach_v1_3.fields.notification_time = ProtoField.new("Notification Time", "miax.options.ctom.mach.v1.3.notificationtime", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.options.ctom.mach.v1.3.numberoflegs", ftypes.UINT8)
miax_options_ctom_mach_v1_3.fields.offer_condition = ProtoField.new("Offer Condition", "miax.options.ctom.mach.v1.3.offercondition", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.offer_price_2 = ProtoField.new("Offer Price 2", "miax.options.ctom.mach.v1.3.offerprice2", ftypes.INT16)
miax_options_ctom_mach_v1_3.fields.offer_price_8 = ProtoField.new("Offer Price 8", "miax.options.ctom.mach.v1.3.offerprice8", ftypes.INT64)
miax_options_ctom_mach_v1_3.fields.offer_priority_customer_size_2 = ProtoField.new("Offer Priority Customer Size 2", "miax.options.ctom.mach.v1.3.offerprioritycustomersize2", ftypes.UINT16)
miax_options_ctom_mach_v1_3.fields.offer_priority_customer_size_4 = ProtoField.new("Offer Priority Customer Size 4", "miax.options.ctom.mach.v1.3.offerprioritycustomersize4", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.offer_size_2 = ProtoField.new("Offer Size 2", "miax.options.ctom.mach.v1.3.offersize2", ftypes.UINT16)
miax_options_ctom_mach_v1_3.fields.offer_size_4 = ProtoField.new("Offer Size 4", "miax.options.ctom.mach.v1.3.offersize4", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.opening_time = ProtoField.new("Opening Time", "miax.options.ctom.mach.v1.3.openingtime", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.options.ctom.mach.v1.3.openingunderlyingmarketcode", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.packet = ProtoField.new("Packet", "miax.options.ctom.mach.v1.3.packet", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.packet_length = ProtoField.new("Packet Length", "miax.options.ctom.mach.v1.3.packetlength", ftypes.UINT16)
miax_options_ctom_mach_v1_3.fields.packet_type = ProtoField.new("Packet Type", "miax.options.ctom.mach.v1.3.packettype", ftypes.UINT8)
miax_options_ctom_mach_v1_3.fields.payload = ProtoField.new("Payload", "miax.options.ctom.mach.v1.3.payload", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.price_2 = ProtoField.new("Price 2", "miax.options.ctom.mach.v1.3.price2", ftypes.INT16)
miax_options_ctom_mach_v1_3.fields.price_8 = ProtoField.new("Price 8", "miax.options.ctom.mach.v1.3.price8", ftypes.INT64)
miax_options_ctom_mach_v1_3.fields.priority_customer_size_2 = ProtoField.new("Priority Customer Size 2", "miax.options.ctom.mach.v1.3.prioritycustomersize2", ftypes.UINT16)
miax_options_ctom_mach_v1_3.fields.priority_customer_size_4 = ProtoField.new("Priority Customer Size 4", "miax.options.ctom.mach.v1.3.prioritycustomersize4", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.options.ctom.mach.v1.3.priorityquotewidth", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.options.ctom.mach.v1.3.productaddupdatetime", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.product_id = ProtoField.new("Product Id", "miax.options.ctom.mach.v1.3.productid", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.options.ctom.mach.v1.3.reserved1", ftypes.BYTES)
miax_options_ctom_mach_v1_3.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.options.ctom.mach.v1.3.reserved10", ftypes.BYTES)
miax_options_ctom_mach_v1_3.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.options.ctom.mach.v1.3.reserved16", ftypes.BYTES)
miax_options_ctom_mach_v1_3.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.options.ctom.mach.v1.3.reserved8", ftypes.UINT64)
miax_options_ctom_mach_v1_3.fields.reserved8 = ProtoField.new("Reserved8", "miax.options.ctom.mach.v1.3.reserved8", ftypes.UINT64)
miax_options_ctom_mach_v1_3.fields.restricted_option = ProtoField.new("Restricted Option", "miax.options.ctom.mach.v1.3.restrictedoption", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.security_symbol = ProtoField.new("Security Symbol", "miax.options.ctom.mach.v1.3.securitysymbol", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "miax.options.ctom.mach.v1.3.sequencenumber", ftypes.UINT64)
miax_options_ctom_mach_v1_3.fields.session_id = ProtoField.new("Session Id", "miax.options.ctom.mach.v1.3.sessionid", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.session_number = ProtoField.new("Session Number", "miax.options.ctom.mach.v1.3.sessionnumber", ftypes.UINT8)
miax_options_ctom_mach_v1_3.fields.simple_series_update_message = ProtoField.new("Simple Series Update Message", "miax.options.ctom.mach.v1.3.simpleseriesupdatemessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.size_2 = ProtoField.new("Size 2", "miax.options.ctom.mach.v1.3.size2", ftypes.UINT16)
miax_options_ctom_mach_v1_3.fields.size_4 = ProtoField.new("Size 4", "miax.options.ctom.mach.v1.3.size4", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.strategy_add_time = ProtoField.new("Strategy Add Time", "miax.options.ctom.mach.v1.3.strategyaddtime", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.strategy_id = ProtoField.new("Strategy Id", "miax.options.ctom.mach.v1.3.strategyid", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.strategy_last_sale_message = ProtoField.new("Strategy Last Sale Message", "miax.options.ctom.mach.v1.3.strategylastsalemessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.strike_price = ProtoField.new("Strike Price", "miax.options.ctom.mach.v1.3.strikeprice", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.system_state_message = ProtoField.new("System State Message", "miax.options.ctom.mach.v1.3.systemstatemessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.system_status = ProtoField.new("System Status", "miax.options.ctom.mach.v1.3.systemstatus", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.system_time_message = ProtoField.new("System Time Message", "miax.options.ctom.mach.v1.3.systemtimemessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.timestamp = ProtoField.new("Timestamp", "miax.options.ctom.mach.v1.3.timestamp", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.top_of_market_quote_condition = ProtoField.new("Top Of Market Quote Condition", "miax.options.ctom.mach.v1.3.topofmarketquotecondition", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.trade_condition = ProtoField.new("Trade Condition", "miax.options.ctom.mach.v1.3.tradecondition", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.trade_id = ProtoField.new("Trade Id", "miax.options.ctom.mach.v1.3.tradeid", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.trade_size = ProtoField.new("Trade Size", "miax.options.ctom.mach.v1.3.tradesize", ftypes.UINT32)
miax_options_ctom_mach_v1_3.fields.trading_status = ProtoField.new("Trading Status", "miax.options.ctom.mach.v1.3.tradingstatus", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.options.ctom.mach.v1.3.underlyingsymbol", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.underlying_trading_status_notification_message = ProtoField.new("Underlying Trading Status Notification Message", "miax.options.ctom.mach.v1.3.underlyingtradingstatusnotificationmessage", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.update_reason = ProtoField.new("Update Reason", "miax.options.ctom.mach.v1.3.updatereason", ftypes.STRING)
miax_options_ctom_mach_v1_3.fields.version = ProtoField.new("Version", "miax.options.ctom.mach.v1.3.version", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax Options cTom Mach 1.3 Element Dissection Options
show.application_message = true
show.complex_double_sided_top_of_market_compact_message = true
show.complex_double_sided_top_of_market_wide_message = true
show.complex_strategy_definition_message = true
show.complex_top_of_market_bid_compact_message = true
show.complex_top_of_market_bid_wide_message = true
show.complex_top_of_market_offer_compact_message = true
show.complex_top_of_market_offer_wide_message = true
show.leg_definition = true
show.message = true
show.packet = true
show.simple_series_update_message = true
show.strategy_last_sale_message = true
show.system_state_message = true
show.system_time_message = true
show.underlying_trading_status_notification_message = true
show.data = false
show.payload = false

-- Register Miax Options cTom Mach 1.3 Show Options
miax_options_ctom_mach_v1_3.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_complex_double_sided_top_of_market_compact_message = Pref.bool("Show Complex Double Sided Top Of Market Compact Message", show.complex_double_sided_top_of_market_compact_message, "Parse and add Complex Double Sided Top Of Market Compact Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_complex_double_sided_top_of_market_wide_message = Pref.bool("Show Complex Double Sided Top Of Market Wide Message", show.complex_double_sided_top_of_market_wide_message, "Parse and add Complex Double Sided Top Of Market Wide Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_complex_strategy_definition_message = Pref.bool("Show Complex Strategy Definition Message", show.complex_strategy_definition_message, "Parse and add Complex Strategy Definition Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_bid_compact_message = Pref.bool("Show Complex Top Of Market Bid Compact Message", show.complex_top_of_market_bid_compact_message, "Parse and add Complex Top Of Market Bid Compact Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_bid_wide_message = Pref.bool("Show Complex Top Of Market Bid Wide Message", show.complex_top_of_market_bid_wide_message, "Parse and add Complex Top Of Market Bid Wide Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_offer_compact_message = Pref.bool("Show Complex Top Of Market Offer Compact Message", show.complex_top_of_market_offer_compact_message, "Parse and add Complex Top Of Market Offer Compact Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_offer_wide_message = Pref.bool("Show Complex Top Of Market Offer Wide Message", show.complex_top_of_market_offer_wide_message, "Parse and add Complex Top Of Market Offer Wide Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_leg_definition = Pref.bool("Show Leg Definition", show.leg_definition, "Parse and add Leg Definition to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_simple_series_update_message = Pref.bool("Show Simple Series Update Message", show.simple_series_update_message, "Parse and add Simple Series Update Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_strategy_last_sale_message = Pref.bool("Show Strategy Last Sale Message", show.strategy_last_sale_message, "Parse and add Strategy Last Sale Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_underlying_trading_status_notification_message = Pref.bool("Show Underlying Trading Status Notification Message", show.underlying_trading_status_notification_message, "Parse and add Underlying Trading Status Notification Message to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
miax_options_ctom_mach_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function miax_options_ctom_mach_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= miax_options_ctom_mach_v1_3.prefs.show_application_message then
    show.application_message = miax_options_ctom_mach_v1_3.prefs.show_application_message
    changed = true
  end
  if show.complex_double_sided_top_of_market_compact_message ~= miax_options_ctom_mach_v1_3.prefs.show_complex_double_sided_top_of_market_compact_message then
    show.complex_double_sided_top_of_market_compact_message = miax_options_ctom_mach_v1_3.prefs.show_complex_double_sided_top_of_market_compact_message
    changed = true
  end
  if show.complex_double_sided_top_of_market_wide_message ~= miax_options_ctom_mach_v1_3.prefs.show_complex_double_sided_top_of_market_wide_message then
    show.complex_double_sided_top_of_market_wide_message = miax_options_ctom_mach_v1_3.prefs.show_complex_double_sided_top_of_market_wide_message
    changed = true
  end
  if show.complex_strategy_definition_message ~= miax_options_ctom_mach_v1_3.prefs.show_complex_strategy_definition_message then
    show.complex_strategy_definition_message = miax_options_ctom_mach_v1_3.prefs.show_complex_strategy_definition_message
    changed = true
  end
  if show.complex_top_of_market_bid_compact_message ~= miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_bid_compact_message then
    show.complex_top_of_market_bid_compact_message = miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_bid_compact_message
    changed = true
  end
  if show.complex_top_of_market_bid_wide_message ~= miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_bid_wide_message then
    show.complex_top_of_market_bid_wide_message = miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_bid_wide_message
    changed = true
  end
  if show.complex_top_of_market_offer_compact_message ~= miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_offer_compact_message then
    show.complex_top_of_market_offer_compact_message = miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_offer_compact_message
    changed = true
  end
  if show.complex_top_of_market_offer_wide_message ~= miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_offer_wide_message then
    show.complex_top_of_market_offer_wide_message = miax_options_ctom_mach_v1_3.prefs.show_complex_top_of_market_offer_wide_message
    changed = true
  end
  if show.leg_definition ~= miax_options_ctom_mach_v1_3.prefs.show_leg_definition then
    show.leg_definition = miax_options_ctom_mach_v1_3.prefs.show_leg_definition
    changed = true
  end
  if show.message ~= miax_options_ctom_mach_v1_3.prefs.show_message then
    show.message = miax_options_ctom_mach_v1_3.prefs.show_message
    changed = true
  end
  if show.packet ~= miax_options_ctom_mach_v1_3.prefs.show_packet then
    show.packet = miax_options_ctom_mach_v1_3.prefs.show_packet
    changed = true
  end
  if show.simple_series_update_message ~= miax_options_ctom_mach_v1_3.prefs.show_simple_series_update_message then
    show.simple_series_update_message = miax_options_ctom_mach_v1_3.prefs.show_simple_series_update_message
    changed = true
  end
  if show.strategy_last_sale_message ~= miax_options_ctom_mach_v1_3.prefs.show_strategy_last_sale_message then
    show.strategy_last_sale_message = miax_options_ctom_mach_v1_3.prefs.show_strategy_last_sale_message
    changed = true
  end
  if show.system_state_message ~= miax_options_ctom_mach_v1_3.prefs.show_system_state_message then
    show.system_state_message = miax_options_ctom_mach_v1_3.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= miax_options_ctom_mach_v1_3.prefs.show_system_time_message then
    show.system_time_message = miax_options_ctom_mach_v1_3.prefs.show_system_time_message
    changed = true
  end
  if show.underlying_trading_status_notification_message ~= miax_options_ctom_mach_v1_3.prefs.show_underlying_trading_status_notification_message then
    show.underlying_trading_status_notification_message = miax_options_ctom_mach_v1_3.prefs.show_underlying_trading_status_notification_message
    changed = true
  end
  if show.data ~= miax_options_ctom_mach_v1_3.prefs.show_data then
    show.data = miax_options_ctom_mach_v1_3.prefs.show_data
    changed = true
  end
  if show.payload ~= miax_options_ctom_mach_v1_3.prefs.show_payload then
    show.payload = miax_options_ctom_mach_v1_3.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Miax Options cTom Mach 1.3
-----------------------------------------------------------------------

-- Size: Expected Event Time Nano Seconds
size_of.expected_event_time_nano_seconds = 4

-- Display: Expected Event Time Nano Seconds
display.expected_event_time_nano_seconds = function(value)
  return "Expected Event Time Nano Seconds: "..value
end

-- Dissect: Expected Event Time Nano Seconds
dissect.expected_event_time_nano_seconds = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expected_event_time_nano_seconds)
  local value = range:le_uint()
  local display = display.expected_event_time_nano_seconds(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.expected_event_time_nano_seconds, range, value, display)

  return offset + size_of.expected_event_time_nano_seconds
end

-- Size: Expected Event Time Seconds
size_of.expected_event_time_seconds = 4

-- Display: Expected Event Time Seconds
display.expected_event_time_seconds = function(value)
  return "Expected Event Time Seconds: "..value
end

-- Dissect: Expected Event Time Seconds
dissect.expected_event_time_seconds = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expected_event_time_seconds)
  local value = range:le_uint()
  local display = display.expected_event_time_seconds(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.expected_event_time_seconds, range, value, display)

  return offset + size_of.expected_event_time_seconds
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

  parent:add(miax_options_ctom_mach_v1_3.fields.event_reason, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.trading_status, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.underlying_symbol, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Display: Underlying Trading Status Notification Message
display.underlying_trading_status_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification Message
dissect.underlying_trading_status_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 3 values
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Event Reason: 1 Byte Ascii String Enum with 2 values
  index = dissect.event_reason(buffer, index, packet, parent)

  -- Expected Event Time Seconds: 4 Byte Unsigned Fixed Width Integer
  index = dissect.expected_event_time_seconds(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds: 4 Byte Unsigned Fixed Width Integer
  index = dissect.expected_event_time_nano_seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification Message
dissect.underlying_trading_status_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_trading_status_notification_message then
    local range = buffer(offset, 25)
    local display = display.underlying_trading_status_notification_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.underlying_trading_status_notification_message, range, display)
  end

  return dissect.underlying_trading_status_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 16
size_of.reserved_16 = 16

-- Display: Reserved 16
display.reserved_16 = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
dissect.reserved_16 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_16)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_16(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.reserved_16, range, value, display)

  return offset + size_of.reserved_16
end

-- Size: Trade Condition
size_of.trade_condition = 1

-- Display: Trade Condition
display.trade_condition = function(value)
  if value == "S" then
    return "Trade Condition: Matched (S)"
  end
  if value == "L" then
    return "Trade Condition: Legged (L)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
dissect.trade_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_condition)
  local value = range:string()
  local display = display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.trade_condition, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.trade_size, range, value, display)

  return offset + size_of.trade_size
end

-- Size: Net Price
size_of.net_price = 8

-- Display: Net Price
display.net_price = function(value)
  return "Net Price: "..value
end

-- Dissect: Net Price
dissect.net_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.net_price)
  local value = range:le_int64()
  local display = display.net_price(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.net_price, range, value, display)

  return offset + size_of.net_price
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

  parent:add(miax_options_ctom_mach_v1_3.fields.trade_id, range, value, display)

  return offset + size_of.trade_id
end

-- Size: Strategy Id
size_of.strategy_id = 4

-- Display: Strategy Id
display.strategy_id = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
dissect.strategy_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strategy_id)
  local value = range:le_uint()
  local display = display.strategy_id(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.strategy_id, range, value, display)

  return offset + size_of.strategy_id
end

-- Display: Strategy Last Sale Message
display.strategy_last_sale_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Last Sale Message
dissect.strategy_last_sale_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Net Price: 8 Byte Signed Fixed Width Integer
  index = dissect.net_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_condition(buffer, index, packet, parent)

  -- Reserved 16: 16 Byte
  index = dissect.reserved_16(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Last Sale Message
dissect.strategy_last_sale_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_last_sale_message then
    local range = buffer(offset, 41)
    local display = display.strategy_last_sale_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.strategy_last_sale_message, range, display)
  end

  return dissect.strategy_last_sale_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Condition
size_of.offer_condition = 1

-- Display: Offer Condition
display.offer_condition = function(value)
  if value == "A" then
    return "Offer Condition: Regular (A)"
  end
  if value == "T" then
    return "Offer Condition: Trading Halt (T)"
  end
  if value == "W" then
    return "Offer Condition: Wide (W)"
  end
  if value == "S" then
    return "Offer Condition: Simple Auction (S)"
  end
  if value == "C" then
    return "Offer Condition: Complex Auction (C)"
  end
  if value == "M" then
    return "Offer Condition: Simple Market Protection (M)"
  end
  if value == "L" then
    return "Offer Condition: Leg Market Protection (L)"
  end

  return "Offer Condition: Unknown("..value..")"
end

-- Dissect: Offer Condition
dissect.offer_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_condition)
  local value = range:string()
  local display = display.offer_condition(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.offer_condition, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.offer_priority_customer_size_4, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.offer_size_4, range, value, display)

  return offset + size_of.offer_size_4
end

-- Size: Offer Price 8
size_of.offer_price_8 = 8

-- Display: Offer Price 8
display.offer_price_8 = function(value)
  return "Offer Price 8: "..value
end

-- Dissect: Offer Price 8
dissect.offer_price_8 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_price_8)
  local value = range:le_int64()
  local display = display.offer_price_8(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.offer_price_8, range, value, display)

  return offset + size_of.offer_price_8
end

-- Size: Bid Condition
size_of.bid_condition = 1

-- Display: Bid Condition
display.bid_condition = function(value)
  if value == "A" then
    return "Bid Condition: Regular (A)"
  end
  if value == "T" then
    return "Bid Condition: Trading Halt (T)"
  end
  if value == "W" then
    return "Bid Condition: Wide (W)"
  end
  if value == "S" then
    return "Bid Condition: Simple Auction (S)"
  end
  if value == "C" then
    return "Bid Condition: Complex Auction (C)"
  end
  if value == "M" then
    return "Bid Condition: Simple Market Protection (M)"
  end
  if value == "L" then
    return "Bid Condition: Leg Market Protection (L)"
  end

  return "Bid Condition: Unknown("..value..")"
end

-- Dissect: Bid Condition
dissect.bid_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_condition)
  local value = range:string()
  local display = display.bid_condition(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.bid_condition, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.bid_priority_customer_size_4, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.bid_size_4, range, value, display)

  return offset + size_of.bid_size_4
end

-- Size: Bid Price 8
size_of.bid_price_8 = 8

-- Display: Bid Price 8
display.bid_price_8 = function(value)
  return "Bid Price 8: "..value
end

-- Dissect: Bid Price 8
dissect.bid_price_8 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price_8)
  local value = range:le_int64()
  local display = display.bid_price_8(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.bid_price_8, range, value, display)

  return offset + size_of.bid_price_8
end

-- Display: Complex Double Sided Top Of Market Wide Message
display.complex_double_sided_top_of_market_wide_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Double Sided Top Of Market Wide Message
dissect.complex_double_sided_top_of_market_wide_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Bid Price 8: 8 Byte Signed Fixed Width Integer
  index = dissect.bid_price_8(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Bid Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_priority_customer_size_4(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price 8: 8 Byte Signed Fixed Width Integer
  index = dissect.offer_price_8(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  -- Offer Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_priority_customer_size_4(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Double Sided Top Of Market Wide Message
dissect.complex_double_sided_top_of_market_wide_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_double_sided_top_of_market_wide_message then
    local range = buffer(offset, 42)
    local display = display.complex_double_sided_top_of_market_wide_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.complex_double_sided_top_of_market_wide_message, range, display)
  end

  return dissect.complex_double_sided_top_of_market_wide_message_fields(buffer, offset, packet, parent)
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

  parent:add(miax_options_ctom_mach_v1_3.fields.offer_priority_customer_size_2, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.offer_size_2, range, value, display)

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
  local value = range:le_int()
  local display = display.offer_price_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.offer_price_2, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.bid_priority_customer_size_2, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.bid_size_2, range, value, display)

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
  local value = range:le_int()
  local display = display.bid_price_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.bid_price_2, range, value, display)

  return offset + size_of.bid_price_2
end

-- Display: Complex Double Sided Top Of Market Compact Message
display.complex_double_sided_top_of_market_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Double Sided Top Of Market Compact Message
dissect.complex_double_sided_top_of_market_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Bid Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_priority_customer_size_2(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  -- Offer Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_priority_customer_size_2(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Double Sided Top Of Market Compact Message
dissect.complex_double_sided_top_of_market_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_double_sided_top_of_market_compact_message then
    local range = buffer(offset, 22)
    local display = display.complex_double_sided_top_of_market_compact_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.complex_double_sided_top_of_market_compact_message, range, display)
  end

  return dissect.complex_double_sided_top_of_market_compact_message_fields(buffer, offset, packet, parent)
end

-- Size: Top Of Market Quote Condition
size_of.top_of_market_quote_condition = 1

-- Display: Top Of Market Quote Condition
display.top_of_market_quote_condition = function(value)
  if value == "A" then
    return "Top Of Market Quote Condition: Regular (A)"
  end
  if value == "T" then
    return "Top Of Market Quote Condition: Trading Halt (T)"
  end
  if value == "W" then
    return "Top Of Market Quote Condition: Wide (W)"
  end
  if value == "S" then
    return "Top Of Market Quote Condition: Simple Auction (S)"
  end
  if value == "C" then
    return "Top Of Market Quote Condition: Complex Auction (C)"
  end
  if value == "M" then
    return "Top Of Market Quote Condition: Simple Market Protection (M)"
  end
  if value == "L" then
    return "Top Of Market Quote Condition: Leg Market Protection (L)"
  end

  return "Top Of Market Quote Condition: Unknown("..value..")"
end

-- Dissect: Top Of Market Quote Condition
dissect.top_of_market_quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.top_of_market_quote_condition)
  local value = range:string()
  local display = display.top_of_market_quote_condition(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.top_of_market_quote_condition, range, value, display)

  return offset + size_of.top_of_market_quote_condition
end

-- Size: Priority Customer Size 4
size_of.priority_customer_size_4 = 4

-- Display: Priority Customer Size 4
display.priority_customer_size_4 = function(value)
  return "Priority Customer Size 4: "..value
end

-- Dissect: Priority Customer Size 4
dissect.priority_customer_size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.priority_customer_size_4)
  local value = range:le_uint()
  local display = display.priority_customer_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.priority_customer_size_4, range, value, display)

  return offset + size_of.priority_customer_size_4
end

-- Size: Size 4
size_of.size_4 = 4

-- Display: Size 4
display.size_4 = function(value)
  return "Size 4: "..value
end

-- Dissect: Size 4
dissect.size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.size_4)
  local value = range:le_uint()
  local display = display.size_4(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.size_4, range, value, display)

  return offset + size_of.size_4
end

-- Size: Price 8
size_of.price_8 = 8

-- Display: Price 8
display.price_8 = function(value)
  return "Price 8: "..value
end

-- Dissect: Price 8
dissect.price_8 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_8)
  local value = range:le_int64()
  local display = display.price_8(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.price_8, range, value, display)

  return offset + size_of.price_8
end

-- Display: Complex Top Of Market Offer Wide Message
display.complex_top_of_market_offer_wide_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Top Of Market Offer Wide Message
dissect.complex_top_of_market_offer_wide_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Price 8: 8 Byte Signed Fixed Width Integer
  index = dissect.price_8(buffer, index, packet, parent)

  -- Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.size_4(buffer, index, packet, parent)

  -- Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.priority_customer_size_4(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Offer Wide Message
dissect.complex_top_of_market_offer_wide_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_top_of_market_offer_wide_message then
    local range = buffer(offset, 25)
    local display = display.complex_top_of_market_offer_wide_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.complex_top_of_market_offer_wide_message, range, display)
  end

  return dissect.complex_top_of_market_offer_wide_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Top Of Market Bid Wide Message
display.complex_top_of_market_bid_wide_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Top Of Market Bid Wide Message
dissect.complex_top_of_market_bid_wide_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Price 8: 8 Byte Signed Fixed Width Integer
  index = dissect.price_8(buffer, index, packet, parent)

  -- Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.size_4(buffer, index, packet, parent)

  -- Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.priority_customer_size_4(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Bid Wide Message
dissect.complex_top_of_market_bid_wide_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_top_of_market_bid_wide_message then
    local range = buffer(offset, 25)
    local display = display.complex_top_of_market_bid_wide_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.complex_top_of_market_bid_wide_message, range, display)
  end

  return dissect.complex_top_of_market_bid_wide_message_fields(buffer, offset, packet, parent)
end

-- Size: Priority Customer Size 2
size_of.priority_customer_size_2 = 2

-- Display: Priority Customer Size 2
display.priority_customer_size_2 = function(value)
  return "Priority Customer Size 2: "..value
end

-- Dissect: Priority Customer Size 2
dissect.priority_customer_size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.priority_customer_size_2)
  local value = range:le_uint()
  local display = display.priority_customer_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.priority_customer_size_2, range, value, display)

  return offset + size_of.priority_customer_size_2
end

-- Size: Size 2
size_of.size_2 = 2

-- Display: Size 2
display.size_2 = function(value)
  return "Size 2: "..value
end

-- Dissect: Size 2
dissect.size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.size_2)
  local value = range:le_uint()
  local display = display.size_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.size_2, range, value, display)

  return offset + size_of.size_2
end

-- Size: Price 2
size_of.price_2 = 2

-- Display: Price 2
display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
dissect.price_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_2)
  local value = range:le_int()
  local display = display.price_2(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.price_2, range, value, display)

  return offset + size_of.price_2
end

-- Display: Complex Top Of Market Offer Compact Message
display.complex_top_of_market_offer_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Top Of Market Offer Compact Message
dissect.complex_top_of_market_offer_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.price_2(buffer, index, packet, parent)

  -- Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.size_2(buffer, index, packet, parent)

  -- Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.priority_customer_size_2(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Offer Compact Message
dissect.complex_top_of_market_offer_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_top_of_market_offer_compact_message then
    local range = buffer(offset, 15)
    local display = display.complex_top_of_market_offer_compact_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.complex_top_of_market_offer_compact_message, range, display)
  end

  return dissect.complex_top_of_market_offer_compact_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Top Of Market Bid Compact Message
display.complex_top_of_market_bid_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Top Of Market Bid Compact Message
dissect.complex_top_of_market_bid_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.price_2(buffer, index, packet, parent)

  -- Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.size_2(buffer, index, packet, parent)

  -- Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.priority_customer_size_2(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: 1 Byte Ascii String Enum with 7 values
  index = dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Bid Compact Message
dissect.complex_top_of_market_bid_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_top_of_market_bid_compact_message then
    local range = buffer(offset, 15)
    local display = display.complex_top_of_market_bid_compact_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.complex_top_of_market_bid_compact_message, range, display)
  end

  return dissect.complex_top_of_market_bid_compact_message_fields(buffer, offset, packet, parent)
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

  return "System Status: Unknown("..value..")"
end

-- Dissect: System Status
dissect.system_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.system_status)
  local value = range:string()
  local display = display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.system_status, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.session_id, range, value, display)

  return offset + size_of.session_id
end

-- Size: Version
size_of.version = 8

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.version)
  local value = range:string()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.version, range, value, display)

  return offset + size_of.version
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

  parent:add(miax_options_ctom_mach_v1_3.fields.notification_time, range, value, display)

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

  -- Version: 8 Byte Ascii String
  index = dissect.version(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.session_id(buffer, index, packet, parent)

  -- System Status: 1 Byte Ascii String Enum with 4 values
  index = dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
dissect.system_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_state_message then
    local range = buffer(offset, 17)
    local display = display.system_state_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.system_state_message, range, display)
  end

  return dissect.system_state_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved8
size_of.reserved8 = 8

-- Display: Reserved8
display.reserved8 = function(value)
  return "Reserved8: "..value
end

-- Dissect: Reserved8
dissect.reserved8 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved8)
  local value = range:le_uint64()
  local display = display.reserved8(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.reserved8, range, value, display)

  return offset + size_of.reserved8
end

-- Size: Leg Side
size_of.leg_side = 1

-- Display: Leg Side
display.leg_side = function(value)
  if value == B then
    return "Leg Side: Bid (B)"
  end
  if value == A then
    return "Leg Side: Ask (A)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_side)
  local value = range:bytes():tohex(false, " ")
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.leg_side, range, value, display)

  return offset + size_of.leg_side
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 2

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_ratio_qty)
  local value = range:le_uint()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.leg_ratio_qty, range, value, display)

  return offset + size_of.leg_ratio_qty
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

  parent:add(miax_options_ctom_mach_v1_3.fields.product_id, range, value, display)

  return offset + size_of.product_id
end

-- Display: Leg Definition
display.leg_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Definition
dissect.leg_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Leg Ratio Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Enum with 2 values
  index = dissect.leg_side(buffer, index, packet, parent)

  -- Reserved8: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reserved8(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
dissect.leg_definition = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_definition then
    local range = buffer(offset, 15)
    local display = display.leg_definition(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.leg_definition, range, display)
  end

  return dissect.leg_definition_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Legs
size_of.number_of_legs = 1

-- Display: Number Of Legs
display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
dissect.number_of_legs = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.number_of_legs)
  local value = range:le_uint()
  local display = display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.number_of_legs, range, value, display)

  return offset + size_of.number_of_legs
end

-- Size: Reserved 10
size_of.reserved_10 = 10

-- Display: Reserved 10
display.reserved_10 = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
dissect.reserved_10 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_10)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_10(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.reserved_10, range, value, display)

  return offset + size_of.reserved_10
end

-- Size: Update Reason
size_of.update_reason = 1

-- Display: Update Reason
display.update_reason = function(value)
  if value == "N" then
    return "Update Reason: New Strategy Created (N)"
  end
  if value == "U" then
    return "Update Reason: Updated (U)"
  end

  return "Update Reason: Unknown("..value..")"
end

-- Dissect: Update Reason
dissect.update_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.update_reason)
  local value = range:string()
  local display = display.update_reason(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.update_reason, range, value, display)

  return offset + size_of.update_reason
end

-- Size: Reserved 1
size_of.reserved_1 = 1

-- Display: Reserved 1
display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
dissect.reserved_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_1)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.reserved_1, range, value, display)

  return offset + size_of.reserved_1
end

-- Size: Active On Miax
size_of.active_on_miax = 1

-- Display: Active On Miax
display.active_on_miax = function(value)
  if value == "A" then
    return "Active On Miax: Active (A)"
  end
  if value == "I" then
    return "Active On Miax: Inactive (I)"
  end

  return "Active On Miax: Unknown("..value..")"
end

-- Dissect: Active On Miax
dissect.active_on_miax = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.active_on_miax)
  local value = range:string()
  local display = display.active_on_miax(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.active_on_miax, range, value, display)

  return offset + size_of.active_on_miax
end

-- Size: Strategy Add Time
size_of.strategy_add_time = 4

-- Display: Strategy Add Time
display.strategy_add_time = function(value)
  return "Strategy Add Time: "..value
end

-- Dissect: Strategy Add Time
dissect.strategy_add_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strategy_add_time)
  local value = range:le_uint()
  local display = display.strategy_add_time(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.strategy_add_time, range, value, display)

  return offset + size_of.strategy_add_time
end

-- Display: Complex Strategy Definition Message
display.complex_strategy_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Strategy Definition Message
dissect.complex_strategy_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strategy Add Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_add_time(buffer, index, packet, parent)

  -- Strategy Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strategy_id(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Active On Miax: 1 Byte Ascii String Enum with 2 values
  index = dissect.active_on_miax(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Update Reason: 1 Byte Ascii String Enum with 2 values
  index = dissect.update_reason(buffer, index, packet, parent)

  -- Reserved 10: 10 Byte
  index = dissect.reserved_10(buffer, index, packet, parent)

  -- Number Of Legs: 1 Byte Unsigned Fixed Width Integer
  index = dissect.number_of_legs(buffer, index, packet, parent)

  -- Leg Definition: Struct of 4 fields
  index = dissect.leg_definition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Definition Message
dissect.complex_strategy_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_strategy_definition_message then
    local range = buffer(offset, 48)
    local display = display.complex_strategy_definition_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.complex_strategy_definition_message, range, display)
  end

  return dissect.complex_strategy_definition_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 8
size_of.reserved_8 = 8

-- Display: Reserved 8
display.reserved_8 = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
dissect.reserved_8 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_8)
  local value = range:le_uint64()
  local display = display.reserved_8(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.reserved_8, range, value, display)

  return offset + size_of.reserved_8
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

  parent:add(miax_options_ctom_mach_v1_3.fields.priority_quote_width, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.opening_underlying_market_code, range, value, display)

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
    return "Liquidity Acceptance Increment Indicator: Penny Or Nickel (N)"
  end
  if value == "D" then
    return "Liquidity Acceptance Increment Indicator: Nickel Or Dime (D)"
  end

  return "Liquidity Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Acceptance Increment Indicator
dissect.liquidity_acceptance_increment_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.liquidity_acceptance_increment_indicator)
  local value = range:string()
  local display = display.liquidity_acceptance_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.liquidity_acceptance_increment_indicator, range, value, display)

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
    return "Miax Bbo Posting Increment Indicator: Penny Or Nickel (N)"
  end
  if value == "D" then
    return "Miax Bbo Posting Increment Indicator: Nickel Or Dime (D)"
  end

  return "Miax Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Miax Bbo Posting Increment Indicator
dissect.miax_bbo_posting_increment_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.miax_bbo_posting_increment_indicator)
  local value = range:string()
  local display = display.miax_bbo_posting_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + size_of.miax_bbo_posting_increment_indicator
end

-- Size: Long Term Option
size_of.long_term_option = 1

-- Display: Long Term Option
display.long_term_option = function(value)
  if value == "Y" then
    return "Long Term Option: Yes (Y)"
  end
  if value == "N" then
    return "Long Term Option: No (N)"
  end

  return "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
dissect.long_term_option = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.long_term_option)
  local value = range:string()
  local display = display.long_term_option(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.long_term_option, range, value, display)

  return offset + size_of.long_term_option
end

-- Size: Restricted Option
size_of.restricted_option = 1

-- Display: Restricted Option
display.restricted_option = function(value)
  if value == "Y" then
    return "Restricted Option: Yes (Y)"
  end
  if value == "N" then
    return "Restricted Option: No (N)"
  end

  return "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
dissect.restricted_option = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.restricted_option)
  local value = range:string()
  local display = display.restricted_option(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.restricted_option, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.closing_time, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.opening_time, range, value, display)

  return offset + size_of.opening_time
end

-- Size: Call Or Put
size_of.call_or_put = 1

-- Display: Call Or Put
display.call_or_put = function(value)
  if value == "C" then
    return "Call Or Put: Call (C)"
  end
  if value == "P" then
    return "Call Or Put: Put (P)"
  end

  return "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
dissect.call_or_put = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.call_or_put)
  local value = range:string()
  local display = display.call_or_put(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.call_or_put, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.strike_price, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.expiration_date, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.security_symbol, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.product_add_update_time, range, value, display)

  return offset + size_of.product_add_update_time
end

-- Display: Simple Series Update Message
display.simple_series_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Series Update Message
dissect.simple_series_update_message_fields = function(buffer, offset, packet, parent)
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

  -- Call Or Put: 1 Byte Ascii String Enum with 2 values
  index = dissect.call_or_put(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Ascii String
  index = dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Ascii String
  index = dissect.closing_time(buffer, index, packet, parent)

  -- Restricted Option: 1 Byte Ascii String Enum with 2 values
  index = dissect.restricted_option(buffer, index, packet, parent)

  -- Long Term Option: 1 Byte Ascii String Enum with 2 values
  index = dissect.long_term_option(buffer, index, packet, parent)

  -- Active On Miax: 1 Byte Ascii String Enum with 2 values
  index = dissect.active_on_miax(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index = dissect.miax_bbo_posting_increment_indicator(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index = dissect.liquidity_acceptance_increment_indicator(buffer, index, packet, parent)

  -- Opening Underlying Market Code: 1 Byte Ascii String Enum with 17 values
  index = dissect.opening_underlying_market_code(buffer, index, packet, parent)

  -- Priority Quote Width: 4 Byte Unsigned Fixed Width Integer
  index = dissect.priority_quote_width(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte Unsigned Fixed Width Integer
  index = dissect.reserved_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Series Update Message
dissect.simple_series_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_series_update_message then
    local range = buffer(offset, 72)
    local display = display.simple_series_update_message(buffer, packet, parent)
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.simple_series_update_message, range, display)
  end

  return dissect.simple_series_update_message_fields(buffer, offset, packet, parent)
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
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.system_time_message, range, display)
  end

  return dissect.system_time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
size_of.data = function(buffer, offset, messagetype)
  -- Size of System Time Message
  if messagetype == "1" then
    return 4
  end
  -- Size of Simple Series Update Message
  if messagetype == "P" then
    return 72
  end
  -- Size of Complex Strategy Definition Message
  if messagetype == "C" then
    return 48
  end
  -- Size of System State Message
  if messagetype == "S" then
    return 17
  end
  -- Size of Complex Top Of Market Bid Compact Message
  if messagetype == "b" then
    return 15
  end
  -- Size of Complex Top Of Market Offer Compact Message
  if messagetype == "o" then
    return 15
  end
  -- Size of Complex Top Of Market Bid Wide Message
  if messagetype == "e" then
    return 25
  end
  -- Size of Complex Top Of Market Offer Wide Message
  if messagetype == "f" then
    return 25
  end
  -- Size of Complex Double Sided Top Of Market Compact Message
  if messagetype == "m" then
    return 22
  end
  -- Size of Complex Double Sided Top Of Market Wide Message
  if messagetype == "w" then
    return 42
  end
  -- Size of Strategy Last Sale Message
  if messagetype == "t" then
    return 41
  end
  -- Size of Underlying Trading Status Notification Message
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
  -- Dissect Simple Series Update Message
  if messagetype == "P" then
    return dissect.simple_series_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Definition Message
  if messagetype == "C" then
    return dissect.complex_strategy_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if messagetype == "S" then
    return dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Bid Compact Message
  if messagetype == "b" then
    return dissect.complex_top_of_market_bid_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Offer Compact Message
  if messagetype == "o" then
    return dissect.complex_top_of_market_offer_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Bid Wide Message
  if messagetype == "e" then
    return dissect.complex_top_of_market_bid_wide_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Offer Wide Message
  if messagetype == "f" then
    return dissect.complex_top_of_market_offer_wide_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Double Sided Top Of Market Compact Message
  if messagetype == "m" then
    return dissect.complex_double_sided_top_of_market_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Double Sided Top Of Market Wide Message
  if messagetype == "w" then
    return dissect.complex_double_sided_top_of_market_wide_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Last Sale Message
  if messagetype == "t" then
    return dissect.strategy_last_sale_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Notification Message
  if messagetype == "H" then
    return dissect.underlying_trading_status_notification_message(buffer, offset, packet, parent)
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
  local element = parent:add(miax_options_ctom_mach_v1_3.fields.data, range, display)

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
    return "Message Type: Simple Series Update Message (P)"
  end
  if value == "C" then
    return "Message Type: Complex Strategy Definition Message (C)"
  end
  if value == "S" then
    return "Message Type: System State Message (S)"
  end
  if value == "b" then
    return "Message Type: Complex Top Of Market Bid Compact Message (b)"
  end
  if value == "o" then
    return "Message Type: Complex Top Of Market Offer Compact Message (o)"
  end
  if value == "e" then
    return "Message Type: Complex Top Of Market Bid Wide Message (e)"
  end
  if value == "f" then
    return "Message Type: Complex Top Of Market Offer Wide Message (f)"
  end
  if value == "m" then
    return "Message Type: Complex Double Sided Top Of Market Compact Message (m)"
  end
  if value == "w" then
    return "Message Type: Complex Double Sided Top Of Market Wide Message (w)"
  end
  if value == "t" then
    return "Message Type: Strategy Last Sale Message (t)"
  end
  if value == "H" then
    return "Message Type: Underlying Trading Status Notification Message (H)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_type)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_options_ctom_mach_v1_3.fields.message_type, range, value, display)

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
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.application_message, range, display)
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
  local element = parent:add(miax_options_ctom_mach_v1_3.fields.payload, range, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.session_number, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.packet_type, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.packet_length, range, value, display)

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

  parent:add(miax_options_ctom_mach_v1_3.fields.sequence_number, range, value, display)

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
    parent = parent:add(miax_options_ctom_mach_v1_3.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Message: Struct of 5 fields
  local end_of_payload = buffer:len()
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_options_ctom_mach_v1_3.init()
end

-- Dissector for Miax Options cTom Mach 1.3
function miax_options_ctom_mach_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_options_ctom_mach_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(miax_options_ctom_mach_v1_3, buffer(), miax_options_ctom_mach_v1_3.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_options_ctom_mach_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_options_ctom_mach_v1_3_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax Options cTom Mach 1.3
local function miax_options_ctom_mach_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_options_ctom_mach_v1_3_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_options_ctom_mach_v1_3
  miax_options_ctom_mach_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax Options cTom Mach 1.3
miax_options_ctom_mach_v1_3:register_heuristic("udp", miax_options_ctom_mach_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Securities Exchange
--   Version: 1.3
--   Date: Friday, March 16, 2018
--   Specification: Complex_Top_Of_Market_Feed_cToM_v1_3.pdf
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
