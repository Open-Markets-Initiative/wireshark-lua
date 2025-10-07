-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax MiaxOptions TopOfMarket Mach 1.9 Protocol
local omi_miax_miaxoptions_topofmarket_mach_v1_9 = Proto("Miax.MiaxOptions.TopOfMarket.Mach.v1.9.Lua", "Miax MiaxOptions TopOfMarket Mach 1.9")

-- Protocol table
local miax_miaxoptions_topofmarket_mach_v1_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax MiaxOptions TopOfMarket Mach 1.9 Fields
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.miaxoptions.topofmarket.mach.v1.9.activeonmiax", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.application_message = ProtoField.new("Application Message", "miax.miaxoptions.topofmarket.mach.v1.9.applicationmessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_condition = ProtoField.new("Bid Condition", "miax.miaxoptions.topofmarket.mach.v1.9.bidcondition", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_price_2 = ProtoField.new("Bid Price 2", "miax.miaxoptions.topofmarket.mach.v1.9.bidprice2", ftypes.DOUBLE)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_price_4 = ProtoField.new("Bid Price 4", "miax.miaxoptions.topofmarket.mach.v1.9.bidprice4", ftypes.DOUBLE)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_priority_customer_size_2 = ProtoField.new("Bid Priority Customer Size 2", "miax.miaxoptions.topofmarket.mach.v1.9.bidprioritycustomersize2", ftypes.UINT16)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_priority_customer_size_4 = ProtoField.new("Bid Priority Customer Size 4", "miax.miaxoptions.topofmarket.mach.v1.9.bidprioritycustomersize4", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_size_2 = ProtoField.new("Bid Size 2", "miax.miaxoptions.topofmarket.mach.v1.9.bidsize2", ftypes.UINT16)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_size_4 = ProtoField.new("Bid Size 4", "miax.miaxoptions.topofmarket.mach.v1.9.bidsize4", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.call_or_put = ProtoField.new("Call Or Put", "miax.miaxoptions.topofmarket.mach.v1.9.callorput", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.closing_time = ProtoField.new("Closing Time", "miax.miaxoptions.topofmarket.mach.v1.9.closingtime", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.correction_number = ProtoField.new("Correction Number", "miax.miaxoptions.topofmarket.mach.v1.9.correctionnumber", ftypes.UINT8)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.data = ProtoField.new("Data", "miax.miaxoptions.topofmarket.mach.v1.9.data", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.event_reason = ProtoField.new("Event Reason", "miax.miaxoptions.topofmarket.mach.v1.9.eventreason", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.miaxoptions.topofmarket.mach.v1.9.expectedeventtimenanosecondspart", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.expiration_date = ProtoField.new("Expiration Date", "miax.miaxoptions.topofmarket.mach.v1.9.expirationdate", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.miaxoptions.topofmarket.mach.v1.9.liquidityacceptanceincrementindicator", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.long_term_option = ProtoField.new("Long Term Option", "miax.miaxoptions.topofmarket.mach.v1.9.longtermoption", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_condition = ProtoField.new("Mbbo Condition", "miax.miaxoptions.topofmarket.mach.v1.9.mbbocondition", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_price_2 = ProtoField.new("Mbbo Price 2", "miax.miaxoptions.topofmarket.mach.v1.9.mbboprice2", ftypes.DOUBLE)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_price_4 = ProtoField.new("Mbbo Price 4", "miax.miaxoptions.topofmarket.mach.v1.9.mbboprice4", ftypes.DOUBLE)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_priority_customer_size_2 = ProtoField.new("Mbbo Priority Customer Size 2", "miax.miaxoptions.topofmarket.mach.v1.9.mbboprioritycustomersize2", ftypes.UINT16)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_priority_customer_size_4 = ProtoField.new("Mbbo Priority Customer Size 4", "miax.miaxoptions.topofmarket.mach.v1.9.mbboprioritycustomersize4", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_size_2 = ProtoField.new("Mbbo Size 2", "miax.miaxoptions.topofmarket.mach.v1.9.mbbosize2", ftypes.UINT16)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_size_4 = ProtoField.new("Mbbo Size 4", "miax.miaxoptions.topofmarket.mach.v1.9.mbbosize4", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.message = ProtoField.new("Message", "miax.miaxoptions.topofmarket.mach.v1.9.message", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.message_type = ProtoField.new("Message Type", "miax.miaxoptions.topofmarket.mach.v1.9.messagetype", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.miaxoptions.topofmarket.mach.v1.9.miaxbbopostingincrementindicator", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.notification_time = ProtoField.new("Notification Time", "miax.miaxoptions.topofmarket.mach.v1.9.notificationtime", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_condition = ProtoField.new("Offer Condition", "miax.miaxoptions.topofmarket.mach.v1.9.offercondition", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_price_2 = ProtoField.new("Offer Price 2", "miax.miaxoptions.topofmarket.mach.v1.9.offerprice2", ftypes.DOUBLE)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_price_4 = ProtoField.new("Offer Price 4", "miax.miaxoptions.topofmarket.mach.v1.9.offerprice4", ftypes.DOUBLE)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_priority_customer_size_2 = ProtoField.new("Offer Priority Customer Size 2", "miax.miaxoptions.topofmarket.mach.v1.9.offerprioritycustomersize2", ftypes.UINT16)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_priority_customer_size_4 = ProtoField.new("Offer Priority Customer Size 4", "miax.miaxoptions.topofmarket.mach.v1.9.offerprioritycustomersize4", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_size_2 = ProtoField.new("Offer Size 2", "miax.miaxoptions.topofmarket.mach.v1.9.offersize2", ftypes.UINT16)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_size_4 = ProtoField.new("Offer Size 4", "miax.miaxoptions.topofmarket.mach.v1.9.offersize4", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.opening_time = ProtoField.new("Opening Time", "miax.miaxoptions.topofmarket.mach.v1.9.openingtime", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.miaxoptions.topofmarket.mach.v1.9.openingunderlyingmarketcode", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.packet = ProtoField.new("Packet", "miax.miaxoptions.topofmarket.mach.v1.9.packet", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.packet_length = ProtoField.new("Packet Length", "miax.miaxoptions.topofmarket.mach.v1.9.packetlength", ftypes.UINT16)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.packet_type = ProtoField.new("Packet Type", "miax.miaxoptions.topofmarket.mach.v1.9.packettype", ftypes.UINT8)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.payload = ProtoField.new("Payload", "miax.miaxoptions.topofmarket.mach.v1.9.payload", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.miaxoptions.topofmarket.mach.v1.9.priorityquotewidth", ftypes.DOUBLE)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.miaxoptions.topofmarket.mach.v1.9.productaddupdatetime", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.product_id = ProtoField.new("Product Id", "miax.miaxoptions.topofmarket.mach.v1.9.productid", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.miaxoptions.topofmarket.mach.v1.9.referencecorrectionnumber", ftypes.UINT8)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.miaxoptions.topofmarket.mach.v1.9.referencetradeid", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.miaxoptions.topofmarket.mach.v1.9.reserved8", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.restricted_option = ProtoField.new("Restricted Option", "miax.miaxoptions.topofmarket.mach.v1.9.restrictedoption", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.seconds_part = ProtoField.new("Seconds Part", "miax.miaxoptions.topofmarket.mach.v1.9.secondspart", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.security_symbol = ProtoField.new("Security Symbol", "miax.miaxoptions.topofmarket.mach.v1.9.securitysymbol", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.sequence_number = ProtoField.new("Sequence Number", "miax.miaxoptions.topofmarket.mach.v1.9.sequencenumber", ftypes.UINT64)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.session_id = ProtoField.new("Session Id", "miax.miaxoptions.topofmarket.mach.v1.9.sessionid", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.session_number = ProtoField.new("Session Number", "miax.miaxoptions.topofmarket.mach.v1.9.sessionnumber", ftypes.UINT8)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.strike_price = ProtoField.new("Strike Price", "miax.miaxoptions.topofmarket.mach.v1.9.strikeprice", ftypes.DOUBLE)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.system_status = ProtoField.new("System Status", "miax.miaxoptions.topofmarket.mach.v1.9.systemstatus", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.timestamp = ProtoField.new("Timestamp", "miax.miaxoptions.topofmarket.mach.v1.9.timestamp", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.to_m_version = ProtoField.new("To M Version", "miax.miaxoptions.topofmarket.mach.v1.9.tomversion", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_condition = ProtoField.new("Trade Condition", "miax.miaxoptions.topofmarket.mach.v1.9.tradecondition", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_id = ProtoField.new("Trade Id", "miax.miaxoptions.topofmarket.mach.v1.9.tradeid", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_price = ProtoField.new("Trade Price", "miax.miaxoptions.topofmarket.mach.v1.9.tradeprice", ftypes.DOUBLE)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_size = ProtoField.new("Trade Size", "miax.miaxoptions.topofmarket.mach.v1.9.tradesize", ftypes.UINT32)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trading_status = ProtoField.new("Trading Status", "miax.miaxoptions.topofmarket.mach.v1.9.tradingstatus", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.miaxoptions.topofmarket.mach.v1.9.underlyingsymbol", ftypes.STRING)

-- Miax MiaxOptions TopOfMarket Mach 1.9 messages
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.double_sided_top_of_market_compact_message = ProtoField.new("Double Sided Top Of Market Compact Message", "miax.miaxoptions.topofmarket.mach.v1.9.doublesidedtopofmarketcompactmessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.series_update = ProtoField.new("Series Update", "miax.miaxoptions.topofmarket.mach.v1.9.seriesupdate", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.system_state_message = ProtoField.new("System State Message", "miax.miaxoptions.topofmarket.mach.v1.9.systemstatemessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.system_time_message = ProtoField.new("System Time Message", "miax.miaxoptions.topofmarket.mach.v1.9.systemtimemessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.top_of_market_bid_compact_message = ProtoField.new("Top Of Market Bid Compact Message", "miax.miaxoptions.topofmarket.mach.v1.9.topofmarketbidcompactmessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.top_of_market_offer_compact_message = ProtoField.new("Top Of Market Offer Compact Message", "miax.miaxoptions.topofmarket.mach.v1.9.topofmarketoffercompactmessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.miaxoptions.topofmarket.mach.v1.9.tradecancelmessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_message = ProtoField.new("Trade Message", "miax.miaxoptions.topofmarket.mach.v1.9.trademessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.underlying_trading_status_message = ProtoField.new("Underlying Trading Status Message", "miax.miaxoptions.topofmarket.mach.v1.9.underlyingtradingstatusmessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.wide_double_sided_top_of_market_message = ProtoField.new("Wide Double Sided Top Of Market Message", "miax.miaxoptions.topofmarket.mach.v1.9.widedoublesidedtopofmarketmessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.wide_top_of_market_bid_message = ProtoField.new("Wide Top Of Market Bid Message", "miax.miaxoptions.topofmarket.mach.v1.9.widetopofmarketbidmessage", ftypes.STRING)
omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.wide_top_of_market_offer_message = ProtoField.new("Wide Top Of Market Offer Message", "miax.miaxoptions.topofmarket.mach.v1.9.widetopofmarketoffermessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax MiaxOptions TopOfMarket Mach 1.9 Element Dissection Options
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

-- Register Miax MiaxOptions TopOfMarket Mach 1.9 Show Options
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_double_sided_top_of_market_compact_message = Pref.bool("Show Double Sided Top Of Market Compact Message", show.double_sided_top_of_market_compact_message, "Parse and add Double Sided Top Of Market Compact Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_series_update = Pref.bool("Show Series Update", show.series_update, "Parse and add Series Update to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_top_of_market_bid_compact_message = Pref.bool("Show Top Of Market Bid Compact Message", show.top_of_market_bid_compact_message, "Parse and add Top Of Market Bid Compact Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_top_of_market_offer_compact_message = Pref.bool("Show Top Of Market Offer Compact Message", show.top_of_market_offer_compact_message, "Parse and add Top Of Market Offer Compact Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_trade_cancel_message = Pref.bool("Show Trade Cancel Message", show.trade_cancel_message, "Parse and add Trade Cancel Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_underlying_trading_status_message = Pref.bool("Show Underlying Trading Status Message", show.underlying_trading_status_message, "Parse and add Underlying Trading Status Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_wide_double_sided_top_of_market_message = Pref.bool("Show Wide Double Sided Top Of Market Message", show.wide_double_sided_top_of_market_message, "Parse and add Wide Double Sided Top Of Market Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_wide_top_of_market_bid_message = Pref.bool("Show Wide Top Of Market Bid Message", show.wide_top_of_market_bid_message, "Parse and add Wide Top Of Market Bid Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_wide_top_of_market_offer_message = Pref.bool("Show Wide Top Of Market Offer Message", show.wide_top_of_market_offer_message, "Parse and add Wide Top Of Market Offer Message to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_application_message then
    show.application_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_application_message
    changed = true
  end
  if show.double_sided_top_of_market_compact_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_double_sided_top_of_market_compact_message then
    show.double_sided_top_of_market_compact_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_double_sided_top_of_market_compact_message
    changed = true
  end
  if show.message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_message then
    show.message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_packet then
    show.packet = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_packet
    changed = true
  end
  if show.series_update ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_series_update then
    show.series_update = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_series_update
    changed = true
  end
  if show.system_state_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_system_state_message then
    show.system_state_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_system_time_message then
    show.system_time_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_system_time_message
    changed = true
  end
  if show.top_of_market_bid_compact_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_top_of_market_bid_compact_message then
    show.top_of_market_bid_compact_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_top_of_market_bid_compact_message
    changed = true
  end
  if show.top_of_market_offer_compact_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_top_of_market_offer_compact_message then
    show.top_of_market_offer_compact_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_top_of_market_offer_compact_message
    changed = true
  end
  if show.trade_cancel_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_trade_cancel_message then
    show.trade_cancel_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_trade_cancel_message
    changed = true
  end
  if show.trade_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_trade_message then
    show.trade_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_trade_message
    changed = true
  end
  if show.underlying_trading_status_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_underlying_trading_status_message then
    show.underlying_trading_status_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_underlying_trading_status_message
    changed = true
  end
  if show.wide_double_sided_top_of_market_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_wide_double_sided_top_of_market_message then
    show.wide_double_sided_top_of_market_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_wide_double_sided_top_of_market_message
    changed = true
  end
  if show.wide_top_of_market_bid_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_wide_top_of_market_bid_message then
    show.wide_top_of_market_bid_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_wide_top_of_market_bid_message
    changed = true
  end
  if show.wide_top_of_market_offer_message ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_wide_top_of_market_offer_message then
    show.wide_top_of_market_offer_message = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_wide_top_of_market_offer_message
    changed = true
  end
  if show.data ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_data then
    show.data = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_payload then
    show.payload = omi_miax_miaxoptions_topofmarket_mach_v1_9.prefs.show_payload
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
-- Dissect Miax MiaxOptions TopOfMarket Mach 1.9
-----------------------------------------------------------------------

-- Expected Event Time Nano Seconds Part
miax_miaxoptions_topofmarket_mach_v1_9.expected_event_time_nano_seconds_part = {}

-- Size: Expected Event Time Nano Seconds Part
miax_miaxoptions_topofmarket_mach_v1_9.expected_event_time_nano_seconds_part.size = 4

-- Display: Expected Event Time Nano Seconds Part
miax_miaxoptions_topofmarket_mach_v1_9.expected_event_time_nano_seconds_part.display = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
miax_miaxoptions_topofmarket_mach_v1_9.expected_event_time_nano_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.expected_event_time_nano_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.expected_event_time_nano_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + length, value
end

-- Seconds Part
miax_miaxoptions_topofmarket_mach_v1_9.seconds_part = {}

-- Size: Seconds Part
miax_miaxoptions_topofmarket_mach_v1_9.seconds_part.size = 4

-- Display: Seconds Part
miax_miaxoptions_topofmarket_mach_v1_9.seconds_part.display = function(value)
  return "Seconds Part: "..value
end

-- Dissect: Seconds Part
miax_miaxoptions_topofmarket_mach_v1_9.seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.seconds_part, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_miaxoptions_topofmarket_mach_v1_9.event_reason = {}

-- Size: Event Reason
miax_miaxoptions_topofmarket_mach_v1_9.event_reason.size = 1

-- Display: Event Reason
miax_miaxoptions_topofmarket_mach_v1_9.event_reason.display = function(value)
  if value == "A" then
    return "Event Reason: Automatic (A)"
  end
  if value == "M" then
    return "Event Reason: Manual (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_miaxoptions_topofmarket_mach_v1_9.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_miaxoptions_topofmarket_mach_v1_9.trading_status = {}

-- Size: Trading Status
miax_miaxoptions_topofmarket_mach_v1_9.trading_status.size = 1

-- Display: Trading Status
miax_miaxoptions_topofmarket_mach_v1_9.trading_status.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol = {}

-- Size: Underlying Symbol
miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_miaxoptions_topofmarket_mach_v1_9.timestamp = {}

-- Size: Timestamp
miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size = 4

-- Display: Timestamp
miax_miaxoptions_topofmarket_mach_v1_9.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Underlying Trading Status Message
miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message = {}

-- Size: Underlying Trading Status Message
miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.trading_status.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.event_reason.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.seconds_part.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.expected_event_time_nano_seconds_part.size

-- Display: Underlying Trading Status Message
miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Message
miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_miaxoptions_topofmarket_mach_v1_9.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_miaxoptions_topofmarket_mach_v1_9.event_reason.dissect(buffer, index, packet, parent)

  -- Seconds Part: SecTime
  index, seconds_part = miax_miaxoptions_topofmarket_mach_v1_9.seconds_part.dissect(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: BinaryU
  index, expected_event_time_nano_seconds_part = miax_miaxoptions_topofmarket_mach_v1_9.expected_event_time_nano_seconds_part.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Message
miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.underlying_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.underlying_trading_status_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Condition
miax_miaxoptions_topofmarket_mach_v1_9.trade_condition = {}

-- Size: Trade Condition
miax_miaxoptions_topofmarket_mach_v1_9.trade_condition.size = 1

-- Display: Trade Condition
miax_miaxoptions_topofmarket_mach_v1_9.trade_condition.display = function(value)
  if value == "A" then
    return "Trade Condition: Cancel Of Trade (A)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
miax_miaxoptions_topofmarket_mach_v1_9.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Size
miax_miaxoptions_topofmarket_mach_v1_9.trade_size = {}

-- Size: Trade Size
miax_miaxoptions_topofmarket_mach_v1_9.trade_size.size = 4

-- Display: Trade Size
miax_miaxoptions_topofmarket_mach_v1_9.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
miax_miaxoptions_topofmarket_mach_v1_9.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.trade_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trade Price
miax_miaxoptions_topofmarket_mach_v1_9.trade_price = {}

-- Size: Trade Price
miax_miaxoptions_topofmarket_mach_v1_9.trade_price.size = 4

-- Display: Trade Price
miax_miaxoptions_topofmarket_mach_v1_9.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
miax_miaxoptions_topofmarket_mach_v1_9.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
miax_miaxoptions_topofmarket_mach_v1_9.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_topofmarket_mach_v1_9.trade_price.translate(raw)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_miaxoptions_topofmarket_mach_v1_9.correction_number = {}

-- Size: Correction Number
miax_miaxoptions_topofmarket_mach_v1_9.correction_number.size = 1

-- Display: Correction Number
miax_miaxoptions_topofmarket_mach_v1_9.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_miaxoptions_topofmarket_mach_v1_9.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_miaxoptions_topofmarket_mach_v1_9.trade_id = {}

-- Size: Trade Id
miax_miaxoptions_topofmarket_mach_v1_9.trade_id.size = 4

-- Display: Trade Id
miax_miaxoptions_topofmarket_mach_v1_9.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_miaxoptions_topofmarket_mach_v1_9.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Product Id
miax_miaxoptions_topofmarket_mach_v1_9.product_id = {}

-- Size: Product Id
miax_miaxoptions_topofmarket_mach_v1_9.product_id.size = 4

-- Display: Product Id
miax_miaxoptions_topofmarket_mach_v1_9.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.product_id, range, value, display)

  return offset + length, value
end

-- Trade Cancel Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.product_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.trade_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.correction_number.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.trade_price.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.trade_size.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.trade_condition.size

-- Display: Trade Cancel Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_miaxoptions_topofmarket_mach_v1_9.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_miaxoptions_topofmarket_mach_v1_9.correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_miaxoptions_topofmarket_mach_v1_9.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_miaxoptions_topofmarket_mach_v1_9.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_miaxoptions_topofmarket_mach_v1_9.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Correction Number
miax_miaxoptions_topofmarket_mach_v1_9.reference_correction_number = {}

-- Size: Reference Correction Number
miax_miaxoptions_topofmarket_mach_v1_9.reference_correction_number.size = 1

-- Display: Reference Correction Number
miax_miaxoptions_topofmarket_mach_v1_9.reference_correction_number.display = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
miax_miaxoptions_topofmarket_mach_v1_9.reference_correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.reference_correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.reference_correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.reference_correction_number, range, value, display)

  return offset + length, value
end

-- Reference Trade Id
miax_miaxoptions_topofmarket_mach_v1_9.reference_trade_id = {}

-- Size: Reference Trade Id
miax_miaxoptions_topofmarket_mach_v1_9.reference_trade_id.size = 4

-- Display: Reference Trade Id
miax_miaxoptions_topofmarket_mach_v1_9.reference_trade_id.display = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
miax_miaxoptions_topofmarket_mach_v1_9.reference_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.reference_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.reference_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.reference_trade_id, range, value, display)

  return offset + length, value
end

-- Trade Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_message = {}

-- Size: Trade Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.product_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.trade_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.correction_number.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.reference_trade_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.reference_correction_number.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.trade_price.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.trade_size.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.trade_condition.size

-- Display: Trade Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_miaxoptions_topofmarket_mach_v1_9.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_miaxoptions_topofmarket_mach_v1_9.correction_number.dissect(buffer, index, packet, parent)

  -- Reference Trade Id: BinaryU
  index, reference_trade_id = miax_miaxoptions_topofmarket_mach_v1_9.reference_trade_id.dissect(buffer, index, packet, parent)

  -- Reference Correction Number: BinaryU
  index, reference_correction_number = miax_miaxoptions_topofmarket_mach_v1_9.reference_correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_miaxoptions_topofmarket_mach_v1_9.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_miaxoptions_topofmarket_mach_v1_9.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_miaxoptions_topofmarket_mach_v1_9.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
miax_miaxoptions_topofmarket_mach_v1_9.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.trade_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Condition
miax_miaxoptions_topofmarket_mach_v1_9.offer_condition = {}

-- Size: Offer Condition
miax_miaxoptions_topofmarket_mach_v1_9.offer_condition.size = 1

-- Display: Offer Condition
miax_miaxoptions_topofmarket_mach_v1_9.offer_condition.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.offer_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.offer_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.offer_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_4 = {}

-- Size: Offer Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_4.size = 4

-- Display: Offer Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_4.display = function(value)
  return "Offer Priority Customer Size 4: "..value
end

-- Dissect: Offer Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Offer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_size_4 = {}

-- Size: Offer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_size_4.size = 4

-- Display: Offer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_size_4.display = function(value)
  return "Offer Size 4: "..value
end

-- Dissect: Offer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.offer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.offer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_size_4, range, value, display)

  return offset + length, value
end

-- Offer Price 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4 = {}

-- Size: Offer Price 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4.size = 4

-- Display: Offer Price 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4.display = function(value)
  return "Offer Price 4: "..value
end

-- Translate: Offer Price 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price 4
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4.translate(raw)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_price_4, range, value, display)

  return offset + length, value
end

-- Bid Condition
miax_miaxoptions_topofmarket_mach_v1_9.bid_condition = {}

-- Size: Bid Condition
miax_miaxoptions_topofmarket_mach_v1_9.bid_condition.size = 1

-- Display: Bid Condition
miax_miaxoptions_topofmarket_mach_v1_9.bid_condition.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.bid_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.bid_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.bid_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_4 = {}

-- Size: Bid Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_4.size = 4

-- Display: Bid Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_4.display = function(value)
  return "Bid Priority Customer Size 4: "..value
end

-- Dissect: Bid Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Bid Size 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_size_4 = {}

-- Size: Bid Size 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_size_4.size = 4

-- Display: Bid Size 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_size_4.display = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.bid_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.bid_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Bid Price 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4 = {}

-- Size: Bid Price 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4.size = 4

-- Display: Bid Price 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4.display = function(value)
  return "Bid Price 4: "..value
end

-- Translate: Bid Price 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price 4
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4.translate(raw)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_price_4, range, value, display)

  return offset + length, value
end

-- Wide Double Sided Top Of Market Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message = {}

-- Size: Wide Double Sided Top Of Market Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.product_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.bid_size_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.bid_condition.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.offer_size_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.offer_condition.size

-- Display: Wide Double Sided Top Of Market Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Double Sided Top Of Market Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price 4: BinaryPrc2U
  index, bid_price_4 = miax_miaxoptions_topofmarket_mach_v1_9.bid_price_4.dissect(buffer, index, packet, parent)

  -- Bid Size 4: BinaryU
  index, bid_size_4 = miax_miaxoptions_topofmarket_mach_v1_9.bid_size_4.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size 4: BinaryU
  index, bid_priority_customer_size_4 = miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_miaxoptions_topofmarket_mach_v1_9.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price 4: BinaryPrc2U
  index, offer_price_4 = miax_miaxoptions_topofmarket_mach_v1_9.offer_price_4.dissect(buffer, index, packet, parent)

  -- Offer Size 4: BinaryU
  index, offer_size_4 = miax_miaxoptions_topofmarket_mach_v1_9.offer_size_4.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size 4: BinaryU
  index, offer_priority_customer_size_4 = miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_miaxoptions_topofmarket_mach_v1_9.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Double Sided Top Of Market Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message.dissect = function(buffer, offset, packet, parent)
  if show.wide_double_sided_top_of_market_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.wide_double_sided_top_of_market_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_2 = {}

-- Size: Offer Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_2.size = 2

-- Display: Offer Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_2.display = function(value)
  return "Offer Priority Customer Size 2: "..value
end

-- Dissect: Offer Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Offer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_size_2 = {}

-- Size: Offer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_size_2.size = 2

-- Display: Offer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_size_2.display = function(value)
  return "Offer Size 2: "..value
end

-- Dissect: Offer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.offer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.offer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_size_2, range, value, display)

  return offset + length, value
end

-- Offer Price 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2 = {}

-- Size: Offer Price 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2.size = 2

-- Display: Offer Price 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2.display = function(value)
  return "Offer Price 2: "..value
end

-- Translate: Offer Price 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price 2
miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2.translate(raw)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.offer_price_2, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_2 = {}

-- Size: Bid Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_2.size = 2

-- Display: Bid Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_2.display = function(value)
  return "Bid Priority Customer Size 2: "..value
end

-- Dissect: Bid Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Bid Size 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_size_2 = {}

-- Size: Bid Size 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_size_2.size = 2

-- Display: Bid Size 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_size_2.display = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.bid_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.bid_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Bid Price 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2 = {}

-- Size: Bid Price 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2.size = 2

-- Display: Bid Price 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2.display = function(value)
  return "Bid Price 2: "..value
end

-- Translate: Bid Price 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price 2
miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2.translate(raw)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.bid_price_2, range, value, display)

  return offset + length, value
end

-- Double Sided Top Of Market Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message = {}

-- Size: Double Sided Top Of Market Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.product_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.bid_size_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.bid_condition.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.offer_size_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.offer_condition.size

-- Display: Double Sided Top Of Market Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Double Sided Top Of Market Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price 2: BinaryPrc2U
  index, bid_price_2 = miax_miaxoptions_topofmarket_mach_v1_9.bid_price_2.dissect(buffer, index, packet, parent)

  -- Bid Size 2: BinaryU
  index, bid_size_2 = miax_miaxoptions_topofmarket_mach_v1_9.bid_size_2.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size 2: BinaryU
  index, bid_priority_customer_size_2 = miax_miaxoptions_topofmarket_mach_v1_9.bid_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_miaxoptions_topofmarket_mach_v1_9.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price 2: BinaryPrc2U
  index, offer_price_2 = miax_miaxoptions_topofmarket_mach_v1_9.offer_price_2.dissect(buffer, index, packet, parent)

  -- Offer Size 2: BinaryU
  index, offer_size_2 = miax_miaxoptions_topofmarket_mach_v1_9.offer_size_2.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size 2: BinaryU
  index, offer_priority_customer_size_2 = miax_miaxoptions_topofmarket_mach_v1_9.offer_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_miaxoptions_topofmarket_mach_v1_9.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Double Sided Top Of Market Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.double_sided_top_of_market_compact_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.double_sided_top_of_market_compact_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbbo Condition
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition = {}

-- Size: Mbbo Condition
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.size = 1

-- Display: Mbbo Condition
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_condition, range, value, display)

  return offset + length, value
end

-- Mbbo Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4 = {}

-- Size: Mbbo Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4.size = 4

-- Display: Mbbo Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4.display = function(value)
  return "Mbbo Priority Customer Size 4: "..value
end

-- Dissect: Mbbo Priority Customer Size 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Mbbo Size 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4 = {}

-- Size: Mbbo Size 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4.size = 4

-- Display: Mbbo Size 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4.display = function(value)
  return "Mbbo Size 4: "..value
end

-- Dissect: Mbbo Size 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_size_4, range, value, display)

  return offset + length, value
end

-- Mbbo Price 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4 = {}

-- Size: Mbbo Price 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.size = 4

-- Display: Mbbo Price 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.display = function(value)
  return "Mbbo Price 4: "..value
end

-- Translate: Mbbo Price 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Mbbo Price 4
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.translate(raw)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_price_4, range, value, display)

  return offset + length, value
end

-- Wide Top Of Market Offer Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message = {}

-- Size: Wide Top Of Market Offer Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.product_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.size

-- Display: Wide Top Of Market Offer Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Top Of Market Offer Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect(buffer, index, packet, parent)

  -- Mbbo Price 4: BinaryPrc4U
  index, mbbo_price_4 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.dissect(buffer, index, packet, parent)

  -- Mbbo Size 4: BinaryU
  index, mbbo_size_4 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4.dissect(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 4: BinaryU
  index, mbbo_priority_customer_size_4 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Mbbo Condition: Alphanumeric
  index, mbbo_condition = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top Of Market Offer Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.wide_top_of_market_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.wide_top_of_market_offer_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Wide Top Of Market Bid Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message = {}

-- Size: Wide Top Of Market Bid Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.product_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.size

-- Display: Wide Top Of Market Bid Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Top Of Market Bid Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect(buffer, index, packet, parent)

  -- Mbbo Price 4: BinaryPrc4U
  index, mbbo_price_4 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_4.dissect(buffer, index, packet, parent)

  -- Mbbo Size 4: BinaryU
  index, mbbo_size_4 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_4.dissect(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 4: BinaryU
  index, mbbo_priority_customer_size_4 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Mbbo Condition: Alphanumeric
  index, mbbo_condition = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Top Of Market Bid Message
miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.wide_top_of_market_bid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.wide_top_of_market_bid_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- Mbbo Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2 = {}

-- Size: Mbbo Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2.size = 2

-- Display: Mbbo Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2.display = function(value)
  return "Mbbo Priority Customer Size 2: "..value
end

-- Dissect: Mbbo Priority Customer Size 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Mbbo Size 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2 = {}

-- Size: Mbbo Size 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2.size = 2

-- Display: Mbbo Size 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2.display = function(value)
  return "Mbbo Size 2: "..value
end

-- Dissect: Mbbo Size 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_size_2, range, value, display)

  return offset + length, value
end

-- Mbbo Price 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2 = {}

-- Size: Mbbo Price 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.size = 2

-- Display: Mbbo Price 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.display = function(value)
  return "Mbbo Price 2: "..value
end

-- Translate: Mbbo Price 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Mbbo Price 2
miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.translate(raw)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.mbbo_price_2, range, value, display)

  return offset + length, value
end

-- Top Of Market Offer Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message = {}

-- Size: Top Of Market Offer Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.product_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.size

-- Display: Top Of Market Offer Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Offer Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect(buffer, index, packet, parent)

  -- Mbbo Price 2: BinaryPrc2U
  index, mbbo_price_2 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.dissect(buffer, index, packet, parent)

  -- Mbbo Size 2: BinaryU
  index, mbbo_size_2 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2.dissect(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 2: BinaryU
  index, mbbo_priority_customer_size_2 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Mbbo Condition: Alphanumeric
  index, mbbo_condition = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Offer Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.top_of_market_offer_compact_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.top_of_market_offer_compact_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Bid Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message = {}

-- Size: Top Of Market Bid Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.product_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.size

-- Display: Top Of Market Bid Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Market Bid Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect(buffer, index, packet, parent)

  -- Mbbo Price 2: BinaryPrc2U
  index, mbbo_price_2 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_price_2.dissect(buffer, index, packet, parent)

  -- Mbbo Size 2: BinaryU
  index, mbbo_size_2 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_size_2.dissect(buffer, index, packet, parent)

  -- Mbbo Priority Customer Size 2: BinaryU
  index, mbbo_priority_customer_size_2 = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Mbbo Condition: Alphanumeric
  index, mbbo_condition = miax_miaxoptions_topofmarket_mach_v1_9.mbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Market Bid Compact Message
miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.top_of_market_bid_compact_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.top_of_market_bid_compact_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status
miax_miaxoptions_topofmarket_mach_v1_9.system_status = {}

-- Size: System Status
miax_miaxoptions_topofmarket_mach_v1_9.system_status.size = 1

-- Display: System Status
miax_miaxoptions_topofmarket_mach_v1_9.system_status.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.system_status, range, value, display)

  return offset + length, value
end

-- Session Id
miax_miaxoptions_topofmarket_mach_v1_9.session_id = {}

-- Size: Session Id
miax_miaxoptions_topofmarket_mach_v1_9.session_id.size = 4

-- Display: Session Id
miax_miaxoptions_topofmarket_mach_v1_9.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_miaxoptions_topofmarket_mach_v1_9.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.session_id, range, value, display)

  return offset + length, value
end

-- To M Version
miax_miaxoptions_topofmarket_mach_v1_9.to_m_version = {}

-- Size: To M Version
miax_miaxoptions_topofmarket_mach_v1_9.to_m_version.size = 8

-- Display: To M Version
miax_miaxoptions_topofmarket_mach_v1_9.to_m_version.display = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_miaxoptions_topofmarket_mach_v1_9.to_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.to_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v1_9.to_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_miaxoptions_topofmarket_mach_v1_9.notification_time = {}

-- Size: Notification Time
miax_miaxoptions_topofmarket_mach_v1_9.notification_time.size = 4

-- Display: Notification Time
miax_miaxoptions_topofmarket_mach_v1_9.notification_time.display = function(value)
  return "Notification Time: "..value
end

-- Dissect: Notification Time
miax_miaxoptions_topofmarket_mach_v1_9.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.notification_time, range, value, display)

  return offset + length, value
end

-- System State Message
miax_miaxoptions_topofmarket_mach_v1_9.system_state_message = {}

-- Size: System State Message
miax_miaxoptions_topofmarket_mach_v1_9.system_state_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.notification_time.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.to_m_version.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.session_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.system_status.size

-- Display: System State Message
miax_miaxoptions_topofmarket_mach_v1_9.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_miaxoptions_topofmarket_mach_v1_9.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_topofmarket_mach_v1_9.notification_time.dissect(buffer, index, packet, parent)

  -- To M Version: Alphanumeric
  index, to_m_version = miax_miaxoptions_topofmarket_mach_v1_9.to_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_miaxoptions_topofmarket_mach_v1_9.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_miaxoptions_topofmarket_mach_v1_9.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_miaxoptions_topofmarket_mach_v1_9.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.system_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.system_state_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 8
miax_miaxoptions_topofmarket_mach_v1_9.reserved_8 = {}

-- Size: Reserved 8
miax_miaxoptions_topofmarket_mach_v1_9.reserved_8.size = 8

-- Display: Reserved 8
miax_miaxoptions_topofmarket_mach_v1_9.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_miaxoptions_topofmarket_mach_v1_9.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Priority Quote Width
miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width = {}

-- Size: Priority Quote Width
miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width.size = 4

-- Display: Priority Quote Width
miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width.display = function(value)
  return "Priority Quote Width: "..value
end

-- Translate: Priority Quote Width
miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width.translate = function(raw)
  return raw/10000
end

-- Dissect: Priority Quote Width
miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width.translate(raw)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.priority_quote_width, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_miaxoptions_topofmarket_mach_v1_9.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_miaxoptions_topofmarket_mach_v1_9.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_miaxoptions_topofmarket_mach_v1_9.opening_underlying_market_code.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Liquidity Acceptance Increment Indicator
miax_miaxoptions_topofmarket_mach_v1_9.liquidity_acceptance_increment_indicator = {}

-- Size: Liquidity Acceptance Increment Indicator
miax_miaxoptions_topofmarket_mach_v1_9.liquidity_acceptance_increment_indicator.size = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_miaxoptions_topofmarket_mach_v1_9.liquidity_acceptance_increment_indicator.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.liquidity_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.liquidity_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.liquidity_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Miax Bbo Posting Increment Indicator
miax_miaxoptions_topofmarket_mach_v1_9.miax_bbo_posting_increment_indicator = {}

-- Size: Miax Bbo Posting Increment Indicator
miax_miaxoptions_topofmarket_mach_v1_9.miax_bbo_posting_increment_indicator.size = 1

-- Display: Miax Bbo Posting Increment Indicator
miax_miaxoptions_topofmarket_mach_v1_9.miax_bbo_posting_increment_indicator.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.miax_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.miax_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.miax_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Active On Miax
miax_miaxoptions_topofmarket_mach_v1_9.active_on_miax = {}

-- Size: Active On Miax
miax_miaxoptions_topofmarket_mach_v1_9.active_on_miax.size = 1

-- Display: Active On Miax
miax_miaxoptions_topofmarket_mach_v1_9.active_on_miax.display = function(value)
  return "Active On Miax: "..value
end

-- Dissect: Active On Miax
miax_miaxoptions_topofmarket_mach_v1_9.active_on_miax.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.active_on_miax.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.active_on_miax.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.active_on_miax, range, value, display)

  return offset + length, value
end

-- Long Term Option
miax_miaxoptions_topofmarket_mach_v1_9.long_term_option = {}

-- Size: Long Term Option
miax_miaxoptions_topofmarket_mach_v1_9.long_term_option.size = 1

-- Display: Long Term Option
miax_miaxoptions_topofmarket_mach_v1_9.long_term_option.display = function(value)
  return "Long Term Option: "..value
end

-- Dissect: Long Term Option
miax_miaxoptions_topofmarket_mach_v1_9.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Restricted Option
miax_miaxoptions_topofmarket_mach_v1_9.restricted_option = {}

-- Size: Restricted Option
miax_miaxoptions_topofmarket_mach_v1_9.restricted_option.size = 1

-- Display: Restricted Option
miax_miaxoptions_topofmarket_mach_v1_9.restricted_option.display = function(value)
  return "Restricted Option: "..value
end

-- Dissect: Restricted Option
miax_miaxoptions_topofmarket_mach_v1_9.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_miaxoptions_topofmarket_mach_v1_9.closing_time = {}

-- Size: Closing Time
miax_miaxoptions_topofmarket_mach_v1_9.closing_time.size = 8

-- Display: Closing Time
miax_miaxoptions_topofmarket_mach_v1_9.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_miaxoptions_topofmarket_mach_v1_9.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v1_9.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_miaxoptions_topofmarket_mach_v1_9.opening_time = {}

-- Size: Opening Time
miax_miaxoptions_topofmarket_mach_v1_9.opening_time.size = 8

-- Display: Opening Time
miax_miaxoptions_topofmarket_mach_v1_9.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_miaxoptions_topofmarket_mach_v1_9.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v1_9.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_miaxoptions_topofmarket_mach_v1_9.call_or_put = {}

-- Size: Call Or Put
miax_miaxoptions_topofmarket_mach_v1_9.call_or_put.size = 1

-- Display: Call Or Put
miax_miaxoptions_topofmarket_mach_v1_9.call_or_put.display = function(value)
  return "Call Or Put: "..value
end

-- Dissect: Call Or Put
miax_miaxoptions_topofmarket_mach_v1_9.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_miaxoptions_topofmarket_mach_v1_9.strike_price = {}

-- Size: Strike Price
miax_miaxoptions_topofmarket_mach_v1_9.strike_price.size = 4

-- Display: Strike Price
miax_miaxoptions_topofmarket_mach_v1_9.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_miaxoptions_topofmarket_mach_v1_9.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_miaxoptions_topofmarket_mach_v1_9.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_topofmarket_mach_v1_9.strike_price.translate(raw)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_miaxoptions_topofmarket_mach_v1_9.expiration_date = {}

-- Size: Expiration Date
miax_miaxoptions_topofmarket_mach_v1_9.expiration_date.size = 8

-- Display: Expiration Date
miax_miaxoptions_topofmarket_mach_v1_9.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_miaxoptions_topofmarket_mach_v1_9.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v1_9.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Security Symbol
miax_miaxoptions_topofmarket_mach_v1_9.security_symbol = {}

-- Size: Security Symbol
miax_miaxoptions_topofmarket_mach_v1_9.security_symbol.size = 6

-- Display: Security Symbol
miax_miaxoptions_topofmarket_mach_v1_9.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_miaxoptions_topofmarket_mach_v1_9.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_topofmarket_mach_v1_9.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Product Add Update Time
miax_miaxoptions_topofmarket_mach_v1_9.product_add_update_time = {}

-- Size: Product Add Update Time
miax_miaxoptions_topofmarket_mach_v1_9.product_add_update_time.size = 4

-- Display: Product Add Update Time
miax_miaxoptions_topofmarket_mach_v1_9.product_add_update_time.display = function(value)
  return "Product Add Update Time: "..value
end

-- Dissect: Product Add Update Time
miax_miaxoptions_topofmarket_mach_v1_9.product_add_update_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.product_add_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.product_add_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.product_add_update_time, range, value, display)

  return offset + length, value
end

-- Series Update
miax_miaxoptions_topofmarket_mach_v1_9.series_update = {}

-- Size: Series Update
miax_miaxoptions_topofmarket_mach_v1_9.series_update.size =
  miax_miaxoptions_topofmarket_mach_v1_9.product_add_update_time.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.product_id.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.security_symbol.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.expiration_date.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.strike_price.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.call_or_put.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.opening_time.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.closing_time.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.restricted_option.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.long_term_option.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.active_on_miax.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.miax_bbo_posting_increment_indicator.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.liquidity_acceptance_increment_indicator.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.opening_underlying_market_code.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width.size + 
  miax_miaxoptions_topofmarket_mach_v1_9.reserved_8.size

-- Display: Series Update
miax_miaxoptions_topofmarket_mach_v1_9.series_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Update
miax_miaxoptions_topofmarket_mach_v1_9.series_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: NanoTime
  index, product_add_update_time = miax_miaxoptions_topofmarket_mach_v1_9.product_add_update_time.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_topofmarket_mach_v1_9.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_topofmarket_mach_v1_9.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_miaxoptions_topofmarket_mach_v1_9.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_miaxoptions_topofmarket_mach_v1_9.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_miaxoptions_topofmarket_mach_v1_9.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_miaxoptions_topofmarket_mach_v1_9.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_miaxoptions_topofmarket_mach_v1_9.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_miaxoptions_topofmarket_mach_v1_9.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_miaxoptions_topofmarket_mach_v1_9.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_miaxoptions_topofmarket_mach_v1_9.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_miaxoptions_topofmarket_mach_v1_9.active_on_miax.dissect(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: Alphanumeric
  index, miax_bbo_posting_increment_indicator = miax_miaxoptions_topofmarket_mach_v1_9.miax_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_miaxoptions_topofmarket_mach_v1_9.liquidity_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_miaxoptions_topofmarket_mach_v1_9.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Priority Quote Width: BinaryPrc4U
  index, priority_quote_width = miax_miaxoptions_topofmarket_mach_v1_9.priority_quote_width.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_miaxoptions_topofmarket_mach_v1_9.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Update
miax_miaxoptions_topofmarket_mach_v1_9.series_update.dissect = function(buffer, offset, packet, parent)
  if show.series_update then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.series_update, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.series_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.series_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.series_update.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_miaxoptions_topofmarket_mach_v1_9.system_time_message = {}

-- Size: System Time Message
miax_miaxoptions_topofmarket_mach_v1_9.system_time_message.size =
  miax_miaxoptions_topofmarket_mach_v1_9.timestamp.size

-- Display: System Time Message
miax_miaxoptions_topofmarket_mach_v1_9.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_miaxoptions_topofmarket_mach_v1_9.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_topofmarket_mach_v1_9.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
miax_miaxoptions_topofmarket_mach_v1_9.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.system_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.system_time_message, buffer(offset, 0))
    local index = miax_miaxoptions_topofmarket_mach_v1_9.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_topofmarket_mach_v1_9.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_miaxoptions_topofmarket_mach_v1_9.data = {}

-- Calculate runtime size of: Data
miax_miaxoptions_topofmarket_mach_v1_9.data.size = function(buffer, offset, message_type)
  -- Size of System Time Message
  if message_type == "1" then
    return miax_miaxoptions_topofmarket_mach_v1_9.system_time_message.size(buffer, offset)
  end
  -- Size of Series Update
  if message_type == "P" then
    return miax_miaxoptions_topofmarket_mach_v1_9.series_update.size(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "S" then
    return miax_miaxoptions_topofmarket_mach_v1_9.system_state_message.size(buffer, offset)
  end
  -- Size of Top Of Market Bid Compact Message
  if message_type == "B" then
    return miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message.size(buffer, offset)
  end
  -- Size of Top Of Market Offer Compact Message
  if message_type == "O" then
    return miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message.size(buffer, offset)
  end
  -- Size of Wide Top Of Market Bid Message
  if message_type == "W" then
    return miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message.size(buffer, offset)
  end
  -- Size of Wide Top Of Market Offer Message
  if message_type == "A" then
    return miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message.size(buffer, offset)
  end
  -- Size of Double Sided Top Of Market Compact Message
  if message_type == "d" then
    return miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message.size(buffer, offset)
  end
  -- Size of Wide Double Sided Top Of Market Message
  if message_type == "D" then
    return miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "T" then
    return miax_miaxoptions_topofmarket_mach_v1_9.trade_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Message
  if message_type == "X" then
    return miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message.size(buffer, offset)
  end
  -- Size of Underlying Trading Status Message
  if message_type == "H" then
    return miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_miaxoptions_topofmarket_mach_v1_9.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_miaxoptions_topofmarket_mach_v1_9.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == "1" then
    return miax_miaxoptions_topofmarket_mach_v1_9.system_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Update
  if message_type == "P" then
    return miax_miaxoptions_topofmarket_mach_v1_9.series_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "S" then
    return miax_miaxoptions_topofmarket_mach_v1_9.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Market Bid Compact Message
  if message_type == "B" then
    return miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_bid_compact_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Market Offer Compact Message
  if message_type == "O" then
    return miax_miaxoptions_topofmarket_mach_v1_9.top_of_market_offer_compact_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top Of Market Bid Message
  if message_type == "W" then
    return miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_bid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wide Top Of Market Offer Message
  if message_type == "A" then
    return miax_miaxoptions_topofmarket_mach_v1_9.wide_top_of_market_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Double Sided Top Of Market Compact Message
  if message_type == "d" then
    return miax_miaxoptions_topofmarket_mach_v1_9.double_sided_top_of_market_compact_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wide Double Sided Top Of Market Message
  if message_type == "D" then
    return miax_miaxoptions_topofmarket_mach_v1_9.wide_double_sided_top_of_market_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "T" then
    return miax_miaxoptions_topofmarket_mach_v1_9.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "X" then
    return miax_miaxoptions_topofmarket_mach_v1_9.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Message
  if message_type == "H" then
    return miax_miaxoptions_topofmarket_mach_v1_9.underlying_trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_miaxoptions_topofmarket_mach_v1_9.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_miaxoptions_topofmarket_mach_v1_9.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_miaxoptions_topofmarket_mach_v1_9.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.data.display(buffer, packet, parent)
  local element = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.data, range, display)

  return miax_miaxoptions_topofmarket_mach_v1_9.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
miax_miaxoptions_topofmarket_mach_v1_9.message_type = {}

-- Size: Message Type
miax_miaxoptions_topofmarket_mach_v1_9.message_type.size = 1

-- Display: Message Type
miax_miaxoptions_topofmarket_mach_v1_9.message_type.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Application Message
miax_miaxoptions_topofmarket_mach_v1_9.application_message = {}

-- Read runtime size of: Application Message
miax_miaxoptions_topofmarket_mach_v1_9.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_miaxoptions_topofmarket_mach_v1_9.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_miaxoptions_topofmarket_mach_v1_9.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index, message_type = miax_miaxoptions_topofmarket_mach_v1_9.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  index = miax_miaxoptions_topofmarket_mach_v1_9.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_miaxoptions_topofmarket_mach_v1_9.application_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_miaxoptions_topofmarket_mach_v1_9.application_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.application_message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.application_message, range, display)
  end

  miax_miaxoptions_topofmarket_mach_v1_9.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Payload
miax_miaxoptions_topofmarket_mach_v1_9.payload = {}

-- Calculate runtime size of: Payload
miax_miaxoptions_topofmarket_mach_v1_9.payload.size = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_miaxoptions_topofmarket_mach_v1_9.application_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_miaxoptions_topofmarket_mach_v1_9.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_miaxoptions_topofmarket_mach_v1_9.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_miaxoptions_topofmarket_mach_v1_9.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_miaxoptions_topofmarket_mach_v1_9.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_miaxoptions_topofmarket_mach_v1_9.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_miaxoptions_topofmarket_mach_v1_9.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_miaxoptions_topofmarket_mach_v1_9.payload.display(buffer, packet, parent)
  local element = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.payload, range, display)

  return miax_miaxoptions_topofmarket_mach_v1_9.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Session Number
miax_miaxoptions_topofmarket_mach_v1_9.session_number = {}

-- Size: Session Number
miax_miaxoptions_topofmarket_mach_v1_9.session_number.size = 1

-- Display: Session Number
miax_miaxoptions_topofmarket_mach_v1_9.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_miaxoptions_topofmarket_mach_v1_9.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.session_number, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_miaxoptions_topofmarket_mach_v1_9.packet_type = {}

-- Size: Packet Type
miax_miaxoptions_topofmarket_mach_v1_9.packet_type.size = 1

-- Display: Packet Type
miax_miaxoptions_topofmarket_mach_v1_9.packet_type.display = function(value)
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
miax_miaxoptions_topofmarket_mach_v1_9.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_miaxoptions_topofmarket_mach_v1_9.packet_length = {}

-- Size: Packet Length
miax_miaxoptions_topofmarket_mach_v1_9.packet_length.size = 2

-- Display: Packet Length
miax_miaxoptions_topofmarket_mach_v1_9.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_miaxoptions_topofmarket_mach_v1_9.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_miaxoptions_topofmarket_mach_v1_9.sequence_number = {}

-- Size: Sequence Number
miax_miaxoptions_topofmarket_mach_v1_9.sequence_number.size = 8

-- Display: Sequence Number
miax_miaxoptions_topofmarket_mach_v1_9.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_miaxoptions_topofmarket_mach_v1_9.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_topofmarket_mach_v1_9.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_topofmarket_mach_v1_9.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message
miax_miaxoptions_topofmarket_mach_v1_9.message = {}

-- Calculate size of: Message
miax_miaxoptions_topofmarket_mach_v1_9.message.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_topofmarket_mach_v1_9.sequence_number.size

  index = index + miax_miaxoptions_topofmarket_mach_v1_9.packet_length.size

  index = index + miax_miaxoptions_topofmarket_mach_v1_9.packet_type.size

  index = index + miax_miaxoptions_topofmarket_mach_v1_9.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_miaxoptions_topofmarket_mach_v1_9.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_miaxoptions_topofmarket_mach_v1_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_miaxoptions_topofmarket_mach_v1_9.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_miaxoptions_topofmarket_mach_v1_9.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_miaxoptions_topofmarket_mach_v1_9.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_miaxoptions_topofmarket_mach_v1_9.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_miaxoptions_topofmarket_mach_v1_9.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_miaxoptions_topofmarket_mach_v1_9.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_miaxoptions_topofmarket_mach_v1_9.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_miaxoptions_topofmarket_mach_v1_9.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_topofmarket_mach_v1_9.message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9.fields.message, range, display)
  end

  return miax_miaxoptions_topofmarket_mach_v1_9.message.fields(buffer, offset, packet, parent)
end

-- Packet
miax_miaxoptions_topofmarket_mach_v1_9.packet = {}

-- Dissect Packet
miax_miaxoptions_topofmarket_mach_v1_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_miaxoptions_topofmarket_mach_v1_9.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_miaxoptions_topofmarket_mach_v1_9.init()
end

-- Dissector for Miax MiaxOptions TopOfMarket Mach 1.9
function omi_miax_miaxoptions_topofmarket_mach_v1_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_miaxoptions_topofmarket_mach_v1_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_miaxoptions_topofmarket_mach_v1_9, buffer(), omi_miax_miaxoptions_topofmarket_mach_v1_9.description, "("..buffer:len().." Bytes)")
  return miax_miaxoptions_topofmarket_mach_v1_9.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_miax_miaxoptions_topofmarket_mach_v1_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
miax_miaxoptions_topofmarket_mach_v1_9.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Miax MiaxOptions TopOfMarket Mach 1.9
local function omi_miax_miaxoptions_topofmarket_mach_v1_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_topofmarket_mach_v1_9.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_topofmarket_mach_v1_9
  omi_miax_miaxoptions_topofmarket_mach_v1_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax MiaxOptions TopOfMarket Mach 1.9
omi_miax_miaxoptions_topofmarket_mach_v1_9:register_heuristic("udp", omi_miax_miaxoptions_topofmarket_mach_v1_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
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
