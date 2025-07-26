-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax MiaxOptions TopOfMarket Mach 2.3 Protocol
local miax_miaxoptions_topofmarket_mach_v2_3 = Proto("Miax.MiaxOptions.TopOfMarket.Mach.v2.3.Lua", "Miax MiaxOptions TopOfMarket Mach 2.3")

-- Component Tables
local show = {}
local format = {}
local miax_miaxoptions_topofmarket_mach_v2_3_display = {}
local miax_miaxoptions_topofmarket_mach_v2_3_dissect = {}
local miax_miaxoptions_topofmarket_mach_v2_3_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax MiaxOptions TopOfMarket Mach 2.3 Fields
miax_miaxoptions_topofmarket_mach_v2_3.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.miaxoptions.topofmarket.mach.v2.3.activeonmiax", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.application_message = ProtoField.new("Application Message", "miax.miaxoptions.topofmarket.mach.v2.3.applicationmessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_condition = ProtoField.new("Bid Condition", "miax.miaxoptions.topofmarket.mach.v2.3.bidcondition", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_price_2 = ProtoField.new("Bid Price 2", "miax.miaxoptions.topofmarket.mach.v2.3.bidprice2", ftypes.DOUBLE)
miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_price_4 = ProtoField.new("Bid Price 4", "miax.miaxoptions.topofmarket.mach.v2.3.bidprice4", ftypes.DOUBLE)
miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_priority_customer_size_2 = ProtoField.new("Bid Priority Customer Size 2", "miax.miaxoptions.topofmarket.mach.v2.3.bidprioritycustomersize2", ftypes.UINT16)
miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_priority_customer_size_4 = ProtoField.new("Bid Priority Customer Size 4", "miax.miaxoptions.topofmarket.mach.v2.3.bidprioritycustomersize4", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_size_2 = ProtoField.new("Bid Size 2", "miax.miaxoptions.topofmarket.mach.v2.3.bidsize2", ftypes.UINT16)
miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_size_4 = ProtoField.new("Bid Size 4", "miax.miaxoptions.topofmarket.mach.v2.3.bidsize4", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.call_or_put = ProtoField.new("Call Or Put", "miax.miaxoptions.topofmarket.mach.v2.3.callorput", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.closing_time = ProtoField.new("Closing Time", "miax.miaxoptions.topofmarket.mach.v2.3.closingtime", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.correction_number = ProtoField.new("Correction Number", "miax.miaxoptions.topofmarket.mach.v2.3.correctionnumber", ftypes.UINT8)
miax_miaxoptions_topofmarket_mach_v2_3.fields.data = ProtoField.new("Data", "miax.miaxoptions.topofmarket.mach.v2.3.data", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.event_reason = ProtoField.new("Event Reason", "miax.miaxoptions.topofmarket.mach.v2.3.eventreason", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.expected_event_time_nano_seconds = ProtoField.new("Expected Event Time Nano Seconds", "miax.miaxoptions.topofmarket.mach.v2.3.expectedeventtimenanoseconds", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.expected_event_time_seconds = ProtoField.new("Expected Event Time Seconds", "miax.miaxoptions.topofmarket.mach.v2.3.expectedeventtimeseconds", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.expiration_date = ProtoField.new("Expiration Date", "miax.miaxoptions.topofmarket.mach.v2.3.expirationdate", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.miaxoptions.topofmarket.mach.v2.3.lastsalemessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.miaxoptions.topofmarket.mach.v2.3.liquidityacceptanceincrementindicator", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.long_term_option = ProtoField.new("Long Term Option", "miax.miaxoptions.topofmarket.mach.v2.3.longtermoption", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_condition = ProtoField.new("Mbbo Condition", "miax.miaxoptions.topofmarket.mach.v2.3.mbbocondition", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_price_2 = ProtoField.new("Mbbo Price 2", "miax.miaxoptions.topofmarket.mach.v2.3.mbboprice2", ftypes.DOUBLE)
miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_price_4 = ProtoField.new("Mbbo Price 4", "miax.miaxoptions.topofmarket.mach.v2.3.mbboprice4", ftypes.DOUBLE)
miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_priority_customer_size_2 = ProtoField.new("Mbbo Priority Customer Size 2", "miax.miaxoptions.topofmarket.mach.v2.3.mbboprioritycustomersize2", ftypes.UINT16)
miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_priority_customer_size_4 = ProtoField.new("Mbbo Priority Customer Size 4", "miax.miaxoptions.topofmarket.mach.v2.3.mbboprioritycustomersize4", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_size_2 = ProtoField.new("Mbbo Size 2", "miax.miaxoptions.topofmarket.mach.v2.3.mbbosize2", ftypes.UINT16)
miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_size_4 = ProtoField.new("Mbbo Size 4", "miax.miaxoptions.topofmarket.mach.v2.3.mbbosize4", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.message = ProtoField.new("Message", "miax.miaxoptions.topofmarket.mach.v2.3.message", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.message_type = ProtoField.new("Message Type", "miax.miaxoptions.topofmarket.mach.v2.3.messagetype", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.miaxoptions.topofmarket.mach.v2.3.miaxbbopostingincrementindicator", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.notification_time = ProtoField.new("Notification Time", "miax.miaxoptions.topofmarket.mach.v2.3.notificationtime", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_condition = ProtoField.new("Offer Condition", "miax.miaxoptions.topofmarket.mach.v2.3.offercondition", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_price_2 = ProtoField.new("Offer Price 2", "miax.miaxoptions.topofmarket.mach.v2.3.offerprice2", ftypes.DOUBLE)
miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_price_4 = ProtoField.new("Offer Price 4", "miax.miaxoptions.topofmarket.mach.v2.3.offerprice4", ftypes.DOUBLE)
miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_priority_customer_size_2 = ProtoField.new("Offer Priority Customer Size 2", "miax.miaxoptions.topofmarket.mach.v2.3.offerprioritycustomersize2", ftypes.UINT16)
miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_priority_customer_size_4 = ProtoField.new("Offer Priority Customer Size 4", "miax.miaxoptions.topofmarket.mach.v2.3.offerprioritycustomersize4", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_size_2 = ProtoField.new("Offer Size 2", "miax.miaxoptions.topofmarket.mach.v2.3.offersize2", ftypes.UINT16)
miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_size_4 = ProtoField.new("Offer Size 4", "miax.miaxoptions.topofmarket.mach.v2.3.offersize4", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.opening_time = ProtoField.new("Opening Time", "miax.miaxoptions.topofmarket.mach.v2.3.openingtime", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.miaxoptions.topofmarket.mach.v2.3.openingunderlyingmarketcode", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.packet = ProtoField.new("Packet", "miax.miaxoptions.topofmarket.mach.v2.3.packet", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.packet_length = ProtoField.new("Packet Length", "miax.miaxoptions.topofmarket.mach.v2.3.packetlength", ftypes.UINT16)
miax_miaxoptions_topofmarket_mach_v2_3.fields.packet_type = ProtoField.new("Packet Type", "miax.miaxoptions.topofmarket.mach.v2.3.packettype", ftypes.UINT8)
miax_miaxoptions_topofmarket_mach_v2_3.fields.payload = ProtoField.new("Payload", "miax.miaxoptions.topofmarket.mach.v2.3.payload", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.miaxoptions.topofmarket.mach.v2.3.priorityquotewidth", ftypes.DOUBLE)
miax_miaxoptions_topofmarket_mach_v2_3.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.miaxoptions.topofmarket.mach.v2.3.productaddupdatetime", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.product_id = ProtoField.new("Product Id", "miax.miaxoptions.topofmarket.mach.v2.3.productid", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.miaxoptions.topofmarket.mach.v2.3.referencecorrectionnumber", ftypes.UINT8)
miax_miaxoptions_topofmarket_mach_v2_3.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.miaxoptions.topofmarket.mach.v2.3.referencetradeid", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.miaxoptions.topofmarket.mach.v2.3.reserved8", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.restricted_option = ProtoField.new("Restricted Option", "miax.miaxoptions.topofmarket.mach.v2.3.restrictedoption", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.security_symbol = ProtoField.new("Security Symbol", "miax.miaxoptions.topofmarket.mach.v2.3.securitysymbol", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.sequence_number = ProtoField.new("Sequence Number", "miax.miaxoptions.topofmarket.mach.v2.3.sequencenumber", ftypes.UINT64)
miax_miaxoptions_topofmarket_mach_v2_3.fields.session_id = ProtoField.new("Session Id", "miax.miaxoptions.topofmarket.mach.v2.3.sessionid", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.session_number = ProtoField.new("Session Number", "miax.miaxoptions.topofmarket.mach.v2.3.sessionnumber", ftypes.UINT8)
miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_double_sided_top_of_market_compact_message = ProtoField.new("Simple Double Sided Top Of Market Compact Message", "miax.miaxoptions.topofmarket.mach.v2.3.simpledoublesidedtopofmarketcompactmessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_double_sided_top_of_market_wide_message = ProtoField.new("Simple Double Sided Top Of Market Wide Message", "miax.miaxoptions.topofmarket.mach.v2.3.simpledoublesidedtopofmarketwidemessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_series_update_message = ProtoField.new("Simple Series Update Message", "miax.miaxoptions.topofmarket.mach.v2.3.simpleseriesupdatemessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_top_of_market_bid_compact_message = ProtoField.new("Simple Top Of Market Bid Compact Message", "miax.miaxoptions.topofmarket.mach.v2.3.simpletopofmarketbidcompactmessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_top_of_market_bid_wide_message = ProtoField.new("Simple Top Of Market Bid Wide Message", "miax.miaxoptions.topofmarket.mach.v2.3.simpletopofmarketbidwidemessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_top_of_market_offer_compact_message = ProtoField.new("Simple Top Of Market Offer Compact Message", "miax.miaxoptions.topofmarket.mach.v2.3.simpletopofmarketoffercompactmessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_top_of_market_offer_wide_message = ProtoField.new("Simple Top Of Market Offer Wide Message", "miax.miaxoptions.topofmarket.mach.v2.3.simpletopofmarketofferwidemessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.strike_price = ProtoField.new("Strike Price", "miax.miaxoptions.topofmarket.mach.v2.3.strikeprice", ftypes.DOUBLE)
miax_miaxoptions_topofmarket_mach_v2_3.fields.system_state_message = ProtoField.new("System State Message", "miax.miaxoptions.topofmarket.mach.v2.3.systemstatemessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.system_status = ProtoField.new("System Status", "miax.miaxoptions.topofmarket.mach.v2.3.systemstatus", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.system_time_message = ProtoField.new("System Time Message", "miax.miaxoptions.topofmarket.mach.v2.3.systemtimemessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.timestamp = ProtoField.new("Timestamp", "miax.miaxoptions.topofmarket.mach.v2.3.timestamp", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.to_m_version = ProtoField.new("To M Version", "miax.miaxoptions.topofmarket.mach.v2.3.tomversion", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.miaxoptions.topofmarket.mach.v2.3.tradecancelmessage", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_condition = ProtoField.new("Trade Condition", "miax.miaxoptions.topofmarket.mach.v2.3.tradecondition", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_id = ProtoField.new("Trade Id", "miax.miaxoptions.topofmarket.mach.v2.3.tradeid", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_price = ProtoField.new("Trade Price", "miax.miaxoptions.topofmarket.mach.v2.3.tradeprice", ftypes.DOUBLE)
miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_size = ProtoField.new("Trade Size", "miax.miaxoptions.topofmarket.mach.v2.3.tradesize", ftypes.UINT32)
miax_miaxoptions_topofmarket_mach_v2_3.fields.trading_status = ProtoField.new("Trading Status", "miax.miaxoptions.topofmarket.mach.v2.3.tradingstatus", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.miaxoptions.topofmarket.mach.v2.3.underlyingsymbol", ftypes.STRING)
miax_miaxoptions_topofmarket_mach_v2_3.fields.underlying_trading_status_notification_message = ProtoField.new("Underlying Trading Status Notification Message", "miax.miaxoptions.topofmarket.mach.v2.3.underlyingtradingstatusnotificationmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax MiaxOptions TopOfMarket Mach 2.3 Element Dissection Options
show.application_message = true
show.last_sale_message = true
show.message = true
show.packet = true
show.simple_double_sided_top_of_market_compact_message = true
show.simple_double_sided_top_of_market_wide_message = true
show.simple_series_update_message = true
show.simple_top_of_market_bid_compact_message = true
show.simple_top_of_market_bid_wide_message = true
show.simple_top_of_market_offer_compact_message = true
show.simple_top_of_market_offer_wide_message = true
show.system_state_message = true
show.system_time_message = true
show.trade_cancel_message = true
show.underlying_trading_status_notification_message = true
show.data = false
show.payload = false

-- Register Miax MiaxOptions TopOfMarket Mach 2.3 Show Options
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_last_sale_message = Pref.bool("Show Last Sale Message", show.last_sale_message, "Parse and add Last Sale Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_double_sided_top_of_market_compact_message = Pref.bool("Show Simple Double Sided Top Of Market Compact Message", show.simple_double_sided_top_of_market_compact_message, "Parse and add Simple Double Sided Top Of Market Compact Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_double_sided_top_of_market_wide_message = Pref.bool("Show Simple Double Sided Top Of Market Wide Message", show.simple_double_sided_top_of_market_wide_message, "Parse and add Simple Double Sided Top Of Market Wide Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_series_update_message = Pref.bool("Show Simple Series Update Message", show.simple_series_update_message, "Parse and add Simple Series Update Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_bid_compact_message = Pref.bool("Show Simple Top Of Market Bid Compact Message", show.simple_top_of_market_bid_compact_message, "Parse and add Simple Top Of Market Bid Compact Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_bid_wide_message = Pref.bool("Show Simple Top Of Market Bid Wide Message", show.simple_top_of_market_bid_wide_message, "Parse and add Simple Top Of Market Bid Wide Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_offer_compact_message = Pref.bool("Show Simple Top Of Market Offer Compact Message", show.simple_top_of_market_offer_compact_message, "Parse and add Simple Top Of Market Offer Compact Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_offer_wide_message = Pref.bool("Show Simple Top Of Market Offer Wide Message", show.simple_top_of_market_offer_wide_message, "Parse and add Simple Top Of Market Offer Wide Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_underlying_trading_status_notification_message = Pref.bool("Show Underlying Trading Status Notification Message", show.underlying_trading_status_notification_message, "Parse and add Underlying Trading Status Notification Message to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function miax_miaxoptions_topofmarket_mach_v2_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_application_message then
    show.application_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_application_message
    changed = true
  end
  if show.last_sale_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_last_sale_message then
    show.last_sale_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_last_sale_message
    changed = true
  end
  if show.message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_message then
    show.message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_message
    changed = true
  end
  if show.packet ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_packet then
    show.packet = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_packet
    changed = true
  end
  if show.simple_double_sided_top_of_market_compact_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_double_sided_top_of_market_compact_message then
    show.simple_double_sided_top_of_market_compact_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_double_sided_top_of_market_compact_message
    changed = true
  end
  if show.simple_double_sided_top_of_market_wide_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_double_sided_top_of_market_wide_message then
    show.simple_double_sided_top_of_market_wide_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_double_sided_top_of_market_wide_message
    changed = true
  end
  if show.simple_series_update_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_series_update_message then
    show.simple_series_update_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_series_update_message
    changed = true
  end
  if show.simple_top_of_market_bid_compact_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_bid_compact_message then
    show.simple_top_of_market_bid_compact_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_bid_compact_message
    changed = true
  end
  if show.simple_top_of_market_bid_wide_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_bid_wide_message then
    show.simple_top_of_market_bid_wide_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_bid_wide_message
    changed = true
  end
  if show.simple_top_of_market_offer_compact_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_offer_compact_message then
    show.simple_top_of_market_offer_compact_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_offer_compact_message
    changed = true
  end
  if show.simple_top_of_market_offer_wide_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_offer_wide_message then
    show.simple_top_of_market_offer_wide_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_simple_top_of_market_offer_wide_message
    changed = true
  end
  if show.system_state_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_system_state_message then
    show.system_state_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_system_time_message then
    show.system_time_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_system_time_message
    changed = true
  end
  if show.trade_cancel_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_trade_cancel_message then
    show.trade_cancel_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_trade_cancel_message
    changed = true
  end
  if show.underlying_trading_status_notification_message ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_underlying_trading_status_notification_message then
    show.underlying_trading_status_notification_message = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_underlying_trading_status_notification_message
    changed = true
  end
  if show.data ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_data then
    show.data = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_data
    changed = true
  end
  if show.payload ~= miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_payload then
    show.payload = miax_miaxoptions_topofmarket_mach_v2_3.prefs.show_payload
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
-- Dissect Miax MiaxOptions TopOfMarket Mach 2.3
-----------------------------------------------------------------------

-- Size: Expected Event Time Nano Seconds
miax_miaxoptions_topofmarket_mach_v2_3_size_of.expected_event_time_nano_seconds = 4

-- Display: Expected Event Time Nano Seconds
miax_miaxoptions_topofmarket_mach_v2_3_display.expected_event_time_nano_seconds = function(value)
  return "Expected Event Time Nano Seconds: "..value
end

-- Dissect: Expected Event Time Nano Seconds
miax_miaxoptions_topofmarket_mach_v2_3_dissect.expected_event_time_nano_seconds = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.expected_event_time_nano_seconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.expected_event_time_nano_seconds(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.expected_event_time_nano_seconds, range, value, display)

  return offset + length, value
end

-- Size: Expected Event Time Seconds
miax_miaxoptions_topofmarket_mach_v2_3_size_of.expected_event_time_seconds = 4

-- Display: Expected Event Time Seconds
miax_miaxoptions_topofmarket_mach_v2_3_display.expected_event_time_seconds = function(value)
  return "Expected Event Time Seconds: "..value
end

-- Dissect: Expected Event Time Seconds
miax_miaxoptions_topofmarket_mach_v2_3_dissect.expected_event_time_seconds = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.expected_event_time_seconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.expected_event_time_seconds(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.expected_event_time_seconds, range, value, display)

  return offset + length, value
end

-- Size: Event Reason
miax_miaxoptions_topofmarket_mach_v2_3_size_of.event_reason = 1

-- Display: Event Reason
miax_miaxoptions_topofmarket_mach_v2_3_display.event_reason = function(value)
  if value == "A" then
    return "Event Reason: Automatic (A)"
  end
  if value == "M" then
    return "Event Reason: Manual (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_miaxoptions_topofmarket_mach_v2_3_dissect.event_reason = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.event_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.event_reason(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
miax_miaxoptions_topofmarket_mach_v2_3_size_of.trading_status = 1

-- Display: Trading Status
miax_miaxoptions_topofmarket_mach_v2_3_display.trading_status = function(value)
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
miax_miaxoptions_topofmarket_mach_v2_3_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
miax_miaxoptions_topofmarket_mach_v2_3_size_of.underlying_symbol = 11

-- Display: Underlying Symbol
miax_miaxoptions_topofmarket_mach_v2_3_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_miaxoptions_topofmarket_mach_v2_3_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp = 4

-- Display: Timestamp
miax_miaxoptions_topofmarket_mach_v2_3_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Trading Status Notification Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.underlying_trading_status_notification_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.underlying_symbol

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.trading_status

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.event_reason

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.expected_event_time_seconds

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.expected_event_time_nano_seconds

  return index
end

-- Display: Underlying Trading Status Notification Message
miax_miaxoptions_topofmarket_mach_v2_3_display.underlying_trading_status_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.underlying_trading_status_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index, underlying_symbol = miax_miaxoptions_topofmarket_mach_v2_3_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 3 values
  index, trading_status = miax_miaxoptions_topofmarket_mach_v2_3_dissect.trading_status(buffer, index, packet, parent)

  -- Event Reason: 1 Byte Ascii String Enum with 2 values
  index, event_reason = miax_miaxoptions_topofmarket_mach_v2_3_dissect.event_reason(buffer, index, packet, parent)

  -- Expected Event Time Seconds: 4 Byte Unsigned Fixed Width Integer
  index, expected_event_time_seconds = miax_miaxoptions_topofmarket_mach_v2_3_dissect.expected_event_time_seconds(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds: 4 Byte Unsigned Fixed Width Integer
  index, expected_event_time_nano_seconds = miax_miaxoptions_topofmarket_mach_v2_3_dissect.expected_event_time_nano_seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.underlying_trading_status_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_trading_status_notification_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.underlying_trading_status_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.underlying_trading_status_notification_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.underlying_trading_status_notification_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.underlying_trading_status_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Condition
miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_condition = 1

-- Display: Trade Condition
miax_miaxoptions_topofmarket_mach_v2_3_display.trade_condition = function(value)
  if value == " " then
    return "Trade Condition: Regular (<whitespace>)"
  end
  if value == "A" then
    return "Trade Condition: Cancel Of Trade Previously Reported Other Than As The Last Or Opening (A)"
  end
  if value == "B" then
    return "Trade Condition: Late And Is Out Of Sequence (B)"
  end
  if value == "C" then
    return "Trade Condition: Cancel Of The Last Reported Trade (C)"
  end
  if value == "D" then
    return "Trade Condition: Late And Is In Correct Sequence (D)"
  end
  if value == "E" then
    return "Trade Condition: Cancel Of The First Reported Trade (E)"
  end
  if value == "F" then
    return "Trade Condition: Late Report Of The Opening Trade And Is Out Of Sequence (F)"
  end
  if value == "G" then
    return "Trade Condition: Cancel Of The Only Reported Trade (G)"
  end
  if value == "H" then
    return "Trade Condition: Late Report Of The Opening Trade And Is In Correct Sequence (H)"
  end
  if value == "I" then
    return "Trade Condition: Reserved (I)"
  end
  if value == "J" then
    return "Trade Condition: Reopening Of An Option (J)"
  end
  if value == "K" then
    return "Trade Condition: Reserved (K)"
  end
  if value == "L" then
    return "Trade Condition: A Buy And A Sell In The Same Class (L)"
  end
  if value == "M" then
    return "Trade Condition: A Buy And A Sell In A Put And A Call (M)"
  end
  if value == "N" then
    return "Trade Condition: Reserved (N)"
  end
  if value == "O" then
    return "Trade Condition: Reserved (O)"
  end
  if value == "P" then
    return "Trade Condition: Buy Or Sell Of A Call Or Put (P)"
  end
  if value == "Q" then
    return "Trade Condition: Buy Of A Call And A Sell Of A Put For The Same Underlying Stock Or Index (Q)"
  end
  if value == "R" then
    return "Trade Condition: Execution Of An Order Which Was Stopped At A Price That Did Not Constitute A Trade Through On Another Market At The Time Of The Stop (R)"
  end
  if value == "S" then
    return "Trade Condition: Execution Of An Iso Order (S)"
  end
  if value == "T" then
    return "Trade Condition: Reserved (T)"
  end
  if value == "X" then
    return "Trade Condition: Trade Through Exempt (X)"
  end
  if value == "a" then
    return "Trade Condition: Paired Prime (a)"
  end
  if value == "b" then
    return "Trade Condition: Reserved (b)"
  end
  if value == "c" then
    return "Trade Condition: Prime Customer To Customer Cross Or Prime Qcc (c)"
  end
  if value == "d" then
    return "Trade Condition: Reserved (d)"
  end
  if value == "e" then
    return "Trade Condition: Reserved (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex Transaction That Is Not Complex Stocktied And Does Not Involve Legging (f)"
  end
  if value == "g" then
    return "Trade Condition: Complex Prime Transaction That Is Not Complex Stocktied And Does Not Involve Legging (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Prime Customer To Customer Cross Or Complex Prime Qcc Transaction That Is Not Complex Stocktied (h)"
  end
  if value == "i" then
    return "Trade Condition: Reserved (i)"
  end
  if value == "j" then
    return "Trade Condition: Complex Legging Transaction That Is Not Complex Stocktied (j)"
  end
  if value == "k" then
    return "Trade Condition: Complex Prime Stocktied Transaction That Does Not Involve Legging (k)"
  end
  if value == "l" then
    return "Trade Condition: Complex Prime Legging Transaction That Is Not Complex Stocktied (l)"
  end
  if value == "m" then
    return "Trade Condition: Reserved (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex Stocktied Transaction That Does Not Involve Legging (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex Customer To Customer Cross Stocktied Or Complex Qcc Stocktied Transaction (o)"
  end
  if value == "p" then
    return "Trade Condition: Reserved (p)"
  end
  if value == "q" then
    return "Trade Condition: Reserved (q)"
  end
  if value == "r" then
    return "Trade Condition: Reserved (r)"
  end
  if value == "s" then
    return "Trade Condition: Reserved (s)"
  end
  if value == "t" then
    return "Trade Condition: Reserved (t)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Trade Size
miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_size = 4

-- Display: Trade Size
miax_miaxoptions_topofmarket_mach_v2_3_display.trade_size = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_size = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.trade_size(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_price = 4

-- Display: Trade Price
miax_miaxoptions_topofmarket_mach_v2_3_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
translate.trade_price = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.trade_price(raw)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Correction Number
miax_miaxoptions_topofmarket_mach_v2_3_size_of.correction_number = 1

-- Display: Correction Number
miax_miaxoptions_topofmarket_mach_v2_3_display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_miaxoptions_topofmarket_mach_v2_3_dissect.correction_number = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.correction_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_id = 4

-- Display: Trade Id
miax_miaxoptions_topofmarket_mach_v2_3_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id = 4

-- Display: Product Id
miax_miaxoptions_topofmarket_mach_v2_3_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.product_id(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.product_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancel Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.correction_number

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_price

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_size

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_condition

  return index
end

-- Display: Trade Cancel Message
miax_miaxoptions_topofmarket_mach_v2_3_display.trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index, product_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, correction_number = miax_miaxoptions_topofmarket_mach_v2_3_dissect.correction_number(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, trade_price = miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, trade_size = miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 42 values
  index, trade_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.trade_cancel_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.trade_cancel_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
end

-- Size: Reference Correction Number
miax_miaxoptions_topofmarket_mach_v2_3_size_of.reference_correction_number = 1

-- Display: Reference Correction Number
miax_miaxoptions_topofmarket_mach_v2_3_display.reference_correction_number = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
miax_miaxoptions_topofmarket_mach_v2_3_dissect.reference_correction_number = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.reference_correction_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.reference_correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.reference_correction_number, range, value, display)

  return offset + length, value
end

-- Size: Reference Trade Id
miax_miaxoptions_topofmarket_mach_v2_3_size_of.reference_trade_id = 4

-- Display: Reference Trade Id
miax_miaxoptions_topofmarket_mach_v2_3_display.reference_trade_id = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
miax_miaxoptions_topofmarket_mach_v2_3_dissect.reference_trade_id = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.reference_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.reference_trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.reference_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Last Sale Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.last_sale_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.correction_number

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.reference_trade_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.reference_correction_number

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_price

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_size

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_condition

  return index
end

-- Display: Last Sale Message
miax_miaxoptions_topofmarket_mach_v2_3_display.last_sale_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.last_sale_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index, product_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, correction_number = miax_miaxoptions_topofmarket_mach_v2_3_dissect.correction_number(buffer, index, packet, parent)

  -- Reference Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, reference_trade_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.reference_trade_id(buffer, index, packet, parent)

  -- Reference Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, reference_correction_number = miax_miaxoptions_topofmarket_mach_v2_3_dissect.reference_correction_number(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Unsigned Fixed Width Integer
  index, trade_price = miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: 4 Byte Unsigned Fixed Width Integer
  index, trade_size = miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: 1 Byte Ascii String Enum with 42 values
  index, trade_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.last_sale_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.last_sale_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.last_sale_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.last_sale_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.last_sale_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.last_sale_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Condition
miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_condition = 1

-- Display: Offer Condition
miax_miaxoptions_topofmarket_mach_v2_3_display.offer_condition = function(value)
  if value == "A" then
    return "Offer Condition: Regular (A)"
  end
  if value == "B" then
    return "Offer Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Offer Condition: Not Firm (C)"
  end
  if value == "R" then
    return "Offer Condition: Reserved (R)"
  end
  if value == "T" then
    return "Offer Condition: Trading Halt (T)"
  end

  return "Offer Condition: Unknown("..value..")"
end

-- Dissect: Offer Condition
miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_condition = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.offer_condition(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Size: Offer Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_priority_customer_size_4 = 4

-- Display: Offer Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_display.offer_priority_customer_size_4 = function(value)
  return "Offer Priority Customer Size 4: "..value
end

-- Dissect: Offer Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_priority_customer_size_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_priority_customer_size_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.offer_priority_customer_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Size: Offer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_size_4 = 4

-- Display: Offer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_display.offer_size_4 = function(value)
  return "Offer Size 4: "..value
end

-- Dissect: Offer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_size_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_size_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.offer_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_size_4, range, value, display)

  return offset + length, value
end

-- Size: Offer Price 4
miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_price_4 = 4

-- Display: Offer Price 4
miax_miaxoptions_topofmarket_mach_v2_3_display.offer_price_4 = function(value)
  return "Offer Price 4: "..value
end

-- Translate: Offer Price 4
translate.offer_price_4 = function(raw)
  return raw/10000
end

-- Dissect: Offer Price 4
miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_price_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_price_4
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.offer_price_4(raw)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.offer_price_4(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_price_4, range, value, display)

  return offset + length, value
end

-- Size: Bid Condition
miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_condition = 1

-- Display: Bid Condition
miax_miaxoptions_topofmarket_mach_v2_3_display.bid_condition = function(value)
  if value == "A" then
    return "Bid Condition: Regular (A)"
  end
  if value == "B" then
    return "Bid Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Bid Condition: Not Firm (C)"
  end
  if value == "R" then
    return "Bid Condition: Reserved (R)"
  end
  if value == "T" then
    return "Bid Condition: Trading Halt (T)"
  end

  return "Bid Condition: Unknown("..value..")"
end

-- Dissect: Bid Condition
miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_condition = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.bid_condition(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Size: Bid Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_priority_customer_size_4 = 4

-- Display: Bid Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_display.bid_priority_customer_size_4 = function(value)
  return "Bid Priority Customer Size 4: "..value
end

-- Dissect: Bid Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_priority_customer_size_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_priority_customer_size_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.bid_priority_customer_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Size: Bid Size 4
miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_size_4 = 4

-- Display: Bid Size 4
miax_miaxoptions_topofmarket_mach_v2_3_display.bid_size_4 = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_size_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_size_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.bid_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Size: Bid Price 4
miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_price_4 = 4

-- Display: Bid Price 4
miax_miaxoptions_topofmarket_mach_v2_3_display.bid_price_4 = function(value)
  return "Bid Price 4: "..value
end

-- Translate: Bid Price 4
translate.bid_price_4 = function(raw)
  return raw/10000
end

-- Dissect: Bid Price 4
miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_price_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_price_4
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.bid_price_4(raw)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.bid_price_4(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_price_4, range, value, display)

  return offset + length, value
end

-- Calculate size of: Simple Double Sided Top Of Market Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_double_sided_top_of_market_wide_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_price_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_size_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_priority_customer_size_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_condition

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_price_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_size_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_priority_customer_size_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_condition

  return index
end

-- Display: Simple Double Sided Top Of Market Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_display.simple_double_sided_top_of_market_wide_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Double Sided Top Of Market Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_double_sided_top_of_market_wide_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index, product_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Unsigned Fixed Width Integer
  index, bid_price_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_size_4(buffer, index, packet, parent)

  -- Bid Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index, bid_priority_customer_size_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_priority_customer_size_4(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 5 values
  index, bid_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Unsigned Fixed Width Integer
  index, offer_price_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index, offer_size_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_size_4(buffer, index, packet, parent)

  -- Offer Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index, offer_priority_customer_size_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_priority_customer_size_4(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 5 values
  index, offer_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Double Sided Top Of Market Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_double_sided_top_of_market_wide_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_double_sided_top_of_market_wide_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_double_sided_top_of_market_wide_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.simple_double_sided_top_of_market_wide_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_double_sided_top_of_market_wide_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_double_sided_top_of_market_wide_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_priority_customer_size_2 = 2

-- Display: Offer Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_display.offer_priority_customer_size_2 = function(value)
  return "Offer Priority Customer Size 2: "..value
end

-- Dissect: Offer Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_priority_customer_size_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_priority_customer_size_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.offer_priority_customer_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Size: Offer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_size_2 = 2

-- Display: Offer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_display.offer_size_2 = function(value)
  return "Offer Size 2: "..value
end

-- Dissect: Offer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_size_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_size_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.offer_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_size_2, range, value, display)

  return offset + length, value
end

-- Size: Offer Price 2
miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_price_2 = 2

-- Display: Offer Price 2
miax_miaxoptions_topofmarket_mach_v2_3_display.offer_price_2 = function(value)
  return "Offer Price 2: "..value
end

-- Translate: Offer Price 2
translate.offer_price_2 = function(raw)
  return raw/100
end

-- Dissect: Offer Price 2
miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_price_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_price_2
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.offer_price_2(raw)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.offer_price_2(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.offer_price_2, range, value, display)

  return offset + length, value
end

-- Size: Bid Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_priority_customer_size_2 = 2

-- Display: Bid Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_display.bid_priority_customer_size_2 = function(value)
  return "Bid Priority Customer Size 2: "..value
end

-- Dissect: Bid Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_priority_customer_size_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_priority_customer_size_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.bid_priority_customer_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Size: Bid Size 2
miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_size_2 = 2

-- Display: Bid Size 2
miax_miaxoptions_topofmarket_mach_v2_3_display.bid_size_2 = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_size_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_size_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.bid_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Size: Bid Price 2
miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_price_2 = 2

-- Display: Bid Price 2
miax_miaxoptions_topofmarket_mach_v2_3_display.bid_price_2 = function(value)
  return "Bid Price 2: "..value
end

-- Translate: Bid Price 2
translate.bid_price_2 = function(raw)
  return raw/100
end

-- Dissect: Bid Price 2
miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_price_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_price_2
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.bid_price_2(raw)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.bid_price_2(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.bid_price_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Simple Double Sided Top Of Market Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_double_sided_top_of_market_compact_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_price_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_size_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_priority_customer_size_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.bid_condition

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_price_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_size_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_priority_customer_size_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.offer_condition

  return index
end

-- Display: Simple Double Sided Top Of Market Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_display.simple_double_sided_top_of_market_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Double Sided Top Of Market Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_double_sided_top_of_market_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index, product_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Unsigned Fixed Width Integer
  index, bid_price_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index, bid_size_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_size_2(buffer, index, packet, parent)

  -- Bid Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index, bid_priority_customer_size_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_priority_customer_size_2(buffer, index, packet, parent)

  -- Bid Condition: 1 Byte Ascii String Enum with 5 values
  index, bid_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Unsigned Fixed Width Integer
  index, offer_price_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index, offer_size_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_size_2(buffer, index, packet, parent)

  -- Offer Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index, offer_priority_customer_size_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_priority_customer_size_2(buffer, index, packet, parent)

  -- Offer Condition: 1 Byte Ascii String Enum with 5 values
  index, offer_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Double Sided Top Of Market Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_double_sided_top_of_market_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_double_sided_top_of_market_compact_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_double_sided_top_of_market_compact_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.simple_double_sided_top_of_market_compact_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_double_sided_top_of_market_compact_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_double_sided_top_of_market_compact_message_fields(buffer, offset, packet, parent)
end

-- Size: Mbbo Condition
miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_condition = 1

-- Display: Mbbo Condition
miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_condition = function(value)
  if value == "A" then
    return "Mbbo Condition: Regular (A)"
  end
  if value == "B" then
    return "Mbbo Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Mbbo Condition: Not Firm (C)"
  end
  if value == "R" then
    return "Mbbo Condition: Reserved (R)"
  end
  if value == "T" then
    return "Mbbo Condition: Trading Halt (T)"
  end

  return "Mbbo Condition: Unknown("..value..")"
end

-- Dissect: Mbbo Condition
miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_condition = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_condition(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_condition, range, value, display)

  return offset + length, value
end

-- Size: Mbbo Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_priority_customer_size_4 = 4

-- Display: Mbbo Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_priority_customer_size_4 = function(value)
  return "Mbbo Priority Customer Size 4: "..value
end

-- Dissect: Mbbo Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_priority_customer_size_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_priority_customer_size_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_priority_customer_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Size: Mbbo Size 4
miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_size_4 = 4

-- Display: Mbbo Size 4
miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_size_4 = function(value)
  return "Mbbo Size 4: "..value
end

-- Dissect: Mbbo Size 4
miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_size_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_size_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_size_4(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_size_4, range, value, display)

  return offset + length, value
end

-- Size: Mbbo Price 4
miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_price_4 = 4

-- Display: Mbbo Price 4
miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_price_4 = function(value)
  return "Mbbo Price 4: "..value
end

-- Translate: Mbbo Price 4
translate.mbbo_price_4 = function(raw)
  return raw/10000
end

-- Dissect: Mbbo Price 4
miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_price_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_price_4
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.mbbo_price_4(raw)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_price_4(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_price_4, range, value, display)

  return offset + length, value
end

-- Calculate size of: Simple Top Of Market Offer Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_offer_wide_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_price_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_size_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_priority_customer_size_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_condition

  return index
end

-- Display: Simple Top Of Market Offer Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_display.simple_top_of_market_offer_wide_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Top Of Market Offer Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_offer_wide_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index, product_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price 4: 4 Byte Unsigned Fixed Width Integer
  index, mbbo_price_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_price_4(buffer, index, packet, parent)

  -- Mbbo Size 4: 4 Byte Unsigned Fixed Width Integer
  index, mbbo_size_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_size_4(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index, mbbo_priority_customer_size_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_priority_customer_size_4(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 5 values
  index, mbbo_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Offer Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_offer_wide_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_top_of_market_offer_wide_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_offer_wide_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.simple_top_of_market_offer_wide_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_top_of_market_offer_wide_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_offer_wide_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Simple Top Of Market Bid Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_bid_wide_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_price_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_size_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_priority_customer_size_4

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_condition

  return index
end

-- Display: Simple Top Of Market Bid Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_display.simple_top_of_market_bid_wide_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Top Of Market Bid Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_bid_wide_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index, product_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price 4: 4 Byte Unsigned Fixed Width Integer
  index, mbbo_price_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_price_4(buffer, index, packet, parent)

  -- Mbbo Size 4: 4 Byte Unsigned Fixed Width Integer
  index, mbbo_size_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_size_4(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 4: 4 Byte Unsigned Fixed Width Integer
  index, mbbo_priority_customer_size_4 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_priority_customer_size_4(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 5 values
  index, mbbo_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Bid Wide Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_bid_wide_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_top_of_market_bid_wide_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_bid_wide_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.simple_top_of_market_bid_wide_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_top_of_market_bid_wide_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_bid_wide_message_fields(buffer, offset, packet, parent)
end

-- Size: Mbbo Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_priority_customer_size_2 = 2

-- Display: Mbbo Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_priority_customer_size_2 = function(value)
  return "Mbbo Priority Customer Size 2: "..value
end

-- Dissect: Mbbo Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_priority_customer_size_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_priority_customer_size_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_priority_customer_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Size: Mbbo Size 2
miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_size_2 = 2

-- Display: Mbbo Size 2
miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_size_2 = function(value)
  return "Mbbo Size 2: "..value
end

-- Dissect: Mbbo Size 2
miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_size_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_size_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_size_2(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_size_2, range, value, display)

  return offset + length, value
end

-- Size: Mbbo Price 2
miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_price_2 = 2

-- Display: Mbbo Price 2
miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_price_2 = function(value)
  return "Mbbo Price 2: "..value
end

-- Translate: Mbbo Price 2
translate.mbbo_price_2 = function(raw)
  return raw/100
end

-- Dissect: Mbbo Price 2
miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_price_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_price_2
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.mbbo_price_2(raw)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.mbbo_price_2(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.mbbo_price_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Simple Top Of Market Offer Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_offer_compact_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_price_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_size_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_priority_customer_size_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_condition

  return index
end

-- Display: Simple Top Of Market Offer Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_display.simple_top_of_market_offer_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Top Of Market Offer Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_offer_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index, product_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price 2: 2 Byte Unsigned Fixed Width Integer
  index, mbbo_price_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_price_2(buffer, index, packet, parent)

  -- Mbbo Size 2: 2 Byte Unsigned Fixed Width Integer
  index, mbbo_size_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_size_2(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index, mbbo_priority_customer_size_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_priority_customer_size_2(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 5 values
  index, mbbo_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Offer Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_offer_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_top_of_market_offer_compact_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_offer_compact_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.simple_top_of_market_offer_compact_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_top_of_market_offer_compact_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_offer_compact_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Simple Top Of Market Bid Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_bid_compact_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_price_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_size_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_priority_customer_size_2

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.mbbo_condition

  return index
end

-- Display: Simple Top Of Market Bid Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_display.simple_top_of_market_bid_compact_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Top Of Market Bid Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_bid_compact_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index, product_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id(buffer, index, packet, parent)

  -- Mbbo Price 2: 2 Byte Unsigned Fixed Width Integer
  index, mbbo_price_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_price_2(buffer, index, packet, parent)

  -- Mbbo Size 2: 2 Byte Unsigned Fixed Width Integer
  index, mbbo_size_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_size_2(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 2: 2 Byte Unsigned Fixed Width Integer
  index, mbbo_priority_customer_size_2 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_priority_customer_size_2(buffer, index, packet, parent)

  -- Mbbo Condition: 1 Byte Ascii String Enum with 5 values
  index, mbbo_condition = miax_miaxoptions_topofmarket_mach_v2_3_dissect.mbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Bid Compact Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_bid_compact_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_top_of_market_bid_compact_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_bid_compact_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.simple_top_of_market_bid_compact_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_top_of_market_bid_compact_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_bid_compact_message_fields(buffer, offset, packet, parent)
end

-- Size: System Status
miax_miaxoptions_topofmarket_mach_v2_3_size_of.system_status = 1

-- Display: System Status
miax_miaxoptions_topofmarket_mach_v2_3_display.system_status = function(value)
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
miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_status = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.system_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.system_status, range, value, display)

  return offset + length, value
end

-- Size: Session Id
miax_miaxoptions_topofmarket_mach_v2_3_size_of.session_id = 4

-- Display: Session Id
miax_miaxoptions_topofmarket_mach_v2_3_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_miaxoptions_topofmarket_mach_v2_3_dissect.session_id = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: To M Version
miax_miaxoptions_topofmarket_mach_v2_3_size_of.to_m_version = 8

-- Display: To M Version
miax_miaxoptions_topofmarket_mach_v2_3_display.to_m_version = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_miaxoptions_topofmarket_mach_v2_3_dissect.to_m_version = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.to_m_version
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.to_m_version(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Size: Notification Time
miax_miaxoptions_topofmarket_mach_v2_3_size_of.notification_time = 4

-- Display: Notification Time
miax_miaxoptions_topofmarket_mach_v2_3_display.notification_time = function(value)
  return "Notification Time: "..value
end

-- Dissect: Notification Time
miax_miaxoptions_topofmarket_mach_v2_3_dissect.notification_time = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.notification_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.notification_time(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: System State Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.system_state_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.notification_time

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.to_m_version

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.session_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.system_status

  return index
end

-- Display: System State Message
miax_miaxoptions_topofmarket_mach_v2_3_display.system_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System State Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: 4 Byte Unsigned Fixed Width Integer
  index, notification_time = miax_miaxoptions_topofmarket_mach_v2_3_dissect.notification_time(buffer, index, packet, parent)

  -- To M Version: 8 Byte Ascii String
  index, to_m_version = miax_miaxoptions_topofmarket_mach_v2_3_dissect.to_m_version(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.session_id(buffer, index, packet, parent)

  -- System Status: 1 Byte Ascii String Enum with 4 values
  index, system_status = miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_state_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.system_state_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.system_state_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.system_state_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_state_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 8
miax_miaxoptions_topofmarket_mach_v2_3_size_of.reserved_8 = 8

-- Display: Reserved 8
miax_miaxoptions_topofmarket_mach_v2_3_display.reserved_8 = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_miaxoptions_topofmarket_mach_v2_3_dissect.reserved_8 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.reserved_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.reserved_8(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Size: Priority Quote Width
miax_miaxoptions_topofmarket_mach_v2_3_size_of.priority_quote_width = 4

-- Display: Priority Quote Width
miax_miaxoptions_topofmarket_mach_v2_3_display.priority_quote_width = function(value)
  return "Priority Quote Width: "..value
end

-- Translate: Priority Quote Width
translate.priority_quote_width = function(raw)
  return raw/10000
end

-- Dissect: Priority Quote Width
miax_miaxoptions_topofmarket_mach_v2_3_dissect.priority_quote_width = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.priority_quote_width
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.priority_quote_width(raw)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.priority_quote_width(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.priority_quote_width, range, value, display)

  return offset + length, value
end

-- Size: Opening Underlying Market Code
miax_miaxoptions_topofmarket_mach_v2_3_size_of.opening_underlying_market_code = 1

-- Display: Opening Underlying Market Code
miax_miaxoptions_topofmarket_mach_v2_3_display.opening_underlying_market_code = function(value)
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
miax_miaxoptions_topofmarket_mach_v2_3_dissect.opening_underlying_market_code = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.opening_underlying_market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.opening_underlying_market_code(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Size: Liquidity Acceptance Increment Indicator
miax_miaxoptions_topofmarket_mach_v2_3_size_of.liquidity_acceptance_increment_indicator = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_miaxoptions_topofmarket_mach_v2_3_display.liquidity_acceptance_increment_indicator = function(value)
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
miax_miaxoptions_topofmarket_mach_v2_3_dissect.liquidity_acceptance_increment_indicator = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.liquidity_acceptance_increment_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.liquidity_acceptance_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Size: Miax Bbo Posting Increment Indicator
miax_miaxoptions_topofmarket_mach_v2_3_size_of.miax_bbo_posting_increment_indicator = 1

-- Display: Miax Bbo Posting Increment Indicator
miax_miaxoptions_topofmarket_mach_v2_3_display.miax_bbo_posting_increment_indicator = function(value)
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
miax_miaxoptions_topofmarket_mach_v2_3_dissect.miax_bbo_posting_increment_indicator = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.miax_bbo_posting_increment_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.miax_bbo_posting_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Size: Active On Miax
miax_miaxoptions_topofmarket_mach_v2_3_size_of.active_on_miax = 1

-- Display: Active On Miax
miax_miaxoptions_topofmarket_mach_v2_3_display.active_on_miax = function(value)
  if value == "A" then
    return "Active On Miax: Active (A)"
  end
  if value == "I" then
    return "Active On Miax: Inactive (I)"
  end

  return "Active On Miax: Unknown("..value..")"
end

-- Dissect: Active On Miax
miax_miaxoptions_topofmarket_mach_v2_3_dissect.active_on_miax = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.active_on_miax
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.active_on_miax(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.active_on_miax, range, value, display)

  return offset + length, value
end

-- Size: Long Term Option
miax_miaxoptions_topofmarket_mach_v2_3_size_of.long_term_option = 1

-- Display: Long Term Option
miax_miaxoptions_topofmarket_mach_v2_3_display.long_term_option = function(value)
  if value == "Y" then
    return "Long Term Option: Far Month Expiration (Y)"
  end
  if value == "N" then
    return "Long Term Option: Near Month Expiration (N)"
  end

  return "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_miaxoptions_topofmarket_mach_v2_3_dissect.long_term_option = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.long_term_option
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.long_term_option(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Size: Restricted Option
miax_miaxoptions_topofmarket_mach_v2_3_size_of.restricted_option = 1

-- Display: Restricted Option
miax_miaxoptions_topofmarket_mach_v2_3_display.restricted_option = function(value)
  if value == "Y" then
    return "Restricted Option: Accept Position Closing (Y)"
  end
  if value == "N" then
    return "Restricted Option: Accept Open And Close (N)"
  end

  return "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_miaxoptions_topofmarket_mach_v2_3_dissect.restricted_option = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.restricted_option
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.restricted_option(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Size: Closing Time
miax_miaxoptions_topofmarket_mach_v2_3_size_of.closing_time = 8

-- Display: Closing Time
miax_miaxoptions_topofmarket_mach_v2_3_display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_miaxoptions_topofmarket_mach_v2_3_dissect.closing_time = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.closing_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.closing_time(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Size: Opening Time
miax_miaxoptions_topofmarket_mach_v2_3_size_of.opening_time = 8

-- Display: Opening Time
miax_miaxoptions_topofmarket_mach_v2_3_display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_miaxoptions_topofmarket_mach_v2_3_dissect.opening_time = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.opening_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.opening_time(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Size: Call Or Put
miax_miaxoptions_topofmarket_mach_v2_3_size_of.call_or_put = 1

-- Display: Call Or Put
miax_miaxoptions_topofmarket_mach_v2_3_display.call_or_put = function(value)
  if value == "C" then
    return "Call Or Put: Call (C)"
  end
  if value == "P" then
    return "Call Or Put: Put (P)"
  end

  return "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_miaxoptions_topofmarket_mach_v2_3_dissect.call_or_put = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.call_or_put
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.call_or_put(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
miax_miaxoptions_topofmarket_mach_v2_3_size_of.strike_price = 4

-- Display: Strike Price
miax_miaxoptions_topofmarket_mach_v2_3_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_miaxoptions_topofmarket_mach_v2_3_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.strike_price(raw)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Date
miax_miaxoptions_topofmarket_mach_v2_3_size_of.expiration_date = 8

-- Display: Expiration Date
miax_miaxoptions_topofmarket_mach_v2_3_display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_miaxoptions_topofmarket_mach_v2_3_dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.expiration_date
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
miax_miaxoptions_topofmarket_mach_v2_3_size_of.security_symbol = 6

-- Display: Security Symbol
miax_miaxoptions_topofmarket_mach_v2_3_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_miaxoptions_topofmarket_mach_v2_3_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.security_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Product Add Update Time
miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_add_update_time = 4

-- Display: Product Add Update Time
miax_miaxoptions_topofmarket_mach_v2_3_display.product_add_update_time = function(value)
  return "Product Add Update Time: "..value
end

-- Dissect: Product Add Update Time
miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_add_update_time = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_add_update_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.product_add_update_time(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.product_add_update_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Simple Series Update Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_series_update_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_add_update_time

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.product_id

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.underlying_symbol

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.security_symbol

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.expiration_date

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.strike_price

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.call_or_put

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.opening_time

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.closing_time

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.restricted_option

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.long_term_option

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.active_on_miax

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.miax_bbo_posting_increment_indicator

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.liquidity_acceptance_increment_indicator

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.opening_underlying_market_code

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.priority_quote_width

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.reserved_8

  return index
end

-- Display: Simple Series Update Message
miax_miaxoptions_topofmarket_mach_v2_3_display.simple_series_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Simple Series Update Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_series_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: 4 Byte Unsigned Fixed Width Integer
  index, product_add_update_time = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_add_update_time(buffer, index, packet, parent)

  -- Product Id: 4 Byte Unsigned Fixed Width Integer
  index, product_id = miax_miaxoptions_topofmarket_mach_v2_3_dissect.product_id(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index, underlying_symbol = miax_miaxoptions_topofmarket_mach_v2_3_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Security Symbol: 6 Byte Ascii String
  index, security_symbol = miax_miaxoptions_topofmarket_mach_v2_3_dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Date: 8 Byte Ascii String
  index, expiration_date = miax_miaxoptions_topofmarket_mach_v2_3_dissect.expiration_date(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = miax_miaxoptions_topofmarket_mach_v2_3_dissect.strike_price(buffer, index, packet, parent)

  -- Call Or Put: 1 Byte Ascii String Enum with 2 values
  index, call_or_put = miax_miaxoptions_topofmarket_mach_v2_3_dissect.call_or_put(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Ascii String
  index, opening_time = miax_miaxoptions_topofmarket_mach_v2_3_dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Ascii String
  index, closing_time = miax_miaxoptions_topofmarket_mach_v2_3_dissect.closing_time(buffer, index, packet, parent)

  -- Restricted Option: 1 Byte Ascii String Enum with 2 values
  index, restricted_option = miax_miaxoptions_topofmarket_mach_v2_3_dissect.restricted_option(buffer, index, packet, parent)

  -- Long Term Option: 1 Byte Ascii String Enum with 2 values
  index, long_term_option = miax_miaxoptions_topofmarket_mach_v2_3_dissect.long_term_option(buffer, index, packet, parent)

  -- Active On Miax: 1 Byte Ascii String Enum with 2 values
  index, active_on_miax = miax_miaxoptions_topofmarket_mach_v2_3_dissect.active_on_miax(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index, miax_bbo_posting_increment_indicator = miax_miaxoptions_topofmarket_mach_v2_3_dissect.miax_bbo_posting_increment_indicator(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: 1 Byte Ascii String Enum with 3 values
  index, liquidity_acceptance_increment_indicator = miax_miaxoptions_topofmarket_mach_v2_3_dissect.liquidity_acceptance_increment_indicator(buffer, index, packet, parent)

  -- Opening Underlying Market Code: 1 Byte Ascii String Enum with 17 values
  index, opening_underlying_market_code = miax_miaxoptions_topofmarket_mach_v2_3_dissect.opening_underlying_market_code(buffer, index, packet, parent)

  -- Priority Quote Width: 4 Byte Unsigned Fixed Width Integer
  index, priority_quote_width = miax_miaxoptions_topofmarket_mach_v2_3_dissect.priority_quote_width(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte Ascii String
  index, reserved_8 = miax_miaxoptions_topofmarket_mach_v2_3_dissect.reserved_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Series Update Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_series_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.simple_series_update_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_series_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.simple_series_update_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.simple_series_update_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_series_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: System Time Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.system_time_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.timestamp

  return index
end

-- Display: System Time Message
miax_miaxoptions_topofmarket_mach_v2_3_display.system_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Time Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = miax_miaxoptions_topofmarket_mach_v2_3_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_time_message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.system_time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.system_time_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.system_time_message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Data
miax_miaxoptions_topofmarket_mach_v2_3_size_of.data = function(buffer, offset, message_type)
  -- Size of System Time Message
  if message_type == "1" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.system_time_message(buffer, offset)
  end
  -- Size of Simple Series Update Message
  if message_type == "P" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_series_update_message(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "S" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.system_state_message(buffer, offset)
  end
  -- Size of Simple Top Of Market Bid Compact Message
  if message_type == "B" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_bid_compact_message(buffer, offset)
  end
  -- Size of Simple Top Of Market Offer Compact Message
  if message_type == "O" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_offer_compact_message(buffer, offset)
  end
  -- Size of Simple Top Of Market Bid Wide Message
  if message_type == "W" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_bid_wide_message(buffer, offset)
  end
  -- Size of Simple Top Of Market Offer Wide Message
  if message_type == "A" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_top_of_market_offer_wide_message(buffer, offset)
  end
  -- Size of Simple Double Sided Top Of Market Compact Message
  if message_type == "d" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_double_sided_top_of_market_compact_message(buffer, offset)
  end
  -- Size of Simple Double Sided Top Of Market Wide Message
  if message_type == "D" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.simple_double_sided_top_of_market_wide_message(buffer, offset)
  end
  -- Size of Last Sale Message
  if message_type == "T" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.last_sale_message(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == "X" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.trade_cancel_message(buffer, offset)
  end
  -- Size of Underlying Trading Status Notification Message
  if message_type == "H" then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.underlying_trading_status_notification_message(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_miaxoptions_topofmarket_mach_v2_3_display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_miaxoptions_topofmarket_mach_v2_3_dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == "1" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Simple Series Update Message
  if message_type == "P" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_series_update_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "S" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Bid Compact Message
  if message_type == "B" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_bid_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Offer Compact Message
  if message_type == "O" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_offer_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Bid Wide Message
  if message_type == "W" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_bid_wide_message(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Offer Wide Message
  if message_type == "A" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_top_of_market_offer_wide_message(buffer, offset, packet, parent)
  end
  -- Dissect Simple Double Sided Top Of Market Compact Message
  if message_type == "d" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_double_sided_top_of_market_compact_message(buffer, offset, packet, parent)
  end
  -- Dissect Simple Double Sided Top Of Market Wide Message
  if message_type == "D" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.simple_double_sided_top_of_market_wide_message(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Message
  if message_type == "T" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.last_sale_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "X" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Notification Message
  if message_type == "H" then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.underlying_trading_status_notification_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_miaxoptions_topofmarket_mach_v2_3_dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_miaxoptions_topofmarket_mach_v2_3_size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.data(buffer, packet, parent)
  local element = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.data, range, display)

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
miax_miaxoptions_topofmarket_mach_v2_3_size_of.message_type = 1

-- Display: Message Type
miax_miaxoptions_topofmarket_mach_v2_3_display.message_type = function(value)
  if value == "1" then
    return "Message Type: System Time Message (1)"
  end
  if value == "P" then
    return "Message Type: Simple Series Update Message (P)"
  end
  if value == "S" then
    return "Message Type: System State Message (S)"
  end
  if value == "B" then
    return "Message Type: Simple Top Of Market Bid Compact Message (B)"
  end
  if value == "O" then
    return "Message Type: Simple Top Of Market Offer Compact Message (O)"
  end
  if value == "W" then
    return "Message Type: Simple Top Of Market Bid Wide Message (W)"
  end
  if value == "A" then
    return "Message Type: Simple Top Of Market Offer Wide Message (A)"
  end
  if value == "d" then
    return "Message Type: Simple Double Sided Top Of Market Compact Message (d)"
  end
  if value == "D" then
    return "Message Type: Simple Double Sided Top Of Market Wide Message (D)"
  end
  if value == "T" then
    return "Message Type: Last Sale Message (T)"
  end
  if value == "X" then
    return "Message Type: Trade Cancel Message (X)"
  end
  if value == "H" then
    return "Message Type: Underlying Trading Status Notification Message (H)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_miaxoptions_topofmarket_mach_v2_3_dissect.message_type = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.message_type(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Application Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.application_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_miaxoptions_topofmarket_mach_v2_3_display.application_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Application Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.application_message_fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index, message_type = miax_miaxoptions_topofmarket_mach_v2_3_dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  index = miax_miaxoptions_topofmarket_mach_v2_3_dissect.data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.application_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_miaxoptions_topofmarket_mach_v2_3_size_of.application_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.application_message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.application_message, range, display)
  end

  miax_miaxoptions_topofmarket_mach_v2_3_dissect.application_message_fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Calculate runtime size of: Payload
miax_miaxoptions_topofmarket_mach_v2_3_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_miaxoptions_topofmarket_mach_v2_3_size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_miaxoptions_topofmarket_mach_v2_3_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_miaxoptions_topofmarket_mach_v2_3_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_miaxoptions_topofmarket_mach_v2_3_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_miaxoptions_topofmarket_mach_v2_3_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_miaxoptions_topofmarket_mach_v2_3_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.payload(buffer, packet, parent)
  local element = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.payload, range, display)

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Session Number
miax_miaxoptions_topofmarket_mach_v2_3_size_of.session_number = 1

-- Display: Session Number
miax_miaxoptions_topofmarket_mach_v2_3_display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_miaxoptions_topofmarket_mach_v2_3_dissect.session_number = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.session_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.session_number(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.session_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Type
miax_miaxoptions_topofmarket_mach_v2_3_size_of.packet_type = 1

-- Display: Packet Type
miax_miaxoptions_topofmarket_mach_v2_3_display.packet_type = function(value)
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
miax_miaxoptions_topofmarket_mach_v2_3_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
miax_miaxoptions_topofmarket_mach_v2_3_size_of.packet_length = 2

-- Display: Packet Length
miax_miaxoptions_topofmarket_mach_v2_3_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_miaxoptions_topofmarket_mach_v2_3_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
miax_miaxoptions_topofmarket_mach_v2_3_size_of.sequence_number = 8

-- Display: Sequence Number
miax_miaxoptions_topofmarket_mach_v2_3_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_miaxoptions_topofmarket_mach_v2_3_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_topofmarket_mach_v2_3_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
miax_miaxoptions_topofmarket_mach_v2_3_size_of.message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.sequence_number

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.packet_length

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.packet_type

  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.session_number

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_miaxoptions_topofmarket_mach_v2_3_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_miaxoptions_topofmarket_mach_v2_3_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_miaxoptions_topofmarket_mach_v2_3_dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_miaxoptions_topofmarket_mach_v2_3_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_miaxoptions_topofmarket_mach_v2_3_dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_miaxoptions_topofmarket_mach_v2_3_dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_miaxoptions_topofmarket_mach_v2_3_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_miaxoptions_topofmarket_mach_v2_3_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_miaxoptions_topofmarket_mach_v2_3_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v2_3_display.message(buffer, packet, parent)
    parent = parent:add(miax_miaxoptions_topofmarket_mach_v2_3.fields.message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
miax_miaxoptions_topofmarket_mach_v2_3_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index = miax_miaxoptions_topofmarket_mach_v2_3_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_miaxoptions_topofmarket_mach_v2_3.init()
end

-- Dissector for Miax MiaxOptions TopOfMarket Mach 2.3
function miax_miaxoptions_topofmarket_mach_v2_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_miaxoptions_topofmarket_mach_v2_3.name

  -- Dissect protocol
  local protocol = parent:add(miax_miaxoptions_topofmarket_mach_v2_3, buffer(), miax_miaxoptions_topofmarket_mach_v2_3.description, "("..buffer:len().." Bytes)")
  return miax_miaxoptions_topofmarket_mach_v2_3_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, miax_miaxoptions_topofmarket_mach_v2_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_miaxoptions_topofmarket_mach_v2_3_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax MiaxOptions TopOfMarket Mach 2.3
local function miax_miaxoptions_topofmarket_mach_v2_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_miaxoptions_topofmarket_mach_v2_3_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_miaxoptions_topofmarket_mach_v2_3
  miax_miaxoptions_topofmarket_mach_v2_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax MiaxOptions TopOfMarket Mach 2.3
miax_miaxoptions_topofmarket_mach_v2_3:register_heuristic("udp", miax_miaxoptions_topofmarket_mach_v2_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.3
--   Date: Monday, June 10, 2019
--   Specification: Top_Of_Market_Feed_ToM_v2.3.pdf
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
