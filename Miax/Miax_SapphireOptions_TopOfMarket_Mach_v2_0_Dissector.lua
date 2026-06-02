-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax SapphireOptions TopOfMarket Mach 2.0 Protocol
local omi_miax_sapphireoptions_topofmarket_mach_v2_0 = Proto("Omi.Miax.SapphireOptions.TopOfMarket.Mach.v2.0", "Miax SapphireOptions TopOfMarket Mach 2.0")

-- Protocol table
local miax_sapphireoptions_topofmarket_mach_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax SapphireOptions TopOfMarket Mach 2.0 Fields
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.active_on_sapphire = ProtoField.new("Active On Sapphire", "miax.sapphireoptions.topofmarket.mach.v2.0.activeonsapphire", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.application_message = ProtoField.new("Application Message", "miax.sapphireoptions.topofmarket.mach.v2.0.applicationmessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.application_protocol = ProtoField.new("Application Protocol", "miax.sapphireoptions.topofmarket.mach.v2.0.applicationprotocol", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_condition = ProtoField.new("Bid Condition", "miax.sapphireoptions.topofmarket.mach.v2.0.bidcondition", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_price_binary_prc_2u_2 = ProtoField.new("Bid Price Binary Prc 2u 2", "miax.sapphireoptions.topofmarket.mach.v2.0.bidpricebinaryprc2u2", ftypes.DOUBLE)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_price_binary_prc_4u_4 = ProtoField.new("Bid Price Binary Prc 4u 4", "miax.sapphireoptions.topofmarket.mach.v2.0.bidpricebinaryprc4u4", ftypes.DOUBLE)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_priority_customer_size_binary_u_2 = ProtoField.new("Bid Priority Customer Size Binary U 2", "miax.sapphireoptions.topofmarket.mach.v2.0.bidprioritycustomersizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_priority_customer_size_binary_u_4 = ProtoField.new("Bid Priority Customer Size Binary U 4", "miax.sapphireoptions.topofmarket.mach.v2.0.bidprioritycustomersizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_size_binary_u_2 = ProtoField.new("Bid Size Binary U 2", "miax.sapphireoptions.topofmarket.mach.v2.0.bidsizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_size_binary_u_4 = ProtoField.new("Bid Size Binary U 4", "miax.sapphireoptions.topofmarket.mach.v2.0.bidsizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.call_or_put = ProtoField.new("Call Or Put", "miax.sapphireoptions.topofmarket.mach.v2.0.callorput", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.closing_time = ProtoField.new("Closing Time", "miax.sapphireoptions.topofmarket.mach.v2.0.closingtime", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.computer_id = ProtoField.new("Computer Id", "miax.sapphireoptions.topofmarket.mach.v2.0.computerid", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.correction_number = ProtoField.new("Correction Number", "miax.sapphireoptions.topofmarket.mach.v2.0.correctionnumber", ftypes.UINT8)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.sapphireoptions.topofmarket.mach.v2.0.endsequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.event_reason = ProtoField.new("Event Reason", "miax.sapphireoptions.topofmarket.mach.v2.0.eventreason", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.expected_event_time_nano_seconds_part = ProtoField.new("Expected Event Time Nano Seconds Part", "miax.sapphireoptions.topofmarket.mach.v2.0.expectedeventtimenanosecondspart", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.expected_event_time_seconds_part = ProtoField.new("Expected Event Time Seconds Part", "miax.sapphireoptions.topofmarket.mach.v2.0.expectedeventtimesecondspart", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.expiration_date = ProtoField.new("Expiration Date", "miax.sapphireoptions.topofmarket.mach.v2.0.expirationdate", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.sapphireoptions.topofmarket.mach.v2.0.goodbyepacket", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.sapphireoptions.topofmarket.mach.v2.0.highestsequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.liquidity_acceptance_increment_indicator = ProtoField.new("Liquidity Acceptance Increment Indicator", "miax.sapphireoptions.topofmarket.mach.v2.0.liquidityacceptanceincrementindicator", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.login_request = ProtoField.new("Login Request", "miax.sapphireoptions.topofmarket.mach.v2.0.loginrequest", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.login_response = ProtoField.new("Login Response", "miax.sapphireoptions.topofmarket.mach.v2.0.loginresponse", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.login_status = ProtoField.new("Login Status", "miax.sapphireoptions.topofmarket.mach.v2.0.loginstatus", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.logout_reason = ProtoField.new("Logout Reason", "miax.sapphireoptions.topofmarket.mach.v2.0.logoutreason", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.logout_request = ProtoField.new("Logout Request", "miax.sapphireoptions.topofmarket.mach.v2.0.logoutrequest", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.logout_text = ProtoField.new("Logout Text", "miax.sapphireoptions.topofmarket.mach.v2.0.logouttext", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.long_term_option = ProtoField.new("Long Term Option", "miax.sapphireoptions.topofmarket.mach.v2.0.longtermoption", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.sapphireoptions.topofmarket.mach.v2.0.matchingengineid", ftypes.UINT8)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.message = ProtoField.new("Message", "miax.sapphireoptions.topofmarket.mach.v2.0.message", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.message_type = ProtoField.new("Message Type", "miax.sapphireoptions.topofmarket.mach.v2.0.messagetype", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.sapphireoptions.topofmarket.mach.v2.0.nanoseconds", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.notification_time = ProtoField.new("Notification Time", "miax.sapphireoptions.topofmarket.mach.v2.0.notificationtime", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.sapphireoptions.topofmarket.mach.v2.0.numberofmatchingengines", ftypes.UINT8)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_condition = ProtoField.new("Offer Condition", "miax.sapphireoptions.topofmarket.mach.v2.0.offercondition", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_price_binary_prc_2u_2 = ProtoField.new("Offer Price Binary Prc 2u 2", "miax.sapphireoptions.topofmarket.mach.v2.0.offerpricebinaryprc2u2", ftypes.DOUBLE)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_price_binary_prc_4u_4 = ProtoField.new("Offer Price Binary Prc 4u 4", "miax.sapphireoptions.topofmarket.mach.v2.0.offerpricebinaryprc4u4", ftypes.DOUBLE)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_priority_customer_size_binary_u_2 = ProtoField.new("Offer Priority Customer Size Binary U 2", "miax.sapphireoptions.topofmarket.mach.v2.0.offerprioritycustomersizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_priority_customer_size_binary_u_4 = ProtoField.new("Offer Priority Customer Size Binary U 4", "miax.sapphireoptions.topofmarket.mach.v2.0.offerprioritycustomersizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_size_binary_u_2 = ProtoField.new("Offer Size Binary U 2", "miax.sapphireoptions.topofmarket.mach.v2.0.offersizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_size_binary_u_4 = ProtoField.new("Offer Size Binary U 4", "miax.sapphireoptions.topofmarket.mach.v2.0.offersizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.opening_time = ProtoField.new("Opening Time", "miax.sapphireoptions.topofmarket.mach.v2.0.openingtime", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.opening_underlying_market_code = ProtoField.new("Opening Underlying Market Code", "miax.sapphireoptions.topofmarket.mach.v2.0.openingunderlyingmarketcode", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.packet_header = ProtoField.new("Packet Header", "miax.sapphireoptions.topofmarket.mach.v2.0.packetheader", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.packet_length = ProtoField.new("Packet Length", "miax.sapphireoptions.topofmarket.mach.v2.0.packetlength", ftypes.UINT16)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.packet_type = ProtoField.new("Packet Type", "miax.sapphireoptions.topofmarket.mach.v2.0.packettype", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.product_add_update_time = ProtoField.new("Product Add Update Time", "miax.sapphireoptions.topofmarket.mach.v2.0.productaddupdatetime", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.product_id = ProtoField.new("Product Id", "miax.sapphireoptions.topofmarket.mach.v2.0.productid", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.reference_correction_number = ProtoField.new("Reference Correction Number", "miax.sapphireoptions.topofmarket.mach.v2.0.referencecorrectionnumber", ftypes.UINT8)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.reference_trade_id = ProtoField.new("Reference Trade Id", "miax.sapphireoptions.topofmarket.mach.v2.0.referencetradeid", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.sapphireoptions.topofmarket.mach.v2.0.refreshmessagetype", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.sapphireoptions.topofmarket.mach.v2.0.requestedsequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.sapphireoptions.topofmarket.mach.v2.0.requestedtradingsessionid", ftypes.UINT8)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.sapphireoptions.topofmarket.mach.v2.0.reserved12", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.restricted_option = ProtoField.new("Restricted Option", "miax.sapphireoptions.topofmarket.mach.v2.0.restrictedoption", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.sapphireoptions.topofmarket.mach.v2.0.retransmissionrequest", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sapphire_bbo_posting_increment_indicator = ProtoField.new("Sapphire Bbo Posting Increment Indicator", "miax.sapphireoptions.topofmarket.mach.v2.0.sapphirebbopostingincrementindicator", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_condition = ProtoField.new("Sbbo Condition", "miax.sapphireoptions.topofmarket.mach.v2.0.sbbocondition", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_price_binary_prc_2u_2 = ProtoField.new("Sbbo Price Binary Prc 2u 2", "miax.sapphireoptions.topofmarket.mach.v2.0.sbbopricebinaryprc2u2", ftypes.DOUBLE)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_price_binary_prc_4u_4 = ProtoField.new("Sbbo Price Binary Prc 4u 4", "miax.sapphireoptions.topofmarket.mach.v2.0.sbbopricebinaryprc4u4", ftypes.DOUBLE)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_priority_customer_size_binary_u_2 = ProtoField.new("Sbbo Priority Customer Size Binary U 2", "miax.sapphireoptions.topofmarket.mach.v2.0.sbboprioritycustomersizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_priority_customer_size_binary_u_4 = ProtoField.new("Sbbo Priority Customer Size Binary U 4", "miax.sapphireoptions.topofmarket.mach.v2.0.sbboprioritycustomersizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_size_binary_u_2 = ProtoField.new("Sbbo Size Binary U 2", "miax.sapphireoptions.topofmarket.mach.v2.0.sbbosizebinaryu2", ftypes.UINT16)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_size_binary_u_4 = ProtoField.new("Sbbo Size Binary U 4", "miax.sapphireoptions.topofmarket.mach.v2.0.sbbosizebinaryu4", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.seconds = ProtoField.new("Seconds", "miax.sapphireoptions.topofmarket.mach.v2.0.seconds", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.security_symbol = ProtoField.new("Security Symbol", "miax.sapphireoptions.topofmarket.mach.v2.0.securitysymbol", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sequence_number = ProtoField.new("Sequence Number", "miax.sapphireoptions.topofmarket.mach.v2.0.sequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.sapphireoptions.topofmarket.mach.v2.0.sequenceddatapacket", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.sapphireoptions.topofmarket.mach.v2.0.sequencedmessagetype", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.sapphireoptions.topofmarket.mach.v2.0.sesmtcppacket", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sesm_version = ProtoField.new("Sesm Version", "miax.sapphireoptions.topofmarket.mach.v2.0.sesmversion", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.session_id = ProtoField.new("Session Id", "miax.sapphireoptions.topofmarket.mach.v2.0.sessionid", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.session_number = ProtoField.new("Session Number", "miax.sapphireoptions.topofmarket.mach.v2.0.sessionnumber", ftypes.UINT8)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.sapphireoptions.topofmarket.mach.v2.0.startsequencenumber", ftypes.UINT64)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.strike_price = ProtoField.new("Strike Price", "miax.sapphireoptions.topofmarket.mach.v2.0.strikeprice", ftypes.DOUBLE)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.sapphireoptions.topofmarket.mach.v2.0.synchronizationcomplete", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.system_status = ProtoField.new("System Status", "miax.sapphireoptions.topofmarket.mach.v2.0.systemstatus", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.tcp_packet = ProtoField.new("Tcp Packet", "miax.sapphireoptions.topofmarket.mach.v2.0.tcppacket", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.test_packet = ProtoField.new("Test Packet", "miax.sapphireoptions.topofmarket.mach.v2.0.testpacket", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.test_text = ProtoField.new("Test Text", "miax.sapphireoptions.topofmarket.mach.v2.0.testtext", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.to_m_version = ProtoField.new("To M Version", "miax.sapphireoptions.topofmarket.mach.v2.0.tomversion", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_condition = ProtoField.new("Trade Condition", "miax.sapphireoptions.topofmarket.mach.v2.0.tradecondition", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_id = ProtoField.new("Trade Id", "miax.sapphireoptions.topofmarket.mach.v2.0.tradeid", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_price = ProtoField.new("Trade Price", "miax.sapphireoptions.topofmarket.mach.v2.0.tradeprice", ftypes.DOUBLE)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_size = ProtoField.new("Trade Size", "miax.sapphireoptions.topofmarket.mach.v2.0.tradesize", ftypes.UINT32)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.sapphireoptions.topofmarket.mach.v2.0.tradingsessionid", ftypes.UINT8)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trading_status = ProtoField.new("Trading Status", "miax.sapphireoptions.topofmarket.mach.v2.0.tradingstatus", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.udp_packet = ProtoField.new("Udp Packet", "miax.sapphireoptions.topofmarket.mach.v2.0.udppacket", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "miax.sapphireoptions.topofmarket.mach.v2.0.underlyingsymbol", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.sapphireoptions.topofmarket.mach.v2.0.unsequenceddatapacket", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.sapphireoptions.topofmarket.mach.v2.0.unsequencedmessagetype", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.username = ProtoField.new("Username", "miax.sapphireoptions.topofmarket.mach.v2.0.username", ftypes.STRING)

-- Miax SapphireOptions Mach TopOfMarket 2.0 Application Messages
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.end_of_refresh_notification_message = ProtoField.new("End Of Refresh Notification Message", "miax.sapphireoptions.topofmarket.mach.v2.0.endofrefreshnotificationmessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.last_sale_message = ProtoField.new("Last Sale Message", "miax.sapphireoptions.topofmarket.mach.v2.0.lastsalemessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "miax.sapphireoptions.topofmarket.mach.v2.0.refreshrequestmessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.refresh_response_message = ProtoField.new("Refresh Response Message", "miax.sapphireoptions.topofmarket.mach.v2.0.refreshresponsemessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sapphire_system_time_message = ProtoField.new("Sapphire System Time Message", "miax.sapphireoptions.topofmarket.mach.v2.0.sapphiresystemtimemessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.series_update_message = ProtoField.new("Series Update Message", "miax.sapphireoptions.topofmarket.mach.v2.0.seriesupdatemessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message = ProtoField.new("Simple Double Sided Top Of Market Best Bid Or Offer Compact Format Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpledoublesidedtopofmarketbestbidoroffercompactformatmessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message = ProtoField.new("Simple Double Sided Top Of Market Best Bid Or Offer Wide Format Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpledoublesidedtopofmarketbestbidorofferwideformatmessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_compact_format_bid_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Compact Format Bid Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpletopofmarketbestbidoroffercompactformatbidmessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpletopofmarketbestbidoroffercompactformatbidprioritycustomermessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_compact_format_offer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Compact Format Offer Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpletopofmarketbestbidoroffercompactformatoffermessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpletopofmarketbestbidoroffercompactformatofferprioritycustomermessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_wide_format_bid_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Wide Format Bid Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpletopofmarketbestbidorofferwideformatbidmessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpletopofmarketbestbidorofferwideformatbidprioritycustomermessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_wide_format_offer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Wide Format Offer Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpletopofmarketbestbidorofferwideformatoffermessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message = ProtoField.new("Simple Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message", "miax.sapphireoptions.topofmarket.mach.v2.0.simpletopofmarketbestbidorofferwideformatofferprioritycustomermessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.system_state_message = ProtoField.new("System State Message", "miax.sapphireoptions.topofmarket.mach.v2.0.systemstatemessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.sapphireoptions.topofmarket.mach.v2.0.tradecancelmessage", ftypes.STRING)
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.underlying_trading_status_notification_message = ProtoField.new("Underlying Trading Status Notification Message", "miax.sapphireoptions.topofmarket.mach.v2.0.underlyingtradingstatusnotificationmessage", ftypes.STRING)

-- Miax SapphireOptions TopOfMarket Mach 2.0 generated fields
omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.timestamp = ProtoField.new("Timestamp", "miax.sapphireoptions.topofmarket.mach.v2.0.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax SapphireOptions TopOfMarket Mach 2.0 Element Dissection Options
show.application_message = true
show.application_messages = true
show.goodbye_packet = true
show.login_request = true
show.login_response = true
show.logout_request = true
show.message = true
show.packet_header = true
show.retransmission_request = true
show.sequenced_data_packet = true
show.sesm_tcp_packet = true
show.synchronization_complete = true
show.tcp_packet = true
show.test_packet = true
show.udp_packet = true
show.unsequenced_data_packet = true

-- Register Miax SapphireOptions TopOfMarket Mach 2.0 Show Options
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_sesm_tcp_packet = Pref.bool("Show Sesm Tcp Packet", show.sesm_tcp_packet, "Parse and add Sesm Tcp Packet to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_synchronization_complete = Pref.bool("Show Synchronization Complete", show.synchronization_complete, "Parse and add Synchronization Complete to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_tcp_packet = Pref.bool("Show Tcp Packet", show.tcp_packet, "Parse and add Tcp Packet to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_test_packet = Pref.bool("Show Test Packet", show.test_packet, "Parse and add Test Packet to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_udp_packet = Pref.bool("Show Udp Packet", show.udp_packet, "Parse and add Udp Packet to protocol tree")
omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")


-- Handle changed preferences
function omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_message ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_application_message then
    show.application_message = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_application_message
  end
  if show.application_messages ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_application_messages then
    show.application_messages = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_application_messages
  end
  if show.goodbye_packet ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_goodbye_packet then
    show.goodbye_packet = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_goodbye_packet
  end
  if show.login_request ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_login_request then
    show.login_request = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_login_request
  end
  if show.login_response ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_login_response then
    show.login_response = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_login_response
  end
  if show.logout_request ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_logout_request then
    show.logout_request = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_logout_request
  end
  if show.message ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_message then
    show.message = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_message
  end
  if show.packet_header ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_packet_header then
    show.packet_header = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_packet_header
  end
  if show.retransmission_request ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_retransmission_request then
    show.retransmission_request = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_retransmission_request
  end
  if show.sequenced_data_packet ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_sequenced_data_packet
  end
  if show.sesm_tcp_packet ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_sesm_tcp_packet then
    show.sesm_tcp_packet = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_sesm_tcp_packet
  end
  if show.synchronization_complete ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_synchronization_complete then
    show.synchronization_complete = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_synchronization_complete
  end
  if show.tcp_packet ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_tcp_packet then
    show.tcp_packet = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_tcp_packet
  end
  if show.test_packet ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_test_packet then
    show.test_packet = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_test_packet
  end
  if show.udp_packet ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_udp_packet then
    show.udp_packet = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_udp_packet
  end
  if show.unsequenced_data_packet ~= omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_miax_sapphireoptions_topofmarket_mach_v2_0.prefs.show_unsequenced_data_packet
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_sapphireoptions_topofmarket_mach_v2_0.conversation = {}
miax_sapphireoptions_topofmarket_mach_v2_0.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_sapphireoptions_topofmarket_mach_v2_0.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_sapphireoptions_topofmarket_mach_v2_0.conversation.data = function(packet)
  local key = miax_sapphireoptions_topofmarket_mach_v2_0.conversation.key(packet)
  local data = miax_sapphireoptions_topofmarket_mach_v2_0.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_sapphireoptions_topofmarket_mach_v2_0.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_sapphireoptions_topofmarket_mach_v2_0.conversation.current = nil


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
-- Miax SapphireOptions TopOfMarket Mach 2.0 Fields
-----------------------------------------------------------------------

-- Active On Sapphire
miax_sapphireoptions_topofmarket_mach_v2_0.active_on_sapphire = {}

-- Size: Active On Sapphire
miax_sapphireoptions_topofmarket_mach_v2_0.active_on_sapphire.size = 1

-- Display: Active On Sapphire
miax_sapphireoptions_topofmarket_mach_v2_0.active_on_sapphire.display = function(value)
  if value == "A" then
    return "Active On Sapphire: Active (A)"
  end
  if value == "I" then
    return "Active On Sapphire: Inactive (I)"
  end

  return "Active On Sapphire: Unknown("..value..")"
end

-- Dissect: Active On Sapphire
miax_sapphireoptions_topofmarket_mach_v2_0.active_on_sapphire.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.active_on_sapphire.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.active_on_sapphire.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.active_on_sapphire, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_sapphireoptions_topofmarket_mach_v2_0.application_protocol = {}

-- Size: Application Protocol
miax_sapphireoptions_topofmarket_mach_v2_0.application_protocol.size = 8

-- Display: Application Protocol
miax_sapphireoptions_topofmarket_mach_v2_0.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_sapphireoptions_topofmarket_mach_v2_0.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Bid Condition
miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition = {}

-- Size: Bid Condition
miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition.size = 1

-- Display: Bid Condition
miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition.display = function(value)
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
miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_condition, range, value, display)

  return offset + length, value
end

-- Bid Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2 = {}

-- Size: Bid Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2.size = 2

-- Display: Bid Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2.display = function(value)
  return "Bid Price Binary Prc 2u 2: "..value
end

-- Translate: Bid Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2.translate(raw)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_price_binary_prc_2u_2, range, value, display)

  return offset + length, value
end

-- Bid Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4 = {}

-- Size: Bid Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4.size = 4

-- Display: Bid Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4.display = function(value)
  return "Bid Price Binary Prc 4u 4: "..value
end

-- Translate: Bid Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Bid Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4.translate(raw)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_price_binary_prc_4u_4, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_2 = {}

-- Size: Bid Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_2.size = 2

-- Display: Bid Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_2.display = function(value)
  return "Bid Priority Customer Size Binary U 2: "..value
end

-- Dissect: Bid Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_priority_customer_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Bid Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_4 = {}

-- Size: Bid Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_4.size = 4

-- Display: Bid Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_4.display = function(value)
  return "Bid Priority Customer Size Binary U 4: "..value
end

-- Dissect: Bid Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_priority_customer_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Bid Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_2 = {}

-- Size: Bid Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_2.size = 2

-- Display: Bid Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_2.display = function(value)
  return "Bid Size Binary U 2: "..value
end

-- Dissect: Bid Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Bid Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_4 = {}

-- Size: Bid Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_4.size = 4

-- Display: Bid Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_4.display = function(value)
  return "Bid Size Binary U 4: "..value
end

-- Dissect: Bid Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.bid_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Call Or Put
miax_sapphireoptions_topofmarket_mach_v2_0.call_or_put = {}

-- Size: Call Or Put
miax_sapphireoptions_topofmarket_mach_v2_0.call_or_put.size = 1

-- Display: Call Or Put
miax_sapphireoptions_topofmarket_mach_v2_0.call_or_put.display = function(value)
  if value == "C" then
    return "Call Or Put: Call (C)"
  end
  if value == "P" then
    return "Call Or Put: Put (P)"
  end

  return "Call Or Put: Unknown("..value..")"
end

-- Dissect: Call Or Put
miax_sapphireoptions_topofmarket_mach_v2_0.call_or_put.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.call_or_put.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.call_or_put.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.call_or_put, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_sapphireoptions_topofmarket_mach_v2_0.closing_time = {}

-- Size: Closing Time
miax_sapphireoptions_topofmarket_mach_v2_0.closing_time.size = 8

-- Display: Closing Time
miax_sapphireoptions_topofmarket_mach_v2_0.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_sapphireoptions_topofmarket_mach_v2_0.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_sapphireoptions_topofmarket_mach_v2_0.computer_id = {}

-- Size: Computer Id
miax_sapphireoptions_topofmarket_mach_v2_0.computer_id.size = 8

-- Display: Computer Id
miax_sapphireoptions_topofmarket_mach_v2_0.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_sapphireoptions_topofmarket_mach_v2_0.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_sapphireoptions_topofmarket_mach_v2_0.correction_number = {}

-- Size: Correction Number
miax_sapphireoptions_topofmarket_mach_v2_0.correction_number.size = 1

-- Display: Correction Number
miax_sapphireoptions_topofmarket_mach_v2_0.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_sapphireoptions_topofmarket_mach_v2_0.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.correction_number, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.end_sequence_number = {}

-- Size: End Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Event Reason
miax_sapphireoptions_topofmarket_mach_v2_0.event_reason = {}

-- Size: Event Reason
miax_sapphireoptions_topofmarket_mach_v2_0.event_reason.size = 1

-- Display: Event Reason
miax_sapphireoptions_topofmarket_mach_v2_0.event_reason.display = function(value)
  if value == "A" then
    return "Event Reason: Automatic (A)"
  end
  if value == "M" then
    return "Event Reason: Manual (M)"
  end

  return "Event Reason: Unknown("..value..")"
end

-- Dissect: Event Reason
miax_sapphireoptions_topofmarket_mach_v2_0.event_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.event_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.event_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.event_reason, range, value, display)

  return offset + length, value
end

-- Expected Event Time Nano Seconds Part
miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_nano_seconds_part = {}

-- Size: Expected Event Time Nano Seconds Part
miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_nano_seconds_part.size = 4

-- Display: Expected Event Time Nano Seconds Part
miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_nano_seconds_part.display = function(value)
  return "Expected Event Time Nano Seconds Part: "..value
end

-- Dissect: Expected Event Time Nano Seconds Part
miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_nano_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_nano_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_nano_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.expected_event_time_nano_seconds_part, range, value, display)

  return offset + length, value
end

-- Expected Event Time Seconds Part
miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_seconds_part = {}

-- Size: Expected Event Time Seconds Part
miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_seconds_part.size = 4

-- Display: Expected Event Time Seconds Part
miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_seconds_part.display = function(value)
  return "Expected Event Time Seconds Part: "..value
end

-- Dissect: Expected Event Time Seconds Part
miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_seconds_part.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_seconds_part.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_seconds_part.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.expected_event_time_seconds_part, range, value, display)

  return offset + length, value
end

-- Expiration Date
miax_sapphireoptions_topofmarket_mach_v2_0.expiration_date = {}

-- Size: Expiration Date
miax_sapphireoptions_topofmarket_mach_v2_0.expiration_date.size = 8

-- Display: Expiration Date
miax_sapphireoptions_topofmarket_mach_v2_0.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
miax_sapphireoptions_topofmarket_mach_v2_0.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.expiration_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Liquidity Acceptance Increment Indicator
miax_sapphireoptions_topofmarket_mach_v2_0.liquidity_acceptance_increment_indicator = {}

-- Size: Liquidity Acceptance Increment Indicator
miax_sapphireoptions_topofmarket_mach_v2_0.liquidity_acceptance_increment_indicator.size = 1

-- Display: Liquidity Acceptance Increment Indicator
miax_sapphireoptions_topofmarket_mach_v2_0.liquidity_acceptance_increment_indicator.display = function(value)
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
miax_sapphireoptions_topofmarket_mach_v2_0.liquidity_acceptance_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.liquidity_acceptance_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.liquidity_acceptance_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.liquidity_acceptance_increment_indicator, range, value, display)

  return offset + length, value
end

-- Login Status
miax_sapphireoptions_topofmarket_mach_v2_0.login_status = {}

-- Size: Login Status
miax_sapphireoptions_topofmarket_mach_v2_0.login_status.size = 1

-- Display: Login Status
miax_sapphireoptions_topofmarket_mach_v2_0.login_status.display = function(value)
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
miax_sapphireoptions_topofmarket_mach_v2_0.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason = {}

-- Size: Logout Reason
miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason.size = 1

-- Display: Logout Reason
miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason.display = function(value)
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
miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_sapphireoptions_topofmarket_mach_v2_0.logout_text = {}

-- Display: Logout Text
miax_sapphireoptions_topofmarket_mach_v2_0.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_sapphireoptions_topofmarket_mach_v2_0.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Long Term Option
miax_sapphireoptions_topofmarket_mach_v2_0.long_term_option = {}

-- Size: Long Term Option
miax_sapphireoptions_topofmarket_mach_v2_0.long_term_option.size = 1

-- Display: Long Term Option
miax_sapphireoptions_topofmarket_mach_v2_0.long_term_option.display = function(value)
  if value == "Y" then
    return "Long Term Option: Far Month Expiration (Y)"
  end
  if value == "N" then
    return "Long Term Option: Near Month Expiration (N)"
  end

  return "Long Term Option: Unknown("..value..")"
end

-- Dissect: Long Term Option
miax_sapphireoptions_topofmarket_mach_v2_0.long_term_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.long_term_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.long_term_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.long_term_option, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
miax_sapphireoptions_topofmarket_mach_v2_0.matching_engine_id = {}

-- Size: Matching Engine Id
miax_sapphireoptions_topofmarket_mach_v2_0.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_sapphireoptions_topofmarket_mach_v2_0.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_sapphireoptions_topofmarket_mach_v2_0.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.message_type = {}

-- Size: Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.message_type.size = 1

-- Display: Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.message_type.display = function(value)
  if value == "1" then
    return "Message Type: Sapphire System Time Message (1)"
  end
  if value == "P" then
    return "Message Type: Series Update Message (P)"
  end
  if value == "S" then
    return "Message Type: System State Message (S)"
  end
  if value == "B" then
    return "Message Type: Simple Top Of Market Best Bid Or Offer Compact Format Bid Message (B)"
  end
  if value == "h" then
    return "Message Type: Simple Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message (h)"
  end
  if value == "O" then
    return "Message Type: Simple Top Of Market Best Bid Or Offer Compact Format Offer Message (O)"
  end
  if value == "i" then
    return "Message Type: Simple Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message (i)"
  end
  if value == "W" then
    return "Message Type: Simple Top Of Market Best Bid Or Offer Wide Format Bid Message (W)"
  end
  if value == "j" then
    return "Message Type: Simple Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message (j)"
  end
  if value == "A" then
    return "Message Type: Simple Top Of Market Best Bid Or Offer Wide Format Offer Message (A)"
  end
  if value == "k" then
    return "Message Type: Simple Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message (k)"
  end
  if value == "d" then
    return "Message Type: Simple Double Sided Top Of Market Best Bid Or Offer Compact Format Message (d)"
  end
  if value == "D" then
    return "Message Type: Simple Double Sided Top Of Market Best Bid Or Offer Wide Format Message (D)"
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
miax_sapphireoptions_topofmarket_mach_v2_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds = {}

-- Size: Nanoseconds
miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size = 4

-- Display: Nanoseconds
miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_sapphireoptions_topofmarket_mach_v2_0.notification_time = {}

-- Size: Notification Time
miax_sapphireoptions_topofmarket_mach_v2_0.notification_time.size = 4

-- Display: Notification Time
miax_sapphireoptions_topofmarket_mach_v2_0.notification_time.display = function(value)
  return "Notification Time: "..value
end

-- Dissect: Notification Time
miax_sapphireoptions_topofmarket_mach_v2_0.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Offer Condition
miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition = {}

-- Size: Offer Condition
miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition.size = 1

-- Display: Offer Condition
miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition.display = function(value)
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
miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_condition, range, value, display)

  return offset + length, value
end

-- Offer Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2 = {}

-- Size: Offer Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2.size = 2

-- Display: Offer Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2.display = function(value)
  return "Offer Price Binary Prc 2u 2: "..value
end

-- Translate: Offer Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2.translate(raw)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_price_binary_prc_2u_2, range, value, display)

  return offset + length, value
end

-- Offer Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4 = {}

-- Size: Offer Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4.size = 4

-- Display: Offer Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4.display = function(value)
  return "Offer Price Binary Prc 4u 4: "..value
end

-- Translate: Offer Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Offer Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4.translate(raw)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_price_binary_prc_4u_4, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_2 = {}

-- Size: Offer Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_2.size = 2

-- Display: Offer Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_2.display = function(value)
  return "Offer Priority Customer Size Binary U 2: "..value
end

-- Dissect: Offer Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_priority_customer_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Offer Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_4 = {}

-- Size: Offer Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_4.size = 4

-- Display: Offer Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_4.display = function(value)
  return "Offer Priority Customer Size Binary U 4: "..value
end

-- Dissect: Offer Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_priority_customer_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Offer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_2 = {}

-- Size: Offer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_2.size = 2

-- Display: Offer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_2.display = function(value)
  return "Offer Size Binary U 2: "..value
end

-- Dissect: Offer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Offer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_4 = {}

-- Size: Offer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_4.size = 4

-- Display: Offer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_4.display = function(value)
  return "Offer Size Binary U 4: "..value
end

-- Dissect: Offer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.offer_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_sapphireoptions_topofmarket_mach_v2_0.opening_time = {}

-- Size: Opening Time
miax_sapphireoptions_topofmarket_mach_v2_0.opening_time.size = 8

-- Display: Opening Time
miax_sapphireoptions_topofmarket_mach_v2_0.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_sapphireoptions_topofmarket_mach_v2_0.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Opening Underlying Market Code
miax_sapphireoptions_topofmarket_mach_v2_0.opening_underlying_market_code = {}

-- Size: Opening Underlying Market Code
miax_sapphireoptions_topofmarket_mach_v2_0.opening_underlying_market_code.size = 1

-- Display: Opening Underlying Market Code
miax_sapphireoptions_topofmarket_mach_v2_0.opening_underlying_market_code.display = function(value)
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
    return "Opening Underlying Market Code: Nasdaq Omx Utp (Q)"
  end
  if value == "T" then
    return "Opening Underlying Market Code: Nasdaq Omx Cta (T)"
  end
  if value == "U" then
    return "Opening Underlying Market Code: Memx (U)"
  end
  if value == "V" then
    return "Opening Underlying Market Code: Iex (V)"
  end
  if value == "W" then
    return "Opening Underlying Market Code: Cboe Stock Exchange (W)"
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
miax_sapphireoptions_topofmarket_mach_v2_0.opening_underlying_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.opening_underlying_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.opening_underlying_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.opening_underlying_market_code, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_sapphireoptions_topofmarket_mach_v2_0.packet_length = {}

-- Size: Packet Length
miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.size = 2

-- Display: Packet Length
miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Type
miax_sapphireoptions_topofmarket_mach_v2_0.packet_type = {}

-- Size: Packet Type
miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.size = 1

-- Display: Packet Type
miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.display = function(value)
  if value == "0" then
    return "Packet Type: Heartbeat (0)"
  end
  if value == "1" then
    return "Packet Type: Start Of Session (1)"
  end
  if value == "2" then
    return "Packet Type: End Of Session (2)"
  end
  if value == "3" then
    return "Packet Type: Application Message (3)"
  end
  if value == "s" then
    return "Packet Type: Sequenced Data Packet (s)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "l" then
    return "Packet Type: Login Request (l)"
  end
  if value == "r" then
    return "Packet Type: Login Response (r)"
  end
  if value == "c" then
    return "Packet Type: Synchronization Complete (c)"
  end
  if value == "a" then
    return "Packet Type: Retransmission Request (a)"
  end
  if value == "X" then
    return "Packet Type: Logout Request (X)"
  end
  if value == "G" then
    return "Packet Type: Goodbye Packet (G)"
  end
  if value == "u" then
    return "Packet Type: Trading Session Update (u)"
  end
  if value == "0" then
    return "Packet Type: Server Heartbeat (0)"
  end
  if value == "1" then
    return "Packet Type: Client Heartbeat (1)"
  end
  if value == "T" then
    return "Packet Type: Test Packet (T)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Product Add Update Time
miax_sapphireoptions_topofmarket_mach_v2_0.product_add_update_time = {}

-- Size: Product Add Update Time
miax_sapphireoptions_topofmarket_mach_v2_0.product_add_update_time.size = 4

-- Display: Product Add Update Time
miax_sapphireoptions_topofmarket_mach_v2_0.product_add_update_time.display = function(value)
  return "Product Add Update Time: "..value
end

-- Dissect: Product Add Update Time
miax_sapphireoptions_topofmarket_mach_v2_0.product_add_update_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.product_add_update_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.product_add_update_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.product_add_update_time, range, value, display)

  return offset + length, value
end

-- Product Id
miax_sapphireoptions_topofmarket_mach_v2_0.product_id = {}

-- Size: Product Id
miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size = 4

-- Display: Product Id
miax_sapphireoptions_topofmarket_mach_v2_0.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.product_id, range, value, display)

  return offset + length, value
end

-- Reference Correction Number
miax_sapphireoptions_topofmarket_mach_v2_0.reference_correction_number = {}

-- Size: Reference Correction Number
miax_sapphireoptions_topofmarket_mach_v2_0.reference_correction_number.size = 1

-- Display: Reference Correction Number
miax_sapphireoptions_topofmarket_mach_v2_0.reference_correction_number.display = function(value)
  return "Reference Correction Number: "..value
end

-- Dissect: Reference Correction Number
miax_sapphireoptions_topofmarket_mach_v2_0.reference_correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.reference_correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.reference_correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.reference_correction_number, range, value, display)

  return offset + length, value
end

-- Reference Trade Id
miax_sapphireoptions_topofmarket_mach_v2_0.reference_trade_id = {}

-- Size: Reference Trade Id
miax_sapphireoptions_topofmarket_mach_v2_0.reference_trade_id.size = 4

-- Display: Reference Trade Id
miax_sapphireoptions_topofmarket_mach_v2_0.reference_trade_id.display = function(value)
  return "Reference Trade Id: "..value
end

-- Dissect: Reference Trade Id
miax_sapphireoptions_topofmarket_mach_v2_0.reference_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.reference_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.reference_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.reference_trade_id, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type = {}

-- Size: Refresh Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type.display = function(value)
  if value == "P" then
    return "Refresh Message Type: Series Update Refresh (P)"
  end
  if value == "Q" then
    return "Refresh Message Type: Top Of Market Refresh (Q)"
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
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Reserved 12
miax_sapphireoptions_topofmarket_mach_v2_0.reserved_12 = {}

-- Size: Reserved 12
miax_sapphireoptions_topofmarket_mach_v2_0.reserved_12.size = 12

-- Display: Reserved 12
miax_sapphireoptions_topofmarket_mach_v2_0.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_sapphireoptions_topofmarket_mach_v2_0.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.reserved_12.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Restricted Option
miax_sapphireoptions_topofmarket_mach_v2_0.restricted_option = {}

-- Size: Restricted Option
miax_sapphireoptions_topofmarket_mach_v2_0.restricted_option.size = 1

-- Display: Restricted Option
miax_sapphireoptions_topofmarket_mach_v2_0.restricted_option.display = function(value)
  if value == "Y" then
    return "Restricted Option: Accept Position Closing (Y)"
  end
  if value == "N" then
    return "Restricted Option: Accept Open And Close (N)"
  end

  return "Restricted Option: Unknown("..value..")"
end

-- Dissect: Restricted Option
miax_sapphireoptions_topofmarket_mach_v2_0.restricted_option.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.restricted_option.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.restricted_option.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.restricted_option, range, value, display)

  return offset + length, value
end

-- Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_bbo_posting_increment_indicator = {}

-- Size: Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_bbo_posting_increment_indicator.size = 1

-- Display: Sapphire Bbo Posting Increment Indicator
miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_bbo_posting_increment_indicator.display = function(value)
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
miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_bbo_posting_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_bbo_posting_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_bbo_posting_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sapphire_bbo_posting_increment_indicator, range, value, display)

  return offset + length, value
end

-- Sbbo Condition
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition = {}

-- Size: Sbbo Condition
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size = 1

-- Display: Sbbo Condition
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.display = function(value)
  if value == "A" then
    return "Sbbo Condition: Regular (A)"
  end
  if value == "B" then
    return "Sbbo Condition: Public Customer Interest (B)"
  end
  if value == "C" then
    return "Sbbo Condition: Not Firm (C)"
  end
  if value == "R" then
    return "Sbbo Condition: Reserved (R)"
  end
  if value == "T" then
    return "Sbbo Condition: Trading Halt (T)"
  end

  return "Sbbo Condition: Unknown("..value..")"
end

-- Dissect: Sbbo Condition
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_condition, range, value, display)

  return offset + length, value
end

-- Sbbo Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2 = {}

-- Size: Sbbo Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.size = 2

-- Display: Sbbo Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.display = function(value)
  return "Sbbo Price Binary Prc 2u 2: "..value
end

-- Translate: Sbbo Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.translate = function(raw)
  return raw/100
end

-- Dissect: Sbbo Price Binary Prc 2u 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.translate(raw)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_price_binary_prc_2u_2, range, value, display)

  return offset + length, value
end

-- Sbbo Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4 = {}

-- Size: Sbbo Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.size = 4

-- Display: Sbbo Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.display = function(value)
  return "Sbbo Price Binary Prc 4u 4: "..value
end

-- Translate: Sbbo Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.translate = function(raw)
  return raw/10000
end

-- Dissect: Sbbo Price Binary Prc 4u 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.translate(raw)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_price_binary_prc_4u_4, range, value, display)

  return offset + length, value
end

-- Sbbo Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2 = {}

-- Size: Sbbo Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.size = 2

-- Display: Sbbo Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.display = function(value)
  return "Sbbo Priority Customer Size Binary U 2: "..value
end

-- Dissect: Sbbo Priority Customer Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_priority_customer_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Sbbo Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4 = {}

-- Size: Sbbo Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.size = 4

-- Display: Sbbo Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.display = function(value)
  return "Sbbo Priority Customer Size Binary U 4: "..value
end

-- Dissect: Sbbo Priority Customer Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_priority_customer_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Sbbo Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2 = {}

-- Size: Sbbo Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.size = 2

-- Display: Sbbo Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.display = function(value)
  return "Sbbo Size Binary U 2: "..value
end

-- Dissect: Sbbo Size Binary U 2
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_size_binary_u_2, range, value, display)

  return offset + length, value
end

-- Sbbo Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4 = {}

-- Size: Sbbo Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.size = 4

-- Display: Sbbo Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.display = function(value)
  return "Sbbo Size Binary U 4: "..value
end

-- Dissect: Sbbo Size Binary U 4
miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sbbo_size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Seconds
miax_sapphireoptions_topofmarket_mach_v2_0.seconds = {}

-- Size: Seconds
miax_sapphireoptions_topofmarket_mach_v2_0.seconds.size = 4

-- Store: Seconds
miax_sapphireoptions_topofmarket_mach_v2_0.seconds.current = nil

-- Generated: Seconds
miax_sapphireoptions_topofmarket_mach_v2_0.seconds.generated = function(value, range, packet, parent)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.seconds.display(value)
  local seconds = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.seconds, range, value, display)
  seconds:set_generated()
end

-- Display: Seconds
miax_sapphireoptions_topofmarket_mach_v2_0.seconds.display = function(value)
  -- Parse unix seconds timestamp
  return "Seconds: "..os.date("%Y-%m-%d %H:%M:%S.", value)
end

-- Dissect: Seconds
miax_sapphireoptions_topofmarket_mach_v2_0.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Symbol
miax_sapphireoptions_topofmarket_mach_v2_0.security_symbol = {}

-- Size: Security Symbol
miax_sapphireoptions_topofmarket_mach_v2_0.security_symbol.size = 6

-- Display: Security Symbol
miax_sapphireoptions_topofmarket_mach_v2_0.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
miax_sapphireoptions_topofmarket_mach_v2_0.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number = {}

-- Size: Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.size = 8

-- Display: Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_sapphireoptions_topofmarket_mach_v2_0.sesm_version = {}

-- Size: Sesm Version
miax_sapphireoptions_topofmarket_mach_v2_0.sesm_version.size = 5

-- Display: Sesm Version
miax_sapphireoptions_topofmarket_mach_v2_0.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_sapphireoptions_topofmarket_mach_v2_0.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.sesm_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.session_id = {}

-- Size: Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.session_id.size = 4

-- Display: Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_sapphireoptions_topofmarket_mach_v2_0.session_number = {}

-- Size: Session Number
miax_sapphireoptions_topofmarket_mach_v2_0.session_number.size = 1

-- Display: Session Number
miax_sapphireoptions_topofmarket_mach_v2_0.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_sapphireoptions_topofmarket_mach_v2_0.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.session_number, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.start_sequence_number = {}

-- Size: Start Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_sapphireoptions_topofmarket_mach_v2_0.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Strike Price
miax_sapphireoptions_topofmarket_mach_v2_0.strike_price = {}

-- Size: Strike Price
miax_sapphireoptions_topofmarket_mach_v2_0.strike_price.size = 4

-- Display: Strike Price
miax_sapphireoptions_topofmarket_mach_v2_0.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
miax_sapphireoptions_topofmarket_mach_v2_0.strike_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Strike Price
miax_sapphireoptions_topofmarket_mach_v2_0.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_topofmarket_mach_v2_0.strike_price.translate(raw)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.strike_price, range, value, display)

  return offset + length, value
end

-- System Status
miax_sapphireoptions_topofmarket_mach_v2_0.system_status = {}

-- Size: System Status
miax_sapphireoptions_topofmarket_mach_v2_0.system_status.size = 1

-- Display: System Status
miax_sapphireoptions_topofmarket_mach_v2_0.system_status.display = function(value)
  if value == "S" then
    return "System Status: Start Of System Hours (S)"
  end
  if value == "C" then
    return "System Status: End Of System Hours (C)"
  end
  if value == "1" then
    return "System Status: Start Of Test Session (1)"
  end
  if value == "2" then
    return "System Status: End Of Test Session (2)"
  end

  return "System Status: Unknown("..value..")"
end

-- Dissect: System Status
miax_sapphireoptions_topofmarket_mach_v2_0.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Text
miax_sapphireoptions_topofmarket_mach_v2_0.test_text = {}

-- Display: Test Text
miax_sapphireoptions_topofmarket_mach_v2_0.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_sapphireoptions_topofmarket_mach_v2_0.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.test_text, range, value, display)

  return offset + size, value
end

-- To M Version
miax_sapphireoptions_topofmarket_mach_v2_0.to_m_version = {}

-- Size: To M Version
miax_sapphireoptions_topofmarket_mach_v2_0.to_m_version.size = 8

-- Display: To M Version
miax_sapphireoptions_topofmarket_mach_v2_0.to_m_version.display = function(value)
  return "To M Version: "..value
end

-- Dissect: To M Version
miax_sapphireoptions_topofmarket_mach_v2_0.to_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.to_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.to_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.to_m_version, range, value, display)

  return offset + length, value
end

-- Trade Condition
miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition = {}

-- Size: Trade Condition
miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition.size = 1

-- Display: Trade Condition
miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition.display = function(value)
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
    return "Trade Condition: Auto (I)"
  end
  if value == "J" then
    return "Trade Condition: Reopening Of An Option (J)"
  end
  if value == "K" then
    return "Trade Condition: Reserved (K)"
  end
  if value == "L" then
    return "Trade Condition: Reserved (L)"
  end
  if value == "M" then
    return "Trade Condition: Reserved (M)"
  end
  if value == "N" then
    return "Trade Condition: Reserved (N)"
  end
  if value == "O" then
    return "Trade Condition: Reserved (O)"
  end
  if value == "P" then
    return "Trade Condition: Reserved (P)"
  end
  if value == "Q" then
    return "Trade Condition: Reserved (Q)"
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
    return "Trade Condition: Reserved (a)"
  end
  if value == "b" then
    return "Trade Condition: Reserved (b)"
  end
  if value == "c" then
    return "Trade Condition: Customer To Customer Cross Or Qcc (c)"
  end
  if value == "d" then
    return "Trade Condition: Reserved (d)"
  end
  if value == "e" then
    return "Trade Condition: Cross Transaction On The Exchange Floor (e)"
  end
  if value == "f" then
    return "Trade Condition: Complex Transaction That Is Not Complex Stock Tied And Does Not Involve Legging (f)"
  end
  if value == "g" then
    return "Trade Condition: Reserved (g)"
  end
  if value == "h" then
    return "Trade Condition: Complex Customer To Customer Cross Or Complex Qcc Transaction That Is Not Complex Stock Tied (h)"
  end
  if value == "i" then
    return "Trade Condition: Complex Cross Transaction On The Exchange Floor That Is Not Complex Stock Tied (i)"
  end
  if value == "j" then
    return "Trade Condition: Complex Cross Transaction On The Exchange Floor That Has Legging Occurred On The Floor And Not Complex Stock Tied (j)"
  end
  if value == "k" then
    return "Trade Condition: Reserved (k)"
  end
  if value == "l" then
    return "Trade Condition: Reserved (l)"
  end
  if value == "m" then
    return "Trade Condition: Complex Cross Transaction On The Exchange Floor That Has Legging Occurred On The Floor And Not Complex Stock Tied (m)"
  end
  if value == "n" then
    return "Trade Condition: Complex Stock Tied Transaction That Does Not Involve Legging (n)"
  end
  if value == "o" then
    return "Trade Condition: Complex Customer To Customer Cross Stock Tied Or Complex Qcc Stock Tied Transaction (o)"
  end
  if value == "p" then
    return "Trade Condition: Complex Cross Stock Tied Transaction On The Exchange Floor That Does Not Involve Legging (p)"
  end
  if value == "q" then
    return "Trade Condition: Complex Cross Stock Tied Transaction On The Exchange Floor That Has Legging Occurred On The Floor (q)"
  end
  if value == "r" then
    return "Trade Condition: Reserved (r)"
  end
  if value == "s" then
    return "Trade Condition: Complex Cross Stock Tied Transaction On The Exchange Floor That Has Legging Occurred On The Floor (s)"
  end
  if value == "t" then
    return "Trade Condition: Reserved (t)"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_sapphireoptions_topofmarket_mach_v2_0.trade_id = {}

-- Size: Trade Id
miax_sapphireoptions_topofmarket_mach_v2_0.trade_id.size = 4

-- Display: Trade Id
miax_sapphireoptions_topofmarket_mach_v2_0.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_sapphireoptions_topofmarket_mach_v2_0.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Price
miax_sapphireoptions_topofmarket_mach_v2_0.trade_price = {}

-- Size: Trade Price
miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.size = 4

-- Display: Trade Price
miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.translate = function(raw)
  return raw/10000
end

-- Dissect: Trade Price
miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint()
  local value = miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.translate(raw)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Size
miax_sapphireoptions_topofmarket_mach_v2_0.trade_size = {}

-- Size: Trade Size
miax_sapphireoptions_topofmarket_mach_v2_0.trade_size.size = 4

-- Display: Trade Size
miax_sapphireoptions_topofmarket_mach_v2_0.trade_size.display = function(value)
  return "Trade Size: "..value
end

-- Dissect: Trade Size
miax_sapphireoptions_topofmarket_mach_v2_0.trade_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.trade_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_size, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.trading_session_id = {}

-- Size: Trading Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.trading_session_id.size = 1

-- Display: Trading Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_sapphireoptions_topofmarket_mach_v2_0.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_sapphireoptions_topofmarket_mach_v2_0.trading_status = {}

-- Size: Trading Status
miax_sapphireoptions_topofmarket_mach_v2_0.trading_status.size = 1

-- Display: Trading Status
miax_sapphireoptions_topofmarket_mach_v2_0.trading_status.display = function(value)
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
miax_sapphireoptions_topofmarket_mach_v2_0.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol = {}

-- Size: Underlying Symbol
miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol.size = 11

-- Display: Underlying Symbol
miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_sapphireoptions_topofmarket_mach_v2_0.username = {}

-- Size: Username
miax_sapphireoptions_topofmarket_mach_v2_0.username.size = 5

-- Display: Username
miax_sapphireoptions_topofmarket_mach_v2_0.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_sapphireoptions_topofmarket_mach_v2_0.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_sapphireoptions_topofmarket_mach_v2_0.timestamp = {}

-- Translate: Timestamp
miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.timestamp, range, value, display)

  miax_sapphireoptions_topofmarket_mach_v2_0.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_seconds = miax_sapphireoptions_topofmarket_mach_v2_0.seconds.current

  if stored_seconds ~= nil then
    return miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
  end

  return miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax SapphireOptions TopOfMarket Mach 2.0
-----------------------------------------------------------------------

-- Test Packet
miax_sapphireoptions_topofmarket_mach_v2_0.test_packet = {}

-- Calculate size of: Test Packet
miax_sapphireoptions_topofmarket_mach_v2_0.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_sapphireoptions_topofmarket_mach_v2_0.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_sapphireoptions_topofmarket_mach_v2_0.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_sapphireoptions_topofmarket_mach_v2_0.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_sapphireoptions_topofmarket_mach_v2_0.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.test_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.test_packet, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Goodbye Packet
miax_sapphireoptions_topofmarket_mach_v2_0.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_sapphireoptions_topofmarket_mach_v2_0.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_sapphireoptions_topofmarket_mach_v2_0.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_sapphireoptions_topofmarket_mach_v2_0.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_sapphireoptions_topofmarket_mach_v2_0.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_sapphireoptions_topofmarket_mach_v2_0.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.goodbye_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_sapphireoptions_topofmarket_mach_v2_0.logout_request = {}

-- Calculate size of: Logout Request
miax_sapphireoptions_topofmarket_mach_v2_0.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_sapphireoptions_topofmarket_mach_v2_0.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_sapphireoptions_topofmarket_mach_v2_0.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_sapphireoptions_topofmarket_mach_v2_0.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_sapphireoptions_topofmarket_mach_v2_0.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_sapphireoptions_topofmarket_mach_v2_0.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.logout_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.logout_request, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_sapphireoptions_topofmarket_mach_v2_0.retransmission_request = {}

-- Size: Retransmission Request
miax_sapphireoptions_topofmarket_mach_v2_0.retransmission_request.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.start_sequence_number.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.end_sequence_number.size

-- Display: Retransmission Request
miax_sapphireoptions_topofmarket_mach_v2_0.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_sapphireoptions_topofmarket_mach_v2_0.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_sapphireoptions_topofmarket_mach_v2_0.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_sapphireoptions_topofmarket_mach_v2_0.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_sapphireoptions_topofmarket_mach_v2_0.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.retransmission_request, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_sapphireoptions_topofmarket_mach_v2_0.synchronization_complete = {}

-- Size: Synchronization Complete
miax_sapphireoptions_topofmarket_mach_v2_0.synchronization_complete.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_sapphireoptions_topofmarket_mach_v2_0.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_sapphireoptions_topofmarket_mach_v2_0.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_sapphireoptions_topofmarket_mach_v2_0.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.synchronization_complete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_sapphireoptions_topofmarket_mach_v2_0.login_response = {}

-- Size: Login Response
miax_sapphireoptions_topofmarket_mach_v2_0.login_response.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.login_status.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trading_session_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.highest_sequence_number.size

-- Display: Login Response
miax_sapphireoptions_topofmarket_mach_v2_0.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_sapphireoptions_topofmarket_mach_v2_0.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_sapphireoptions_topofmarket_mach_v2_0.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 9 values
  index, login_status = miax_sapphireoptions_topofmarket_mach_v2_0.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_sapphireoptions_topofmarket_mach_v2_0.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_sapphireoptions_topofmarket_mach_v2_0.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_sapphireoptions_topofmarket_mach_v2_0.login_response.dissect = function(buffer, offset, packet, parent)
  if show.login_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.login_response, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_sapphireoptions_topofmarket_mach_v2_0.login_request = {}

-- Size: Login Request
miax_sapphireoptions_topofmarket_mach_v2_0.login_request.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.sesm_version.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.username.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.computer_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.application_protocol.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.requested_trading_session_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.requested_sequence_number.size

-- Display: Login Request
miax_sapphireoptions_topofmarket_mach_v2_0.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_sapphireoptions_topofmarket_mach_v2_0.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_sapphireoptions_topofmarket_mach_v2_0.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_sapphireoptions_topofmarket_mach_v2_0.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_sapphireoptions_topofmarket_mach_v2_0.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_sapphireoptions_topofmarket_mach_v2_0.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_sapphireoptions_topofmarket_mach_v2_0.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_sapphireoptions_topofmarket_mach_v2_0.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_sapphireoptions_topofmarket_mach_v2_0.login_request.dissect = function(buffer, offset, packet, parent)
  if show.login_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.login_request, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.end_of_refresh_notification_message = {}

-- Size: End Of Refresh Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.end_of_refresh_notification_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type.size

-- Display: End Of Refresh Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.end_of_refresh_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.end_of_refresh_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.end_of_refresh_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.end_of_refresh_notification_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.end_of_refresh_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Trading Status Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.underlying_trading_status_notification_message = {}

-- Size: Underlying Trading Status Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.underlying_trading_status_notification_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trading_status.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.event_reason.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_seconds_part.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_nano_seconds_part.size

-- Display: Underlying Trading Status Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.underlying_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Trading Status Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.underlying_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alphanumeric
  index, trading_status = miax_sapphireoptions_topofmarket_mach_v2_0.trading_status.dissect(buffer, index, packet, parent)

  -- Event Reason: Alphanumeric
  index, event_reason = miax_sapphireoptions_topofmarket_mach_v2_0.event_reason.dissect(buffer, index, packet, parent)

  -- Expected Event Time Seconds Part: SecTime
  index, expected_event_time_seconds_part = miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_seconds_part.dissect(buffer, index, packet, parent)

  -- Expected Event Time Nano Seconds Part: BinaryU
  index, expected_event_time_nano_seconds_part = miax_sapphireoptions_topofmarket_mach_v2_0.expected_event_time_nano_seconds_part.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Trading Status Notification Message
miax_sapphireoptions_topofmarket_mach_v2_0.underlying_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.underlying_trading_status_notification_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.underlying_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.underlying_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
miax_sapphireoptions_topofmarket_mach_v2_0.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_sapphireoptions_topofmarket_mach_v2_0.trade_cancel_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trade_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.correction_number.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trade_size.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition.size

-- Display: Trade Cancel Message
miax_sapphireoptions_topofmarket_mach_v2_0.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_sapphireoptions_topofmarket_mach_v2_0.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_sapphireoptions_topofmarket_mach_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_sapphireoptions_topofmarket_mach_v2_0.correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_sapphireoptions_topofmarket_mach_v2_0.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_sapphireoptions_topofmarket_mach_v2_0.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Sale Message
miax_sapphireoptions_topofmarket_mach_v2_0.last_sale_message = {}

-- Size: Last Sale Message
miax_sapphireoptions_topofmarket_mach_v2_0.last_sale_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trade_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.correction_number.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.reference_trade_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.reference_correction_number.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trade_size.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition.size

-- Display: Last Sale Message
miax_sapphireoptions_topofmarket_mach_v2_0.last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Last Sale Message
miax_sapphireoptions_topofmarket_mach_v2_0.last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_sapphireoptions_topofmarket_mach_v2_0.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_sapphireoptions_topofmarket_mach_v2_0.correction_number.dissect(buffer, index, packet, parent)

  -- Reference Trade Id: BinaryU
  index, reference_trade_id = miax_sapphireoptions_topofmarket_mach_v2_0.reference_trade_id.dissect(buffer, index, packet, parent)

  -- Reference Correction Number: BinaryU
  index, reference_correction_number = miax_sapphireoptions_topofmarket_mach_v2_0.reference_correction_number.dissect(buffer, index, packet, parent)

  -- Trade Price: BinaryPrc4U
  index, trade_price = miax_sapphireoptions_topofmarket_mach_v2_0.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Size: BinaryU
  index, trade_size = miax_sapphireoptions_topofmarket_mach_v2_0.trade_size.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alphanumeric
  index, trade_condition = miax_sapphireoptions_topofmarket_mach_v2_0.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Last Sale Message
miax_sapphireoptions_topofmarket_mach_v2_0.last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.last_sale_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message = {}

-- Size: Simple Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition.size

-- Display: Simple Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price Binary Prc 4u 4: BinaryPrc4U
  index, bid_price_binary_prc_4u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_4u_4.dissect(buffer, index, packet, parent)

  -- Bid Size Binary U 4: BinaryU
  index, bid_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size Binary U 4: BinaryU
  index, bid_priority_customer_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price Binary Prc 4u 4: BinaryPrc4U
  index, offer_price_binary_prc_4u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_4u_4.dissect(buffer, index, packet, parent)

  -- Offer Size Binary U 4: BinaryU
  index, offer_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size Binary U 4: BinaryU
  index, offer_priority_customer_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Double Sided Top Of Market Best Bid Or Offer Wide Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message = {}

-- Size: Simple Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition.size

-- Display: Simple Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Bid Price Binary Prc 2u 2: BinaryPrc2U
  index, bid_price_binary_prc_2u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.bid_price_binary_prc_2u_2.dissect(buffer, index, packet, parent)

  -- Bid Size Binary U 2: BinaryU
  index, bid_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.bid_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Bid Priority Customer Size Binary U 2: BinaryU
  index, bid_priority_customer_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.bid_priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Bid Condition: Alphanumeric
  index, bid_condition = miax_sapphireoptions_topofmarket_mach_v2_0.bid_condition.dissect(buffer, index, packet, parent)

  -- Offer Price Binary Prc 2u 2: BinaryPrc2U
  index, offer_price_binary_prc_2u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.offer_price_binary_prc_2u_2.dissect(buffer, index, packet, parent)

  -- Offer Size Binary U 2: BinaryU
  index, offer_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.offer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Offer Priority Customer Size Binary U 2: BinaryU
  index, offer_priority_customer_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.offer_priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Offer Condition: Alphanumeric
  index, offer_condition = miax_sapphireoptions_topofmarket_mach_v2_0.offer_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Double Sided Top Of Market Best Bid Or Offer Compact Format Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Sbbo Price Binary Prc 4u 4: BinaryPrc4U
  index, sbbo_price_binary_prc_4u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Size Binary U 4: BinaryU
  index, sbbo_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Priority Customer Size Binary U 4: BinaryU
  index, sbbo_priority_customer_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Condition: Alphanumeric
  index, sbbo_condition = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Sbbo Price Binary Prc 4u 4: BinaryPrc4U
  index, sbbo_price_binary_prc_4u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Size Binary U 4: BinaryU
  index, sbbo_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Priority Customer Size Binary U 4: BinaryU
  index, sbbo_priority_customer_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Condition: Alphanumeric
  index, sbbo_condition = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Wide Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_wide_format_offer_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Sbbo Price Binary Prc 4u 4: BinaryPrc4U
  index, sbbo_price_binary_prc_4u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Size Binary U 4: BinaryU
  index, sbbo_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Priority Customer Size Binary U 4: BinaryU
  index, sbbo_priority_customer_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Condition: Alphanumeric
  index, sbbo_condition = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Sbbo Price Binary Prc 4u 4: BinaryPrc4U
  index, sbbo_price_binary_prc_4u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_4u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Size Binary U 4: BinaryU
  index, sbbo_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Priority Customer Size Binary U 4: BinaryU
  index, sbbo_priority_customer_size_binary_u_4 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Sbbo Condition: Alphanumeric
  index, sbbo_condition = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Wide Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_wide_format_bid_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Sbbo Price Binary Prc 2u 2: BinaryPrc2U
  index, sbbo_price_binary_prc_2u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Size Binary U 2: BinaryU
  index, sbbo_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Priority Customer Size Binary U 2: BinaryU
  index, sbbo_priority_customer_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Condition: Alphanumeric
  index, sbbo_condition = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Sbbo Price Binary Prc 2u 2: BinaryPrc2U
  index, sbbo_price_binary_prc_2u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Size Binary U 2: BinaryU
  index, sbbo_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Priority Customer Size Binary U 2: BinaryU
  index, sbbo_priority_customer_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Condition: Alphanumeric
  index, sbbo_condition = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Compact Format Offer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_compact_format_offer_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Sbbo Price Binary Prc 2u 2: BinaryPrc2U
  index, sbbo_price_binary_prc_2u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Size Binary U 2: BinaryU
  index, sbbo_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Priority Customer Size Binary U 2: BinaryU
  index, sbbo_priority_customer_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Condition: Alphanumeric
  index, sbbo_condition = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.fields(buffer, offset, packet, parent)
  end
end

-- Simple Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_message = {}

-- Size: Simple Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.nanoseconds.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.size

-- Display: Simple Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_sapphireoptions_topofmarket_mach_v2_0.timestamp.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Sbbo Price Binary Prc 2u 2: BinaryPrc2U
  index, sbbo_price_binary_prc_2u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_price_binary_prc_2u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Size Binary U 2: BinaryU
  index, sbbo_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Priority Customer Size Binary U 2: BinaryU
  index, sbbo_priority_customer_size_binary_u_2 = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_priority_customer_size_binary_u_2.dissect(buffer, index, packet, parent)

  -- Sbbo Condition: Alphanumeric
  index, sbbo_condition = miax_sapphireoptions_topofmarket_mach_v2_0.sbbo_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Top Of Market Best Bid Or Offer Compact Format Bid Message
miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.simple_top_of_market_best_bid_or_offer_compact_format_bid_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_sapphireoptions_topofmarket_mach_v2_0.system_state_message = {}

-- Size: System State Message
miax_sapphireoptions_topofmarket_mach_v2_0.system_state_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.notification_time.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.to_m_version.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.session_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.system_status.size

-- Display: System State Message
miax_sapphireoptions_topofmarket_mach_v2_0.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_sapphireoptions_topofmarket_mach_v2_0.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_sapphireoptions_topofmarket_mach_v2_0.notification_time.dissect(buffer, index, packet, parent)

  -- To M Version: Alphanumeric
  index, to_m_version = miax_sapphireoptions_topofmarket_mach_v2_0.to_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_sapphireoptions_topofmarket_mach_v2_0.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_sapphireoptions_topofmarket_mach_v2_0.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_sapphireoptions_topofmarket_mach_v2_0.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.system_state_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Series Update Message
miax_sapphireoptions_topofmarket_mach_v2_0.series_update_message = {}

-- Size: Series Update Message
miax_sapphireoptions_topofmarket_mach_v2_0.series_update_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.product_add_update_time.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.product_id.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.security_symbol.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.expiration_date.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.strike_price.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.call_or_put.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.opening_time.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.closing_time.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.restricted_option.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.long_term_option.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.active_on_sapphire.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_bbo_posting_increment_indicator.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.liquidity_acceptance_increment_indicator.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.opening_underlying_market_code.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.reserved_12.size

-- Display: Series Update Message
miax_sapphireoptions_topofmarket_mach_v2_0.series_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Update Message
miax_sapphireoptions_topofmarket_mach_v2_0.series_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Product Add Update Time: NanoTime
  index, product_add_update_time = miax_sapphireoptions_topofmarket_mach_v2_0.product_add_update_time.dissect(buffer, index, packet, parent)

  -- Product Id: BinaryU
  index, product_id = miax_sapphireoptions_topofmarket_mach_v2_0.product_id.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alphanumeric
  index, underlying_symbol = miax_sapphireoptions_topofmarket_mach_v2_0.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = miax_sapphireoptions_topofmarket_mach_v2_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Date: Alphanumeric
  index, expiration_date = miax_sapphireoptions_topofmarket_mach_v2_0.expiration_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrc4U
  index, strike_price = miax_sapphireoptions_topofmarket_mach_v2_0.strike_price.dissect(buffer, index, packet, parent)

  -- Call Or Put: Alphanumeric
  index, call_or_put = miax_sapphireoptions_topofmarket_mach_v2_0.call_or_put.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_sapphireoptions_topofmarket_mach_v2_0.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_sapphireoptions_topofmarket_mach_v2_0.closing_time.dissect(buffer, index, packet, parent)

  -- Restricted Option: Alphanumeric
  index, restricted_option = miax_sapphireoptions_topofmarket_mach_v2_0.restricted_option.dissect(buffer, index, packet, parent)

  -- Long Term Option: Alphanumeric
  index, long_term_option = miax_sapphireoptions_topofmarket_mach_v2_0.long_term_option.dissect(buffer, index, packet, parent)

  -- Active On Sapphire: Alphanumeric
  index, active_on_sapphire = miax_sapphireoptions_topofmarket_mach_v2_0.active_on_sapphire.dissect(buffer, index, packet, parent)

  -- Sapphire Bbo Posting Increment Indicator: Alphanumeric
  index, sapphire_bbo_posting_increment_indicator = miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_bbo_posting_increment_indicator.dissect(buffer, index, packet, parent)

  -- Liquidity Acceptance Increment Indicator: Alphanumeric
  index, liquidity_acceptance_increment_indicator = miax_sapphireoptions_topofmarket_mach_v2_0.liquidity_acceptance_increment_indicator.dissect(buffer, index, packet, parent)

  -- Opening Underlying Market Code: Alphanumeric
  index, opening_underlying_market_code = miax_sapphireoptions_topofmarket_mach_v2_0.opening_underlying_market_code.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  index, reserved_12 = miax_sapphireoptions_topofmarket_mach_v2_0.reserved_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Update Message
miax_sapphireoptions_topofmarket_mach_v2_0.series_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.series_update_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.series_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.series_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.series_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Sapphire System Time Message
miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_system_time_message = {}

-- Size: Sapphire System Time Message
miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_system_time_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.seconds.size

-- Display: Sapphire System Time Message
miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sapphire System Time Message
miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_sapphireoptions_topofmarket_mach_v2_0.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_sapphireoptions_topofmarket_mach_v2_0.seconds.current = seconds

  if not packet.visited then
    miax_sapphireoptions_topofmarket_mach_v2_0.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: Sapphire System Time Message
miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sapphire_system_time_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_sapphireoptions_topofmarket_mach_v2_0.data = {}

-- Dissect: Data
miax_sapphireoptions_topofmarket_mach_v2_0.data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sapphire System Time Message
  if message_type == "1" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.sapphire_system_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Update Message
  if message_type == "P" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.series_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == "S" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Best Bid Or Offer Compact Format Bid Message
  if message_type == "B" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Best Bid Or Offer Compact Format Bid Priority Customer Message
  if message_type == "h" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_bid_priority_customer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Best Bid Or Offer Compact Format Offer Message
  if message_type == "O" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Best Bid Or Offer Compact Format Offer Priority Customer Message
  if message_type == "i" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_compact_format_offer_priority_customer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Best Bid Or Offer Wide Format Bid Message
  if message_type == "W" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Best Bid Or Offer Wide Format Bid Priority Customer Message
  if message_type == "j" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_bid_priority_customer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Best Bid Or Offer Wide Format Offer Message
  if message_type == "A" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Top Of Market Best Bid Or Offer Wide Format Offer Priority Customer Message
  if message_type == "k" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_top_of_market_best_bid_or_offer_wide_format_offer_priority_customer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Double Sided Top Of Market Best Bid Or Offer Compact Format Message
  if message_type == "d" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_compact_format_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Double Sided Top Of Market Best Bid Or Offer Wide Format Message
  if message_type == "D" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.simple_double_sided_top_of_market_best_bid_or_offer_wide_format_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Last Sale Message
  if message_type == "T" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == "X" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Trading Status Notification Message
  if message_type == "H" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.underlying_trading_status_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_sapphireoptions_topofmarket_mach_v2_0.application_message = {}

-- Display: Application Message
miax_sapphireoptions_topofmarket_mach_v2_0.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_sapphireoptions_topofmarket_mach_v2_0.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 19 values
  index, message_type = miax_sapphireoptions_topofmarket_mach_v2_0.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 16 branches
  index = miax_sapphireoptions_topofmarket_mach_v2_0.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_sapphireoptions_topofmarket_mach_v2_0.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.application_message then
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.application_message, buffer(offset, 0))
    local current = miax_sapphireoptions_topofmarket_mach_v2_0.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_topofmarket_mach_v2_0.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Refresh Response Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_response_message = {}

-- Calculate size of: Refresh Response Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_response_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.size

  -- Parse runtime size of: Application Message
  index = index + buffer(offset + index - 12, 2):le_uint()

  return index
end

-- Display: Refresh Response Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 4, 2):le_uint()

  -- Runtime Size Of: Application Message
  local size_of_application_message = packet_length - 12

  -- Application Message: Struct of 2 fields
  index, application_message = miax_sapphireoptions_topofmarket_mach_v2_0.application_message.dissect(buffer, index, packet, parent, size_of_application_message)

  return index
