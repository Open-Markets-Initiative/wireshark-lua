-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a Protocol
local omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a = Proto("Omi.Miax.SapphireOptions.ComplexTopOfMarket.Mach.v1.0.a", "Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a")

-- Protocol table
local miax_sapphireoptions_complextopofmarket_mach_v1_0_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a Fields
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.active_on_sapphire = ProtoField.new("Active On Sapphire", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.activeonsapphire", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.application_message = ProtoField.new("Application Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.applicationmessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.application_protocol = ProtoField.new("Application Protocol", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.applicationprotocol", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_condition = ProtoField.new("Bid Condition", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.bidcondition", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_price_binary_prc_2s_2 = ProtoField.new("Bid Price Binary Prc 2s 2", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.bidpricebinaryprc2s2", ftypes.DOUBLE)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_price_binary_prc_4s_8 = ProtoField.new("Bid Price Binary Prc 4s 8", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.bidpricebinaryprc4s8", ftypes.DOUBLE)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_priority_customer_size_binary_u_2 = ProtoField.new("Bid Priority Customer Size Binary U 2", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.bidprioritycustomersizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_priority_customer_size_binary_u_4 = ProtoField.new("Bid Priority Customer Size Binary U 4", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.bidprioritycustomersizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_size_binary_u_2 = ProtoField.new("Bid Size Binary U 2", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.bidsizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_size_binary_u_4 = ProtoField.new("Bid Size Binary U 4", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.bidsizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.c_to_m_version = ProtoField.new("C To M Version", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.ctomversion", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.call_or_put = ProtoField.new("Call Or Put", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.callorput", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.closing_time = ProtoField.new("Closing Time", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.closingtime", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.computer_id = ProtoField.new("Computer Id", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.computerid", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.condition = ProtoField.new("Condition", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.condition", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.endsequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.event_reason = ProtoField.new("Event Reason", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.eventreason", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.expectedeventtimenanosecondspart", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.expected_event_time_seconds_part = ProtoField.new("Expected Event Time Seconds Part", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.expectedeventtimesecondspart", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.expiration_date = ProtoField.new("Expiration Date", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.expirationdate", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.goodbyepacket", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.highestsequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.leg_definition = ProtoField.new("Leg Definition", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.legdefinition", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.legratioqty", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.leg_side = ProtoField.new("Leg Side", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.legside", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.liquidityacceptanceincrementindicator", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.login_request = ProtoField.new("Login Request", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.loginrequest", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.login_response = ProtoField.new("Login Response", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.loginresponse", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.login_status = ProtoField.new("Login Status", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.loginstatus", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.logout_reason = ProtoField.new("Logout Reason", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.logoutreason", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.logout_request = ProtoField.new("Logout Request", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.logoutrequest", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.logout_text = ProtoField.new("Logout Text", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.logouttext", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.long_term_option = ProtoField.new("Long Term Option", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.longtermoption", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.mach_message = ProtoField.new("Mach Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.machmessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.matchingengineid", ftypes.UINT8)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.message_type = ProtoField.new("Message Type", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.messagetype", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.nanoseconds", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.net_price = ProtoField.new("Net Price", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.netprice", ftypes.DOUBLE)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.numberoflegs", ftypes.UINT8)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.numberofmatchingengines", ftypes.UINT8)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_condition = ProtoField.new("Offer Condition", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.offercondition", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_price_binary_prc_2s_2 = ProtoField.new("Offer Price Binary Prc 2s 2", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.offerpricebinaryprc2s2", ftypes.DOUBLE)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_price_binary_prc_4s_8 = ProtoField.new("Offer Price Binary Prc 4s 8", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.offerpricebinaryprc4s8", ftypes.DOUBLE)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_priority_customer_size_binary_u_2 = ProtoField.new("Offer Priority Customer Size Binary U 2", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.offerprioritycustomersizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_priority_customer_size_binary_u_4 = ProtoField.new("Offer Priority Customer Size Binary U 4", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.offerprioritycustomersizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_size_binary_u_2 = ProtoField.new("Offer Size Binary U 2", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.offersizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_size_binary_u_4 = ProtoField.new("Offer Size Binary U 4", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.offersizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.opening_time = ProtoField.new("Opening Time", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.openingtime", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.openingunderlyingmarketcode", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.packet_length = ProtoField.new("Packet Length", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.packetlength", ftypes.UINT16)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.packet_type = ProtoField.new("Packet Type", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.packettype", ftypes.UINT8)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.price_binary_prc_2s_2 = ProtoField.new("Price Binary Prc 2s 2", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.pricebinaryprc2s2", ftypes.DOUBLE)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.price_binary_prc_4s_8 = ProtoField.new("Price Binary Prc 4s 8", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.pricebinaryprc4s8", ftypes.DOUBLE)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.priority_customer_size_binary_u_2 = ProtoField.new("Priority Customer Size Binary U 2", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.prioritycustomersizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.priority_customer_size_binary_u_4 = ProtoField.new("Priority Customer Size Binary U 4", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.prioritycustomersizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.product_id = ProtoField.new("Product Id", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.productid", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.refreshmessagetype", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.requestedsequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.requestedtradingsessionid", ftypes.UINT8)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.reserved1", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.reserved10", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.reserved12", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_17 = ProtoField.new("Reserved 17", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.reserved17", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.reserved8", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.restricted_option = ProtoField.new("Restricted Option", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.restrictedoption", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.retransmissionrequest", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sapphire_bbo_posting_increment_indicator = ProtoField.new("Sapphire Bbo Posting Increment Indicator", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sapphirebbopostingincrementindicator", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.seconds = ProtoField.new("Seconds", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.seconds", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.security_symbol = ProtoField.new("Security Symbol", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.securitysymbol", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sequenceddatapacket", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sequencedmessagetype", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_packet_header = ProtoField.new("Sesm Packet Header", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sesmpacketheader", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_packet_length = ProtoField.new("Sesm Packet Length", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sesmpacketlength", ftypes.UINT16)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_packet_type = ProtoField.new("Sesm Packet Type", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sesmpackettype", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sesmtcppacket", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_version = ProtoField.new("Sesm Version", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sesmversion", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.session_id = ProtoField.new("Session Id", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sessionid", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.session_number = ProtoField.new("Session Number", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sessionnumber", ftypes.UINT8)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.size_binary_u_2 = ProtoField.new("Size Binary U 2", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.size_binary_u_4 = ProtoField.new("Size Binary U 4", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.startsequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.strategy_id = ProtoField.new("Strategy Id", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.strategyid", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.strike_price = ProtoField.new("Strike Price", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.strikeprice", ftypes.DOUBLE)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.synchronizationcomplete", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.system_status = ProtoField.new("System Status", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.systemstatus", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.tcp_packet = ProtoField.new("Tcp Packet", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.tcppacket", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.test_packet = ProtoField.new("Test Packet", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.testpacket", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.test_text = ProtoField.new("Test Text", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.testtext", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.trade_id = ProtoField.new("Trade Id", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.tradeid", ftypes.UINT32)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.tradingsessionid", ftypes.UINT8)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.trading_status = ProtoField.new("Trading Status", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.tradingstatus", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.udp_packet = ProtoField.new("Udp Packet", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.udppacket", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.underlyingsymbol", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.unsequenceddatapacket", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.unsequencedmessagetype", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.update_reason = ProtoField.new("Update Reason", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.updatereason", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.username = ProtoField.new("Username", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.username", ftypes.STRING)

-- Miax SapphireOptions Mach ComplexTopOfMarket 1.0.a Application Messages
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message = ProtoField.new("Complex Double Sided Top Of Market Best Bid And Offer Compact Format Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.complexdoublesidedtopofmarketbestbidandoffercompactformatmessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message = ProtoField.new("Complex Double Sided Top Of Market Best Bid And Offer Wide Format Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.complexdoublesidedtopofmarketbestbidandofferwideformatmessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_strategy_definition_message = ProtoField.new("Complex Strategy Definition Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.complexstrategydefinitionmessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_top_of_market_best_bid_or_offer_compact_format_bid_message = ProtoField.new("Complex Top Of Market Best Bid Or Offer Compact Format Bid Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.complextopofmarketbestbidoroffercompactformatbidmessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_top_of_market_best_bid_or_offer_compact_format_offer_message = ProtoField.new("Complex Top Of Market Best Bid Or Offer Compact Format Offer Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.complextopofmarketbestbidoroffercompactformatoffermessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_top_of_market_best_bid_or_offer_wide_format_bid_message = ProtoField.new("Complex Top Of Market Best Bid Or Offer Wide Format Bid Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.complextopofmarketbestbidorofferwideformatbidmessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_top_of_market_best_bid_or_offer_wide_format_offer_message = ProtoField.new("Complex Top Of Market Best Bid Or Offer Wide Format Offer Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.complextopofmarketbestbidorofferwideformatoffermessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.end_of_refresh_notification_message = ProtoField.new("End Of Refresh Notification Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.endofrefreshnotificationmessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.refreshrequestmessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.refresh_response_message = ProtoField.new("Refresh Response Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.refreshresponsemessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sapphire_system_time_message = ProtoField.new("Sapphire System Time Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.sapphiresystemtimemessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.simple_series_update_message = ProtoField.new("Simple Series Update Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.simpleseriesupdatemessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.strategy_last_sale_message = ProtoField.new("Strategy Last Sale Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.strategylastsalemessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.system_state_message = ProtoField.new("System State Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.systemstatemessage", ftypes.STRING)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.underlying_trading_status_notification_message = ProtoField.new("Underlying Trading Status Notification Message", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.underlyingtradingstatusnotificationmessage", ftypes.STRING)

-- Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a generated fields
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.leg_definition_index = ProtoField.new("Leg Definition Index", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.legdefinitionindex", ftypes.UINT16)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.timestamp = ProtoField.new("Timestamp", "miax.sapphireoptions.complextopofmarket.mach.v1.0.a.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a Element Dissection Options
show.application_message = true
show.application_messages = true
show.goodbye_packet = true
show.leg_definition = true
show.login_request = true
show.login_response = true
show.logout_request = true
show.mach_message = true
show.retransmission_request = true
show.sequenced_data_packet = true
show.sesm_packet_header = true
show.sesm_tcp_packet = true
show.synchronization_complete = true
show.tcp_packet = true
show.test_packet = true
show.udp_packet = true
show.unsequenced_data_packet = true
show.leg_definition_index = true

-- Register Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a Show Options
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_leg_definition = Pref.bool("Show Leg Definition", show.leg_definition, "Parse and add Leg Definition to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_mach_message = Pref.bool("Show Mach Message", show.mach_message, "Parse and add Mach Message to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_sesm_packet_header = Pref.bool("Show Sesm Packet Header", show.sesm_packet_header, "Parse and add Sesm Packet Header to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_sesm_tcp_packet = Pref.bool("Show Sesm Tcp Packet", show.sesm_tcp_packet, "Parse and add Sesm Tcp Packet to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_synchronization_complete = Pref.bool("Show Synchronization Complete", show.synchronization_complete, "Parse and add Synchronization Complete to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_tcp_packet = Pref.bool("Show Tcp Packet", show.tcp_packet, "Parse and add Tcp Packet to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_test_packet = Pref.bool("Show Test Packet", show.test_packet, "Parse and add Test Packet to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_udp_packet = Pref.bool("Show Udp Packet", show.udp_packet, "Parse and add Udp Packet to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_leg_definition_index = Pref.bool("Show Leg Definition Index", show.leg_definition_index, "Show generated leg definition index in protocol tree")


-- Handle changed preferences
function omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs_changed()

  -- Check if preferences have changed
  if show.application_message ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_application_message then
    show.application_message = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_application_message
  end
  if show.application_messages ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_application_messages then
    show.application_messages = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_application_messages
  end
  if show.goodbye_packet ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_goodbye_packet then
    show.goodbye_packet = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_goodbye_packet
  end
  if show.leg_definition ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_leg_definition then
    show.leg_definition = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_leg_definition
  end
  if show.login_request ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_login_request then
    show.login_request = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_login_request
  end
  if show.login_response ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_login_response then
    show.login_response = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_login_response
  end
  if show.logout_request ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_logout_request then
    show.logout_request = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_logout_request
  end
  if show.mach_message ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_mach_message then
    show.mach_message = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_mach_message
  end
  if show.retransmission_request ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_retransmission_request then
    show.retransmission_request = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_retransmission_request
  end
  if show.sequenced_data_packet ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_sequenced_data_packet
  end
  if show.sesm_packet_header ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_sesm_packet_header then
    show.sesm_packet_header = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_sesm_packet_header
  end
  if show.sesm_tcp_packet ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_sesm_tcp_packet then
    show.sesm_tcp_packet = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_sesm_tcp_packet
  end
  if show.synchronization_complete ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_synchronization_complete then
    show.synchronization_complete = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_synchronization_complete
  end
  if show.tcp_packet ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_tcp_packet then
    show.tcp_packet = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_tcp_packet
  end
  if show.test_packet ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_test_packet then
    show.test_packet = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_test_packet
  end
  if show.udp_packet ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_udp_packet then
    show.udp_packet = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_udp_packet
  end
  if show.unsequenced_data_packet ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_unsequenced_data_packet
  end
  if show.leg_definition_index ~= omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_leg_definition_index then
    show.leg_definition_index = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.prefs.show_leg_definition_index
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation = {}
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.data = function(packet)
  local key = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.key(packet)
  local data = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.current = nil


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
-- Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a Fields
-----------------------------------------------------------------------

-- Active On Sapphire
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire = {}

-- Size: Active On Sapphire
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire.size = 1

-- Display: Active On Sapphire
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire.display = function(value)
  if value == "A" then
    return "Active On Sapphire: Active (A)"
  end
  if value == "I" then
    return "Active On Sapphire: Inactive (I)"
  end

  return "Active On Sapphire: Unknown("..value..")"
end

-- Dissect: Active On Sapphire
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.active_on_sapphire, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_protocol = {}

-- Size: Application Protocol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_protocol.size = 8

-- Display: Application Protocol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Bid Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition = {}

-- Size: Bid Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition.size = 1

-- Display: Bid Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition.display = function(value)
  if value == "A" then
    return "Bid Condition: Regular (A)"
  end
  if value == "T" then
    return "Bid Condition: Trading Halt (T)"
  end
  if value == "W" then
    return "Bid Condition: Wide (W)"
  end
  if value == "C" then
    return "Bid Condition: Timer In Progress (C)"
  end
  if value == "M" then
    return "Bid Condition: Simple Market Protection (M)"
  end
  if value == "L" then
    return "Bid Condition: Simple Market Protection Prevented (L)"
  end

  return "Bid Condition: Unknown("..value..")"
end

-- Dissect: Bid Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Bid Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2 = {}

-- Size: Bid Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2.size = 2

-- Display: Bid Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2.display = function(value)
  return "Bid Price Binary Prc 2s 2: "..value
end

-- Translate: Bid Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2.translate(raw)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_price_binary_prc_2s_2, range, value, display)

  return offset + length, value
end

-- Bid Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8 = {}

-- Size: Bid Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8.size = 8

-- Display: Bid Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8.display = function(value)
  return "Bid Price Binary Prc 4s 8: "..value
end

-- Translate: Bid Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Bid Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8.translate(raw)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_price_binary_prc_4s_8, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_2 = {}

-- Size: Bid Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_2.size = 2

-- Display: Bid Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_2.display = function(value)
  return "Bid Priority Customer Size Binary U 2: "..value
end

-- Dissect: Bid Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_priority_customer_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_4 = {}

-- Size: Bid Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_4.size = 4

-- Display: Bid Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_4.display = function(value)
  return "Bid Priority Customer Size Binary U 4: "..value
end

-- Dissect: Bid Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_priority_customer_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Bid Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_2 = {}

-- Size: Bid Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_2.size = 2

-- Display: Bid Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_2.display = function(value)
  return "Bid Size Binary U 2: "..value
end

-- Dissect: Bid Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Bid Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_4 = {}

-- Size: Bid Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_4.size = 4

-- Display: Bid Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_4.display = function(value)
  return "Bid Size Binary U 4: "..value
end

-- Dissect: Bid Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.bid_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- C To M Version
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.c_to_m_version = {}

-- Size: C To M Version
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.c_to_m_version.size = 8

-- Display: C To M Version
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.c_to_m_version.display = function(value)
  return "C To M Version: "..value
end

-- Dissect: C To M Version
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.c_to_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.c_to_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.c_to_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.c_to_m_version, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.call_or_put = {}

-- Size: Call Or Put
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.call_or_put.size = 1

-- Display: Call Or Put
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.call_or_put.display = function(value)
  if value == "C" then
    return "Call Or Put: Call (C)"
  end
  if value == "P" then
    return "Call Or Put: Put (P)"
  end

  return "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.closing_time = {}

-- Size: Closing Time
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.closing_time.size = 8

-- Display: Closing Time
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.computer_id = {}

-- Size: Computer Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.computer_id.size = 8

-- Display: Computer Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition = {}

-- Size: Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.size = 1

-- Display: Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.display = function(value)
  if value == "A" then
    return "Condition: Regular (A)"
  end
  if value == "T" then
    return "Condition: Trading Halt (T)"
  end
  if value == "W" then
    return "Condition: Wide (W)"
  end
  if value == "C" then
    return "Condition: Timer In Progress (C)"
  end
  if value == "M" then
    return "Condition: Simple Market Protection (M)"
  end
  if value == "L" then
    return "Condition: Simple Market Protection Prevented (L)"
  end

  return "Condition: Unknown("..value..")"
end

-- Dissect: Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.condition, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_sequence_number = {}

-- Size: End Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.event_reason = {}

-- Size: Event Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.event_reason.size = 1

-- Display: Event Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.event_reason.display = function(value)
  if value == "A" then
    return "Event Reason: Automatic (A)"
  end
  if value == "M" then
    return "Event Reason: Manual (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Expected Event Time Nano Seconds Part
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_nano_seconds_part = {}

-- Size: Expected Event Time Nano Seconds Part
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_nano_seconds_part.size = 4

-- Display: Expected Event Time Nano Seconds Part
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_nano_seconds_part.display = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_nano_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_nano_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_nano_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + length, value
end

-- Expected Event Time Seconds Part
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_seconds_part = {}

-- Size: Expected Event Time Seconds Part
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_seconds_part.size = 4

-- Display: Expected Event Time Seconds Part
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_seconds_part.display = function(value)
  return "Expected Event Time Seconds Part: "..value
end

-- Dissect: Expected Event Time Seconds Part
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.expected_event_time_seconds_part, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expiration_date = {}

-- Size: Expiration Date
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expiration_date.size = 8

-- Display: Expiration Date
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_side = {}

-- Size: Leg Side
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_side.size = 1

-- Display: Leg Side
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: Bid (B)"
  end
  if value == "A" then
    return "Leg Side: Ask (A)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Liquidity Acceptance Increment Indicator
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.liquidity_acceptance_increment_indicator = {}

-- Size: Liquidity Acceptance Increment Indicator
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.liquidity_acceptance_increment_indicator.size = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.liquidity_acceptance_increment_indicator.display = function(value)
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
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.liquidity_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.liquidity_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.liquidity_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Login Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_status = {}

-- Size: Login Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_status.size = 1

-- Display: Login Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_status.display = function(value)
  if value == "" then
    return "Login Status: Successful (<whitespace>)"
  end
  if value == "S" then
    return "Login Status: Invalid Trading Session Requested (S)"
  end
  if value == "S" then
    return "Login Status: Invalid Start Sequence Number Requested (S)"
  end
  if value == "U" then
    return "Login Status: No Active Trading Session Exists (U)"
  end
  if value == "X" then
    return "Login Status: Rejected (X)"
  end
  if value == "N" then
    return "Login Status: Invalid Start Sequence Number Requested (N)"
  end
  if value == "I" then
    return "Login Status: Incompatible Session Protocol Version (I)"
  end
  if value == "A" then
    return "Login Status: Incompatible Application Protocol Version (A)"
  end
  if value == "L" then
    return "Login Status: Request Rejected Because Client Already Logged In (L)"
  end

  return "Login Status: Unknown("..value..")"
end

-- Dissect: Login Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason = {}

-- Size: Logout Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason.size = 1

-- Display: Logout Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason.display = function(value)
  if value == "" then
    return "Logout Reason: Graceful Logout (<whitespace>)"
  end
  if value == "B" then
    return "Logout Reason: Bad Packet (B)"
  end
  if value == "L" then
    return "Logout Reason: Timed Out (L)"
  end
  if value == "A" then
    return "Logout Reason: Application Terminating Connection (A)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_text = {}

-- Display: Logout Text
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Long Term Option
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.long_term_option = {}

-- Size: Long Term Option
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.long_term_option.size = 1

-- Display: Long Term Option
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.long_term_option.display = function(value)
  if value == "Y" then
    return "Long Term Option: Yes (Y)"
  end
  if value == "N" then
    return "Long Term Option: No (N)"
  end

  return "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.matching_engine_id = {}

-- Size: Matching Engine Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.message_type = {}

-- Size: Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.message_type.size = 1

-- Display: Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.message_type.display = function(value)
  if value == "1" then
    return "Message Type: Sapphire System Time Message (1)"
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
    return "Message Type: Complex Top Of Market Best Bid Or Offer Compact Format Bid Message (b)"
  end
  if value == "o" then
    return "Message Type: Complex Top Of Market Best Bid Or Offer Compact Format Offer Message (o)"
  end
  if value == "e" then
    return "Message Type: Complex Top Of Market Best Bid Or Offer Wide Format Bid Message (e)"
  end
  if value == "f" then
    return "Message Type: Complex Top Of Market Best Bid Or Offer Wide Format Offer Message (f)"
  end
  if value == "m" then
    return "Message Type: Complex Double Sided Top Of Market Best Bid And Offer Compact Format Message (m)"
  end
  if value == "w" then
    return "Message Type: Complex Double Sided Top Of Market Best Bid And Offer Wide Format Message (w)"
  end
  if value == "t" then
    return "Message Type: Strategy Last Sale Message (t)"
  end
  if value == "H" then
    return "Message Type: Underlying Trading Status Notification Message (H)"
  end
  if value == "R" then
    return "Message Type: Refresh Request Message (R)"
  end
  if value == "r" then
    return "Message Type: Refresh Response Message (r)"
  end
  if value == "E" then
    return "Message Type: End Of Refresh Notification Message (E)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds = {}

-- Size: Nanoseconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size = 4

-- Display: Nanoseconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Net Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price = {}

-- Size: Net Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price.size = 8

-- Display: Net Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price.display = function(value)
  return "Net Price: "..value
end

-- Translate: Net Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Net Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price.translate(raw)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.net_price, range, value, display)

  return offset + length, value
end

-- Number Of Legs
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_legs = {}

-- Size: Number Of Legs
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_legs.size = 1

-- Display: Number Of Legs
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Offer Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition = {}

-- Size: Offer Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition.size = 1

-- Display: Offer Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition.display = function(value)
  if value == "A" then
    return "Offer Condition: Regular (A)"
  end
  if value == "T" then
    return "Offer Condition: Trading Halt (T)"
  end
  if value == "W" then
    return "Offer Condition: Wide (W)"
  end
  if value == "C" then
    return "Offer Condition: Timer In Progress (C)"
  end
  if value == "M" then
    return "Offer Condition: Simple Market Protection (M)"
  end
  if value == "L" then
    return "Offer Condition: Simple Market Protection Prevented (L)"
  end

  return "Offer Condition: Unknown("..value..")"
end

-- Dissect: Offer Condition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Offer Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2 = {}

-- Size: Offer Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2.size = 2

-- Display: Offer Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2.display = function(value)
  return "Offer Price Binary Prc 2s 2: "..value
end

-- Translate: Offer Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2.translate(raw)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_price_binary_prc_2s_2, range, value, display)

  return offset + length, value
end

-- Offer Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8 = {}

-- Size: Offer Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8.size = 8

-- Display: Offer Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8.display = function(value)
  return "Offer Price Binary Prc 4s 8: "..value
end

-- Translate: Offer Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Offer Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8.translate(raw)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_price_binary_prc_4s_8, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_2 = {}

-- Size: Offer Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_2.size = 2

-- Display: Offer Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_2.display = function(value)
  return "Offer Priority Customer Size Binary U 2: "..value
end

-- Dissect: Offer Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_priority_customer_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_4 = {}

-- Size: Offer Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_4.size = 4

-- Display: Offer Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_4.display = function(value)
  return "Offer Priority Customer Size Binary U 4: "..value
end

-- Dissect: Offer Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_priority_customer_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Offer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_2 = {}

-- Size: Offer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_2.size = 2

-- Display: Offer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_2.display = function(value)
  return "Offer Size Binary U 2: "..value
end

-- Dissect: Offer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Offer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_4 = {}

-- Size: Offer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_4.size = 4

-- Display: Offer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_4.display = function(value)
  return "Offer Size Binary U 4: "..value
end

-- Dissect: Offer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.offer_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_time = {}

-- Size: Opening Time
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_time.size = 8

-- Display: Opening Time
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_underlying_market_code.display = function(value)
  if value == "A" then
    return "Opening Underlying Market Code: Nyse Amex (A)"
  end
  if value == "B" then
    return "Opening Underlying Market Code: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Opening Underlying Market Code: National Stock Exchange (C)"
  end
  if value == "D" then
    return "Opening Underlying Market Code: Finra Adf (D)"
  end
  if value == "E" then
    return "Opening Underlying Market Code: Market Independent (E)"
  end
  if value == "H" then
    return "Opening Underlying Market Code: Miax Pearl Equities (H)"
  end
  if value == "I" then
    return "Opening Underlying Market Code: International Securities Exchange (I)"
  end
  if value == "J" then
    return "Opening Underlying Market Code: Edga Exchange Inc (J)"
  end
  if value == "K" then
    return "Opening Underlying Market Code: Edgx Exchange Inc (K)"
  end
  if value == "L" then
    return "Opening Underlying Market Code: Ltse (L)"
  end
  if value == "M" then
    return "Opening Underlying Market Code: Chicago Stock Exchange (M)"
  end
  if value == "N" then
    return "Opening Underlying Market Code: Nyse Euronext (N)"
  end
  if value == "P" then
    return "Opening Underlying Market Code: Nyse Arca Exchange (P)"
  end
  if value == "Q" then
    return "Opening Underlying Market Code: Nasdaq Omx Via Utp Feed (Q)"
  end
  if value == "T" then
    return "Opening Underlying Market Code: Nasdaq Omx Via Cta Feed (T)"
  end
  if value == "U" then
    return "Opening Underlying Market Code: Memx (U)"
  end
  if value == "V" then
    return "Opening Underlying Market Code: Iex (V)"
  end
  if value == "W" then
    return "Opening Underlying Market Code: Cboe Stock Exchange Cbsx (W)"
  end
  if value == "X" then
    return "Opening Underlying Market Code: Nasdaq Omx Phlx (X)"
  end
  if value == "Y" then
    return "Opening Underlying Market Code: Bats Y Exchange Inc (Y)"
  end
  if value == "Z" then
    return "Opening Underlying Market Code: Bats Exchange Inc (Z)"
  end

  return "Opening Underlying Market Code: Unknown("..value..")"
end

-- Dissect: Opening Underlying Market Code
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_length = {}

-- Size: Packet Length
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_length.size = 2

-- Display: Packet Length
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_type = {}

-- Size: Packet Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_type.size = 1

-- Display: Packet Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_type.display = function(value)
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
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2 = {}

-- Size: Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.size = 2

-- Display: Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.display = function(value)
  return "Price Binary Prc 2s 2: "..value
end

-- Translate: Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price Binary Prc 2s 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.translate(raw)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.price_binary_prc_2s_2, range, value, display)

  return offset + length, value
end

-- Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8 = {}

-- Size: Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.size = 8

-- Display: Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.display = function(value)
  return "Price Binary Prc 4s 8: "..value
end

-- Translate: Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price Binary Prc 4s 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.translate(raw)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.price_binary_prc_4s_8, range, value, display)

  return offset + length, value
end

-- Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2 = {}

-- Size: Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2.size = 2

-- Display: Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2.display = function(value)
  return "Priority Customer Size Binary U 2: "..value
end

-- Dissect: Priority Customer Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.priority_customer_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4 = {}

-- Size: Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4.size = 4

-- Display: Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4.display = function(value)
  return "Priority Customer Size Binary U 4: "..value
end

-- Dissect: Priority Customer Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.priority_customer_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Product Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id = {}

-- Size: Product Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id.size = 4

-- Display: Product Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type = {}

-- Size: Refresh Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type.display = function(value)
  if value == "P" then
    return "Refresh Message Type: Simple Series Update Refresh (P)"
  end
  if value == "C" then
    return "Refresh Message Type: Complex Strategy Update Refresh (C)"
  end
  if value == "T" then
    return "Refresh Message Type: Top Of Strategy Market Refresh (T)"
  end
  if value == "U" then
    return "Refresh Message Type: Underlying Trading Status Refresh (U)"
  end
  if value == "S" then
    return "Refresh Message Type: System State Refresh (S)"
  end

  return "Refresh Message Type: Unknown("..value..")"
end

-- Dissect: Refresh Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_1 = {}

-- Size: Reserved 1
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_1.size = 1

-- Display: Reserved 1
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 10
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_10 = {}

-- Size: Reserved 10
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_10.size = 10

-- Display: Reserved 10
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved 12
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_12 = {}

-- Size: Reserved 12
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_12.size = 12

-- Display: Reserved 12
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_12.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 17
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_17 = {}

-- Size: Reserved 17
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_17.size = 17

-- Display: Reserved 17
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_17.display = function(value)
  return "Reserved 17: "..value
end

-- Dissect: Reserved 17
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_17.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_17.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_17.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_17, range, value, display)

  return offset + length, value
end

-- Reserved 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_8 = {}

-- Size: Reserved 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_8.size = 8

-- Display: Reserved 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Restricted Option
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.restricted_option = {}

-- Size: Restricted Option
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.restricted_option.size = 1

-- Display: Restricted Option
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.restricted_option.display = function(value)
  if value == "Y" then
    return "Restricted Option: Yes (Y)"
  end
  if value == "N" then
    return "Restricted Option: No (N)"
  end

  return "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_bbo_posting_increment_indicator = {}

-- Size: Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_bbo_posting_increment_indicator.size = 1

-- Display: Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_bbo_posting_increment_indicator.display = function(value)
  if value == "P" then
    return "Sapphire Bbo Posting Increment Indicator: Penny (P)"
  end
  if value == "N" then
    return "Sapphire Bbo Posting Increment Indicator: Penny Or Nickel (N)"
  end
  if value == "D" then
    return "Sapphire Bbo Posting Increment Indicator: Nickel Or Dime (D)"
  end

  return "Sapphire Bbo Posting Increment Indicator: Unknown("..value..")"
end

-- Dissect: Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sapphire_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Seconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds = {}

-- Size: Seconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.size = 4

-- Store: Seconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.current = nil

-- Generated: Seconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.generated = function(value, range, packet, parent)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.display(value)
  local seconds = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.seconds, range, value, display)
  seconds:set_generated()
end

-- Display: Seconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.display = function(value)
  -- Parse unix seconds timestamp
  return "Seconds: "..os.date("%Y-%m-%d %H:%M:%S.", value)
end

-- Dissect: Seconds
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Symbol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.security_symbol = {}

-- Size: Security Symbol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.security_symbol.size = 6

-- Display: Security Symbol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number = {}

-- Size: Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.size = 8

-- Display: Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Packet Length
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_length = {}

-- Size: Sesm Packet Length
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_length.size = 2

-- Display: Sesm Packet Length
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_length.display = function(value)
  return "Sesm Packet Length: "..value
end

-- Dissect: Sesm Packet Length
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_packet_length, range, value, display)

  return offset + length, value
end

-- Sesm Packet Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_type = {}

-- Size: Sesm Packet Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_type.size = 1

-- Display: Sesm Packet Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_type.display = function(value)
  if value == "s" then
    return "Sesm Packet Type: Sequenced Data Packet (s)"
  end
  if value == "U" then
    return "Sesm Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "l" then
    return "Sesm Packet Type: Login Request (l)"
  end
  if value == "r" then
    return "Sesm Packet Type: Login Response (r)"
  end
  if value == "c" then
    return "Sesm Packet Type: Synchronization Complete (c)"
  end
  if value == "a" then
    return "Sesm Packet Type: Retransmission Request (a)"
  end
  if value == "X" then
    return "Sesm Packet Type: Logout Request (X)"
  end
  if value == "G" then
    return "Sesm Packet Type: Goodbye Packet (G)"
  end
  if value == "u" then
    return "Sesm Packet Type: Trading Session Update (u)"
  end
  if value == "0" then
    return "Sesm Packet Type: Server Heartbeat (0)"
  end
  if value == "1" then
    return "Sesm Packet Type: Client Heartbeat (1)"
  end
  if value == "T" then
    return "Sesm Packet Type: Test Packet (T)"
  end

  return "Sesm Packet Type: Unknown("..value..")"
end

-- Dissect: Sesm Packet Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_packet_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_version = {}

-- Size: Sesm Version
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_version.size = 5

-- Display: Sesm Version
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_id = {}

-- Size: Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_id.size = 4

-- Display: Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_number = {}

-- Size: Session Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_number.size = 1

-- Display: Session Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.session_number, range, value, display)

  return offset + length, value
end

-- Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2 = {}

-- Size: Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2.size = 2

-- Display: Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2.display = function(value)
  return "Size Binary U 2: "..value
end

-- Dissect: Size Binary U 2
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4 = {}

-- Size: Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.size = 4

-- Display: Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.display = function(value)
  return "Size Binary U 4: "..value
end

-- Dissect: Size Binary U 4
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.start_sequence_number = {}

-- Size: Start Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Strategy Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id = {}

-- Size: Strategy Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size = 4

-- Display: Strategy Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price = {}

-- Size: Strike Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price.size = 4

-- Display: Strike Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price.translate(raw)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_status = {}

-- Size: System Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_status.size = 1

-- Display: System Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_status.display = function(value)
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
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Text
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_text = {}

-- Display: Test Text
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.test_text, range, value, display)

  return offset + size, value
end

-- Trade Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trade_id = {}

-- Size: Trade Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trade_id.size = 4

-- Display: Trade Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_session_id = {}

-- Size: Trading Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_session_id.size = 1

-- Display: Trading Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_status = {}

-- Size: Trading Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_status.size = 1

-- Display: Trading Status
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_status.display = function(value)
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
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol = {}

-- Size: Underlying Symbol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Update Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.update_reason = {}

-- Size: Update Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.update_reason.size = 1

-- Display: Update Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.update_reason.display = function(value)
  if value == "N" then
    return "Update Reason: New Strategy Created (N)"
  end
  if value == "U" then
    return "Update Reason: Updated (U)"
  end

  return "Update Reason: Unknown("..value..")"
end

-- Dissect: Update Reason
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.update_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.update_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.update_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.update_reason, range, value, display)

  return offset + length, value
end

-- Username
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.username = {}

-- Size: Username
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.username.size = 5

-- Display: Username
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp = {}

-- Translate: Timestamp
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.timestamp, range, value, display)

  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_seconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.current

  if stored_seconds ~= nil then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
  end

  return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a
-----------------------------------------------------------------------

-- Test Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_packet = {}

-- Calculate size of: Test Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = sesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.test_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.test_packet, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Goodbye Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.goodbye_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_request = {}

-- Calculate size of: Logout Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = sesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.logout_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.logout_request, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.retransmission_request = {}

-- Size: Retransmission Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.retransmission_request.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.start_sequence_number.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_sequence_number.size

-- Display: Retransmission Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.retransmission_request, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.synchronization_complete = {}

-- Size: Synchronization Complete
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.synchronization_complete.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.synchronization_complete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_response = {}

-- Size: Login Response
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_response.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_status.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_session_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.highest_sequence_number.size

-- Display: Login Response
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 9 values
  index, login_status = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_response.dissect = function(buffer, offset, packet, parent)
  if show.login_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.login_response, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_request = {}

-- Size: Login Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_request.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_version.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.username.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.computer_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_protocol.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_trading_session_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_sequence_number.size

-- Display: Login Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_request.dissect = function(buffer, offset, packet, parent)
  if show.login_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.login_request, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_of_refresh_notification_message = {}

-- Size: End Of Refresh Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_of_refresh_notification_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type.size

-- Display: End Of Refresh Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_of_refresh_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_of_refresh_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_of_refresh_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.end_of_refresh_notification_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_of_refresh_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Trading Status Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_trading_status_notification_message = {}

-- Size: Underlying Trading Status Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_trading_status_notification_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_status.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.event_reason.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_seconds_part.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_nano_seconds_part.size

-- Display: Underlying Trading Status Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time Seconds Part: SecTime
  index, expected_event_time_seconds_part = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_seconds_part.dissect(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: BinaryU
  index, expected_event_time_nano_seconds_part = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expected_event_time_nano_seconds_part.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.underlying_trading_status_notification_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Last Sale Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_last_sale_message = {}

-- Size: Strategy Last Sale Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_last_sale_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trade_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_17.size

-- Display: Strategy Last Sale Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Last Sale Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.trade_id.dissect(buffer, index, packet, parent)

  -- Net Price: BinaryPrc4S
  index, net_price = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.net_price.dissect(buffer, index, packet, parent)

  -- Size Binary U 4: BinaryU
  index, size_binary_u_4 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Reserved 17: Alphanumeric
  index, reserved_17 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_17.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Last Sale Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.strategy_last_sale_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Double Sided Top Of Market Best Bid And Offer Wide Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message = {}

-- Size: Complex Double Sided Top Of Market Best Bid And Offer Wide Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_4.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_4.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition.size

-- Display: Complex Double Sided Top Of Market Best Bid And Offer Wide Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Double Sided Top Of Market Best Bid And Offer Wide Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.dissect(buffer, index, packet, parent)

  -- Bid Price Binary Prc 4s 8: BinaryPrc4S
  index, bid_price_binary_prc_4s_8 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_4s_8.dissect(buffer, index, packet, parent)

  -- Bid Size Binary U 4: BinaryU
  index, bid_size_binary_u_4 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size Binary U 4: BinaryU
  index, bid_priority_customer_size_binary_u_4 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price Binary Prc 4s 8: BinaryPrc4S
  index, offer_price_binary_prc_4s_8 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_4s_8.dissect(buffer, index, packet, parent)

  -- Offer Size Binary U 4: BinaryU
  index, offer_size_binary_u_4 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size Binary U 4: BinaryU
  index, offer_priority_customer_size_binary_u_4 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Double Sided Top Of Market Best Bid And Offer Wide Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Double Sided Top Of Market Best Bid And Offer Compact Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message = {}

-- Size: Complex Double Sided Top Of Market Best Bid And Offer Compact Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition.size

-- Display: Complex Double Sided Top Of Market Best Bid And Offer Compact Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Double Sided Top Of Market Best Bid And Offer Compact Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.dissect(buffer, index, packet, parent)

  -- Bid Price Binary Prc 2s 2: BinaryPrc2S
  index, bid_price_binary_prc_2s_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_price_binary_prc_2s_2.dissect(buffer, index, packet, parent)

  -- Bid Size Binary U 2: BinaryU
  index, bid_size_binary_u_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size Binary U 2: BinaryU
  index, bid_priority_customer_size_binary_u_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price Binary Prc 2s 2: BinaryPrc2S
  index, offer_price_binary_prc_2s_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_price_binary_prc_2s_2.dissect(buffer, index, packet, parent)

  -- Offer Size Binary U 2: BinaryU
  index, offer_size_binary_u_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size Binary U 2: BinaryU
  index, offer_priority_customer_size_binary_u_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Double Sided Top Of Market Best Bid And Offer Compact Format Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_offer_message = {}

-- Size: Complex Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_offer_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.size

-- Display: Complex Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.dissect(buffer, index, packet, parent)

  -- Price Binary Prc 4s 8: BinaryPrc4S
  index, price_binary_prc_4s_8 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.dissect(buffer, index, packet, parent)

  -- Size Binary U 4: BinaryU
  index, size_binary_u_4 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Priority Customer Size Binary U 4: BinaryU
  index, priority_customer_size_binary_u_4 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Condition: Alphanumeric
  index, condition = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_top_of_market_best_bid_or_offer_wide_format_offer_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_bid_message = {}

-- Size: Complex Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_bid_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.size

-- Display: Complex Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.dissect(buffer, index, packet, parent)

  -- Price Binary Prc 4s 8: BinaryPrc4S
  index, price_binary_prc_4s_8 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_4s_8.dissect(buffer, index, packet, parent)

  -- Size Binary U 4: BinaryU
  index, size_binary_u_4 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Priority Customer Size Binary U 4: BinaryU
  index, priority_customer_size_binary_u_4 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Condition: Alphanumeric
  index, condition = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_top_of_market_best_bid_or_offer_wide_format_bid_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_offer_message = {}

-- Size: Complex Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_offer_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.size

-- Display: Complex Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.dissect(buffer, index, packet, parent)

  -- Price Binary Prc 2s 2: BinaryPrc2S
  index, price_binary_prc_2s_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.dissect(buffer, index, packet, parent)

  -- Size Binary U 2: BinaryU
  index, size_binary_u_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Priority Customer Size Binary U 2: BinaryU
  index, priority_customer_size_binary_u_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Condition: Alphanumeric
  index, condition = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_top_of_market_best_bid_or_offer_compact_format_offer_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_bid_message = {}

-- Size: Complex Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_bid_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.size

-- Display: Complex Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.dissect(buffer, index, packet, parent)

  -- Price Binary Prc 2s 2: BinaryPrc2S
  index, price_binary_prc_2s_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.price_binary_prc_2s_2.dissect(buffer, index, packet, parent)

  -- Size Binary U 2: BinaryU
  index, size_binary_u_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Priority Customer Size Binary U 2: BinaryU
  index, priority_customer_size_binary_u_2 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Condition: Alphanumeric
  index, condition = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_top_of_market_best_bid_or_offer_compact_format_bid_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_state_message = {}

-- Size: System State Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_state_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.c_to_m_version.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_status.size

-- Display: System State Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- C To M Version: Alphanumeric
  index, c_to_m_version = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.c_to_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.system_state_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Definition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_definition = {}

-- Size: Leg Definition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_definition.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_ratio_qty.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_side.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_8.size

-- Display: Leg Definition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_definition.display = function(buffer, offset, value, packet, parent)
  return ""..value
end

-- Dissect Fields: Leg Definition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_definition.fields = function(buffer, offset, packet, parent, leg_definition_index)
  local index = offset

  -- Implicit Leg Definition Index
  if leg_definition_index ~= nil and show.leg_definition_index then
    local iteration = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.leg_definition_index, leg_definition_index)
    iteration:set_generated()
  end

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: BinaryU
  index, leg_ratio_qty = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Alphanumeric
  index, leg_side = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_side.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_definition.dissect = function(buffer, offset, packet, parent, leg_definition_index)
  if show.leg_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.leg_definition, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, value
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
  end
end

-- Complex Strategy Definition Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_strategy_definition_message = {}

-- Calculate size of: Complex Strategy Definition Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_strategy_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_1.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.update_reason.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_10.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_legs.size

  -- Calculate field size from count
  local leg_definition_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_definition_count * 17

  return index
end

-- Display: Complex Strategy Definition Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_strategy_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Strategy Definition Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_strategy_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Strategy Id: BinaryU
  index, strategy_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Active On Sapphire: Alphanumeric
  index, active_on_sapphire = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Update Reason: Alphanumeric
  index, update_reason = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.update_reason.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_10.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Definition
  for leg_definition_index = 1, number_of_legs do
    index, leg_definition = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.leg_definition.dissect(buffer, index, packet, parent, leg_definition_index)
  end

  return index
end

-- Dissect: Complex Strategy Definition Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_strategy_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.complex_strategy_definition_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_strategy_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_strategy_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_strategy_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Series Update Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.simple_series_update_message = {}

-- Size: Simple Series Update Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.simple_series_update_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.nanoseconds.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.security_symbol.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expiration_date.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.call_or_put.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_time.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.closing_time.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.restricted_option.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.long_term_option.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_bbo_posting_increment_indicator.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.liquidity_acceptance_increment_indicator.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_underlying_market_code.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_12.size

-- Display: Simple Series Update Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.simple_series_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Series Update Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.simple_series_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Sapphire: Alphanumeric
  index, active_on_sapphire = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.active_on_sapphire.dissect(buffer, index, packet, parent)

  -- Sapphire Bbo Posting Increment Indicator: Alphanumeric
  index, sapphire_bbo_posting_increment_indicator = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.liquidity_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  index, reserved_12 = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.reserved_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Series Update Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.simple_series_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.simple_series_update_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.simple_series_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.simple_series_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.simple_series_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Sapphire System Time Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_system_time_message = {}

-- Size: Sapphire System Time Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_system_time_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.size

-- Display: Sapphire System Time Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sapphire System Time Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.current = seconds

  if not packet.visited then
    miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: Sapphire System Time Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sapphire_system_time_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.data = {}

-- Dissect: Data
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sapphire System Time Message
  if message_type == "1" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sapphire_system_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Series Update Message
  if message_type == "P" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.simple_series_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Strategy Definition Message
  if message_type == "C" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_strategy_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "S" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Best Bid Or Offer Compact Format Bid Message
  if message_type == "b" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_bid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Best Bid Or Offer Compact Format Offer Message
  if message_type == "o" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_compact_format_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Best Bid Or Offer Wide Format Bid Message
  if message_type == "e" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_bid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Top Of Market Best Bid Or Offer Wide Format Offer Message
  if message_type == "f" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_top_of_market_best_bid_or_offer_wide_format_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Double Sided Top Of Market Best Bid And Offer Compact Format Message
  if message_type == "m" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_compact_format_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Double Sided Top Of Market Best Bid And Offer Wide Format Message
  if message_type == "w" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.complex_double_sided_top_of_market_best_bid_and_offer_wide_format_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Last Sale Message
  if message_type == "t" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.strategy_last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Notification Message
  if message_type == "H" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.underlying_trading_status_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_message = {}

-- Display: Application Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 15 values
  index, message_type = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 12 branches
  index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.application_message then
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.application_message, buffer(offset, 0))
    local current = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Refresh Response Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_response_message = {}

-- Calculate size of: Refresh Response Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_response_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.size

  -- Parse runtime size of: Application Message
  index = index + buffer(offset + index - 12, 2):le_uint()

  return index
end

-- Display: Refresh Response Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Application Message
  local size_of_application_message = sesm_packet_length - 12

  -- Application Message: Struct of 2 fields
  index, application_message = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_message.dissect(buffer, index, packet, parent, size_of_application_message)

  return index
end

-- Dissect: Refresh Response Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.refresh_response_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_request_message = {}

-- Size: Refresh Request Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_request_message.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type.size

-- Display: Refresh Request Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.refresh_request_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message = {}

-- Dissect: Unsequenced Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Refresh Request Message
  if unsequenced_message_type == "R" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Response Message
  if unsequenced_message_type == "r" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.refresh_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Refresh Notification Message
  if unsequenced_message_type == "E" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.end_of_refresh_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 2
end

-- Display: Unsequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.unsequenced_data_packet then
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Sesm Packet Length
  local sesm_packet_length = buffer(offset - 3, 2):le_uint()

  return sesm_packet_length - 11
end

-- Display: Sequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message
  index, sequenced_message = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.sequenced_data_packet then
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Sesm Payload
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_payload = {}

-- Dissect: Sesm Payload
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_payload.dissect = function(buffer, offset, packet, parent, sesm_packet_type)
  -- Dissect Sequenced Data Packet
  if sesm_packet_type == "s" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if sesm_packet_type == "U" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if sesm_packet_type == "l" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if sesm_packet_type == "r" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if sesm_packet_type == "c" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.synchronization_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if sesm_packet_type == "a" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.retransmission_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if sesm_packet_type == "X" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if sesm_packet_type == "G" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.goodbye_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Update
  if sesm_packet_type == "u" then
    return offset
  end
  -- Dissect Server Heartbeat
  if sesm_packet_type == "0" then
    return offset
  end
  -- Dissect Client Heartbeat
  if sesm_packet_type == "1" then
    return offset
  end
  -- Dissect Test Packet
  if sesm_packet_type == "T" then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.test_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sesm Packet Header
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header = {}

-- Size: Sesm Packet Header
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.size =
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_length.size + 
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_type.size

-- Display: Sesm Packet Header
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Packet Header
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, sesm_packet_length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_length.dissect(buffer, index, packet, parent)

  -- Sesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, sesm_packet_type = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sesm Packet Header
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.sesm_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_packet_header, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Sesm Packet Header: Struct of 2 fields
  index, sesm_packet_header = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Sesm Packet Type
  local sesm_packet_type = buffer(index - 1, 1):string()

  -- Sesm Payload: Runtime Type with 12 branches
  index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_payload.dissect(buffer, index, packet, parent, sesm_packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.sesm_tcp_packet then
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Tcp Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.tcp_packet = {}

-- Verify required size of Tcp packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_packet_header.size
end

-- Dissect Tcp Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.tcp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.current = data.seconds.frames[packet.number]
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.current = data

  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sesm_tcp_packet.dissect(buffer, index, packet, parent, size_of_sesm_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Payload
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.payload = {}

-- Dissect: Payload
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == 3 then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.mach_message = {}

-- Calculate size of: Mach Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.mach_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_length.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_type.size

  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Mach Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.mach_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, packet_type = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 1 branches
  index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Mach Message
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.mach_message.dissect = function(buffer, offset, packet, parent)
  if show.mach_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.fields.mach_message, buffer(offset, 0))
    local index = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.mach_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.mach_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.mach_message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.udp_packet = {}

-- Verify required size of Udp packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_sapphireoptions_complextopofmarket_mach_v1_0_a.sequence_number.size + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_length.size + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.packet_type.size + miax_sapphireoptions_complextopofmarket_mach_v1_0_a.session_number.size
end

-- Dissect Udp Packet
miax_sapphireoptions_complextopofmarket_mach_v1_0_a.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.current = data.seconds.frames[packet.number]
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.current = data

  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 5 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, mach_message = miax_sapphireoptions_complextopofmarket_mach_v1_0_a.mach_message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.init()
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.seconds.current = nil
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.current = nil
  miax_sapphireoptions_complextopofmarket_mach_v1_0_a.conversation.flows = {}
end

-- Dissector for Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a
function omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a, buffer(), omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return miax_sapphireoptions_complextopofmarket_mach_v1_0_a.udp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a (Udp)
local function omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_sapphireoptions_complextopofmarket_mach_v1_0_a.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a
  omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a (Tcp)
local function omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_sapphireoptions_complextopofmarket_mach_v1_0_a.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a
  omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Miax SapphireOptions ComplexTopOfMarket Mach 1.0.a
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a:register_heuristic("udp", omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a_udp_heuristic)
omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a:register_heuristic("tcp", omi_miax_sapphireoptions_complextopofmarket_mach_v1_0_a_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.0.a
--   Date: Thursday, January 25, 2024
--   Specification: Sapphire_Complex_Top_Of_Market_Feed_cToM_v1.0a.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
