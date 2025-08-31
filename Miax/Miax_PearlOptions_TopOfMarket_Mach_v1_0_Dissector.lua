-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlOptions TopOfMarket Mach 1.0 Protocol
local omi_miax_pearloptions_topofmarket_mach_v1_0 = Proto("Miax.PearlOptions.TopOfMarket.Mach.v1.0.Lua", "Miax PearlOptions TopOfMarket Mach 1.0")

-- Component Tables
local show = {}
local format = {}
local miax_pearloptions_topofmarket_mach_v1_0_display = {}
local miax_pearloptions_topofmarket_mach_v1_0_dissect = {}
local miax_pearloptions_topofmarket_mach_v1_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlOptions TopOfMarket Mach 1.0 Fields
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.active_on_pearl = ProtoField.new("Active On Pearl", "miax.pearloptions.topofmarket.mach.v1.0.activeonpearl", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.application_message = ProtoField.new("Application Message", "miax.pearloptions.topofmarket.mach.v1.0.applicationmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.bid_condition = ProtoField.new("Bid Condition", "miax.pearloptions.topofmarket.mach.v1.0.bidcondition", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.bid_price = ProtoField.new("Bid Price", "miax.pearloptions.topofmarket.mach.v1.0.bidprice", ftypes.DOUBLE)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.bid_priority_customer_size = ProtoField.new("Bid Priority Customer Size", "miax.pearloptions.topofmarket.mach.v1.0.bidprioritycustomersize", ftypes.UINT16)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.bid_size = ProtoField.new("Bid Size", "miax.pearloptions.topofmarket.mach.v1.0.bidsize", ftypes.UINT16)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.call_or_put = ProtoField.new("Call Or Put", "miax.pearloptions.topofmarket.mach.v1.0.callorput", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.closing_time = ProtoField.new("Closing Time", "miax.pearloptions.topofmarket.mach.v1.0.closingtime", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.correction_number = ProtoField.new("Correction Number", "miax.pearloptions.topofmarket.mach.v1.0.correctionnumber", ftypes.UINT8)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.data = ProtoField.new("Data", "miax.pearloptions.topofmarket.mach.v1.0.data", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.event_reason = ProtoField.new("Event Reason", "miax.pearloptions.topofmarket.mach.v1.0.eventreason", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.pearloptions.topofmarket.mach.v1.0.expectedeventtimenanosecondspart", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.expected_event_time_seconds_part = ProtoField.new("Expected Event Time Seconds Part", "miax.pearloptions.topofmarket.mach.v1.0.expectedeventtimesecondspart", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.expiration_date = ProtoField.new("Expiration Date", "miax.pearloptions.topofmarket.mach.v1.0.expirationdate", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.pearloptions.topofmarket.mach.v1.0.liquidityacceptanceincrementindicator", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.long_term_option = ProtoField.new("Long Term Option", "miax.pearloptions.topofmarket.mach.v1.0.longtermoption", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.message = ProtoField.new("Message", "miax.pearloptions.topofmarket.mach.v1.0.message", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.message_type = ProtoField.new("Message Type", "miax.pearloptions.topofmarket.mach.v1.0.messagetype", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.notification_time = ProtoField.new("Notification Time", "miax.pearloptions.topofmarket.mach.v1.0.notificationtime", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.offer_condition = ProtoField.new("Offer Condition", "miax.pearloptions.topofmarket.mach.v1.0.offercondition", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.offer_price = ProtoField.new("Offer Price", "miax.pearloptions.topofmarket.mach.v1.0.offerprice", ftypes.DOUBLE)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.offer_priority_customer_size = ProtoField.new("Offer Priority Customer Size", "miax.pearloptions.topofmarket.mach.v1.0.offerprioritycustomersize", ftypes.UINT16)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.offer_size = ProtoField.new("Offer Size", "miax.pearloptions.topofmarket.mach.v1.0.offersize", ftypes.UINT16)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.opening_time = ProtoField.new("Opening Time", "miax.pearloptions.topofmarket.mach.v1.0.openingtime", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.pearloptions.topofmarket.mach.v1.0.openingunderlyingmarketcode", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.packet = ProtoField.new("Packet", "miax.pearloptions.topofmarket.mach.v1.0.packet", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.packet_length = ProtoField.new("Packet Length", "miax.pearloptions.topofmarket.mach.v1.0.packetlength", ftypes.UINT16)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.packet_type = ProtoField.new("Packet Type", "miax.pearloptions.topofmarket.mach.v1.0.packettype", ftypes.UINT8)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.payload = ProtoField.new("Payload", "miax.pearloptions.topofmarket.mach.v1.0.payload", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pbbo_condition = ProtoField.new("Pbbo Condition", "miax.pearloptions.topofmarket.mach.v1.0.pbbocondition", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pbbo_price = ProtoField.new("Pbbo Price", "miax.pearloptions.topofmarket.mach.v1.0.pbboprice", ftypes.DOUBLE)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pbbo_priority_customer_size = ProtoField.new("Pbbo Priority Customer Size", "miax.pearloptions.topofmarket.mach.v1.0.pbboprioritycustomersize", ftypes.UINT16)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pbbo_size = ProtoField.new("Pbbo Size", "miax.pearloptions.topofmarket.mach.v1.0.pbbosize", ftypes.UINT16)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pearl_bbo_posting_increment_indicator = ProtoField.new("Pearl Bbo Posting Increment Indicator", "miax.pearloptions.topofmarket.mach.v1.0.pearlbbopostingincrementindicator", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.pearloptions.topofmarket.mach.v1.0.productaddupdatetime", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.product_id = ProtoField.new("Product Id", "miax.pearloptions.topofmarket.mach.v1.0.productid", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.pearloptions.topofmarket.mach.v1.0.referencecorrectionnumber", ftypes.UINT8)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.pearloptions.topofmarket.mach.v1.0.referencetradeid", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.pearloptions.topofmarket.mach.v1.0.reserved12", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.restricted_option = ProtoField.new("Restricted Option", "miax.pearloptions.topofmarket.mach.v1.0.restrictedoption", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.security_symbol = ProtoField.new("Security Symbol", "miax.pearloptions.topofmarket.mach.v1.0.securitysymbol", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearloptions.topofmarket.mach.v1.0.sequencenumber", ftypes.UINT64)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.session_id = ProtoField.new("Session Id", "miax.pearloptions.topofmarket.mach.v1.0.sessionid", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.session_number = ProtoField.new("Session Number", "miax.pearloptions.topofmarket.mach.v1.0.sessionnumber", ftypes.UINT8)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.strike_price = ProtoField.new("Strike Price", "miax.pearloptions.topofmarket.mach.v1.0.strikeprice", ftypes.DOUBLE)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.system_status = ProtoField.new("System Status", "miax.pearloptions.topofmarket.mach.v1.0.systemstatus", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.timestamp = ProtoField.new("Timestamp", "miax.pearloptions.topofmarket.mach.v1.0.timestamp", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.to_m_version = ProtoField.new("To M Version", "miax.pearloptions.topofmarket.mach.v1.0.tomversion", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_condition = ProtoField.new("Trade Condition", "miax.pearloptions.topofmarket.mach.v1.0.tradecondition", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_id = ProtoField.new("Trade Id", "miax.pearloptions.topofmarket.mach.v1.0.tradeid", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_price = ProtoField.new("Trade Price", "miax.pearloptions.topofmarket.mach.v1.0.tradeprice", ftypes.DOUBLE)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_size = ProtoField.new("Trade Size", "miax.pearloptions.topofmarket.mach.v1.0.tradesize", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trading_status = ProtoField.new("Trading Status", "miax.pearloptions.topofmarket.mach.v1.0.tradingstatus", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.pearloptions.topofmarket.mach.v1.0.underlyingsymbol", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_bid_price = ProtoField.new("Wide Bid Price", "miax.pearloptions.topofmarket.mach.v1.0.widebidprice", ftypes.DOUBLE)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_bid_priority_customer_size = ProtoField.new("Wide Bid Priority Customer Size", "miax.pearloptions.topofmarket.mach.v1.0.widebidprioritycustomersize", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_bid_size = ProtoField.new("Wide Bid Size", "miax.pearloptions.topofmarket.mach.v1.0.widebidsize", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_offer_price = ProtoField.new("Wide Offer Price", "miax.pearloptions.topofmarket.mach.v1.0.wideofferprice", ftypes.DOUBLE)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_offer_priority_customer_size = ProtoField.new("Wide Offer Priority Customer Size", "miax.pearloptions.topofmarket.mach.v1.0.wideofferprioritycustomersize", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_offer_size = ProtoField.new("Wide Offer Size", "miax.pearloptions.topofmarket.mach.v1.0.wideoffersize", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_pbbo_price = ProtoField.new("Wide Pbbo Price", "miax.pearloptions.topofmarket.mach.v1.0.widepbboprice", ftypes.DOUBLE)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_pbbo_priority_customer_size = ProtoField.new("Wide Pbbo Priority Customer Size", "miax.pearloptions.topofmarket.mach.v1.0.widepbboprioritycustomersize", ftypes.UINT32)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_pbbo_size = ProtoField.new("Wide Pbbo Size", "miax.pearloptions.topofmarket.mach.v1.0.widepbbosize", ftypes.UINT32)

-- Miax PearlOptions TopOfMarket Mach 1.0 messages
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.compact_double_sided_top_of_market_message = ProtoField.new("Compact Double Sided Top Of Market Message", "miax.pearloptions.topofmarket.mach.v1.0.compactdoublesidedtopofmarketmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.compact_top_of_market_best_offer_message = ProtoField.new("Compact Top Of Market Best Offer Message", "miax.pearloptions.topofmarket.mach.v1.0.compacttopofmarketbestoffermessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.compact_top_of_market_bid_message = ProtoField.new("Compact Top Of Market Bid Message", "miax.pearloptions.topofmarket.mach.v1.0.compacttopofmarketbidmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.pearloptions.topofmarket.mach.v1.0.lastsalemessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pearl_system_time_message = ProtoField.new("Pearl System Time Message", "miax.pearloptions.topofmarket.mach.v1.0.pearlsystemtimemessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.series_update_message = ProtoField.new("Series Update Message", "miax.pearloptions.topofmarket.mach.v1.0.seriesupdatemessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.system_state_message = ProtoField.new("System State Message", "miax.pearloptions.topofmarket.mach.v1.0.systemstatemessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearloptions.topofmarket.mach.v1.0.tradecancelmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.underlying_trading_status_notification = ProtoField.new("Underlying Trading Status Notification", "miax.pearloptions.topofmarket.mach.v1.0.underlyingtradingstatusnotification", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_double_sided_top_of_market_message = ProtoField.new("Wide Double Sided Top Of Market Message", "miax.pearloptions.topofmarket.mach.v1.0.widedoublesidedtopofmarketmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_top_of_market_best_bid_message = ProtoField.new("Wide Top Of Market Best Bid Message", "miax.pearloptions.topofmarket.mach.v1.0.widetopofmarketbestbidmessage", ftypes.STRING)
omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_top_of_market_best_offer_message = ProtoField.new("Wide Top Of Market Best Offer Message", "miax.pearloptions.topofmarket.mach.v1.0.widetopofmarketbestoffermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax PearlOptions TopOfMarket Mach 1.0 Element Dissection Options
show.application_message = true
show.compact_double_sided_top_of_market_message = true
show.compact_top_of_market_best_offer_message = true
show.compact_top_of_market_bid_message = true
show.last_sale_message = true
show.message = true
show.packet = true
show.pearl_system_time_message = true
show.series_update_message = true
show.system_state_message = true
show.trade_cancel_message = true
show.underlying_trading_status_notification = true
show.wide_double_sided_top_of_market_message = true
show.wide_top_of_market_best_bid_message = true
show.wide_top_of_market_best_offer_message = true
show.data = false
show.payload = false

-- Register Miax PearlOptions TopOfMarket Mach 1.0 Show Options
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_compact_double_sided_top_of_market_message = Pref.bool("Show Compact Double Sided Top Of Market Message", show.compact_double_sided_top_of_market_message, "Parse and add Compact Double Sided Top Of Market Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_compact_top_of_market_best_offer_message = Pref.bool("Show Compact Top Of Market Best Offer Message", show.compact_top_of_market_best_offer_message, "Parse and add Compact Top Of Market Best Offer Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_compact_top_of_market_bid_message = Pref.bool("Show Compact Top Of Market Bid Message", show.compact_top_of_market_bid_message, "Parse and add Compact Top Of Market Bid Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_last_sale_message = Pref.bool("Show Last Sale Message", show.last_sale_message, "Parse and add Last Sale Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_pearl_system_time_message = Pref.bool("Show Pearl System Time Message", show.pearl_system_time_message, "Parse and add Pearl System Time Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_series_update_message = Pref.bool("Show Series Update Message", show.series_update_message, "Parse and add Series Update Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_underlying_trading_status_notification = Pref.bool("Show Underlying Trading Status Notification", show.underlying_trading_status_notification, "Parse and add Underlying Trading Status Notification to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_wide_double_sided_top_of_market_message = Pref.bool("Show Wide Double Sided Top Of Market Message", show.wide_double_sided_top_of_market_message, "Parse and add Wide Double Sided Top Of Market Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_wide_top_of_market_best_bid_message = Pref.bool("Show Wide Top Of Market Best Bid Message", show.wide_top_of_market_best_bid_message, "Parse and add Wide Top Of Market Best Bid Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_wide_top_of_market_best_offer_message = Pref.bool("Show Wide Top Of Market Best Offer Message", show.wide_top_of_market_best_offer_message, "Parse and add Wide Top Of Market Best Offer Message to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_miax_pearloptions_topofmarket_mach_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_application_message then
    show.application_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_application_message
    changed = true
  end
  if show.compact_double_sided_top_of_market_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_compact_double_sided_top_of_market_message then
    show.compact_double_sided_top_of_market_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_compact_double_sided_top_of_market_message
    changed = true
  end
  if show.compact_top_of_market_best_offer_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_compact_top_of_market_best_offer_message then
    show.compact_top_of_market_best_offer_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_compact_top_of_market_best_offer_message
    changed = true
  end
  if show.compact_top_of_market_bid_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_compact_top_of_market_bid_message then
    show.compact_top_of_market_bid_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_compact_top_of_market_bid_message
    changed = true
  end
  if show.last_sale_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_last_sale_message then
    show.last_sale_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_last_sale_message
    changed = true
  end
  if show.message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_message then
    show.message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_packet then
    show.packet = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_packet
    changed = true
  end
  if show.pearl_system_time_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_pearl_system_time_message then
    show.pearl_system_time_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_pearl_system_time_message
    changed = true
  end
  if show.series_update_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_series_update_message then
    show.series_update_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_series_update_message
    changed = true
  end
  if show.system_state_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_system_state_message then
    show.system_state_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_system_state_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_trade_cancel_message
    changed = true
  end
  if show.underlying_trading_status_notification ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_underlying_trading_status_notification then
    show.underlying_trading_status_notification = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_underlying_trading_status_notification
    changed = true
  end
  if show.wide_double_sided_top_of_market_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_wide_double_sided_top_of_market_message then
    show.wide_double_sided_top_of_market_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_wide_double_sided_top_of_market_message
    changed = true
  end
  if show.wide_top_of_market_best_bid_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_wide_top_of_market_best_bid_message then
    show.wide_top_of_market_best_bid_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_wide_top_of_market_best_bid_message
    changed = true
  end
  if show.wide_top_of_market_best_offer_message ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_wide_top_of_market_best_offer_message then
    show.wide_top_of_market_best_offer_message = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_wide_top_of_market_best_offer_message
    changed = true
  end
  if show.data ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_data then
    show.data = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_payload then
    show.payload = omi_miax_pearloptions_topofmarket_mach_v1_0.prefs.show_payload
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
-- Dissect Miax PearlOptions TopOfMarket Mach 1.0
-----------------------------------------------------------------------

-- Size: Expected Event Time Nano Seconds Part
miax_pearloptions_topofmarket_mach_v1_0_size_of.expected_event_time_nano_seconds_part = 4

-- Display: Expected Event Time Nano Seconds Part
miax_pearloptions_topofmarket_mach_v1_0_display.expected_event_time_nano_seconds_part = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
miax_pearloptions_topofmarket_mach_v1_0_dissect.expected_event_time_nano_seconds_part = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.expected_event_time_nano_seconds_part
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.expected_event_time_nano_seconds_part(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + length, value
end

-- Size: Expected Event Time Seconds Part
miax_pearloptions_topofmarket_mach_v1_0_size_of.expected_event_time_seconds_part = 4

-- Display: Expected Event Time Seconds Part
miax_pearloptions_topofmarket_mach_v1_0_display.expected_event_time_seconds_part = function(value)
  return "Expected Event Time Seconds Part: "..value
end

-- Dissect: Expected Event Time Seconds Part
miax_pearloptions_topofmarket_mach_v1_0_dissect.expected_event_time_seconds_part = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.expected_event_time_seconds_part
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.expected_event_time_seconds_part(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.expected_event_time_seconds_part, range, value, display)

  return offset + length, value
end

-- Size: Event Reason
miax_pearloptions_topofmarket_mach_v1_0_size_of.event_reason = 1

-- Display: Event Reason
miax_pearloptions_topofmarket_mach_v1_0_display.event_reason = function(value)
  if value == "A" then
    return "Event Reason: Resulted From Automaticmarket Driven Event (A)"
  end
  if value == "M" then
    return "Event Reason: Manually Initiated (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_pearloptions_topofmarket_mach_v1_0_dissect.event_reason = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.event_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.event_reason(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
miax_pearloptions_topofmarket_mach_v1_0_size_of.trading_status = 1

-- Display: Trading Status
miax_pearloptions_topofmarket_mach_v1_0_display.trading_status = function(value)
  return "Trading Status: "..value
end

-- Dissect: Trading Status
miax_pearloptions_topofmarket_mach_v1_0_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
miax_pearloptions_topofmarket_mach_v1_0_size_of.underlying_symbol = 11

-- Display: Underlying Symbol
miax_pearloptions_topofmarket_mach_v1_0_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_pearloptions_topofmarket_mach_v1_0_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp = 4

-- Display: Timestamp
miax_pearloptions_topofmarket_mach_v1_0_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Trading Status Notification
miax_pearloptions_topofmarket_mach_v1_0_size_of.underlying_trading_status_notification = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.underlying_symbol

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.trading_status

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.event_reason

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.expected_event_time_seconds_part

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.expected_event_time_nano_seconds_part

  return index
end

-- Display: Underlying Trading Status Notification
miax_pearloptions_topofmarket_mach_v1_0_display.underlying_trading_status_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification
miax_pearloptions_topofmarket_mach_v1_0_dissect.underlying_trading_status_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_topofmarket_mach_v1_0_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_pearloptions_topofmarket_mach_v1_0_dissect.trading_status(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_pearloptions_topofmarket_mach_v1_0_dissect.event_reason(buffer, index, packet, parent)

  -- Expected Event Time Seconds Part: SecTime
  index, expected_event_time_seconds_part = miax_pearloptions_topofmarket_mach_v1_0_dissect.expected_event_time_seconds_part(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: BinaryU
  index, expected_event_time_nano_seconds_part = miax_pearloptions_topofmarket_mach_v1_0_dissect.expected_event_time_nano_seconds_part(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification
miax_pearloptions_topofmarket_mach_v1_0_dissect.underlying_trading_status_notification = function(buffer, offset, packet, parent)
  if show.underlying_trading_status_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.underlying_trading_status_notification, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.underlying_trading_status_notification_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.underlying_trading_status_notification(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.underlying_trading_status_notification_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Condition
miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_condition = 1

-- Display: Trade Condition
miax_pearloptions_topofmarket_mach_v1_0_display.trade_condition = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Trade Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_size = 4

-- Display: Trade Size
miax_pearloptions_topofmarket_mach_v1_0_display.trade_size = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.trade_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_price = 4

-- Display: Trade Price
miax_pearloptions_topofmarket_mach_v1_0_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
translate.trade_price = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.trade_price(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Correction Number
miax_pearloptions_topofmarket_mach_v1_0_size_of.correction_number = 1

-- Display: Correction Number
miax_pearloptions_topofmarket_mach_v1_0_display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearloptions_topofmarket_mach_v1_0_dissect.correction_number = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.correction_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.correction_number(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_id = 4

-- Display: Trade Id
miax_pearloptions_topofmarket_mach_v1_0_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id = 4

-- Display: Product Id
miax_pearloptions_topofmarket_mach_v1_0_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.product_id(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.product_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.correction_number

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_condition

  return index
end

-- Display: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v1_0_display.trade_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearloptions_topofmarket_mach_v1_0_dissect.correction_number(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.trade_cancel_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reference Correction Number
miax_pearloptions_topofmarket_mach_v1_0_size_of.reference_correction_number = 1

-- Display: Reference Correction Number
miax_pearloptions_topofmarket_mach_v1_0_display.reference_correction_number = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
miax_pearloptions_topofmarket_mach_v1_0_dissect.reference_correction_number = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.reference_correction_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.reference_correction_number(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.reference_correction_number, range, value, display)

  return offset + length, value
end

-- Size: Reference Trade Id
miax_pearloptions_topofmarket_mach_v1_0_size_of.reference_trade_id = 4

-- Display: Reference Trade Id
miax_pearloptions_topofmarket_mach_v1_0_display.reference_trade_id = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
miax_pearloptions_topofmarket_mach_v1_0_dissect.reference_trade_id = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.reference_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.reference_trade_id(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.reference_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Last Sale Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.last_sale_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.correction_number

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.reference_trade_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.reference_correction_number

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_condition

  return index
end

-- Display: Last Sale Message
miax_pearloptions_topofmarket_mach_v1_0_display.last_sale_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.last_sale_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_id(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearloptions_topofmarket_mach_v1_0_dissect.correction_number(buffer, index, packet, parent)

  -- Reference Trade Id: BinaryU
  index, reference_trade_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.reference_trade_id(buffer, index, packet, parent)

  -- Reference Correction Number: BinaryU
  index, reference_correction_number = miax_pearloptions_topofmarket_mach_v1_0_dissect.reference_correction_number(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.last_sale_message = function(buffer, offset, packet, parent)
  if show.last_sale_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.last_sale_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.last_sale_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.last_sale_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.last_sale_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Offer Condition
miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_condition = 1

-- Display: Offer Condition
miax_pearloptions_topofmarket_mach_v1_0_display.offer_condition = function(value)
  if value == "A" then
    return "Offer Condition: Regular (A)"
  end
  if value == "B" then
    return "Offer Condition: Quote Contains Public Customer Interest (B)"
  end
  if value == "C" then
    return "Offer Condition: Quote Is Not Firm (C)"
  end
  if value == "R" then
    return "Offer Condition: Reserved For Future Use (R)"
  end
  if value == "T" then
    return "Offer Condition: Trading Halt (T)"
  end
  if value == "A" then
    return "Offer Condition: Cancel Of Trade (A)"
  end
  if value == "B" then
    return "Offer Condition: Trade That Is Late And Is Out Of Sequence (B)"
  end
  if value == "C" then
    return "Offer Condition: Cancel Of The Last Reported Trade (C)"
  end
  if value == "D" then
    return "Offer Condition: Trade That Is Late And Is In Correct Sequence (D)"
  end
  if value == "E" then
    return "Offer Condition: Cancel Of The First Opening Reported Trade (E)"
  end
  if value == "F" then
    return "Offer Condition: Trade That Is Late Report Of The Opening Trade And Is Out Of Sequence (F)"
  end
  if value == "G" then
    return "Offer Condition: Cancel Of The Only Reported Trade (G)"
  end
  if value == "H" then
    return "Offer Condition: Trade That Is Late Report Of The Opening Trade And Is In Correct Sequence (H)"
  end
  if value == "I" then
    return "Offer Condition: Reserved For Future Use (I)"
  end
  if value == "J" then
    return "Offer Condition: Trade Due To Reopening Of An Option In Which Trading Has Been Previously Halted (J)"
  end
  if value == "K" then
    return "Offer Condition: Reserved For Future Use (K)"
  end
  if value == "L" then
    return "Offer Condition: Reserved For Future Use (L)"
  end
  if value == "M" then
    return "Offer Condition: Reserved For Future Use (M)"
  end
  if value == "N" then
    return "Offer Condition: Reserved For Future Use (N)"
  end
  if value == "O" then
    return "Offer Condition: Reserved For Future Use (O)"
  end
  if value == "P" then
    return "Offer Condition: Reserved For Future Use (P)"
  end
  if value == "Q" then
    return "Offer Condition: Reserved For Future Use (Q)"
  end
  if value == "R" then
    return "Offer Condition: Trade Was The Execution Of An Order Which Was Stopped At A Price That Did Not Constitute A Trade Through On Another Market At The Time Of The Stop (R)"
  end
  if value == "S" then
    return "Offer Condition: Trade Was The Execution Of An Order Identified (S)"
  end
  if value == "T" then
    return "Offer Condition: Reserved For Future Use (T)"
  end
  if value == "X" then
    return "Offer Condition: Trade That Is Trade Through Exempt (X)"
  end

  return "Offer Condition: Unknown("..value..")"
end

-- Dissect: Offer Condition
miax_pearloptions_topofmarket_mach_v1_0_dissect.offer_condition = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.offer_condition(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Size: Wide Offer Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_offer_priority_customer_size = 4

-- Display: Wide Offer Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_display.wide_offer_priority_customer_size = function(value)
  return "Wide Offer Priority Customer Size: "..value
end

-- Dissect: Wide Offer Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_offer_priority_customer_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_offer_priority_customer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_offer_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_offer_priority_customer_size, range, value, display)

  return offset + length, value
end

-- Size: Wide Offer Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_offer_size = 4

-- Display: Wide Offer Size
miax_pearloptions_topofmarket_mach_v1_0_display.wide_offer_size = function(value)
  return "Wide Offer Size: "..value
end

-- Dissect: Wide Offer Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_offer_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_offer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_offer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Wide Offer Price
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_offer_price = 4

-- Display: Wide Offer Price
miax_pearloptions_topofmarket_mach_v1_0_display.wide_offer_price = function(value)
  return "Wide Offer Price: "..value
end

-- Translate: Wide Offer Price
translate.wide_offer_price = function(raw)
  return raw/10000
end

-- Dissect: Wide Offer Price
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_offer_price = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_offer_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.wide_offer_price(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_offer_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Condition
miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_condition = 1

-- Display: Bid Condition
miax_pearloptions_topofmarket_mach_v1_0_display.bid_condition = function(value)
  if value == "A" then
    return "Bid Condition: Regular (A)"
  end
  if value == "B" then
    return "Bid Condition: Quote Contains Public Customer Interest (B)"
  end
  if value == "C" then
    return "Bid Condition: Quote Is Not Firm (C)"
  end
  if value == "R" then
    return "Bid Condition: Reserved For Future Use (R)"
  end
  if value == "T" then
    return "Bid Condition: Trading Halt (T)"
  end

  return "Bid Condition: Unknown("..value..")"
end

-- Dissect: Bid Condition
miax_pearloptions_topofmarket_mach_v1_0_dissect.bid_condition = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.bid_condition(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Size: Wide Bid Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_bid_priority_customer_size = 4

-- Display: Wide Bid Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_display.wide_bid_priority_customer_size = function(value)
  return "Wide Bid Priority Customer Size: "..value
end

-- Dissect: Wide Bid Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_bid_priority_customer_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_bid_priority_customer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_bid_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_bid_priority_customer_size, range, value, display)

  return offset + length, value
end

-- Size: Wide Bid Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_bid_size = 4

-- Display: Wide Bid Size
miax_pearloptions_topofmarket_mach_v1_0_display.wide_bid_size = function(value)
  return "Wide Bid Size: "..value
end

-- Dissect: Wide Bid Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_bid_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_bid_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Wide Bid Price
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_bid_price = 4

-- Display: Wide Bid Price
miax_pearloptions_topofmarket_mach_v1_0_display.wide_bid_price = function(value)
  return "Wide Bid Price: "..value
end

-- Translate: Wide Bid Price
translate.wide_bid_price = function(raw)
  return raw/10000
end

-- Dissect: Wide Bid Price
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_bid_price = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_bid_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.wide_bid_price(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_bid_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wide Double Sided Top Of Market Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_double_sided_top_of_market_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_bid_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_bid_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_bid_priority_customer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_condition

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_offer_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_offer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_offer_priority_customer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_condition

  return index
end

-- Display: Wide Double Sided Top Of Market Message
miax_pearloptions_topofmarket_mach_v1_0_display.wide_double_sided_top_of_market_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Double Sided Top Of Market Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_double_sided_top_of_market_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id(buffer, index, packet, parent)

  -- Wide Bid Price: BinaryPrc4U
  index, wide_bid_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_bid_price(buffer, index, packet, parent)

  -- Wide Bid Size: BinaryU
  index, wide_bid_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_bid_size(buffer, index, packet, parent)

  -- Wide Bid Priority Customer Size: BinaryU
  index, wide_bid_priority_customer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_bid_priority_customer_size(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.bid_condition(buffer, index, packet, parent)

  -- Wide Offer Price: BinaryPrc4U
  index, wide_offer_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_offer_price(buffer, index, packet, parent)

  -- Wide Offer Size: BinaryU
  index, wide_offer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_offer_size(buffer, index, packet, parent)

  -- Wide Offer Priority Customer Size: BinaryU
  index, wide_offer_priority_customer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_offer_priority_customer_size(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Double Sided Top Of Market Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_double_sided_top_of_market_message = function(buffer, offset, packet, parent)
  if show.wide_double_sided_top_of_market_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_double_sided_top_of_market_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_double_sided_top_of_market_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Offer Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_priority_customer_size = 2

-- Display: Offer Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_display.offer_priority_customer_size = function(value)
  return "Offer Priority Customer Size: "..value
end

-- Dissect: Offer Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.offer_priority_customer_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_priority_customer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.offer_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.offer_priority_customer_size, range, value, display)

  return offset + length, value
end

-- Size: Offer Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_size = 2

-- Display: Offer Size
miax_pearloptions_topofmarket_mach_v1_0_display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.offer_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.offer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Offer Price
miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_price = 2

-- Display: Offer Price
miax_pearloptions_topofmarket_mach_v1_0_display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
translate.offer_price = function(raw)
  return raw/100
end

-- Dissect: Offer Price
miax_pearloptions_topofmarket_mach_v1_0_dissect.offer_price = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.offer_price(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.offer_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_priority_customer_size = 2

-- Display: Bid Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_display.bid_priority_customer_size = function(value)
  return "Bid Priority Customer Size: "..value
end

-- Dissect: Bid Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.bid_priority_customer_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_priority_customer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.bid_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.bid_priority_customer_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_size = 2

-- Display: Bid Size
miax_pearloptions_topofmarket_mach_v1_0_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_price = 2

-- Display: Bid Price
miax_pearloptions_topofmarket_mach_v1_0_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw/100
end

-- Dissect: Bid Price
miax_pearloptions_topofmarket_mach_v1_0_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.bid_price(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Compact Double Sided Top Of Market Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.compact_double_sided_top_of_market_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_priority_customer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.bid_condition

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_priority_customer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.offer_condition

  return index
end

-- Display: Compact Double Sided Top Of Market Message
miax_pearloptions_topofmarket_mach_v1_0_display.compact_double_sided_top_of_market_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Double Sided Top Of Market Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_double_sided_top_of_market_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id(buffer, index, packet, parent)

  -- Bid Price: BinaryPrc2U
  index, bid_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: BinaryU
  index, bid_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.bid_size(buffer, index, packet, parent)

  -- Bid Priority Customer Size: BinaryU
  index, bid_priority_customer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.bid_priority_customer_size(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.bid_condition(buffer, index, packet, parent)

  -- Offer Price: BinaryPrc2U
  index, offer_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size: BinaryU
  index, offer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.offer_size(buffer, index, packet, parent)

  -- Offer Priority Customer Size: BinaryU
  index, offer_priority_customer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.offer_priority_customer_size(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Double Sided Top Of Market Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_double_sided_top_of_market_message = function(buffer, offset, packet, parent)
  if show.compact_double_sided_top_of_market_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.compact_double_sided_top_of_market_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.compact_double_sided_top_of_market_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Pbbo Condition
miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_condition = 1

-- Display: Pbbo Condition
miax_pearloptions_topofmarket_mach_v1_0_display.pbbo_condition = function(value)
  if value == "A" then
    return "Pbbo Condition: Regular (A)"
  end
  if value == "B" then
    return "Pbbo Condition: Quote Contains Public Customer Interest (B)"
  end
  if value == "C" then
    return "Pbbo Condition: Quote Is Not Firm (C)"
  end
  if value == "R" then
    return "Pbbo Condition: Reserved For Future Use (R)"
  end
  if value == "T" then
    return "Pbbo Condition: Trading Halt (T)"
  end

  return "Pbbo Condition: Unknown("..value..")"
end

-- Dissect: Pbbo Condition
miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_condition = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.pbbo_condition(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pbbo_condition, range, value, display)

  return offset + length, value
end

-- Size: Wide Pbbo Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_priority_customer_size = 4

-- Display: Wide Pbbo Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_display.wide_pbbo_priority_customer_size = function(value)
  return "Wide Pbbo Priority Customer Size: "..value
end

-- Dissect: Wide Pbbo Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_pbbo_priority_customer_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_priority_customer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_pbbo_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_pbbo_priority_customer_size, range, value, display)

  return offset + length, value
end

-- Size: Wide Pbbo Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_size = 4

-- Display: Wide Pbbo Size
miax_pearloptions_topofmarket_mach_v1_0_display.wide_pbbo_size = function(value)
  return "Wide Pbbo Size: "..value
end

-- Dissect: Wide Pbbo Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_pbbo_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_pbbo_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_pbbo_size, range, value, display)

  return offset + length, value
end

-- Size: Wide Pbbo Price
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_price = 4

-- Display: Wide Pbbo Price
miax_pearloptions_topofmarket_mach_v1_0_display.wide_pbbo_price = function(value)
  return "Wide Pbbo Price: "..value
end

-- Translate: Wide Pbbo Price
translate.wide_pbbo_price = function(raw)
  return raw/10000
end

-- Dissect: Wide Pbbo Price
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_pbbo_price = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.wide_pbbo_price(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_pbbo_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_pbbo_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wide Top Of Market Best Offer Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_top_of_market_best_offer_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_priority_customer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_condition

  return index
end

-- Display: Wide Top Of Market Best Offer Message
miax_pearloptions_topofmarket_mach_v1_0_display.wide_top_of_market_best_offer_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Top Of Market Best Offer Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id(buffer, index, packet, parent)

  -- Wide Pbbo Price: BinaryPrc4U
  index, wide_pbbo_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_pbbo_price(buffer, index, packet, parent)

  -- Wide Pbbo Size: BinaryU
  index, wide_pbbo_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_pbbo_size(buffer, index, packet, parent)

  -- Wide Pbbo Priority Customer Size: BinaryU
  index, wide_pbbo_priority_customer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_pbbo_priority_customer_size(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top Of Market Best Offer Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_offer_message = function(buffer, offset, packet, parent)
  if show.wide_top_of_market_best_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_top_of_market_best_offer_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_offer_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_top_of_market_best_offer_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_offer_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Wide Top Of Market Best Bid Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_top_of_market_best_bid_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_pbbo_priority_customer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_condition

  return index
end

-- Display: Wide Top Of Market Best Bid Message
miax_pearloptions_topofmarket_mach_v1_0_display.wide_top_of_market_best_bid_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Top Of Market Best Bid Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id(buffer, index, packet, parent)

  -- Wide Pbbo Price: BinaryPrc4U
  index, wide_pbbo_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_pbbo_price(buffer, index, packet, parent)

  -- Wide Pbbo Size: BinaryU
  index, wide_pbbo_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_pbbo_size(buffer, index, packet, parent)

  -- Wide Pbbo Priority Customer Size: BinaryU
  index, wide_pbbo_priority_customer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_pbbo_priority_customer_size(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top Of Market Best Bid Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_bid_message = function(buffer, offset, packet, parent)
  if show.wide_top_of_market_best_bid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.wide_top_of_market_best_bid_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_bid_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.wide_top_of_market_best_bid_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_bid_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Pbbo Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_priority_customer_size = 2

-- Display: Pbbo Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_display.pbbo_priority_customer_size = function(value)
  return "Pbbo Priority Customer Size: "..value
end

-- Dissect: Pbbo Priority Customer Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_priority_customer_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_priority_customer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.pbbo_priority_customer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pbbo_priority_customer_size, range, value, display)

  return offset + length, value
end

-- Size: Pbbo Size
miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_size = 2

-- Display: Pbbo Size
miax_pearloptions_topofmarket_mach_v1_0_display.pbbo_size = function(value)
  return "Pbbo Size: "..value
end

-- Dissect: Pbbo Size
miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_size = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.pbbo_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pbbo_size, range, value, display)

  return offset + length, value
end

-- Size: Pbbo Price
miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_price = 2

-- Display: Pbbo Price
miax_pearloptions_topofmarket_mach_v1_0_display.pbbo_price = function(value)
  return "Pbbo Price: "..value
end

-- Translate: Pbbo Price
translate.pbbo_price = function(raw)
  return raw/100
end

-- Dissect: Pbbo Price
miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_price = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.pbbo_price(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.pbbo_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pbbo_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Compact Top Of Market Best Offer Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.compact_top_of_market_best_offer_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_priority_customer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_condition

  return index
end

-- Display: Compact Top Of Market Best Offer Message
miax_pearloptions_topofmarket_mach_v1_0_display.compact_top_of_market_best_offer_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Top Of Market Best Offer Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_best_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id(buffer, index, packet, parent)

  -- Pbbo Price: BinaryPrc2U
  index, pbbo_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_price(buffer, index, packet, parent)

  -- Pbbo Size: BinaryU
  index, pbbo_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_size(buffer, index, packet, parent)

  -- Pbbo Priority Customer Size: BinaryU
  index, pbbo_priority_customer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_priority_customer_size(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Top Of Market Best Offer Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_best_offer_message = function(buffer, offset, packet, parent)
  if show.compact_top_of_market_best_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.compact_top_of_market_best_offer_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_best_offer_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.compact_top_of_market_best_offer_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_best_offer_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Compact Top Of Market Bid Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.compact_top_of_market_bid_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_priority_customer_size

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pbbo_condition

  return index
end

-- Display: Compact Top Of Market Bid Message
miax_pearloptions_topofmarket_mach_v1_0_display.compact_top_of_market_bid_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Top Of Market Bid Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id(buffer, index, packet, parent)

  -- Pbbo Price: BinaryPrc2U
  index, pbbo_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_price(buffer, index, packet, parent)

  -- Pbbo Size: BinaryU
  index, pbbo_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_size(buffer, index, packet, parent)

  -- Pbbo Priority Customer Size: BinaryU
  index, pbbo_priority_customer_size = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_priority_customer_size(buffer, index, packet, parent)

  -- Pbbo Condition: Alphanumeric
  index, pbbo_condition = miax_pearloptions_topofmarket_mach_v1_0_dissect.pbbo_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Top Of Market Bid Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_bid_message = function(buffer, offset, packet, parent)
  if show.compact_top_of_market_bid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.compact_top_of_market_bid_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_bid_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.compact_top_of_market_bid_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_bid_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: System Status
miax_pearloptions_topofmarket_mach_v1_0_size_of.system_status = 1

-- Display: System Status
miax_pearloptions_topofmarket_mach_v1_0_display.system_status = function(value)
  if value == "S" then
    return "System Status: Start (S)"
  end
  if value == "C" then
    return "System Status: End (C)"
  end
  if value == "1" then
    return "System Status: Start (1)"
  end
  if value == "2" then
    return "System Status: End (2)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_pearloptions_topofmarket_mach_v1_0_dissect.system_status = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.system_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.system_status(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.system_status, range, value, display)

  return offset + length, value
end

-- Size: Session Id
miax_pearloptions_topofmarket_mach_v1_0_size_of.session_id = 4

-- Display: Session Id
miax_pearloptions_topofmarket_mach_v1_0_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearloptions_topofmarket_mach_v1_0_dissect.session_id = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.session_id(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: To M Version
miax_pearloptions_topofmarket_mach_v1_0_size_of.to_m_version = 8

-- Display: To M Version
miax_pearloptions_topofmarket_mach_v1_0_display.to_m_version = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_pearloptions_topofmarket_mach_v1_0_dissect.to_m_version = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.to_m_version
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.to_m_version(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Size: Notification Time
miax_pearloptions_topofmarket_mach_v1_0_size_of.notification_time = 4

-- Display: Notification Time
miax_pearloptions_topofmarket_mach_v1_0_display.notification_time = function(value)
  return "Notification Time: "..value
end

-- Dissect: Notification Time
miax_pearloptions_topofmarket_mach_v1_0_dissect.notification_time = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.notification_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.notification_time(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: System State Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.system_state_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.notification_time

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.to_m_version

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.session_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.system_status

  return index
end

-- Display: System State Message
miax_pearloptions_topofmarket_mach_v1_0_display.system_state_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.system_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearloptions_topofmarket_mach_v1_0_dissect.notification_time(buffer, index, packet, parent)

  -- To M Version: Alphanumeric
  index, to_m_version = miax_pearloptions_topofmarket_mach_v1_0_dissect.to_m_version(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.session_id(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearloptions_topofmarket_mach_v1_0_dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.system_state_message = function(buffer, offset, packet, parent)
  if show.system_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.system_state_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.system_state_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.system_state_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.system_state_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 12
miax_pearloptions_topofmarket_mach_v1_0_size_of.reserved_12 = 12

-- Display: Reserved 12
miax_pearloptions_topofmarket_mach_v1_0_display.reserved_12 = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_pearloptions_topofmarket_mach_v1_0_dissect.reserved_12 = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.reserved_12
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.reserved_12(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Size: Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v1_0_size_of.opening_underlying_market_code = 1

-- Display: Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v1_0_display.opening_underlying_market_code = function(value)
  if value == "A" then
    return "Opening Underlying Market Code: Nyse Amex (A)"
  end
  if value == "B" then
    return "Opening Underlying Market Code: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Opening Underlying Market Code: National Stock (C)"
  end
  if value == "D" then
    return "Opening Underlying Market Code: Finra Adf (D)"
  end
  if value == "E" then
    return "Opening Underlying Market Code: Market Independent (E)"
  end
  if value == "I" then
    return "Opening Underlying Market Code: International Securities (I)"
  end
  if value == "J" then
    return "Opening Underlying Market Code: Edga Exchange (J)"
  end
  if value == "K" then
    return "Opening Underlying Market Code: Edgx Exchange (K)"
  end
  if value == "M" then
    return "Opening Underlying Market Code: Chicago Stock (M)"
  end
  if value == "N" then
    return "Opening Underlying Market Code: Nyse Euronext (N)"
  end
  if value == "P" then
    return "Opening Underlying Market Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Opening Underlying Market Code: Nasdaq Omx (Q)"
  end
  if value == "T" then
    return "Opening Underlying Market Code: Nasdaq Omx (T)"
  end
  if value == "V" then
    return "Opening Underlying Market Code: Iex (V)"
  end
  if value == "X" then
    return "Opening Underlying Market Code: Nasdaq Omx Phlx (X)"
  end
  if value == "Y" then
    return "Opening Underlying Market Code: Bats Y Exchange (Y)"
  end
  if value == "Z" then
    return "Opening Underlying Market Code: Bats Exchange (Z)"
  end

  return "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
miax_pearloptions_topofmarket_mach_v1_0_dissect.opening_underlying_market_code = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.opening_underlying_market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.opening_underlying_market_code(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Size: Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v1_0_size_of.liquidity_acceptance_increment_indicator = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v1_0_display.liquidity_acceptance_increment_indicator = function(value)
  if value == "P" then
    return "Liquidity Acceptance Increment Indicator: Penny 001 (P)"
  end
  if value == "N" then
    return "Liquidity Acceptance Increment Indicator: Penny 001 (N)"
  end
  if value == "D" then
    return "Liquidity Acceptance Increment Indicator: Nickel 005 (D)"
  end

  return "Liquidity Acceptance Increment Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Acceptance Increment Indicator
miax_pearloptions_topofmarket_mach_v1_0_dissect.liquidity_acceptance_increment_indicator = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.liquidity_acceptance_increment_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.liquidity_acceptance_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Size: Pearl Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v1_0_size_of.pearl_bbo_posting_increment_indicator = 1

-- Display: Pearl Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v1_0_display.pearl_bbo_posting_increment_indicator = function(value)
  if value == "P" then
    return "Pearl Bbo Posting Increment Indicator: Penny 001 (P)"
  end
  if value == "N" then
    return "Pearl Bbo Posting Increment Indicator: Penny 001 (N)"
  end
  if value == "D" then
    return "Pearl Bbo Posting Increment Indicator: Nickel 005 (D)"
  end

  return "Pearl Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Pearl Bbo Posting Increment Indicator
miax_pearloptions_topofmarket_mach_v1_0_dissect.pearl_bbo_posting_increment_indicator = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.pearl_bbo_posting_increment_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.pearl_bbo_posting_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pearl_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Size: Active On Pearl
miax_pearloptions_topofmarket_mach_v1_0_size_of.active_on_pearl = 1

-- Display: Active On Pearl
miax_pearloptions_topofmarket_mach_v1_0_display.active_on_pearl = function(value)
  if value == "A" then
    return "Active On Pearl: Active Tradable (A)"
  end
  if value == "I" then
    return "Active On Pearl: Inactive Not Tradable (I)"
  end

  return "Active On Pearl: Unknown("..value..")"
end

-- Dissect: Active On Pearl
miax_pearloptions_topofmarket_mach_v1_0_dissect.active_on_pearl = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.active_on_pearl
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.active_on_pearl(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.active_on_pearl, range, value, display)

  return offset + length, value
end

-- Size: Long Term Option
miax_pearloptions_topofmarket_mach_v1_0_size_of.long_term_option = 1

-- Display: Long Term Option
miax_pearloptions_topofmarket_mach_v1_0_display.long_term_option = function(value)
  if value == "“Y" then
    return "Long Term Option: Far Month (“Y)"
  end
  if value == "N" then
    return "Long Term Option: Near Month (N)"
  end

  return "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_pearloptions_topofmarket_mach_v1_0_dissect.long_term_option = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.long_term_option
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.long_term_option(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Size: Restricted Option
miax_pearloptions_topofmarket_mach_v1_0_size_of.restricted_option = 1

-- Display: Restricted Option
miax_pearloptions_topofmarket_mach_v1_0_display.restricted_option = function(value)
  if value == "Y" then
    return "Restricted Option: Position Closing Orders Only (Y)"
  end
  if value == "N" then
    return "Restricted Option: Open And Close Positions (N)"
  end

  return "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_pearloptions_topofmarket_mach_v1_0_dissect.restricted_option = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.restricted_option
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.restricted_option(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Size: Closing Time
miax_pearloptions_topofmarket_mach_v1_0_size_of.closing_time = 8

-- Display: Closing Time
miax_pearloptions_topofmarket_mach_v1_0_display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearloptions_topofmarket_mach_v1_0_dissect.closing_time = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.closing_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.closing_time(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Size: Opening Time
miax_pearloptions_topofmarket_mach_v1_0_size_of.opening_time = 8

-- Display: Opening Time
miax_pearloptions_topofmarket_mach_v1_0_display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearloptions_topofmarket_mach_v1_0_dissect.opening_time = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.opening_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.opening_time(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Size: Call Or Put
miax_pearloptions_topofmarket_mach_v1_0_size_of.call_or_put = 1

-- Display: Call Or Put
miax_pearloptions_topofmarket_mach_v1_0_display.call_or_put = function(value)
  if value == "C" then
    return "Call Or Put: Call (C)"
  end
  if value == "P" then
    return "Call Or Put: Put (P)"
  end

  return "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_pearloptions_topofmarket_mach_v1_0_dissect.call_or_put = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.call_or_put
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.call_or_put(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
miax_pearloptions_topofmarket_mach_v1_0_size_of.strike_price = 4

-- Display: Strike Price
miax_pearloptions_topofmarket_mach_v1_0_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_pearloptions_topofmarket_mach_v1_0_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.strike_price(raw)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Date
miax_pearloptions_topofmarket_mach_v1_0_size_of.expiration_date = 8

-- Display: Expiration Date
miax_pearloptions_topofmarket_mach_v1_0_display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_pearloptions_topofmarket_mach_v1_0_dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.expiration_date
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
miax_pearloptions_topofmarket_mach_v1_0_size_of.security_symbol = 6

-- Display: Security Symbol
miax_pearloptions_topofmarket_mach_v1_0_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_pearloptions_topofmarket_mach_v1_0_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.security_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Product Add Update Time
miax_pearloptions_topofmarket_mach_v1_0_size_of.product_add_update_time = 4

-- Display: Product Add Update Time
miax_pearloptions_topofmarket_mach_v1_0_display.product_add_update_time = function(value)
  return "Product Add Update Time: "..value
end

-- Dissect: Product Add Update Time
miax_pearloptions_topofmarket_mach_v1_0_dissect.product_add_update_time = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.product_add_update_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.product_add_update_time(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.product_add_update_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Series Update Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.series_update_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_add_update_time

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.product_id

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.underlying_symbol

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.security_symbol

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.expiration_date

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.strike_price

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.call_or_put

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.opening_time

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.closing_time

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.restricted_option

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.long_term_option

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.active_on_pearl

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.pearl_bbo_posting_increment_indicator

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.liquidity_acceptance_increment_indicator

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.opening_underlying_market_code

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.reserved_12

  return index
end

-- Display: Series Update Message
miax_pearloptions_topofmarket_mach_v1_0_display.series_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Update Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.series_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: NanoTime
  index, product_add_update_time = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_add_update_time(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_pearloptions_topofmarket_mach_v1_0_dissect.product_id(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_pearloptions_topofmarket_mach_v1_0_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_pearloptions_topofmarket_mach_v1_0_dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_pearloptions_topofmarket_mach_v1_0_dissect.expiration_date(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_pearloptions_topofmarket_mach_v1_0_dissect.strike_price(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_pearloptions_topofmarket_mach_v1_0_dissect.call_or_put(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearloptions_topofmarket_mach_v1_0_dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearloptions_topofmarket_mach_v1_0_dissect.closing_time(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_pearloptions_topofmarket_mach_v1_0_dissect.restricted_option(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_pearloptions_topofmarket_mach_v1_0_dissect.long_term_option(buffer, index, packet, parent)

  -- Active On Pearl: Alphanumeric
  index, active_on_pearl = miax_pearloptions_topofmarket_mach_v1_0_dissect.active_on_pearl(buffer, index, packet, parent)

  -- Pearl Bbo Posting Increment Indicator: Alphanumeric
  index, pearl_bbo_posting_increment_indicator = miax_pearloptions_topofmarket_mach_v1_0_dissect.pearl_bbo_posting_increment_indicator(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_pearloptions_topofmarket_mach_v1_0_dissect.liquidity_acceptance_increment_indicator(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_pearloptions_topofmarket_mach_v1_0_dissect.opening_underlying_market_code(buffer, index, packet, parent)

  -- Reserved 12: Reserved
  index, reserved_12 = miax_pearloptions_topofmarket_mach_v1_0_dissect.reserved_12(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Update Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.series_update_message = function(buffer, offset, packet, parent)
  if show.series_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.series_update_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.series_update_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.series_update_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.series_update_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Pearl System Time Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.pearl_system_time_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.timestamp

  return index
end

-- Display: Pearl System Time Message
miax_pearloptions_topofmarket_mach_v1_0_display.pearl_system_time_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pearl System Time Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.pearl_system_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_pearloptions_topofmarket_mach_v1_0_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Pearl System Time Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.pearl_system_time_message = function(buffer, offset, packet, parent)
  if show.pearl_system_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.pearl_system_time_message, buffer(offset, 0))
    local index = miax_pearloptions_topofmarket_mach_v1_0_dissect.pearl_system_time_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.pearl_system_time_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.pearl_system_time_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Data
miax_pearloptions_topofmarket_mach_v1_0_size_of.data = function(buffer, offset, message_type)
  -- Size of Pearl System Time Message
  if message_type == "1" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.pearl_system_time_message(buffer, offset)
  end
  -- Size of Series Update Message
  if message_type == "P" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.series_update_message(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "S" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.system_state_message(buffer, offset)
  end
  -- Size of Compact Top Of Market Bid Message
  if message_type == "B" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.compact_top_of_market_bid_message(buffer, offset)
  end
  -- Size of Compact Top Of Market Best Offer Message
  if message_type == "O" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.compact_top_of_market_best_offer_message(buffer, offset)
  end
  -- Size of Wide Top Of Market Best Bid Message
  if message_type == "W" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_top_of_market_best_bid_message(buffer, offset)
  end
  -- Size of Wide Top Of Market Best Offer Message
  if message_type == "A" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_top_of_market_best_offer_message(buffer, offset)
  end
  -- Size of Compact Double Sided Top Of Market Message
  if message_type == "d" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.compact_double_sided_top_of_market_message(buffer, offset)
  end
  -- Size of Wide Double Sided Top Of Market Message
  if message_type == "D" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.wide_double_sided_top_of_market_message(buffer, offset)
  end
  -- Size of Last Sale Message
  if message_type == "T" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.last_sale_message(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == "X" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.trade_cancel_message(buffer, offset)
  end
  -- Size of Underlying Trading Status Notification
  if message_type == "H" then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.underlying_trading_status_notification(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_pearloptions_topofmarket_mach_v1_0_display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_pearloptions_topofmarket_mach_v1_0_dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Pearl System Time Message
  if message_type == "1" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.pearl_system_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Series Update Message
  if message_type == "P" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.series_update_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "S" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Compact Top Of Market Bid Message
  if message_type == "B" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_bid_message(buffer, offset, packet, parent)
  end
  -- Dissect Compact Top Of Market Best Offer Message
  if message_type == "O" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_top_of_market_best_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top Of Market Best Bid Message
  if message_type == "W" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_bid_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top Of Market Best Offer Message
  if message_type == "A" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_top_of_market_best_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Compact Double Sided Top Of Market Message
  if message_type == "d" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.compact_double_sided_top_of_market_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Double Sided Top Of Market Message
  if message_type == "D" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.wide_double_sided_top_of_market_message(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Message
  if message_type == "T" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.last_sale_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "X" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Notification
  if message_type == "H" then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.underlying_trading_status_notification(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_pearloptions_topofmarket_mach_v1_0_dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearloptions_topofmarket_mach_v1_0_size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.data(buffer, packet, parent)
  local element = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.data, range, display)

  return miax_pearloptions_topofmarket_mach_v1_0_dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
miax_pearloptions_topofmarket_mach_v1_0_size_of.message_type = 1

-- Display: Message Type
miax_pearloptions_topofmarket_mach_v1_0_display.message_type = function(value)
  if value == "1" then
    return "Message Type: Pearl System Time Message (1)"
  end
  if value == "P" then
    return "Message Type: Series Update Message (P)"
  end
  if value == "S" then
    return "Message Type: System State Message (S)"
  end
  if value == "B" then
    return "Message Type: Compact Top Of Market Bid Message (B)"
  end
  if value == "O" then
    return "Message Type: Compact Top Of Market Best Offer Message (O)"
  end
  if value == "W" then
    return "Message Type: Wide Top Of Market Best Bid Message (W)"
  end
  if value == "A" then
    return "Message Type: Wide Top Of Market Best Offer Message (A)"
  end
  if value == "d" then
    return "Message Type: Compact Double Sided Top Of Market Message (d)"
  end
  if value == "D" then
    return "Message Type: Wide Double Sided Top Of Market Message (D)"
  end
  if value == "T" then
    return "Message Type: Last Sale Message (T)"
  end
  if value == "X" then
    return "Message Type: Trade Cancel Message (X)"
  end
  if value == "H" then
    return "Message Type: Underlying Trading Status Notification (H)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_pearloptions_topofmarket_mach_v1_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Application Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.application_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_pearloptions_topofmarket_mach_v1_0_display.application_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.application_message_fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index, message_type = miax_pearloptions_topofmarket_mach_v1_0_dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  index = miax_pearloptions_topofmarket_mach_v1_0_dissect.data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.application_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_pearloptions_topofmarket_mach_v1_0_size_of.application_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.application_message(buffer, packet, parent)
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.application_message, range, display)
  end

  miax_pearloptions_topofmarket_mach_v1_0_dissect.application_message_fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Calculate runtime size of: Payload
miax_pearloptions_topofmarket_mach_v1_0_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_pearloptions_topofmarket_mach_v1_0_size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_pearloptions_topofmarket_mach_v1_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_pearloptions_topofmarket_mach_v1_0_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_pearloptions_topofmarket_mach_v1_0_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_pearloptions_topofmarket_mach_v1_0_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearloptions_topofmarket_mach_v1_0_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.payload(buffer, packet, parent)
  local element = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.payload, range, display)

  return miax_pearloptions_topofmarket_mach_v1_0_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Session Number
miax_pearloptions_topofmarket_mach_v1_0_size_of.session_number = 1

-- Display: Session Number
miax_pearloptions_topofmarket_mach_v1_0_display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_pearloptions_topofmarket_mach_v1_0_dissect.session_number = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.session_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.session_number(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.session_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Type
miax_pearloptions_topofmarket_mach_v1_0_size_of.packet_type = 1

-- Display: Packet Type
miax_pearloptions_topofmarket_mach_v1_0_display.packet_type = function(value)
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
miax_pearloptions_topofmarket_mach_v1_0_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
miax_pearloptions_topofmarket_mach_v1_0_size_of.packet_length = 2

-- Display: Packet Length
miax_pearloptions_topofmarket_mach_v1_0_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_pearloptions_topofmarket_mach_v1_0_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
miax_pearloptions_topofmarket_mach_v1_0_size_of.sequence_number = 8

-- Display: Sequence Number
miax_pearloptions_topofmarket_mach_v1_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearloptions_topofmarket_mach_v1_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearloptions_topofmarket_mach_v1_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
miax_pearloptions_topofmarket_mach_v1_0_size_of.message = function(buffer, offset)
  local index = 0

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.sequence_number

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.packet_length

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.packet_type

  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.session_number

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_pearloptions_topofmarket_mach_v1_0_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_pearloptions_topofmarket_mach_v1_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearloptions_topofmarket_mach_v1_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_pearloptions_topofmarket_mach_v1_0_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_pearloptions_topofmarket_mach_v1_0_dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_pearloptions_topofmarket_mach_v1_0_dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_pearloptions_topofmarket_mach_v1_0_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_pearloptions_topofmarket_mach_v1_0_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_pearloptions_topofmarket_mach_v1_0_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearloptions_topofmarket_mach_v1_0_display.message(buffer, packet, parent)
    parent = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0.fields.message, range, display)
  end

  return miax_pearloptions_topofmarket_mach_v1_0_dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
miax_pearloptions_topofmarket_mach_v1_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_pearloptions_topofmarket_mach_v1_0_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_pearloptions_topofmarket_mach_v1_0.init()
end

-- Dissector for Miax PearlOptions TopOfMarket Mach 1.0
function omi_miax_pearloptions_topofmarket_mach_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_pearloptions_topofmarket_mach_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearloptions_topofmarket_mach_v1_0, buffer(), omi_miax_pearloptions_topofmarket_mach_v1_0.description, "("..buffer:len().." Bytes)")
  return miax_pearloptions_topofmarket_mach_v1_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_miax_pearloptions_topofmarket_mach_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_miax_pearloptions_topofmarket_mach_v1_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax PearlOptions TopOfMarket Mach 1.0
local function omi_miax_pearloptions_topofmarket_mach_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_miax_pearloptions_topofmarket_mach_v1_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearloptions_topofmarket_mach_v1_0
  omi_miax_pearloptions_topofmarket_mach_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlOptions TopOfMarket Mach 1.0
omi_miax_pearloptions_topofmarket_mach_v1_0:register_heuristic("udp", omi_miax_pearloptions_topofmarket_mach_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.0
--   Date: Monday, February 27, 2017
--   Specification: PEARL_Top_Of_Market_Feed_ToM_v1.0b.pdf
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