end

-- Dissect: Refresh Response Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.refresh_response_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.refresh_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.refresh_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.refresh_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_request_message = {}

-- Size: Refresh Request Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_request_message.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type.size

-- Display: Refresh Request Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_sapphireoptions_topofmarket_mach_v2_0.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
miax_sapphireoptions_topofmarket_mach_v2_0.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.refresh_request_message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message = {}

-- Dissect: Unsequenced Message
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Refresh Request Message
  if unsequenced_message_type == "R" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Response Message
  if unsequenced_message_type == "r" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.refresh_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Refresh Notification Message
  if unsequenced_message_type == "E" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.end_of_refresh_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 2
end

-- Display: Unsequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.unsequenced_data_packet then
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 11
end

-- Display: Sequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_sapphireoptions_topofmarket_mach_v2_0.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Ascii String
  index, sequenced_message_type = miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message
  index, sequenced_message = miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.sequenced_data_packet then
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Payload
miax_sapphireoptions_topofmarket_mach_v2_0.payload = {}

-- Dissect: Payload
miax_sapphireoptions_topofmarket_mach_v2_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Application Message
  if packet_type == "3" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.application_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequenced Data Packet
  if packet_type == "s" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if packet_type == "l" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if packet_type == "r" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if packet_type == "c" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.synchronization_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if packet_type == "a" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.retransmission_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if packet_type == "X" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if packet_type == "G" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.goodbye_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Update
  if packet_type == "u" then
    return offset
  end
  -- Dissect Server Heartbeat
  if packet_type == "0" then
    return offset
  end
  -- Dissect Client Heartbeat
  if packet_type == "1" then
    return offset
  end
  -- Dissect Test Packet
  if packet_type == "T" then
    return miax_sapphireoptions_topofmarket_mach_v2_0.test_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Packet Header
