-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax MiaxOptions ComplexTopOfMarket Mach 1.3 Protocol
local omi_miax_miaxoptions_complextopofmarket_mach_v1_3 = Proto("Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.3.Lua", "Miax MiaxOptions ComplexTopOfMarket Mach 1.3")

-- Protocol table
local miax_miaxoptions_complextopofmarket_mach_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax MiaxOptions ComplexTopOfMarket Mach 1.3 Fields
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.miaxoptions.complextopofmarket.mach.v1.3.activeonmiax", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.application_message = ProtoField.new("Application Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.applicationmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_condition = ProtoField.new("Bid Condition", "miax.miaxoptions.complextopofmarket.mach.v1.3.bidcondition", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_price_2 = ProtoField.new("Bid Price 2", "miax.miaxoptions.complextopofmarket.mach.v1.3.bidprice2", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_price_8 = ProtoField.new("Bid Price 8", "miax.miaxoptions.complextopofmarket.mach.v1.3.bidprice8", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_priority_customer_size_2 = ProtoField.new("Bid Priority Customer Size 2", "miax.miaxoptions.complextopofmarket.mach.v1.3.bidprioritycustomersize2", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_priority_customer_size_4 = ProtoField.new("Bid Priority Customer Size 4", "miax.miaxoptions.complextopofmarket.mach.v1.3.bidprioritycustomersize4", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_size_2 = ProtoField.new("Bid Size 2", "miax.miaxoptions.complextopofmarket.mach.v1.3.bidsize2", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_size_4 = ProtoField.new("Bid Size 4", "miax.miaxoptions.complextopofmarket.mach.v1.3.bidsize4", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.call_or_put = ProtoField.new("Call Or Put", "miax.miaxoptions.complextopofmarket.mach.v1.3.callorput", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.closing_time = ProtoField.new("Closing Time", "miax.miaxoptions.complextopofmarket.mach.v1.3.closingtime", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.data = ProtoField.new("Data", "miax.miaxoptions.complextopofmarket.mach.v1.3.data", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.event_reason = ProtoField.new("Event Reason", "miax.miaxoptions.complextopofmarket.mach.v1.3.eventreason", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.expected_event_time_nano_seconds = ProtoField.new("Expected Event Time Nano Seconds", "miax.miaxoptions.complextopofmarket.mach.v1.3.expectedeventtimenanoseconds", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.expected_event_time_seconds = ProtoField.new("Expected Event Time Seconds", "miax.miaxoptions.complextopofmarket.mach.v1.3.expectedeventtimeseconds", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.expiration_date = ProtoField.new("Expiration Date", "miax.miaxoptions.complextopofmarket.mach.v1.3.expirationdate", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.leg_definition_0 = ProtoField.new("Leg Definition 0", "miax.miaxoptions.complextopofmarket.mach.v1.3.legdefinition0", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.miaxoptions.complextopofmarket.mach.v1.3.liquidityacceptanceincrementindicator", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.long_term_option = ProtoField.new("Long Term Option", "miax.miaxoptions.complextopofmarket.mach.v1.3.longtermoption", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.message = ProtoField.new("Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.message", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.message_type = ProtoField.new("Message Type", "miax.miaxoptions.complextopofmarket.mach.v1.3.messagetype", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.miaxoptions.complextopofmarket.mach.v1.3.miaxbbopostingincrementindicator", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.net_price = ProtoField.new("Net Price", "miax.miaxoptions.complextopofmarket.mach.v1.3.netprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.notification_time = ProtoField.new("Notification Time", "miax.miaxoptions.complextopofmarket.mach.v1.3.notificationtime", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.miaxoptions.complextopofmarket.mach.v1.3.numberoflegs", ftypes.UINT8)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_condition = ProtoField.new("Offer Condition", "miax.miaxoptions.complextopofmarket.mach.v1.3.offercondition", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_price_2 = ProtoField.new("Offer Price 2", "miax.miaxoptions.complextopofmarket.mach.v1.3.offerprice2", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_price_8 = ProtoField.new("Offer Price 8", "miax.miaxoptions.complextopofmarket.mach.v1.3.offerprice8", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_priority_customer_size_2 = ProtoField.new("Offer Priority Customer Size 2", "miax.miaxoptions.complextopofmarket.mach.v1.3.offerprioritycustomersize2", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_priority_customer_size_4 = ProtoField.new("Offer Priority Customer Size 4", "miax.miaxoptions.complextopofmarket.mach.v1.3.offerprioritycustomersize4", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_size_2 = ProtoField.new("Offer Size 2", "miax.miaxoptions.complextopofmarket.mach.v1.3.offersize2", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_size_4 = ProtoField.new("Offer Size 4", "miax.miaxoptions.complextopofmarket.mach.v1.3.offersize4", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.opening_time = ProtoField.new("Opening Time", "miax.miaxoptions.complextopofmarket.mach.v1.3.openingtime", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.miaxoptions.complextopofmarket.mach.v1.3.openingunderlyingmarketcode", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.packet = ProtoField.new("Packet", "miax.miaxoptions.complextopofmarket.mach.v1.3.packet", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.packet_length = ProtoField.new("Packet Length", "miax.miaxoptions.complextopofmarket.mach.v1.3.packetlength", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.packet_type = ProtoField.new("Packet Type", "miax.miaxoptions.complextopofmarket.mach.v1.3.packettype", ftypes.UINT8)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.payload = ProtoField.new("Payload", "miax.miaxoptions.complextopofmarket.mach.v1.3.payload", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.price_2 = ProtoField.new("Price 2", "miax.miaxoptions.complextopofmarket.mach.v1.3.price2", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.price_8 = ProtoField.new("Price 8", "miax.miaxoptions.complextopofmarket.mach.v1.3.price8", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.priority_customer_size_2 = ProtoField.new("Priority Customer Size 2", "miax.miaxoptions.complextopofmarket.mach.v1.3.prioritycustomersize2", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.priority_customer_size_4 = ProtoField.new("Priority Customer Size 4", "miax.miaxoptions.complextopofmarket.mach.v1.3.prioritycustomersize4", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.miaxoptions.complextopofmarket.mach.v1.3.priorityquotewidth", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.miaxoptions.complextopofmarket.mach.v1.3.productaddupdatetime", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.product_id = ProtoField.new("Product Id", "miax.miaxoptions.complextopofmarket.mach.v1.3.productid", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.miaxoptions.complextopofmarket.mach.v1.3.reserved1", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.miaxoptions.complextopofmarket.mach.v1.3.reserved10", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.miaxoptions.complextopofmarket.mach.v1.3.reserved16", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.miaxoptions.complextopofmarket.mach.v1.3.reserved8", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.restricted_option = ProtoField.new("Restricted Option", "miax.miaxoptions.complextopofmarket.mach.v1.3.restrictedoption", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.security_symbol = ProtoField.new("Security Symbol", "miax.miaxoptions.complextopofmarket.mach.v1.3.securitysymbol", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "miax.miaxoptions.complextopofmarket.mach.v1.3.sequencenumber", ftypes.UINT64)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.session_id = ProtoField.new("Session Id", "miax.miaxoptions.complextopofmarket.mach.v1.3.sessionid", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.session_number = ProtoField.new("Session Number", "miax.miaxoptions.complextopofmarket.mach.v1.3.sessionnumber", ftypes.UINT8)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.size_2 = ProtoField.new("Size 2", "miax.miaxoptions.complextopofmarket.mach.v1.3.size2", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.size_4 = ProtoField.new("Size 4", "miax.miaxoptions.complextopofmarket.mach.v1.3.size4", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.strategy_add_time = ProtoField.new("Strategy Add Time", "miax.miaxoptions.complextopofmarket.mach.v1.3.strategyaddtime", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.strategy_id = ProtoField.new("Strategy Id", "miax.miaxoptions.complextopofmarket.mach.v1.3.strategyid", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.strike_price = ProtoField.new("Strike Price", "miax.miaxoptions.complextopofmarket.mach.v1.3.strikeprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.system_status = ProtoField.new("System Status", "miax.miaxoptions.complextopofmarket.mach.v1.3.systemstatus", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.timestamp = ProtoField.new("Timestamp", "miax.miaxoptions.complextopofmarket.mach.v1.3.timestamp", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.top_of_market_quote_condition = ProtoField.new("Top Of Market Quote Condition", "miax.miaxoptions.complextopofmarket.mach.v1.3.topofmarketquotecondition", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.trade_condition = ProtoField.new("Trade Condition", "miax.miaxoptions.complextopofmarket.mach.v1.3.tradecondition", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.trade_id = ProtoField.new("Trade Id", "miax.miaxoptions.complextopofmarket.mach.v1.3.tradeid", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.trade_size = ProtoField.new("Trade Size", "miax.miaxoptions.complextopofmarket.mach.v1.3.tradesize", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.trading_status = ProtoField.new("Trading Status", "miax.miaxoptions.complextopofmarket.mach.v1.3.tradingstatus", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.miaxoptions.complextopofmarket.mach.v1.3.underlyingsymbol", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.update_reason = ProtoField.new("Update Reason", "miax.miaxoptions.complextopofmarket.mach.v1.3.updatereason", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.version = ProtoField.new("Version", "miax.miaxoptions.complextopofmarket.mach.v1.3.version", ftypes.STRING)

-- Miax MiaxOptions ComplexTopOfMarket Mach 1.3 messages
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_double_sided_top_of_market_compact_message = ProtoField.new("Complex Double Sided Top Of Market Compact Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.complexdoublesidedtopofmarketcompactmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_double_sided_top_of_market_wide_message = ProtoField.new("Complex Double Sided Top Of Market Wide Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.complexdoublesidedtopofmarketwidemessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_strategy_definition_message = ProtoField.new("Complex Strategy Definition Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.complexstrategydefinitionmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_top_of_market_bid_compact_message = ProtoField.new("Complex Top Of Market Bid Compact Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.complextopofmarketbidcompactmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_top_of_market_bid_wide_message = ProtoField.new("Complex Top Of Market Bid Wide Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.complextopofmarketbidwidemessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_top_of_market_offer_compact_message = ProtoField.new("Complex Top Of Market Offer Compact Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.complextopofmarketoffercompactmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_top_of_market_offer_wide_message = ProtoField.new("Complex Top Of Market Offer Wide Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.complextopofmarketofferwidemessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.simple_series_update_message = ProtoField.new("Simple Series Update Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.simpleseriesupdatemessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.strategy_last_sale_message = ProtoField.new("Strategy Last Sale Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.strategylastsalemessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.system_state_message = ProtoField.new("System State Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.systemstatemessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.system_time_message = ProtoField.new("System Time Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.systemtimemessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.underlying_trading_status_notification_message = ProtoField.new("Underlying Trading Status Notification Message", "miax.miaxoptions.complextopofmarket.mach.v1.3.underlyingtradingstatusnotificationmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax MiaxOptions ComplexTopOfMarket Mach 1.3 Element Dissection Options
show.application_message = true
show.complex_double_sided_top_of_market_compact_message = true
show.complex_double_sided_top_of_market_wide_message = true
show.complex_strategy_definition_message = true
show.complex_top_of_market_bid_compact_message = true
show.complex_top_of_market_bid_wide_message = true
show.complex_top_of_market_offer_compact_message = true
show.complex_top_of_market_offer_wide_message = true
show.message = true
show.packet = true
show.simple_series_update_message = true
show.strategy_last_sale_message = true
show.system_state_message = true
show.system_time_message = true
show.underlying_trading_status_notification_message = true
show.data = false
show.payload = false

-- Register Miax MiaxOptions ComplexTopOfMarket Mach 1.3 Show Options
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_double_sided_top_of_market_compact_message = Pref.bool("Show Complex Double Sided Top Of Market Compact Message", show.complex_double_sided_top_of_market_compact_message, "Parse and add Complex Double Sided Top Of Market Compact Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_double_sided_top_of_market_wide_message = Pref.bool("Show Complex Double Sided Top Of Market Wide Message", show.complex_double_sided_top_of_market_wide_message, "Parse and add Complex Double Sided Top Of Market Wide Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_strategy_definition_message = Pref.bool("Show Complex Strategy Definition Message", show.complex_strategy_definition_message, "Parse and add Complex Strategy Definition Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_bid_compact_message = Pref.bool("Show Complex Top Of Market Bid Compact Message", show.complex_top_of_market_bid_compact_message, "Parse and add Complex Top Of Market Bid Compact Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_bid_wide_message = Pref.bool("Show Complex Top Of Market Bid Wide Message", show.complex_top_of_market_bid_wide_message, "Parse and add Complex Top Of Market Bid Wide Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_offer_compact_message = Pref.bool("Show Complex Top Of Market Offer Compact Message", show.complex_top_of_market_offer_compact_message, "Parse and add Complex Top Of Market Offer Compact Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_offer_wide_message = Pref.bool("Show Complex Top Of Market Offer Wide Message", show.complex_top_of_market_offer_wide_message, "Parse and add Complex Top Of Market Offer Wide Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_simple_series_update_message = Pref.bool("Show Simple Series Update Message", show.simple_series_update_message, "Parse and add Simple Series Update Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_strategy_last_sale_message = Pref.bool("Show Strategy Last Sale Message", show.strategy_last_sale_message, "Parse and add Strategy Last Sale Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_underlying_trading_status_notification_message = Pref.bool("Show Underlying Trading Status Notification Message", show.underlying_trading_status_notification_message, "Parse and add Underlying Trading Status Notification Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_application_message then
    show.application_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_application_message
    changed = true
  end
  if show.complex_double_sided_top_of_market_compact_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_double_sided_top_of_market_compact_message then
    show.complex_double_sided_top_of_market_compact_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_double_sided_top_of_market_compact_message
    changed = true
  end
  if show.complex_double_sided_top_of_market_wide_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_double_sided_top_of_market_wide_message then
    show.complex_double_sided_top_of_market_wide_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_double_sided_top_of_market_wide_message
    changed = true
  end
  if show.complex_strategy_definition_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_strategy_definition_message then
    show.complex_strategy_definition_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_strategy_definition_message
    changed = true
  end
  if show.complex_top_of_market_bid_compact_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_bid_compact_message then
    show.complex_top_of_market_bid_compact_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_bid_compact_message
    changed = true
  end
  if show.complex_top_of_market_bid_wide_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_bid_wide_message then
    show.complex_top_of_market_bid_wide_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_bid_wide_message
    changed = true
  end
  if show.complex_top_of_market_offer_compact_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_offer_compact_message then
    show.complex_top_of_market_offer_compact_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_offer_compact_message
    changed = true
  end
  if show.complex_top_of_market_offer_wide_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_offer_wide_message then
    show.complex_top_of_market_offer_wide_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_complex_top_of_market_offer_wide_message
    changed = true
  end
  if show.message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_message then
    show.message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_packet then
    show.packet = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_packet
    changed = true
  end
  if show.simple_series_update_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_simple_series_update_message then
    show.simple_series_update_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_simple_series_update_message
    changed = true
  end
  if show.strategy_last_sale_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_strategy_last_sale_message then
    show.strategy_last_sale_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_strategy_last_sale_message
    changed = true
  end
  if show.system_state_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_system_state_message then
    show.system_state_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_system_time_message then
    show.system_time_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_system_time_message
    changed = true
  end
  if show.underlying_trading_status_notification_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_underlying_trading_status_notification_message then
    show.underlying_trading_status_notification_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_underlying_trading_status_notification_message
    changed = true
  end
  if show.data ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_data then
    show.data = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_payload then
    show.payload = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.prefs.show_payload
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
-- Dissect Miax MiaxOptions ComplexTopOfMarket Mach 1.3
-----------------------------------------------------------------------

-- Expected Event Time Nano Seconds
miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_nano_seconds = {}

-- Size: Expected Event Time Nano Seconds
miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_nano_seconds.size = 4

-- Display: Expected Event Time Nano Seconds
miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_nano_seconds.display = function(value)
  return "Expected Event Time Nano Seconds: "..value
end

-- Dissect: Expected Event Time Nano Seconds
miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_nano_seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_nano_seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_nano_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.expected_event_time_nano_seconds, range, value, display)

  return offset + length, value
end

-- Expected Event Time Seconds
miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_seconds = {}

-- Size: Expected Event Time Seconds
miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_seconds.size = 4

-- Display: Expected Event Time Seconds
miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_seconds.display = function(value)
  return "Expected Event Time Seconds: "..value
end

-- Dissect: Expected Event Time Seconds
miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.expected_event_time_seconds, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_miaxoptions_complextopofmarket_mach_v1_3.event_reason = {}

-- Size: Event Reason
miax_miaxoptions_complextopofmarket_mach_v1_3.event_reason.size = 1

-- Display: Event Reason
miax_miaxoptions_complextopofmarket_mach_v1_3.event_reason.display = function(value)
  if value == "A" then
    return "Event Reason: Automatic (A)"
  end
  if value == "M" then
    return "Event Reason: Manual (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_miaxoptions_complextopofmarket_mach_v1_3.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_miaxoptions_complextopofmarket_mach_v1_3.trading_status = {}

-- Size: Trading Status
miax_miaxoptions_complextopofmarket_mach_v1_3.trading_status.size = 1

-- Display: Trading Status
miax_miaxoptions_complextopofmarket_mach_v1_3.trading_status.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol = {}

-- Size: Underlying Symbol
miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp = {}

-- Size: Timestamp
miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size = 4

-- Display: Timestamp
miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Underlying Trading Status Notification Message
miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message = {}

-- Size: Underlying Trading Status Notification Message
miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.trading_status.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.event_reason.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_seconds.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_nano_seconds.size

-- Display: Underlying Trading Status Notification Message
miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification Message
miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_miaxoptions_complextopofmarket_mach_v1_3.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_miaxoptions_complextopofmarket_mach_v1_3.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time Seconds: SecTime
  index, expected_event_time_seconds = miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_seconds.dissect(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds: BinaryU
  index, expected_event_time_nano_seconds = miax_miaxoptions_complextopofmarket_mach_v1_3.expected_event_time_nano_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification Message
miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.underlying_trading_status_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.underlying_trading_status_notification_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 16
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_16 = {}

-- Size: Reserved 16
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_16.size = 16

-- Display: Reserved 16
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_16.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Trade Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_condition = {}

-- Size: Trade Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_condition.size = 1

-- Display: Trade Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_condition.display = function(value)
  if value == "S" then
    return "Trade Condition: Matched (S)"
  end
  if value == "L" then
    return "Trade Condition: Legged (L)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Size
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_size = {}

-- Size: Trade Size
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_size.size = 4

-- Display: Trade Size
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.trade_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Net Price
miax_miaxoptions_complextopofmarket_mach_v1_3.net_price = {}

-- Size: Net Price
miax_miaxoptions_complextopofmarket_mach_v1_3.net_price.size = 8

-- Display: Net Price
miax_miaxoptions_complextopofmarket_mach_v1_3.net_price.display = function(value)
  return "Net Price: "..value
end

-- Translate: Net Price
miax_miaxoptions_complextopofmarket_mach_v1_3.net_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Net Price
miax_miaxoptions_complextopofmarket_mach_v1_3.net_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.net_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_miaxoptions_complextopofmarket_mach_v1_3.net_price.translate(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.net_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.net_price, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_id = {}

-- Size: Trade Id
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_id.size = 4

-- Display: Trade Id
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_miaxoptions_complextopofmarket_mach_v1_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Strategy Id
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id = {}

-- Size: Strategy Id
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size = 4

-- Display: Strategy Id
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strategy Last Sale Message
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message = {}

-- Size: Strategy Last Sale Message
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.trade_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.net_price.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.trade_size.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.trade_condition.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_16.size

-- Display: Strategy Last Sale Message
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Last Sale Message
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_miaxoptions_complextopofmarket_mach_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Net Price: BinaryPrc4S
  index, net_price = miax_miaxoptions_complextopofmarket_mach_v1_3.net_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_miaxoptions_complextopofmarket_mach_v1_3.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_miaxoptions_complextopofmarket_mach_v1_3.trade_condition.dissect(buffer, index, packet, parent)

  -- Reserved 16: Reserved
  index, reserved_16 = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Last Sale Message
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_last_sale_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.strategy_last_sale_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition = {}

-- Size: Offer Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition.size = 1

-- Display: Offer Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_4 = {}

-- Size: Offer Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_4.size = 4

-- Display: Offer Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_4.display = function(value)
  return "Offer Priority Customer Size 4: "..value
end

-- Dissect: Offer Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Offer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_4 = {}

-- Size: Offer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_4.size = 4

-- Display: Offer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_4.display = function(value)
  return "Offer Size 4: "..value
end

-- Dissect: Offer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_size_4, range, value, display)

  return offset + length, value
end

-- Offer Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8 = {}

-- Size: Offer Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8.size = 8

-- Display: Offer Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8.display = function(value)
  return "Offer Price 8: "..value
end

-- Translate: Offer Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Offer Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8.translate(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_price_8, range, value, display)

  return offset + length, value
end

-- Bid Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition = {}

-- Size: Bid Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition.size = 1

-- Display: Bid Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_4 = {}

-- Size: Bid Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_4.size = 4

-- Display: Bid Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_4.display = function(value)
  return "Bid Priority Customer Size 4: "..value
end

-- Dissect: Bid Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Bid Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_4 = {}

-- Size: Bid Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_4.size = 4

-- Display: Bid Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_4.display = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_size_4, range, value, display)

  return offset + length, value
end

-- Bid Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8 = {}

-- Size: Bid Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8.size = 8

-- Display: Bid Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8.display = function(value)
  return "Bid Price 8: "..value
end

-- Translate: Bid Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Bid Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8.translate(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_price_8, range, value, display)

  return offset + length, value
end

-- Complex Double Sided Top Of Market Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message = {}

-- Size: Complex Double Sided Top Of Market Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_4.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_4.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_4.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_4.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition.size

-- Display: Complex Double Sided Top Of Market Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Double Sided Top Of Market Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.dissect(buffer, index, packet, parent)

  -- Bid Price 8: BinaryPrc4S
  index, bid_price_8 = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_8.dissect(buffer, index, packet, parent)

  -- Bid Size 4: BinaryU
  index, bid_size_4 = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_4.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size 4: BinaryU
  index, bid_priority_customer_size_4 = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price 8: BinaryPrc4S
  index, offer_price_8 = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_8.dissect(buffer, index, packet, parent)

  -- Offer Size 4: BinaryU
  index, offer_size_4 = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_4.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size 4: BinaryU
  index, offer_priority_customer_size_4 = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Double Sided Top Of Market Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_double_sided_top_of_market_wide_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_double_sided_top_of_market_wide_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_2 = {}

-- Size: Offer Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_2.size = 2

-- Display: Offer Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_2.display = function(value)
  return "Offer Priority Customer Size 2: "..value
end

-- Dissect: Offer Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Offer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_2 = {}

-- Size: Offer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_2.size = 2

-- Display: Offer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_2.display = function(value)
  return "Offer Size 2: "..value
end

-- Dissect: Offer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_size_2, range, value, display)

  return offset + length, value
end

-- Offer Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2 = {}

-- Size: Offer Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2.size = 2

-- Display: Offer Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2.display = function(value)
  return "Offer Price 2: "..value
end

-- Translate: Offer Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2.translate(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.offer_price_2, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_2 = {}

-- Size: Bid Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_2.size = 2

-- Display: Bid Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_2.display = function(value)
  return "Bid Priority Customer Size 2: "..value
end

-- Dissect: Bid Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Bid Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_2 = {}

-- Size: Bid Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_2.size = 2

-- Display: Bid Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_2.display = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_size_2, range, value, display)

  return offset + length, value
end

-- Bid Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2 = {}

-- Size: Bid Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2.size = 2

-- Display: Bid Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2.display = function(value)
  return "Bid Price 2: "..value
end

-- Translate: Bid Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2.translate(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.bid_price_2, range, value, display)

  return offset + length, value
end

-- Complex Double Sided Top Of Market Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message = {}

-- Size: Complex Double Sided Top Of Market Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition.size

-- Display: Complex Double Sided Top Of Market Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Double Sided Top Of Market Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.dissect(buffer, index, packet, parent)

  -- Bid Price 2: BinaryPrc2S
  index, bid_price_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_price_2.dissect(buffer, index, packet, parent)

  -- Bid Size 2: BinaryU
  index, bid_size_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_size_2.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size 2: BinaryU
  index, bid_priority_customer_size_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_miaxoptions_complextopofmarket_mach_v1_3.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price 2: BinaryPrc2S
  index, offer_price_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_price_2.dissect(buffer, index, packet, parent)

  -- Offer Size 2: BinaryU
  index, offer_size_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_size_2.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size 2: BinaryU
  index, offer_priority_customer_size_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_miaxoptions_complextopofmarket_mach_v1_3.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Double Sided Top Of Market Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_double_sided_top_of_market_compact_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_double_sided_top_of_market_compact_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- Top Of Market Quote Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition = {}

-- Size: Top Of Market Quote Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.size = 1

-- Display: Top Of Market Quote Condition
miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.top_of_market_quote_condition, range, value, display)

  return offset + length, value
end

-- Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4 = {}

-- Size: Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4.size = 4

-- Display: Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4.display = function(value)
  return "Priority Customer Size 4: "..value
end

-- Dissect: Priority Customer Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.priority_customer_size_4, range, value, display)

  return offset + length, value
end

-- Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.size_4 = {}

-- Size: Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.size_4.size = 4

-- Display: Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.size_4.display = function(value)
  return "Size 4: "..value
end

-- Dissect: Size 4
miax_miaxoptions_complextopofmarket_mach_v1_3.size_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.size_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.size_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.size_4, range, value, display)

  return offset + length, value
end

-- Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.price_8 = {}

-- Size: Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.size = 8

-- Display: Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.display = function(value)
  return "Price 8: "..value
end

-- Translate: Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price 8
miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.translate(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.price_8, range, value, display)

  return offset + length, value
end

-- Complex Top Of Market Offer Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message = {}

-- Size: Complex Top Of Market Offer Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.size_4.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.size

-- Display: Complex Top Of Market Offer Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Top Of Market Offer Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.dissect(buffer, index, packet, parent)

  -- Price 8: BinaryPrc4S
  index, price_8 = miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.dissect(buffer, index, packet, parent)

  -- Size 4: BinaryU
  index, size_4 = miax_miaxoptions_complextopofmarket_mach_v1_3.size_4.dissect(buffer, index, packet, parent)

  -- Priority Customer Size 4: BinaryU
  index, priority_customer_size_4 = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: Alphanumeric
  index, top_of_market_quote_condition = miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Offer Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_top_of_market_offer_wide_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_top_of_market_offer_wide_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Top Of Market Bid Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message = {}

-- Size: Complex Top Of Market Bid Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.size_4.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.size

-- Display: Complex Top Of Market Bid Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Top Of Market Bid Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.dissect(buffer, index, packet, parent)

  -- Price 8: BinaryPrc4S
  index, price_8 = miax_miaxoptions_complextopofmarket_mach_v1_3.price_8.dissect(buffer, index, packet, parent)

  -- Size 4: BinaryU
  index, size_4 = miax_miaxoptions_complextopofmarket_mach_v1_3.size_4.dissect(buffer, index, packet, parent)

  -- Priority Customer Size 4: BinaryU
  index, priority_customer_size_4 = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_4.dissect(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: Alphanumeric
  index, top_of_market_quote_condition = miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Bid Wide Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_top_of_market_bid_wide_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_top_of_market_bid_wide_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message.fields(buffer, offset, packet, parent)
  end
end

-- Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2 = {}

-- Size: Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2.size = 2

-- Display: Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2.display = function(value)
  return "Priority Customer Size 2: "..value
end

-- Dissect: Priority Customer Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.priority_customer_size_2, range, value, display)

  return offset + length, value
end

-- Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.size_2 = {}

-- Size: Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.size_2.size = 2

-- Display: Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.size_2.display = function(value)
  return "Size 2: "..value
end

-- Dissect: Size 2
miax_miaxoptions_complextopofmarket_mach_v1_3.size_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.size_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.size_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.size_2, range, value, display)

  return offset + length, value
end

-- Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.price_2 = {}

-- Size: Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.size = 2

-- Display: Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price 2
miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.translate(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.price_2, range, value, display)

  return offset + length, value
end

-- Complex Top Of Market Offer Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message = {}

-- Size: Complex Top Of Market Offer Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.size_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.size

-- Display: Complex Top Of Market Offer Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Top Of Market Offer Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.dissect(buffer, index, packet, parent)

  -- Price 2: BinaryPrc2S
  index, price_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.dissect(buffer, index, packet, parent)

  -- Size 2: BinaryU
  index, size_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.size_2.dissect(buffer, index, packet, parent)

  -- Priority Customer Size 2: BinaryU
  index, priority_customer_size_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: Alphanumeric
  index, top_of_market_quote_condition = miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Offer Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_top_of_market_offer_compact_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_top_of_market_offer_compact_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Top Of Market Bid Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message = {}

-- Size: Complex Top Of Market Bid Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.size_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.size

-- Display: Complex Top Of Market Bid Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Top Of Market Bid Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.dissect(buffer, index, packet, parent)

  -- Price 2: BinaryPrc2S
  index, price_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.price_2.dissect(buffer, index, packet, parent)

  -- Size 2: BinaryU
  index, size_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.size_2.dissect(buffer, index, packet, parent)

  -- Priority Customer Size 2: BinaryU
  index, priority_customer_size_2 = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_customer_size_2.dissect(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: Alphanumeric
  index, top_of_market_quote_condition = miax_miaxoptions_complextopofmarket_mach_v1_3.top_of_market_quote_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Bid Compact Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_top_of_market_bid_compact_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_top_of_market_bid_compact_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message.fields(buffer, offset, packet, parent)
  end
end

-- System Status
miax_miaxoptions_complextopofmarket_mach_v1_3.system_status = {}

-- Size: System Status
miax_miaxoptions_complextopofmarket_mach_v1_3.system_status.size = 1

-- Display: System Status
miax_miaxoptions_complextopofmarket_mach_v1_3.system_status.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.system_status, range, value, display)

  return offset + length, value
end

-- Session Id
miax_miaxoptions_complextopofmarket_mach_v1_3.session_id = {}

-- Size: Session Id
miax_miaxoptions_complextopofmarket_mach_v1_3.session_id.size = 4

-- Display: Session Id
miax_miaxoptions_complextopofmarket_mach_v1_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_miaxoptions_complextopofmarket_mach_v1_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Version
miax_miaxoptions_complextopofmarket_mach_v1_3.version = {}

-- Size: Version
miax_miaxoptions_complextopofmarket_mach_v1_3.version.size = 8

-- Display: Version
miax_miaxoptions_complextopofmarket_mach_v1_3.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
miax_miaxoptions_complextopofmarket_mach_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_miaxoptions_complextopofmarket_mach_v1_3.notification_time = {}

-- Size: Notification Time
miax_miaxoptions_complextopofmarket_mach_v1_3.notification_time.size = 4

-- Display: Notification Time
miax_miaxoptions_complextopofmarket_mach_v1_3.notification_time.display = function(value)
  return "Notification Time: "..value
end

-- Dissect: Notification Time
miax_miaxoptions_complextopofmarket_mach_v1_3.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.notification_time, range, value, display)

  return offset + length, value
end

-- System State Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message = {}

-- Size: System State Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.notification_time.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.version.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.session_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.system_status.size

-- Display: System State Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_complextopofmarket_mach_v1_3.notification_time.dissect(buffer, index, packet, parent)

  -- Version: Alphanumeric
  index, version = miax_miaxoptions_complextopofmarket_mach_v1_3.version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_miaxoptions_complextopofmarket_mach_v1_3.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_miaxoptions_complextopofmarket_mach_v1_3.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.system_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.system_state_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Definition 0
miax_miaxoptions_complextopofmarket_mach_v1_3.leg_definition_0 = {}

-- Size: Leg Definition 0
miax_miaxoptions_complextopofmarket_mach_v1_3.leg_definition_0.size = 0

-- Display: Leg Definition 0
miax_miaxoptions_complextopofmarket_mach_v1_3.leg_definition_0.display = function(value)
  return "Leg Definition 0: "..value
end

-- Dissect: Leg Definition 0
miax_miaxoptions_complextopofmarket_mach_v1_3.leg_definition_0.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.leg_definition_0.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.leg_definition_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.leg_definition_0, range, value, display)

  return offset + length, value
end

-- Number Of Legs
miax_miaxoptions_complextopofmarket_mach_v1_3.number_of_legs = {}

-- Size: Number Of Legs
miax_miaxoptions_complextopofmarket_mach_v1_3.number_of_legs.size = 1

-- Display: Number Of Legs
miax_miaxoptions_complextopofmarket_mach_v1_3.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_miaxoptions_complextopofmarket_mach_v1_3.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Reserved 10
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_10 = {}

-- Size: Reserved 10
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_10.size = 10

-- Display: Reserved 10
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Update Reason
miax_miaxoptions_complextopofmarket_mach_v1_3.update_reason = {}

-- Size: Update Reason
miax_miaxoptions_complextopofmarket_mach_v1_3.update_reason.size = 1

-- Display: Update Reason
miax_miaxoptions_complextopofmarket_mach_v1_3.update_reason.display = function(value)
  if value == "N" then
    return "Update Reason: New Strategy Created (N)"
  end
  if value == "U" then
    return "Update Reason: Updated (U)"
  end

  return "Update Reason: Unknown("..value..")"
end

-- Dissect: Update Reason
miax_miaxoptions_complextopofmarket_mach_v1_3.update_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.update_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.update_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.update_reason, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_1 = {}

-- Size: Reserved 1
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_1.size = 1

-- Display: Reserved 1
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Active On Miax
miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax = {}

-- Size: Active On Miax
miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax.size = 1

-- Display: Active On Miax
miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax.display = function(value)
  if value == "A" then
    return "Active On Miax: Active (A)"
  end
  if value == "I" then
    return "Active On Miax: Inactive (I)"
  end

  return "Active On Miax: Unknown("..value..")"
end

-- Dissect: Active On Miax
miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.active_on_miax, range, value, display)

  return offset + length, value
end

-- Strategy Add Time
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_add_time = {}

-- Size: Strategy Add Time
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_add_time.size = 4

-- Display: Strategy Add Time
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_add_time.display = function(value)
  return "Strategy Add Time: "..value
end

-- Dissect: Strategy Add Time
miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_add_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_add_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_add_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.strategy_add_time, range, value, display)

  return offset + length, value
end

-- Complex Strategy Definition Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message = {}

-- Size: Complex Strategy Definition Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_add_time.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_1.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.update_reason.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_10.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.number_of_legs.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.leg_definition_0.size

-- Display: Complex Strategy Definition Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Definition Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strategy Add Time: NanoTime
  index, strategy_add_time = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_add_time.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax.dissect(buffer, index, packet, parent)

  -- Reserved 1: Reserved
  index, reserved_1 = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Update Reason: Alphanumeric
  index, update_reason = miax_miaxoptions_complextopofmarket_mach_v1_3.update_reason.dissect(buffer, index, packet, parent)

  -- Reserved 10: Reserved
  index, reserved_10 = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_10.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_miaxoptions_complextopofmarket_mach_v1_3.number_of_legs.dissect(buffer, index, packet, parent)

  -- Leg Definition 0: 0 Byte Ascii String
  index, leg_definition_0 = miax_miaxoptions_complextopofmarket_mach_v1_3.leg_definition_0.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Strategy Definition Message
miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_strategy_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.complex_strategy_definition_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 8
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_8 = {}

-- Size: Reserved 8
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_8.size = 8

-- Display: Reserved 8
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Priority Quote Width
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width = {}

-- Size: Priority Quote Width
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width.size = 4

-- Display: Priority Quote Width
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width.display = function(value)
  return "Priority Quote Width: "..value
end

-- Translate: Priority Quote Width
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width.translate = function(raw)
  return raw/10000
end

-- Dissect: Priority Quote Width
miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width.translate(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.priority_quote_width, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_miaxoptions_complextopofmarket_mach_v1_3.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_miaxoptions_complextopofmarket_mach_v1_3.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_miaxoptions_complextopofmarket_mach_v1_3.opening_underlying_market_code.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Liquidity Acceptance Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_3.liquidity_acceptance_increment_indicator = {}

-- Size: Liquidity Acceptance Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.size = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Miax Bbo Posting Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_3.miax_bbo_posting_increment_indicator = {}

-- Size: Miax Bbo Posting Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_3.miax_bbo_posting_increment_indicator.size = 1

-- Display: Miax Bbo Posting Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_3.miax_bbo_posting_increment_indicator.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.miax_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.miax_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.miax_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Long Term Option
miax_miaxoptions_complextopofmarket_mach_v1_3.long_term_option = {}

-- Size: Long Term Option
miax_miaxoptions_complextopofmarket_mach_v1_3.long_term_option.size = 1

-- Display: Long Term Option
miax_miaxoptions_complextopofmarket_mach_v1_3.long_term_option.display = function(value)
  if value == "Y" then
    return "Long Term Option: Yes (Y)"
  end
  if value == "N" then
    return "Long Term Option: No (N)"
  end

  return "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_miaxoptions_complextopofmarket_mach_v1_3.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Restricted Option
miax_miaxoptions_complextopofmarket_mach_v1_3.restricted_option = {}

-- Size: Restricted Option
miax_miaxoptions_complextopofmarket_mach_v1_3.restricted_option.size = 1

-- Display: Restricted Option
miax_miaxoptions_complextopofmarket_mach_v1_3.restricted_option.display = function(value)
  if value == "Y" then
    return "Restricted Option: Yes (Y)"
  end
  if value == "N" then
    return "Restricted Option: No (N)"
  end

  return "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_miaxoptions_complextopofmarket_mach_v1_3.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_miaxoptions_complextopofmarket_mach_v1_3.closing_time = {}

-- Size: Closing Time
miax_miaxoptions_complextopofmarket_mach_v1_3.closing_time.size = 8

-- Display: Closing Time
miax_miaxoptions_complextopofmarket_mach_v1_3.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_miaxoptions_complextopofmarket_mach_v1_3.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_miaxoptions_complextopofmarket_mach_v1_3.opening_time = {}

-- Size: Opening Time
miax_miaxoptions_complextopofmarket_mach_v1_3.opening_time.size = 8

-- Display: Opening Time
miax_miaxoptions_complextopofmarket_mach_v1_3.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_miaxoptions_complextopofmarket_mach_v1_3.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_miaxoptions_complextopofmarket_mach_v1_3.call_or_put = {}

-- Size: Call Or Put
miax_miaxoptions_complextopofmarket_mach_v1_3.call_or_put.size = 1

-- Display: Call Or Put
miax_miaxoptions_complextopofmarket_mach_v1_3.call_or_put.display = function(value)
  if value == "C" then
    return "Call Or Put: Call (C)"
  end
  if value == "P" then
    return "Call Or Put: Put (P)"
  end

  return "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_miaxoptions_complextopofmarket_mach_v1_3.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price = {}

-- Size: Strike Price
miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price.size = 4

-- Display: Strike Price
miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price.translate(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_miaxoptions_complextopofmarket_mach_v1_3.expiration_date = {}

-- Size: Expiration Date
miax_miaxoptions_complextopofmarket_mach_v1_3.expiration_date.size = 8

-- Display: Expiration Date
miax_miaxoptions_complextopofmarket_mach_v1_3.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_miaxoptions_complextopofmarket_mach_v1_3.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Security Symbol
miax_miaxoptions_complextopofmarket_mach_v1_3.security_symbol = {}

-- Size: Security Symbol
miax_miaxoptions_complextopofmarket_mach_v1_3.security_symbol.size = 6

-- Display: Security Symbol
miax_miaxoptions_complextopofmarket_mach_v1_3.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_miaxoptions_complextopofmarket_mach_v1_3.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Product Id
miax_miaxoptions_complextopofmarket_mach_v1_3.product_id = {}

-- Size: Product Id
miax_miaxoptions_complextopofmarket_mach_v1_3.product_id.size = 4

-- Display: Product Id
miax_miaxoptions_complextopofmarket_mach_v1_3.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_miaxoptions_complextopofmarket_mach_v1_3.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.product_id, range, value, display)

  return offset + length, value
end

-- Product Add Update Time
miax_miaxoptions_complextopofmarket_mach_v1_3.product_add_update_time = {}

-- Size: Product Add Update Time
miax_miaxoptions_complextopofmarket_mach_v1_3.product_add_update_time.size = 4

-- Display: Product Add Update Time
miax_miaxoptions_complextopofmarket_mach_v1_3.product_add_update_time.display = function(value)
  return "Product Add Update Time: "..value
end

-- Dissect: Product Add Update Time
miax_miaxoptions_complextopofmarket_mach_v1_3.product_add_update_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.product_add_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.product_add_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.product_add_update_time, range, value, display)

  return offset + length, value
end

-- Simple Series Update Message
miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message = {}

-- Size: Simple Series Update Message
miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.product_add_update_time.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.product_id.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.security_symbol.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.expiration_date.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.call_or_put.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.opening_time.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.closing_time.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.restricted_option.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.long_term_option.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.miax_bbo_posting_increment_indicator.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.opening_underlying_market_code.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width.size + 
  miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_8.size

-- Display: Simple Series Update Message
miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Series Update Message
miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: NanoTime
  index, product_add_update_time = miax_miaxoptions_complextopofmarket_mach_v1_3.product_add_update_time.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_complextopofmarket_mach_v1_3.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_miaxoptions_complextopofmarket_mach_v1_3.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_miaxoptions_complextopofmarket_mach_v1_3.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_miaxoptions_complextopofmarket_mach_v1_3.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_miaxoptions_complextopofmarket_mach_v1_3.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_miaxoptions_complextopofmarket_mach_v1_3.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_miaxoptions_complextopofmarket_mach_v1_3.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_miaxoptions_complextopofmarket_mach_v1_3.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_miaxoptions_complextopofmarket_mach_v1_3.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_miaxoptions_complextopofmarket_mach_v1_3.active_on_miax.dissect(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: Alphanumeric
  index, miax_bbo_posting_increment_indicator = miax_miaxoptions_complextopofmarket_mach_v1_3.miax_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_miaxoptions_complextopofmarket_mach_v1_3.liquidity_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_miaxoptions_complextopofmarket_mach_v1_3.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Priority Quote Width: BinaryPrc4U
  index, priority_quote_width = miax_miaxoptions_complextopofmarket_mach_v1_3.priority_quote_width.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_miaxoptions_complextopofmarket_mach_v1_3.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Series Update Message
miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message.dissect = function(buffer, offset, packet, parent)
  if show.simple_series_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.simple_series_update_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message = {}

-- Size: System Time Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message.size =
  miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.size

-- Display: System Time Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_3.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.system_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.system_time_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_miaxoptions_complextopofmarket_mach_v1_3.data = {}

-- Calculate runtime size of: Data
miax_miaxoptions_complextopofmarket_mach_v1_3.data.size = function(buffer, offset, message_type)
  -- Size of System Time Message
  if message_type == "1" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message.size(buffer, offset)
  end
  -- Size of Simple Series Update Message
  if message_type == "P" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message.size(buffer, offset)
  end
  -- Size of Complex Strategy Definition Message
  if message_type == "C" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message.size(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "S" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message.size(buffer, offset)
  end
  -- Size of Complex Top Of Market Bid Compact Message
  if message_type == "b" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message.size(buffer, offset)
  end
  -- Size of Complex Top Of Market Offer Compact Message
  if message_type == "o" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message.size(buffer, offset)
  end
  -- Size of Complex Top Of Market Bid Wide Message
  if message_type == "e" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message.size(buffer, offset)
  end
  -- Size of Complex Top Of Market Offer Wide Message
  if message_type == "f" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message.size(buffer, offset)
  end
  -- Size of Complex Double Sided Top Of Market Compact Message
  if message_type == "m" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message.size(buffer, offset)
  end
  -- Size of Complex Double Sided Top Of Market Wide Message
  if message_type == "w" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message.size(buffer, offset)
  end
  -- Size of Strategy Last Sale Message
  if message_type == "t" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message.size(buffer, offset)
  end
  -- Size of Underlying Trading Status Notification Message
  if message_type == "H" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message.size(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_miaxoptions_complextopofmarket_mach_v1_3.data.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_miaxoptions_complextopofmarket_mach_v1_3.data.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == "1" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.system_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Series Update Message
  if message_type == "P" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.simple_series_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Definition Message
  if message_type == "C" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_strategy_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "S" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Bid Compact Message
  if message_type == "b" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_compact_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Offer Compact Message
  if message_type == "o" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_compact_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Bid Wide Message
  if message_type == "e" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_bid_wide_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Offer Wide Message
  if message_type == "f" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_top_of_market_offer_wide_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Double Sided Top Of Market Compact Message
  if message_type == "m" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_compact_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Double Sided Top Of Market Wide Message
  if message_type == "w" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.complex_double_sided_top_of_market_wide_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Last Sale Message
  if message_type == "t" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.strategy_last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Notification Message
  if message_type == "H" then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.underlying_trading_status_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_miaxoptions_complextopofmarket_mach_v1_3.data.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.data.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_miaxoptions_complextopofmarket_mach_v1_3.data.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.data.display(buffer, packet, parent)
  local element = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.data, range, display)

  return miax_miaxoptions_complextopofmarket_mach_v1_3.data.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
miax_miaxoptions_complextopofmarket_mach_v1_3.message_type = {}

-- Size: Message Type
miax_miaxoptions_complextopofmarket_mach_v1_3.message_type.size = 1

-- Display: Message Type
miax_miaxoptions_complextopofmarket_mach_v1_3.message_type.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Application Message
miax_miaxoptions_complextopofmarket_mach_v1_3.application_message = {}

-- Read runtime size of: Application Message
miax_miaxoptions_complextopofmarket_mach_v1_3.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_miaxoptions_complextopofmarket_mach_v1_3.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_miaxoptions_complextopofmarket_mach_v1_3.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index, message_type = miax_miaxoptions_complextopofmarket_mach_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  index = miax_miaxoptions_complextopofmarket_mach_v1_3.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_miaxoptions_complextopofmarket_mach_v1_3.application_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_miaxoptions_complextopofmarket_mach_v1_3.application_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.application_message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.application_message, range, display)
  end

  miax_miaxoptions_complextopofmarket_mach_v1_3.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Payload
miax_miaxoptions_complextopofmarket_mach_v1_3.payload = {}

-- Calculate runtime size of: Payload
miax_miaxoptions_complextopofmarket_mach_v1_3.payload.size = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.application_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_miaxoptions_complextopofmarket_mach_v1_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_miaxoptions_complextopofmarket_mach_v1_3.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_miaxoptions_complextopofmarket_mach_v1_3.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_miaxoptions_complextopofmarket_mach_v1_3.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_miaxoptions_complextopofmarket_mach_v1_3.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.payload, range, display)

  return miax_miaxoptions_complextopofmarket_mach_v1_3.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Session Number
miax_miaxoptions_complextopofmarket_mach_v1_3.session_number = {}

-- Size: Session Number
miax_miaxoptions_complextopofmarket_mach_v1_3.session_number.size = 1

-- Display: Session Number
miax_miaxoptions_complextopofmarket_mach_v1_3.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_miaxoptions_complextopofmarket_mach_v1_3.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.session_number, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_miaxoptions_complextopofmarket_mach_v1_3.packet_type = {}

-- Size: Packet Type
miax_miaxoptions_complextopofmarket_mach_v1_3.packet_type.size = 1

-- Display: Packet Type
miax_miaxoptions_complextopofmarket_mach_v1_3.packet_type.display = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_3.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_miaxoptions_complextopofmarket_mach_v1_3.packet_length = {}

-- Size: Packet Length
miax_miaxoptions_complextopofmarket_mach_v1_3.packet_length.size = 2

-- Display: Packet Length
miax_miaxoptions_complextopofmarket_mach_v1_3.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_miaxoptions_complextopofmarket_mach_v1_3.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_miaxoptions_complextopofmarket_mach_v1_3.sequence_number = {}

-- Size: Sequence Number
miax_miaxoptions_complextopofmarket_mach_v1_3.sequence_number.size = 8

-- Display: Sequence Number
miax_miaxoptions_complextopofmarket_mach_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_miaxoptions_complextopofmarket_mach_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message
miax_miaxoptions_complextopofmarket_mach_v1_3.message = {}

-- Calculate size of: Message
miax_miaxoptions_complextopofmarket_mach_v1_3.message.size = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_3.sequence_number.size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_3.packet_length.size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_3.packet_type.size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_3.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_miaxoptions_complextopofmarket_mach_v1_3.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_miaxoptions_complextopofmarket_mach_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_miaxoptions_complextopofmarket_mach_v1_3.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_miaxoptions_complextopofmarket_mach_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_miaxoptions_complextopofmarket_mach_v1_3.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_miaxoptions_complextopofmarket_mach_v1_3.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_miaxoptions_complextopofmarket_mach_v1_3.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_miaxoptions_complextopofmarket_mach_v1_3.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_miaxoptions_complextopofmarket_mach_v1_3.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_miaxoptions_complextopofmarket_mach_v1_3.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_3.message.display(buffer, packet, parent)
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3.fields.message, range, display)
  end

  return miax_miaxoptions_complextopofmarket_mach_v1_3.message.fields(buffer, offset, packet, parent)
end

-- Packet
miax_miaxoptions_complextopofmarket_mach_v1_3.packet = {}

-- Dissect Packet
miax_miaxoptions_complextopofmarket_mach_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_miaxoptions_complextopofmarket_mach_v1_3.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_miaxoptions_complextopofmarket_mach_v1_3.init()
end

-- Dissector for Miax MiaxOptions ComplexTopOfMarket Mach 1.3
function omi_miax_miaxoptions_complextopofmarket_mach_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_miaxoptions_complextopofmarket_mach_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_3, buffer(), omi_miax_miaxoptions_complextopofmarket_mach_v1_3.description, "("..buffer:len().." Bytes)")
  return miax_miaxoptions_complextopofmarket_mach_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_miax_miaxoptions_complextopofmarket_mach_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
miax_miaxoptions_complextopofmarket_mach_v1_3.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Miax MiaxOptions ComplexTopOfMarket Mach 1.3
local function omi_miax_miaxoptions_complextopofmarket_mach_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_miaxoptions_complextopofmarket_mach_v1_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_complextopofmarket_mach_v1_3
  omi_miax_miaxoptions_complextopofmarket_mach_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax MiaxOptions ComplexTopOfMarket Mach 1.3
omi_miax_miaxoptions_complextopofmarket_mach_v1_3:register_heuristic("udp", omi_miax_miaxoptions_complextopofmarket_mach_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
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
