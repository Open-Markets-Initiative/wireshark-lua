-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax MiaxOptions ComplexTopOfMarket Mach 1.1 Protocol
local omi_miax_miaxoptions_complextopofmarket_mach_v1_1 = Proto("Miax.MiaxOptions.ComplexTopOfMarket.Mach.v1.1.Lua", "Miax MiaxOptions ComplexTopOfMarket Mach 1.1")

-- Component Tables
local show = {}
local format = {}
local miax_miaxoptions_complextopofmarket_mach_v1_1_display = {}
local miax_miaxoptions_complextopofmarket_mach_v1_1_dissect = {}
local miax_miaxoptions_complextopofmarket_mach_v1_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax MiaxOptions ComplexTopOfMarket Mach 1.1 Fields
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.active_on_miax = ProtoField.new("Active On Miax", "miax.miaxoptions.complextopofmarket.mach.v1.1.activeonmiax", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.application_message = ProtoField.new("Application Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.applicationmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.bid_condition = ProtoField.new("Bid Condition", "miax.miaxoptions.complextopofmarket.mach.v1.1.bidcondition", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.c_to_m_version = ProtoField.new("C To M Version", "miax.miaxoptions.complextopofmarket.mach.v1.1.ctomversion", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.call_or_put = ProtoField.new("Call Or Put", "miax.miaxoptions.complextopofmarket.mach.v1.1.callorput", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.closing_time = ProtoField.new("Closing Time", "miax.miaxoptions.complextopofmarket.mach.v1.1.closingtime", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_bid = ProtoField.new("Compact Bid", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactbid", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_bid_price = ProtoField.new("Compact Bid Price", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactbidprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_bid_size = ProtoField.new("Compact Bid Size", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactbidsize", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_offer = ProtoField.new("Compact Offer", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactoffer", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_offer_price = ProtoField.new("Compact Offer Price", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactofferprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_offer_size = ProtoField.new("Compact Offer Size", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactoffersize", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_price = ProtoField.new("Compact Price", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_size = ProtoField.new("Compact Size", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactsize", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.data = ProtoField.new("Data", "miax.miaxoptions.complextopofmarket.mach.v1.1.data", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.event_reason = ProtoField.new("Event Reason", "miax.miaxoptions.complextopofmarket.mach.v1.1.eventreason", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.miaxoptions.complextopofmarket.mach.v1.1.expectedeventtimenanosecondspart", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.expiration_date = ProtoField.new("Expiration Date", "miax.miaxoptions.complextopofmarket.mach.v1.1.expirationdate", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.leg_definition = ProtoField.new("Leg Definition", "miax.miaxoptions.complextopofmarket.mach.v1.1.legdefinition", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "miax.miaxoptions.complextopofmarket.mach.v1.1.legratioqty", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.leg_side = ProtoField.new("Leg Side", "miax.miaxoptions.complextopofmarket.mach.v1.1.legside", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.miaxoptions.complextopofmarket.mach.v1.1.liquidityacceptanceincrementindicator", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.long_term_option = ProtoField.new("Long Term Option", "miax.miaxoptions.complextopofmarket.mach.v1.1.longtermoption", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.message = ProtoField.new("Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.message", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.message_type = ProtoField.new("Message Type", "miax.miaxoptions.complextopofmarket.mach.v1.1.messagetype", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.miax_bbo_posting_increment_indicator = ProtoField.new("Miax Bbo Posting Increment Indicator", "miax.miaxoptions.complextopofmarket.mach.v1.1.miaxbbopostingincrementindicator", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.net_price = ProtoField.new("Net Price", "miax.miaxoptions.complextopofmarket.mach.v1.1.netprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.notification_time = ProtoField.new("Notification Time", "miax.miaxoptions.complextopofmarket.mach.v1.1.notificationtime", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.miaxoptions.complextopofmarket.mach.v1.1.numberoflegs", ftypes.UINT8)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.offer_condition = ProtoField.new("Offer Condition", "miax.miaxoptions.complextopofmarket.mach.v1.1.offercondition", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.opening_time = ProtoField.new("Opening Time", "miax.miaxoptions.complextopofmarket.mach.v1.1.openingtime", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.miaxoptions.complextopofmarket.mach.v1.1.openingunderlyingmarketcode", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.packet = ProtoField.new("Packet", "miax.miaxoptions.complextopofmarket.mach.v1.1.packet", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.packet_length = ProtoField.new("Packet Length", "miax.miaxoptions.complextopofmarket.mach.v1.1.packetlength", ftypes.UINT16)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.packet_type = ProtoField.new("Packet Type", "miax.miaxoptions.complextopofmarket.mach.v1.1.packettype", ftypes.UINT8)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.payload = ProtoField.new("Payload", "miax.miaxoptions.complextopofmarket.mach.v1.1.payload", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.priority_quote_width = ProtoField.new("Priority Quote Width", "miax.miaxoptions.complextopofmarket.mach.v1.1.priorityquotewidth", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.miaxoptions.complextopofmarket.mach.v1.1.productaddupdatetime", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.product_id = ProtoField.new("Product Id", "miax.miaxoptions.complextopofmarket.mach.v1.1.productid", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.miaxoptions.complextopofmarket.mach.v1.1.reserved1", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.miaxoptions.complextopofmarket.mach.v1.1.reserved10", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.miaxoptions.complextopofmarket.mach.v1.1.reserved16", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_2 = ProtoField.new("Reserved 2", "miax.miaxoptions.complextopofmarket.mach.v1.1.reserved2", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_4 = ProtoField.new("Reserved 4", "miax.miaxoptions.complextopofmarket.mach.v1.1.reserved4", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.miaxoptions.complextopofmarket.mach.v1.1.reserved8", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.restricted_option = ProtoField.new("Restricted Option", "miax.miaxoptions.complextopofmarket.mach.v1.1.restrictedoption", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.seconds_part = ProtoField.new("Seconds Part", "miax.miaxoptions.complextopofmarket.mach.v1.1.secondspart", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.security_symbol = ProtoField.new("Security Symbol", "miax.miaxoptions.complextopofmarket.mach.v1.1.securitysymbol", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "miax.miaxoptions.complextopofmarket.mach.v1.1.sequencenumber", ftypes.UINT64)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.session_id = ProtoField.new("Session Id", "miax.miaxoptions.complextopofmarket.mach.v1.1.sessionid", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.session_number = ProtoField.new("Session Number", "miax.miaxoptions.complextopofmarket.mach.v1.1.sessionnumber", ftypes.UINT8)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.strategy_add_time = ProtoField.new("Strategy Add Time", "miax.miaxoptions.complextopofmarket.mach.v1.1.strategyaddtime", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.strategy_id = ProtoField.new("Strategy Id", "miax.miaxoptions.complextopofmarket.mach.v1.1.strategyid", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.strike_price = ProtoField.new("Strike Price", "miax.miaxoptions.complextopofmarket.mach.v1.1.strikeprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.system_status = ProtoField.new("System Status", "miax.miaxoptions.complextopofmarket.mach.v1.1.systemstatus", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.timestamp = ProtoField.new("Timestamp", "miax.miaxoptions.complextopofmarket.mach.v1.1.timestamp", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.top_of_market_quote_condition = ProtoField.new("Top Of Market Quote Condition", "miax.miaxoptions.complextopofmarket.mach.v1.1.topofmarketquotecondition", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.trade_condition = ProtoField.new("Trade Condition", "miax.miaxoptions.complextopofmarket.mach.v1.1.tradecondition", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.trade_id = ProtoField.new("Trade Id", "miax.miaxoptions.complextopofmarket.mach.v1.1.tradeid", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.trade_size = ProtoField.new("Trade Size", "miax.miaxoptions.complextopofmarket.mach.v1.1.tradesize", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.trading_status = ProtoField.new("Trading Status", "miax.miaxoptions.complextopofmarket.mach.v1.1.tradingstatus", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.miaxoptions.complextopofmarket.mach.v1.1.underlyingsymbol", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.update_reason = ProtoField.new("Update Reason", "miax.miaxoptions.complextopofmarket.mach.v1.1.updatereason", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_bid = ProtoField.new("Wide Bid", "miax.miaxoptions.complextopofmarket.mach.v1.1.widebid", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_bid_price = ProtoField.new("Wide Bid Price", "miax.miaxoptions.complextopofmarket.mach.v1.1.widebidprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_bid_size = ProtoField.new("Wide Bid Size", "miax.miaxoptions.complextopofmarket.mach.v1.1.widebidsize", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_offer = ProtoField.new("Wide Offer", "miax.miaxoptions.complextopofmarket.mach.v1.1.wideoffer", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_offer_price = ProtoField.new("Wide Offer Price", "miax.miaxoptions.complextopofmarket.mach.v1.1.wideofferprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_offer_size = ProtoField.new("Wide Offer Size", "miax.miaxoptions.complextopofmarket.mach.v1.1.wideoffersize", ftypes.UINT32)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_price = ProtoField.new("Wide Price", "miax.miaxoptions.complextopofmarket.mach.v1.1.wideprice", ftypes.DOUBLE)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_size = ProtoField.new("Wide Size", "miax.miaxoptions.complextopofmarket.mach.v1.1.widesize", ftypes.UINT32)

-- Miax MiaxOptions ComplexTopOfMarket Mach 1.1 messages
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_complex_double_sided_top_of_market_message = ProtoField.new("Compact Complex Double Sided Top Of Market Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactcomplexdoublesidedtopofmarketmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_complex_top_of_market_bid_message = ProtoField.new("Compact Complex Top Of Market Bid Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactcomplextopofmarketbidmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_complex_top_of_market_offer_message = ProtoField.new("Compact Complex Top Of Market Offer Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.compactcomplextopofmarketoffermessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.complex_strategy_definition_message = ProtoField.new("Complex Strategy Definition Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.complexstrategydefinitionmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.series_update = ProtoField.new("Series Update", "miax.miaxoptions.complextopofmarket.mach.v1.1.seriesupdate", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.strategytrademessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.system_state_message = ProtoField.new("System State Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.systemstatemessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.system_time_message = ProtoField.new("System Time Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.systemtimemessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.underlying_trading_status_message = ProtoField.new("Underlying Trading Status Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.underlyingtradingstatusmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_complex_double_sided_top_of_market_message = ProtoField.new("Wide Complex Double Sided Top Of Market Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.widecomplexdoublesidedtopofmarketmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_complex_top_of_market_bid_message = ProtoField.new("Wide Complex Top Of Market Bid Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.widecomplextopofmarketbidmessage", ftypes.STRING)
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_complex_top_of_market_offer_message = ProtoField.new("Wide Complex Top Of Market Offer Message", "miax.miaxoptions.complextopofmarket.mach.v1.1.widecomplextopofmarketoffermessage", ftypes.STRING)

-- Miax MiaxOptions ComplexTopOfMarket Mach 1.1 generated fields
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.leg_definition_index = ProtoField.new("Leg Definition Index", "miax.miaxoptions.complextopofmarket.mach.v1.1.legdefinitionindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax MiaxOptions ComplexTopOfMarket Mach 1.1 Element Dissection Options
show.application_message = true
show.compact_bid = true
show.compact_complex_double_sided_top_of_market_message = true
show.compact_complex_top_of_market_bid_message = true
show.compact_complex_top_of_market_offer_message = true
show.compact_offer = true
show.complex_strategy_definition_message = true
show.leg_definition = true
show.message = true
show.packet = true
show.series_update = true
show.strategy_trade_message = true
show.system_state_message = true
show.system_time_message = true
show.underlying_trading_status_message = true
show.wide_bid = true
show.wide_complex_double_sided_top_of_market_message = true
show.wide_complex_top_of_market_bid_message = true
show.wide_complex_top_of_market_offer_message = true
show.wide_offer = true
show.data = false
show.payload = false

-- Register Miax MiaxOptions ComplexTopOfMarket Mach 1.1 Show Options
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_bid = Pref.bool("Show Compact Bid", show.compact_bid, "Parse and add Compact Bid to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_complex_double_sided_top_of_market_message = Pref.bool("Show Compact Complex Double Sided Top Of Market Message", show.compact_complex_double_sided_top_of_market_message, "Parse and add Compact Complex Double Sided Top Of Market Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_complex_top_of_market_bid_message = Pref.bool("Show Compact Complex Top Of Market Bid Message", show.compact_complex_top_of_market_bid_message, "Parse and add Compact Complex Top Of Market Bid Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_complex_top_of_market_offer_message = Pref.bool("Show Compact Complex Top Of Market Offer Message", show.compact_complex_top_of_market_offer_message, "Parse and add Compact Complex Top Of Market Offer Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_offer = Pref.bool("Show Compact Offer", show.compact_offer, "Parse and add Compact Offer to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_complex_strategy_definition_message = Pref.bool("Show Complex Strategy Definition Message", show.complex_strategy_definition_message, "Parse and add Complex Strategy Definition Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_leg_definition = Pref.bool("Show Leg Definition", show.leg_definition, "Parse and add Leg Definition to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_series_update = Pref.bool("Show Series Update", show.series_update, "Parse and add Series Update to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_strategy_trade_message = Pref.bool("Show Strategy Trade Message", show.strategy_trade_message, "Parse and add Strategy Trade Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_system_state_message = Pref.bool("Show System State Message", show.system_state_message, "Parse and add System State Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_system_time_message = Pref.bool("Show System Time Message", show.system_time_message, "Parse and add System Time Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_underlying_trading_status_message = Pref.bool("Show Underlying Trading Status Message", show.underlying_trading_status_message, "Parse and add Underlying Trading Status Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_bid = Pref.bool("Show Wide Bid", show.wide_bid, "Parse and add Wide Bid to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_complex_double_sided_top_of_market_message = Pref.bool("Show Wide Complex Double Sided Top Of Market Message", show.wide_complex_double_sided_top_of_market_message, "Parse and add Wide Complex Double Sided Top Of Market Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_complex_top_of_market_bid_message = Pref.bool("Show Wide Complex Top Of Market Bid Message", show.wide_complex_top_of_market_bid_message, "Parse and add Wide Complex Top Of Market Bid Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_complex_top_of_market_offer_message = Pref.bool("Show Wide Complex Top Of Market Offer Message", show.wide_complex_top_of_market_offer_message, "Parse and add Wide Complex Top Of Market Offer Message to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_offer = Pref.bool("Show Wide Offer", show.wide_offer, "Parse and add Wide Offer to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_data = Pref.bool("Show Data", show.data, "Parse and add Data to protocol tree")
omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.application_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_application_message then
    show.application_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_application_message
    changed = true
  end
  if show.compact_bid ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_bid then
    show.compact_bid = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_bid
    changed = true
  end
  if show.compact_complex_double_sided_top_of_market_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_complex_double_sided_top_of_market_message then
    show.compact_complex_double_sided_top_of_market_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_complex_double_sided_top_of_market_message
    changed = true
  end
  if show.compact_complex_top_of_market_bid_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_complex_top_of_market_bid_message then
    show.compact_complex_top_of_market_bid_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_complex_top_of_market_bid_message
    changed = true
  end
  if show.compact_complex_top_of_market_offer_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_complex_top_of_market_offer_message then
    show.compact_complex_top_of_market_offer_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_complex_top_of_market_offer_message
    changed = true
  end
  if show.compact_offer ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_offer then
    show.compact_offer = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_compact_offer
    changed = true
  end
  if show.complex_strategy_definition_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_complex_strategy_definition_message then
    show.complex_strategy_definition_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_complex_strategy_definition_message
    changed = true
  end
  if show.leg_definition ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_leg_definition then
    show.leg_definition = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_leg_definition
    changed = true
  end
  if show.message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_message then
    show.message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_packet then
    show.packet = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_packet
    changed = true
  end
  if show.series_update ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_series_update then
    show.series_update = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_series_update
    changed = true
  end
  if show.strategy_trade_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_strategy_trade_message then
    show.strategy_trade_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_strategy_trade_message
    changed = true
  end
  if show.system_state_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_system_state_message then
    show.system_state_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_system_state_message
    changed = true
  end
  if show.system_time_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_system_time_message then
    show.system_time_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_system_time_message
    changed = true
  end
  if show.underlying_trading_status_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_underlying_trading_status_message then
    show.underlying_trading_status_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_underlying_trading_status_message
    changed = true
  end
  if show.wide_bid ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_bid then
    show.wide_bid = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_bid
    changed = true
  end
  if show.wide_complex_double_sided_top_of_market_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_complex_double_sided_top_of_market_message then
    show.wide_complex_double_sided_top_of_market_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_complex_double_sided_top_of_market_message
    changed = true
  end
  if show.wide_complex_top_of_market_bid_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_complex_top_of_market_bid_message then
    show.wide_complex_top_of_market_bid_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_complex_top_of_market_bid_message
    changed = true
  end
  if show.wide_complex_top_of_market_offer_message ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_complex_top_of_market_offer_message then
    show.wide_complex_top_of_market_offer_message = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_complex_top_of_market_offer_message
    changed = true
  end
  if show.wide_offer ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_offer then
    show.wide_offer = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_wide_offer
    changed = true
  end
  if show.data ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_data then
    show.data = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_data
    changed = true
  end
  if show.payload ~= omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_payload then
    show.payload = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.prefs.show_payload
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
-- Dissect Miax MiaxOptions ComplexTopOfMarket Mach 1.1
-----------------------------------------------------------------------

-- Size: Expected Event Time Nano Seconds Part
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.expected_event_time_nano_seconds_part = 4

-- Display: Expected Event Time Nano Seconds Part
miax_miaxoptions_complextopofmarket_mach_v1_1_display.expected_event_time_nano_seconds_part = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.expected_event_time_nano_seconds_part = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.expected_event_time_nano_seconds_part
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.expected_event_time_nano_seconds_part(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + length, value
end

-- Size: Seconds Part
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.seconds_part = 4

-- Display: Seconds Part
miax_miaxoptions_complextopofmarket_mach_v1_1_display.seconds_part = function(value)
  return "Seconds Part: "..value
end

-- Dissect: Seconds Part
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.seconds_part = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.seconds_part
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.seconds_part(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.seconds_part, range, value, display)

  return offset + length, value
end

-- Size: Event Reason
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.event_reason = 1

-- Display: Event Reason
miax_miaxoptions_complextopofmarket_mach_v1_1_display.event_reason = function(value)
  if value == "A" then
    return "Event Reason: Automatic (A)"
  end
  if value == "M" then
    return "Event Reason: Manual (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.event_reason = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.event_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.event_reason(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trading_status = 1

-- Display: Trading Status
miax_miaxoptions_complextopofmarket_mach_v1_1_display.trading_status = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.trading_status = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.trading_status(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.underlying_symbol = 11

-- Display: Underlying Symbol
miax_miaxoptions_complextopofmarket_mach_v1_1_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp = 4

-- Display: Timestamp
miax_miaxoptions_complextopofmarket_mach_v1_1_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Trading Status Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.underlying_trading_status_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.underlying_symbol

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trading_status

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.event_reason

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.seconds_part

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.expected_event_time_nano_seconds_part

  return index
end

-- Display: Underlying Trading Status Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.underlying_trading_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.underlying_trading_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.trading_status(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.event_reason(buffer, index, packet, parent)

  -- Seconds Part: SecTime
  index, seconds_part = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.seconds_part(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: BinaryU
  index, expected_event_time_nano_seconds_part = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.expected_event_time_nano_seconds_part(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.underlying_trading_status_message = function(buffer, offset, packet, parent)
  if show.underlying_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.underlying_trading_status_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.underlying_trading_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.underlying_trading_status_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.underlying_trading_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 16
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_16 = 16

-- Display: Reserved 16
miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_16 = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_16 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_16
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_16(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trade_condition = 1

-- Display: Trade Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_display.trade_condition = function(value)
  if value == "S" then
    return "Trade Condition: Matched (S)"
  end
  if value == "L" then
    return "Trade Condition: Legged (L)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Trade Size
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trade_size = 4

-- Display: Trade Size
miax_miaxoptions_complextopofmarket_mach_v1_1_display.trade_size = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.trade_size = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trade_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.trade_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Size: Net Price
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.net_price = 8

-- Display: Net Price
miax_miaxoptions_complextopofmarket_mach_v1_1_display.net_price = function(value)
  return "Net Price: "..value
end

-- Translate: Net Price
translate.net_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Net Price
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.net_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.net_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.net_price(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.net_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.net_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trade_id = 4

-- Display: Trade Id
miax_miaxoptions_complextopofmarket_mach_v1_1_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Strategy Id
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id = 4

-- Display: Strategy Id
miax_miaxoptions_complextopofmarket_mach_v1_1_display.strategy_id = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_id = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.strategy_id(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Trade Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_trade_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trade_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.net_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trade_size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.trade_condition

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_16

  return index
end

-- Display: Strategy Trade Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.strategy_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.trade_id(buffer, index, packet, parent)

  -- Net Price: BinaryPrc4S
  index, net_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.net_price(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.trade_size(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.trade_condition(buffer, index, packet, parent)

  -- Reserved 16: Reserved
  index, reserved_16 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_16(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_trade_message = function(buffer, offset, packet, parent)
  if show.strategy_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.strategy_trade_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.strategy_trade_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Offer Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.offer_condition = 1

-- Display: Offer Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_display.offer_condition = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.offer_condition = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.offer_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.offer_condition(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Size: Reserved 4
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_4 = 4

-- Display: Reserved 4
miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Wide Offer Size
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_offer_size = 4

-- Display: Wide Offer Size
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_offer_size = function(value)
  return "Wide Offer Size: "..value
end

-- Dissect: Wide Offer Size
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_offer_size = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_offer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_offer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Wide Offer Price
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_offer_price = 8

-- Display: Wide Offer Price
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_offer_price = function(value)
  return "Wide Offer Price: "..value
end

-- Translate: Wide Offer Price
translate.wide_offer_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Wide Offer Price
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_offer_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_offer_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.wide_offer_price(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_offer_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_offer_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wide Offer
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_offer = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_offer_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_offer_size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_4

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.offer_condition

  return index
end

-- Display: Wide Offer
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_offer = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Offer
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_offer_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Wide Offer Price: BinaryPrc4S
  index, wide_offer_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_offer_price(buffer, index, packet, parent)

  -- Wide Offer Size: BinaryU
  index, wide_offer_size = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_offer_size(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  index, reserved_4 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_4(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Offer
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_offer = function(buffer, offset, packet, parent)
  if show.wide_offer then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_offer, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_offer_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_offer(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_offer_fields(buffer, offset, packet, parent)
  end
end

-- Size: Bid Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.bid_condition = 1

-- Display: Bid Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_display.bid_condition = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.bid_condition = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.bid_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.bid_condition(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Size: Wide Bid Size
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_bid_size = 4

-- Display: Wide Bid Size
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_bid_size = function(value)
  return "Wide Bid Size: "..value
end

-- Dissect: Wide Bid Size
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_bid_size = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_bid_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Wide Bid Price
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_bid_price = 8

-- Display: Wide Bid Price
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_bid_price = function(value)
  return "Wide Bid Price: "..value
end

-- Translate: Wide Bid Price
translate.wide_bid_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Wide Bid Price
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_bid_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_bid_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.wide_bid_price(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_bid_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wide Bid
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_bid = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_bid_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_bid_size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_4

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.bid_condition

  return index
end

-- Display: Wide Bid
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_bid = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Bid
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_bid_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Wide Bid Price: BinaryPrc4S
  index, wide_bid_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_bid_price(buffer, index, packet, parent)

  -- Wide Bid Size: BinaryU
  index, wide_bid_size = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_bid_size(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  index, reserved_4 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_4(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.bid_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Bid
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_bid = function(buffer, offset, packet, parent)
  if show.wide_bid then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_bid, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_bid_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_bid(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_bid_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Wide Complex Double Sided Top Of Market Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_complex_double_sided_top_of_market_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_bid(buffer, offset + index)

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_offer(buffer, offset + index)

  return index
end

-- Display: Wide Complex Double Sided Top Of Market Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_complex_double_sided_top_of_market_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Complex Double Sided Top Of Market Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_double_sided_top_of_market_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Wide Bid: Struct of 4 fields
  index, wide_bid = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_bid(buffer, index, packet, parent)

  -- Wide Offer: Struct of 4 fields
  index, wide_offer = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_offer(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Complex Double Sided Top Of Market Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_double_sided_top_of_market_message = function(buffer, offset, packet, parent)
  if show.wide_complex_double_sided_top_of_market_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_complex_double_sided_top_of_market_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_complex_double_sided_top_of_market_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 2
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_2 = 2

-- Display: Reserved 2
miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Size: Compact Offer Size
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_offer_size = 2

-- Display: Compact Offer Size
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_offer_size = function(value)
  return "Compact Offer Size: "..value
end

-- Dissect: Compact Offer Size
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_offer_size = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_offer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_offer_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Compact Offer Price
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_offer_price = 2

-- Display: Compact Offer Price
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_offer_price = function(value)
  return "Compact Offer Price: "..value
end

-- Translate: Compact Offer Price
translate.compact_offer_price = function(raw)
  return raw/100
end

-- Dissect: Compact Offer Price
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_offer_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_offer_price
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.compact_offer_price(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_offer_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_offer_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Compact Offer
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_offer = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_offer_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_offer_size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_2

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.offer_condition

  return index
end

-- Display: Compact Offer
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_offer = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Offer
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_offer_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Compact Offer Price: BinaryPrc2S
  index, compact_offer_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_offer_price(buffer, index, packet, parent)

  -- Compact Offer Size: BinaryU
  index, compact_offer_size = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_offer_size(buffer, index, packet, parent)

  -- Reserved 2: BinaryU
  index, reserved_2 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_2(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.offer_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Offer
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_offer = function(buffer, offset, packet, parent)
  if show.compact_offer then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_offer, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_offer_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_offer(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_offer_fields(buffer, offset, packet, parent)
  end
end

-- Size: Compact Bid Size
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_bid_size = 2

-- Display: Compact Bid Size
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_bid_size = function(value)
  return "Compact Bid Size: "..value
end

-- Dissect: Compact Bid Size
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_bid_size = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_bid_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Compact Bid Price
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_bid_price = 2

-- Display: Compact Bid Price
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_bid_price = function(value)
  return "Compact Bid Price: "..value
end

-- Translate: Compact Bid Price
translate.compact_bid_price = function(raw)
  return raw/100
end

-- Dissect: Compact Bid Price
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_bid_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_bid_price
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.compact_bid_price(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_bid_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_bid_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Compact Bid
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_bid = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_bid_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_bid_size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_2

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.bid_condition

  return index
end

-- Display: Compact Bid
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_bid = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Bid
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_bid_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Compact Bid Price: BinaryPrc2S
  index, compact_bid_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_bid_price(buffer, index, packet, parent)

  -- Compact Bid Size: BinaryU
  index, compact_bid_size = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_bid_size(buffer, index, packet, parent)

  -- Reserved 2: BinaryU
  index, reserved_2 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_2(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.bid_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Bid
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_bid = function(buffer, offset, packet, parent)
  if show.compact_bid then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_bid, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_bid_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_bid(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_bid_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Compact Complex Double Sided Top Of Market Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_complex_double_sided_top_of_market_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_bid(buffer, offset + index)

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_offer(buffer, offset + index)

  return index
end

-- Display: Compact Complex Double Sided Top Of Market Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_complex_double_sided_top_of_market_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Complex Double Sided Top Of Market Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_double_sided_top_of_market_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Compact Bid: Struct of 4 fields
  index, compact_bid = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_bid(buffer, index, packet, parent)

  -- Compact Offer: Struct of 4 fields
  index, compact_offer = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_offer(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Complex Double Sided Top Of Market Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_double_sided_top_of_market_message = function(buffer, offset, packet, parent)
  if show.compact_complex_double_sided_top_of_market_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_complex_double_sided_top_of_market_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_complex_double_sided_top_of_market_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_double_sided_top_of_market_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Top Of Market Quote Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.top_of_market_quote_condition = 1

-- Display: Top Of Market Quote Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_display.top_of_market_quote_condition = function(value)
  if value == "H" then
    return "Top Of Market Quote Condition: Halted (H)"
  end
  if value == "R" then
    return "Top Of Market Quote Condition: Resumed (R)"
  end
  if value == "O" then
    return "Top Of Market Quote Condition: Opened (O)"
  end

  return "Top Of Market Quote Condition: Unknown("..value..")"
end

-- Dissect: Top Of Market Quote Condition
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.top_of_market_quote_condition = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.top_of_market_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.top_of_market_quote_condition(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.top_of_market_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Wide Size
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_size = 4

-- Display: Wide Size
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_size = function(value)
  return "Wide Size: "..value
end

-- Dissect: Wide Size
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_size = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_size, range, value, display)

  return offset + length, value
end

-- Size: Wide Price
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_price = 8

-- Display: Wide Price
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_price = function(value)
  return "Wide Price: "..value
end

-- Translate: Wide Price
translate.wide_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Wide Price
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.wide_price(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wide Complex Top Of Market Offer Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_complex_top_of_market_offer_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_4

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.top_of_market_quote_condition

  return index
end

-- Display: Wide Complex Top Of Market Offer Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_complex_top_of_market_offer_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Complex Top Of Market Offer Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Wide Price: BinaryPrc4S
  index, wide_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_price(buffer, index, packet, parent)

  -- Wide Size: BinaryU
  index, wide_size = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_size(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  index, reserved_4 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_4(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: Alphanumeric
  index, top_of_market_quote_condition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Complex Top Of Market Offer Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_offer_message = function(buffer, offset, packet, parent)
  if show.wide_complex_top_of_market_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_complex_top_of_market_offer_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_offer_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_complex_top_of_market_offer_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_offer_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Wide Complex Top Of Market Bid Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_complex_top_of_market_bid_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_4

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.top_of_market_quote_condition

  return index
end

-- Display: Wide Complex Top Of Market Bid Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_complex_top_of_market_bid_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wide Complex Top Of Market Bid Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Wide Price: BinaryPrc4S
  index, wide_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_price(buffer, index, packet, parent)

  -- Wide Size: BinaryU
  index, wide_size = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_size(buffer, index, packet, parent)

  -- Reserved 4: BinaryU
  index, reserved_4 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_4(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: Alphanumeric
  index, top_of_market_quote_condition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Wide Complex Top Of Market Bid Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_bid_message = function(buffer, offset, packet, parent)
  if show.wide_complex_top_of_market_bid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.wide_complex_top_of_market_bid_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_bid_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.wide_complex_top_of_market_bid_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_bid_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Compact Size
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_size = 2

-- Display: Compact Size
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_size = function(value)
  return "Compact Size: "..value
end

-- Dissect: Compact Size
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_size = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_size(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_size, range, value, display)

  return offset + length, value
end

-- Size: Compact Price
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_price = 2

-- Display: Compact Price
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_price = function(value)
  return "Compact Price: "..value
end

-- Translate: Compact Price
translate.compact_price = function(raw)
  return raw/100
end

-- Dissect: Compact Price
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_price
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.compact_price(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Compact Complex Top Of Market Offer Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_complex_top_of_market_offer_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_2

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.top_of_market_quote_condition

  return index
end

-- Display: Compact Complex Top Of Market Offer Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_complex_top_of_market_offer_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Complex Top Of Market Offer Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Compact Price: BinaryPrc2S
  index, compact_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_price(buffer, index, packet, parent)

  -- Compact Size: BinaryU
  index, compact_size = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_size(buffer, index, packet, parent)

  -- Reserved 2: BinaryU
  index, reserved_2 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_2(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: Alphanumeric
  index, top_of_market_quote_condition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Complex Top Of Market Offer Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_offer_message = function(buffer, offset, packet, parent)
  if show.compact_complex_top_of_market_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_complex_top_of_market_offer_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_offer_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_complex_top_of_market_offer_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_offer_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Compact Complex Top Of Market Bid Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_complex_top_of_market_bid_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_size

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.top_of_market_quote_condition

  return index
end

-- Display: Compact Complex Top Of Market Bid Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_complex_top_of_market_bid_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Compact Complex Top Of Market Bid Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_bid_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Compact Price: BinaryPrc2S
  index, compact_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_price(buffer, index, packet, parent)

  -- Compact Size: BinaryU
  index, compact_size = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_size(buffer, index, packet, parent)

  -- Top Of Market Quote Condition: Alphanumeric
  index, top_of_market_quote_condition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.top_of_market_quote_condition(buffer, index, packet, parent)

  return index
end

-- Dissect: Compact Complex Top Of Market Bid Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_bid_message = function(buffer, offset, packet, parent)
  if show.compact_complex_top_of_market_bid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.compact_complex_top_of_market_bid_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_bid_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.compact_complex_top_of_market_bid_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_bid_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: System Status
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.system_status = 1

-- Display: System Status
miax_miaxoptions_complextopofmarket_mach_v1_1_display.system_status = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_status = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.system_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.system_status(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.system_status, range, value, display)

  return offset + length, value
end

-- Size: Session Id
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.session_id = 4

-- Display: Session Id
miax_miaxoptions_complextopofmarket_mach_v1_1_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.session_id = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.session_id(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: C To M Version
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.c_to_m_version = 8

-- Display: C To M Version
miax_miaxoptions_complextopofmarket_mach_v1_1_display.c_to_m_version = function(value)
  return "C To M Version: "..value
end

-- Dissect: C To M Version
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.c_to_m_version = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.c_to_m_version
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.c_to_m_version(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.c_to_m_version, range, value, display)

  return offset + length, value
end

-- Size: Notification Time
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.notification_time = 4

-- Display: Notification Time
miax_miaxoptions_complextopofmarket_mach_v1_1_display.notification_time = function(value)
  return "Notification Time: "..value
end

-- Dissect: Notification Time
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.notification_time = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.notification_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.notification_time(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: System State Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.system_state_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.notification_time

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.c_to_m_version

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.session_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.system_status

  return index
end

-- Display: System State Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.system_state_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.notification_time(buffer, index, packet, parent)

  -- C To M Version: Alphanumeric
  index, c_to_m_version = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.c_to_m_version(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.session_id(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_status(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_state_message = function(buffer, offset, packet, parent)
  if show.system_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.system_state_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_state_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.system_state_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_state_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 8
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_8 = 8

-- Display: Reserved 8
miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_8 = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_8 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_8(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Size: Leg Side
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.leg_side = 1

-- Display: Leg Side
miax_miaxoptions_complextopofmarket_mach_v1_1_display.leg_side = function(value)
  if value == "B" then
    return "Leg Side: Bid (B)"
  end
  if value == "A" then
    return "Leg Side: Ask (A)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.leg_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.leg_ratio_qty = 2

-- Display: Leg Ratio Qty
miax_miaxoptions_complextopofmarket_mach_v1_1_display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Product Id
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.product_id = 4

-- Display: Product Id
miax_miaxoptions_complextopofmarket_mach_v1_1_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.product_id = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.product_id(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.product_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Leg Definition
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.leg_definition = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.product_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.leg_ratio_qty

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.leg_side

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_8

  return index
end

-- Display: Leg Definition
miax_miaxoptions_complextopofmarket_mach_v1_1_display.leg_definition = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Definition
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.leg_definition_fields = function(buffer, offset, packet, parent, leg_definition_index)
  local index = offset

  -- Implicit Leg Definition Index
  if leg_definition_index ~= nil then
    local iteration = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.leg_definition_index, leg_definition_index)
    iteration:set_generated()
  end

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.product_id(buffer, index, packet, parent)

  -- Leg Ratio Qty: BinaryU
  index, leg_ratio_qty = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: Alphanumeric
  index, leg_side = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.leg_side(buffer, index, packet, parent)

  -- Reserved 8: Reserved
  index, reserved_8 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.leg_definition = function(buffer, offset, packet, parent, leg_definition_index)
  if show.leg_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.leg_definition, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.leg_definition_fields(buffer, offset, packet, parent, leg_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.leg_definition(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.leg_definition_fields(buffer, offset, packet, parent, leg_definition_index)
  end
end

-- Size: Number Of Legs
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.number_of_legs = 1

-- Display: Number Of Legs
miax_miaxoptions_complextopofmarket_mach_v1_1_display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.number_of_legs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Reserved 10
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_10 = 10

-- Display: Reserved 10
miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_10 = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_10 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_10
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_10(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Size: Update Reason
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.update_reason = 1

-- Display: Update Reason
miax_miaxoptions_complextopofmarket_mach_v1_1_display.update_reason = function(value)
  if value == "N" then
    return "Update Reason: New Strategy Created (N)"
  end
  if value == "U" then
    return "Update Reason: Updated (U)"
  end

  return "Update Reason: Unknown("..value..")"
end

-- Dissect: Update Reason
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.update_reason = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.update_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.update_reason(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.update_reason, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_1 = 1

-- Display: Reserved 1
miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Active On Miax
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.active_on_miax = 1

-- Display: Active On Miax
miax_miaxoptions_complextopofmarket_mach_v1_1_display.active_on_miax = function(value)
  if value == "A" then
    return "Active On Miax: Active (A)"
  end
  if value == "I" then
    return "Active On Miax: Inactive (I)"
  end

  return "Active On Miax: Unknown("..value..")"
end

-- Dissect: Active On Miax
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.active_on_miax = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.active_on_miax
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.active_on_miax(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.active_on_miax, range, value, display)

  return offset + length, value
end

-- Size: Strategy Add Time
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_add_time = 4

-- Display: Strategy Add Time
miax_miaxoptions_complextopofmarket_mach_v1_1_display.strategy_add_time = function(value)
  return "Strategy Add Time: "..value
end

-- Dissect: Strategy Add Time
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_add_time = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_add_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.strategy_add_time(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.strategy_add_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Strategy Definition Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.complex_strategy_definition_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_add_time

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.underlying_symbol

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.active_on_miax

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_1

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.update_reason

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_10

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.number_of_legs

  -- Calculate field size from count
  local leg_definition_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_definition_count * 15

  return index
end

-- Display: Complex Strategy Definition Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.complex_strategy_definition_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Definition Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.complex_strategy_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Strategy Add Time: NanoTime
  index, strategy_add_time = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_add_time(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_id(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.active_on_miax(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_1(buffer, index, packet, parent)

  -- Update Reason: Alphanumeric
  index, update_reason = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.update_reason(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_10(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.number_of_legs(buffer, index, packet, parent)

  -- Repeating: Leg Definition
  for leg_definition_index = 1, number_of_legs do
    index, leg_definition = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.leg_definition(buffer, index, packet, parent, leg_definition_index)
  end

  return index
end

-- Dissect: Complex Strategy Definition Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.complex_strategy_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_strategy_definition_message then
    local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.complex_strategy_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.complex_strategy_definition_message(buffer, packet, parent)
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.complex_strategy_definition_message, range, display)
  end

  return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.complex_strategy_definition_message_fields(buffer, offset, packet, parent)
end

-- Size: Priority Quote Width
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.priority_quote_width = 4

-- Display: Priority Quote Width
miax_miaxoptions_complextopofmarket_mach_v1_1_display.priority_quote_width = function(value)
  return "Priority Quote Width: "..value
end

-- Translate: Priority Quote Width
translate.priority_quote_width = function(raw)
  return raw/10000
end

-- Dissect: Priority Quote Width
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.priority_quote_width = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.priority_quote_width
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.priority_quote_width(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.priority_quote_width(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.priority_quote_width, range, value, display)

  return offset + length, value
end

-- Size: Opening Underlying Market Code
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.opening_underlying_market_code = 1

-- Display: Opening Underlying Market Code
miax_miaxoptions_complextopofmarket_mach_v1_1_display.opening_underlying_market_code = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.opening_underlying_market_code = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.opening_underlying_market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.opening_underlying_market_code(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Size: Liquidity Acceptance Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.liquidity_acceptance_increment_indicator = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_1_display.liquidity_acceptance_increment_indicator = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.liquidity_acceptance_increment_indicator = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.liquidity_acceptance_increment_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.liquidity_acceptance_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Size: Miax Bbo Posting Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.miax_bbo_posting_increment_indicator = 1

-- Display: Miax Bbo Posting Increment Indicator
miax_miaxoptions_complextopofmarket_mach_v1_1_display.miax_bbo_posting_increment_indicator = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.miax_bbo_posting_increment_indicator = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.miax_bbo_posting_increment_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.miax_bbo_posting_increment_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.miax_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Size: Long Term Option
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.long_term_option = 1

-- Display: Long Term Option
miax_miaxoptions_complextopofmarket_mach_v1_1_display.long_term_option = function(value)
  if value == "Y" then
    return "Long Term Option: Yes (Y)"
  end
  if value == "N" then
    return "Long Term Option: No (N)"
  end

  return "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.long_term_option = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.long_term_option
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.long_term_option(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Size: Restricted Option
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.restricted_option = 1

-- Display: Restricted Option
miax_miaxoptions_complextopofmarket_mach_v1_1_display.restricted_option = function(value)
  if value == "Y" then
    return "Restricted Option: Yes (Y)"
  end
  if value == "N" then
    return "Restricted Option: No (N)"
  end

  return "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.restricted_option = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.restricted_option
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.restricted_option(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Size: Closing Time
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.closing_time = 8

-- Display: Closing Time
miax_miaxoptions_complextopofmarket_mach_v1_1_display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.closing_time = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.closing_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.closing_time(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Size: Opening Time
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.opening_time = 8

-- Display: Opening Time
miax_miaxoptions_complextopofmarket_mach_v1_1_display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.opening_time = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.opening_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.opening_time(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Size: Call Or Put
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.call_or_put = 1

-- Display: Call Or Put
miax_miaxoptions_complextopofmarket_mach_v1_1_display.call_or_put = function(value)
  if value == "C" then
    return "Call Or Put: Call (C)"
  end
  if value == "P" then
    return "Call Or Put: Put (P)"
  end

  return "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.call_or_put = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.call_or_put
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.call_or_put(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strike_price = 4

-- Display: Strike Price
miax_miaxoptions_complextopofmarket_mach_v1_1_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = translate.strike_price(raw)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiration Date
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.expiration_date = 8

-- Display: Expiration Date
miax_miaxoptions_complextopofmarket_mach_v1_1_display.expiration_date = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.expiration_date = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.expiration_date
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.expiration_date(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.security_symbol = 6

-- Display: Security Symbol
miax_miaxoptions_complextopofmarket_mach_v1_1_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.security_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Product Add Update Time
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.product_add_update_time = 4

-- Display: Product Add Update Time
miax_miaxoptions_complextopofmarket_mach_v1_1_display.product_add_update_time = function(value)
  return "Product Add Update Time: "..value
end

-- Dissect: Product Add Update Time
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.product_add_update_time = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.product_add_update_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.product_add_update_time(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.product_add_update_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Series Update
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.series_update = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.product_add_update_time

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.product_id

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.underlying_symbol

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.security_symbol

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.expiration_date

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strike_price

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.call_or_put

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.opening_time

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.closing_time

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.restricted_option

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.long_term_option

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.active_on_miax

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.miax_bbo_posting_increment_indicator

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.liquidity_acceptance_increment_indicator

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.opening_underlying_market_code

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.priority_quote_width

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.reserved_8

  return index
end

-- Display: Series Update
miax_miaxoptions_complextopofmarket_mach_v1_1_display.series_update = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Update
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.series_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: NanoTime
  index, product_add_update_time = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.product_add_update_time(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.product_id(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.security_symbol(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.expiration_date(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strike_price(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.call_or_put(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.closing_time(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.restricted_option(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.long_term_option(buffer, index, packet, parent)

  -- Active On Miax: Alphanumeric
  index, active_on_miax = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.active_on_miax(buffer, index, packet, parent)

  -- Miax Bbo Posting Increment Indicator: Alphanumeric
  index, miax_bbo_posting_increment_indicator = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.miax_bbo_posting_increment_indicator(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.liquidity_acceptance_increment_indicator(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.opening_underlying_market_code(buffer, index, packet, parent)

  -- Priority Quote Width: BinaryPrc4U
  index, priority_quote_width = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.priority_quote_width(buffer, index, packet, parent)

  -- Reserved 8: Reserved
  index, reserved_8 = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.reserved_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Update
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.series_update = function(buffer, offset, packet, parent)
  if show.series_update then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.series_update, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.series_update_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.series_update(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.series_update_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: System Time Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.system_time_message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.timestamp

  return index
end

-- Display: System Time Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.system_time_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: SecTime
  index, timestamp = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Time Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_time_message = function(buffer, offset, packet, parent)
  if show.system_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.system_time_message, buffer(offset, 0))
    local index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_time_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.system_time_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_time_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Data
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.data = function(buffer, offset, message_type)
  -- Size of System Time Message
  if message_type == "1" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.system_time_message(buffer, offset)
  end
  -- Size of Series Update
  if message_type == "P" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.series_update(buffer, offset)
  end
  -- Size of Complex Strategy Definition Message
  if message_type == "C" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.complex_strategy_definition_message(buffer, offset)
  end
  -- Size of System State Message
  if message_type == "S" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.system_state_message(buffer, offset)
  end
  -- Size of Compact Complex Top Of Market Bid Message
  if message_type == "b" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_complex_top_of_market_bid_message(buffer, offset)
  end
  -- Size of Compact Complex Top Of Market Offer Message
  if message_type == "o" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_complex_top_of_market_offer_message(buffer, offset)
  end
  -- Size of Wide Complex Top Of Market Bid Message
  if message_type == "e" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_complex_top_of_market_bid_message(buffer, offset)
  end
  -- Size of Wide Complex Top Of Market Offer Message
  if message_type == "f" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_complex_top_of_market_offer_message(buffer, offset)
  end
  -- Size of Compact Complex Double Sided Top Of Market Message
  if message_type == "m" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.compact_complex_double_sided_top_of_market_message(buffer, offset)
  end
  -- Size of Wide Complex Double Sided Top Of Market Message
  if message_type == "w" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.wide_complex_double_sided_top_of_market_message(buffer, offset)
  end
  -- Size of Strategy Trade Message
  if message_type == "t" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.strategy_trade_message(buffer, offset)
  end
  -- Size of Underlying Trading Status Message
  if message_type == "H" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.underlying_trading_status_message(buffer, offset)
  end

  return 0
end

-- Display: Data
miax_miaxoptions_complextopofmarket_mach_v1_1_display.data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Data
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.data_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == "1" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Series Update
  if message_type == "P" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.series_update(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Definition Message
  if message_type == "C" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.complex_strategy_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "S" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.system_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Compact Complex Top Of Market Bid Message
  if message_type == "b" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_bid_message(buffer, offset, packet, parent)
  end
  -- Dissect Compact Complex Top Of Market Offer Message
  if message_type == "o" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_top_of_market_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Complex Top Of Market Bid Message
  if message_type == "e" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_bid_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Complex Top Of Market Offer Message
  if message_type == "f" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_top_of_market_offer_message(buffer, offset, packet, parent)
  end
  -- Dissect Compact Complex Double Sided Top Of Market Message
  if message_type == "m" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.compact_complex_double_sided_top_of_market_message(buffer, offset, packet, parent)
  end
  -- Dissect Wide Complex Double Sided Top Of Market Message
  if message_type == "w" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.wide_complex_double_sided_top_of_market_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Message
  if message_type == "t" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.strategy_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Message
  if message_type == "H" then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.underlying_trading_status_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Data
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.data = function(buffer, offset, packet, parent, message_type)
  if not show.data then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.data_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.data(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.data(buffer, packet, parent)
  local element = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.data, range, display)

  return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.data_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.message_type = 1

-- Display: Message Type
miax_miaxoptions_complextopofmarket_mach_v1_1_display.message_type = function(value)
  if value == "1" then
    return "Message Type: System Time Message (1)"
  end
  if value == "P" then
    return "Message Type: Series Update (P)"
  end
  if value == "C" then
    return "Message Type: Complex Strategy Definition Message (C)"
  end
  if value == "S" then
    return "Message Type: System State Message (S)"
  end
  if value == "b" then
    return "Message Type: Compact Complex Top Of Market Bid Message (b)"
  end
  if value == "o" then
    return "Message Type: Compact Complex Top Of Market Offer Message (o)"
  end
  if value == "e" then
    return "Message Type: Wide Complex Top Of Market Bid Message (e)"
  end
  if value == "f" then
    return "Message Type: Wide Complex Top Of Market Offer Message (f)"
  end
  if value == "m" then
    return "Message Type: Compact Complex Double Sided Top Of Market Message (m)"
  end
  if value == "w" then
    return "Message Type: Wide Complex Double Sided Top Of Market Message (w)"
  end
  if value == "t" then
    return "Message Type: Strategy Trade Message (t)"
  end
  if value == "H" then
    return "Message Type: Underlying Trading Status Message (H)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Application Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.application_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  return packet_length - 12
end

-- Display: Application Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.application_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.application_message_fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 12 values
  index, message_type = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.message_type(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.data(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.application_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_application_message = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.application_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.application_message then
    local range = buffer(offset, size_of_application_message)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.application_message(buffer, packet, parent)
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.application_message, range, display)
  end

  miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.application_message_fields(buffer, offset, packet, parent, size_of_application_message)

  return offset + size_of_application_message
end

-- Calculate runtime size of: Payload
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Application Message
  if packet_type == 3 then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.application_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_miaxoptions_complextopofmarket_mach_v1_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.application_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.payload(buffer, packet, parent)
  local element = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.payload, range, display)

  return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Session Number
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.session_number = 1

-- Display: Session Number
miax_miaxoptions_complextopofmarket_mach_v1_1_display.session_number = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.session_number = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.session_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.session_number(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.session_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Type
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.packet_type = 1

-- Display: Packet Type
miax_miaxoptions_complextopofmarket_mach_v1_1_display.packet_type = function(value)
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
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.packet_length = 2

-- Display: Packet Length
miax_miaxoptions_complextopofmarket_mach_v1_1_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.sequence_number = 8

-- Display: Sequence Number
miax_miaxoptions_complextopofmarket_mach_v1_1_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.message = function(buffer, offset)
  local index = 0

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.sequence_number

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.packet_length

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.packet_type

  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.session_number

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_miaxoptions_complextopofmarket_mach_v1_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.sequence_number(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.packet_type(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.session_number(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = miax_miaxoptions_complextopofmarket_mach_v1_1_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_miaxoptions_complextopofmarket_mach_v1_1_display.message(buffer, packet, parent)
    parent = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1.fields.message, range, display)
  end

  return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  while index < end_of_payload do
    index, message = miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_miaxoptions_complextopofmarket_mach_v1_1.init()
end

-- Dissector for Miax MiaxOptions ComplexTopOfMarket Mach 1.1
function omi_miax_miaxoptions_complextopofmarket_mach_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_miaxoptions_complextopofmarket_mach_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_miaxoptions_complextopofmarket_mach_v1_1, buffer(), omi_miax_miaxoptions_complextopofmarket_mach_v1_1.description, "("..buffer:len().." Bytes)")
  return miax_miaxoptions_complextopofmarket_mach_v1_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_miax_miaxoptions_complextopofmarket_mach_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_miax_miaxoptions_complextopofmarket_mach_v1_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax MiaxOptions ComplexTopOfMarket Mach 1.1
local function omi_miax_miaxoptions_complextopofmarket_mach_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_miax_miaxoptions_complextopofmarket_mach_v1_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_miaxoptions_complextopofmarket_mach_v1_1
  omi_miax_miaxoptions_complextopofmarket_mach_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax MiaxOptions ComplexTopOfMarket Mach 1.1
omi_miax_miaxoptions_complextopofmarket_mach_v1_1:register_heuristic("udp", omi_miax_miaxoptions_complextopofmarket_mach_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.1
--   Date: Friday, July 15, 2016
--   Specification: Complex_Top_Of_Market_Feed_cToM_v1_1.pdf
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