miax_sapphireoptions_topofmarket_mach_v2_0.packet_header = {}

-- Size: Packet Header
miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.size =
  miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.size + 
  miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.size

-- Display: Packet Header
miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 16 values
  index, packet_type = miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.packet_header, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_sapphireoptions_topofmarket_mach_v2_0.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_sapphireoptions_topofmarket_mach_v2_0.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_sapphireoptions_topofmarket_mach_v2_0.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 13 branches
  index = miax_sapphireoptions_topofmarket_mach_v2_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_sapphireoptions_topofmarket_mach_v2_0.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.sesm_tcp_packet then
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_sapphireoptions_topofmarket_mach_v2_0.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_sapphireoptions_topofmarket_mach_v2_0.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.size then
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
miax_sapphireoptions_topofmarket_mach_v2_0.tcp_packet = {}

-- Verify required size of Tcp packet
miax_sapphireoptions_topofmarket_mach_v2_0.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_sapphireoptions_topofmarket_mach_v2_0.packet_header.size
end

-- Dissect Tcp Packet
miax_sapphireoptions_topofmarket_mach_v2_0.tcp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_sapphireoptions_topofmarket_mach_v2_0.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_sapphireoptions_topofmarket_mach_v2_0.seconds.current = data.seconds.frames[packet.number]
  miax_sapphireoptions_topofmarket_mach_v2_0.seconds.current = data.seconds.frames[packet.number]
  miax_sapphireoptions_topofmarket_mach_v2_0.conversation.current = data

  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_sapphireoptions_topofmarket_mach_v2_0.sesm_tcp_packet.dissect(buffer, index, packet, parent, size_of_sesm_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Message
miax_sapphireoptions_topofmarket_mach_v2_0.message = {}

-- Calculate size of: Message
miax_sapphireoptions_topofmarket_mach_v2_0.message.size = function(buffer, offset)
  local index = 0

  index = index + miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.size

  index = index + miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.size

  index = index + miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.size

  index = index + miax_sapphireoptions_topofmarket_mach_v2_0.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):string()
  index = index + miax_sapphireoptions_topofmarket_mach_v2_0.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
miax_sapphireoptions_topofmarket_mach_v2_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
miax_sapphireoptions_topofmarket_mach_v2_0.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 16 values
  index, packet_type = miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_sapphireoptions_topofmarket_mach_v2_0.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 13 branches
  index = miax_sapphireoptions_topofmarket_mach_v2_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Message
miax_sapphireoptions_topofmarket_mach_v2_0.message.dissect = function(buffer, offset, packet, parent)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0.fields.message, buffer(offset, 0))
    local index = miax_sapphireoptions_topofmarket_mach_v2_0.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_sapphireoptions_topofmarket_mach_v2_0.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_sapphireoptions_topofmarket_mach_v2_0.message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
miax_sapphireoptions_topofmarket_mach_v2_0.udp_packet = {}

-- Verify required size of Udp packet
miax_sapphireoptions_topofmarket_mach_v2_0.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_sapphireoptions_topofmarket_mach_v2_0.sequence_number.size + miax_sapphireoptions_topofmarket_mach_v2_0.packet_length.size + miax_sapphireoptions_topofmarket_mach_v2_0.packet_type.size + miax_sapphireoptions_topofmarket_mach_v2_0.session_number.size
end

-- Dissect Udp Packet
miax_sapphireoptions_topofmarket_mach_v2_0.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_sapphireoptions_topofmarket_mach_v2_0.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_sapphireoptions_topofmarket_mach_v2_0.seconds.current = data.seconds.frames[packet.number]
  miax_sapphireoptions_topofmarket_mach_v2_0.seconds.current = data.seconds.frames[packet.number]
  miax_sapphireoptions_topofmarket_mach_v2_0.conversation.current = data

  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 5 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = miax_sapphireoptions_topofmarket_mach_v2_0.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_sapphireoptions_topofmarket_mach_v2_0.init()
  miax_sapphireoptions_topofmarket_mach_v2_0.seconds.current = nil
  miax_sapphireoptions_topofmarket_mach_v2_0.conversation.current = nil
  miax_sapphireoptions_topofmarket_mach_v2_0.conversation.flows = {}
end

-- Dissector for Miax SapphireOptions TopOfMarket Mach 2.0
function omi_miax_sapphireoptions_topofmarket_mach_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_sapphireoptions_topofmarket_mach_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_sapphireoptions_topofmarket_mach_v2_0, buffer(), omi_miax_sapphireoptions_topofmarket_mach_v2_0.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    return miax_sapphireoptions_topofmarket_mach_v2_0.tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return miax_sapphireoptions_topofmarket_mach_v2_0.udp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax SapphireOptions TopOfMarket Mach 2.0 (Udp)
local function omi_miax_sapphireoptions_topofmarket_mach_v2_0_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_sapphireoptions_topofmarket_mach_v2_0.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_sapphireoptions_topofmarket_mach_v2_0
  omi_miax_sapphireoptions_topofmarket_mach_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Miax SapphireOptions TopOfMarket Mach 2.0 (Tcp)
local function omi_miax_sapphireoptions_topofmarket_mach_v2_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_sapphireoptions_topofmarket_mach_v2_0.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_sapphireoptions_topofmarket_mach_v2_0
  omi_miax_sapphireoptions_topofmarket_mach_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Miax SapphireOptions TopOfMarket Mach 2.0
omi_miax_sapphireoptions_topofmarket_mach_v2_0:register_heuristic("udp", omi_miax_sapphireoptions_topofmarket_mach_v2_0_udp_heuristic)
omi_miax_sapphireoptions_topofmarket_mach_v2_0:register_heuristic("tcp", omi_miax_sapphireoptions_topofmarket_mach_v2_0_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.0
--   Date: Thursday, March 6, 2025
--   Specification: Sapphire_Top_Of_Market_Feed_ToM_v2.0.pdf
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
