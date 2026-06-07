-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlEquities DepthOfMarket Mach 1.3.d Protocol
local omi_miax_pearlequities_depthofmarket_mach_v1_3_d = Proto("Omi.Miax.PearlEquities.DepthOfMarket.Mach.v1.3.d", "Miax PearlEquities DepthOfMarket Mach 1.3.d")

-- Protocol table
local miax_pearlequities_depthofmarket_mach_v1_3_d = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlEquities DepthOfMarket Mach 1.3.d Fields
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.application_message = ProtoField.new("Application Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.applicationmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.application_protocol = ProtoField.new("Application Protocol", "miax.pearlequities.depthofmarket.mach.v1.3.d.applicationprotocol", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.attributable_id = ProtoField.new("Attributable Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.attributableid", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.closing_time = ProtoField.new("Closing Time", "miax.pearlequities.depthofmarket.mach.v1.3.d.closingtime", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.computer_id = ProtoField.new("Computer Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.computerid", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.correction_number = ProtoField.new("Correction Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.correctionnumber", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.do_m_version = ProtoField.new("Do M Version", "miax.pearlequities.depthofmarket.mach.v1.3.d.domversion", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.endsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_header = ProtoField.new("Esesm Packet Header", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmpacketheader", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_length = ProtoField.new("Esesm Packet Length", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmpacketlength", ftypes.UINT16)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_type = ProtoField.new("Esesm Packet Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmpackettype", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_tcp_packet = ProtoField.new("Esesm Tcp Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmtcppacket", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_version = ProtoField.new("Esesm Version", "miax.pearlequities.depthofmarket.mach.v1.3.d.esesmversion", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.goodbyepacket", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.highestsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_request = ProtoField.new("Login Request", "miax.pearlequities.depthofmarket.mach.v1.3.d.loginrequest", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_response = ProtoField.new("Login Response", "miax.pearlequities.depthofmarket.mach.v1.3.d.loginresponse", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_status = ProtoField.new("Login Status", "miax.pearlequities.depthofmarket.mach.v1.3.d.loginstatus", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_reason = ProtoField.new("Logout Reason", "miax.pearlequities.depthofmarket.mach.v1.3.d.logoutreason", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_request = ProtoField.new("Logout Request", "miax.pearlequities.depthofmarket.mach.v1.3.d.logoutrequest", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_text = ProtoField.new("Logout Text", "miax.pearlequities.depthofmarket.mach.v1.3.d.logouttext", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.lot_size = ProtoField.new("Lot Size", "miax.pearlequities.depthofmarket.mach.v1.3.d.lotsize", ftypes.UINT16)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_message = ProtoField.new("Mach Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.machmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_length = ProtoField.new("Mach Packet Length", "miax.pearlequities.depthofmarket.mach.v1.3.d.machpacketlength", ftypes.UINT16)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_type = ProtoField.new("Mach Packet Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.machpackettype", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.market_state = ProtoField.new("Market State", "miax.pearlequities.depthofmarket.mach.v1.3.d.marketstate", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.matchingengineid", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.message_type = ProtoField.new("Message Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.messagetype", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.modify_order_flags = ProtoField.new("Modify Order Flags", "miax.pearlequities.depthofmarket.mach.v1.3.d.modifyorderflags", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.nanoseconds = ProtoField.new("Nanoseconds", "miax.pearlequities.depthofmarket.mach.v1.3.d.nanoseconds", ftypes.UINT32)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.pearlequities.depthofmarket.mach.v1.3.d.numberofmatchingengines", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.opening_time = ProtoField.new("Opening Time", "miax.pearlequities.depthofmarket.mach.v1.3.d.openingtime", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_execution_flags = ProtoField.new("Order Execution Flags", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderexecutionflags", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_id = ProtoField.new("Order Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderid", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_position = ProtoField.new("Order Position", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderposition", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_side = ProtoField.new("Order Side", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderside", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.price = ProtoField.new("Price", "miax.pearlequities.depthofmarket.mach.v1.3.d.price", ftypes.DOUBLE)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearlequities.depthofmarket.mach.v1.3.d.primarymarketcode", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_message_type = ProtoField.new("Refresh Message Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.refreshmessagetype", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.requestedsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.requestedtradingsessionid", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.pearlequities.depthofmarket.mach.v1.3.d.reserved1", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_6 = ProtoField.new("Reserved 6", "miax.pearlequities.depthofmarket.mach.v1.3.d.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_7 = ProtoField.new("Reserved 7", "miax.pearlequities.depthofmarket.mach.v1.3.d.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.retail_trade_indicator = ProtoField.new("Retail Trade Indicator", "miax.pearlequities.depthofmarket.mach.v1.3.d.retailtradeindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.pearlequities.depthofmarket.mach.v1.3.d.retransmissionrequest", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.seconds = ProtoField.new("Seconds", "miax.pearlequities.depthofmarket.mach.v1.3.d.seconds", ftypes.UINT32)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.sequencenumber", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.sequenceddatapacket", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.sequencedmessagetype", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.session_id = ProtoField.new("Session Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.sessionid", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.session_number = ProtoField.new("Session Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.sessionnumber", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.short_sale_restriction = ProtoField.new("Short Sale Restriction", "miax.pearlequities.depthofmarket.mach.v1.3.d.shortsalerestriction", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sip_reporting = ProtoField.new("Sip Reporting", "miax.pearlequities.depthofmarket.mach.v1.3.d.sipreporting", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.size = ProtoField.new("Size", "miax.pearlequities.depthofmarket.mach.v1.3.d.size", ftypes.UINT32)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.pearlequities.depthofmarket.mach.v1.3.d.startsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolid", ftypes.UINT32)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.pearlequities.depthofmarket.mach.v1.3.d.synchronizationcomplete", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_status = ProtoField.new("System Status", "miax.pearlequities.depthofmarket.mach.v1.3.d.systemstatus", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.tcp_packet = ProtoField.new("Tcp Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.tcppacket", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_packet = ProtoField.new("Test Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.testpacket", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearlequities.depthofmarket.mach.v1.3.d.testsecurityindicator", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_text = ProtoField.new("Test Text", "miax.pearlequities.depthofmarket.mach.v1.3.d.testtext", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearlequities.depthofmarket.mach.v1.3.d.tickersymbol", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_flags = ProtoField.new("Trade Flags", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradeflags", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_id = ProtoField.new("Trade Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradeid", ftypes.UINT64)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.traded_against_retail = ProtoField.new("Traded Against Retail", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradedagainstretail", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradingsessionid", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trading_status = ProtoField.new("Trading Status", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradingstatus", ftypes.UINT8)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.udp_packet = ProtoField.new("Udp Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.udppacket", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.pearlequities.depthofmarket.mach.v1.3.d.unsequenceddatapacket", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.pearlequities.depthofmarket.mach.v1.3.d.unsequencedmessagetype", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.username = ProtoField.new("Username", "miax.pearlequities.depthofmarket.mach.v1.3.d.username", ftypes.STRING)

-- Miax PearlEquities Mach DepthOfMarket 1.3.d Application Messages
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.add_order_message = ProtoField.new("Add Order Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.addordermessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.delete_order_message = ProtoField.new("Delete Order Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.deleteordermessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.end_of_refresh_notification_message = ProtoField.new("End Of Refresh Notification Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.endofrefreshnotificationmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.modify_order_message = ProtoField.new("Modify Order Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.modifyordermessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_execution_message = ProtoField.new("Order Execution Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.orderexecutionmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.refreshrequestmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_response_message = ProtoField.new("Refresh Response Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.refreshresponsemessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.security_trading_status_notification_message = ProtoField.new("Security Trading Status Notification Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.securitytradingstatusnotificationmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolclearmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_update_message = ProtoField.new("Symbol Update Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.symbolupdatemessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_state_message = ProtoField.new("System State Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.systemstatemessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_time_message = ProtoField.new("System Time Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.systemtimemessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.tradecancelmessage", ftypes.STRING)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_message = ProtoField.new("Trade Message", "miax.pearlequities.depthofmarket.mach.v1.3.d.trademessage", ftypes.STRING)

-- Miax PearlEquities DepthOfMarket Mach 1.3.d generated fields
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.timestamp = ProtoField.new("Timestamp", "miax.pearlequities.depthofmarket.mach.v1.3.d.timestamp", ftypes.UINT64)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlEquities DepthOfMarket Mach 1.3.d Element Dissection Options
show.application_messages = true
show.application_message = true
show.esesm_packet_header = true
show.esesm_tcp_packet = true
show.goodbye_packet = true
show.login_request = true
show.login_response = true
show.logout_request = true
show.mach_message = true
show.modify_order_flags = true
show.order_execution_flags = true
show.retransmission_request = true
show.sequenced_data_packet = true
show.synchronization_complete = true
show.tcp_packet = true
show.test_packet = true
show.trade_flags = true
show.udp_packet = true
show.unsequenced_data_packet = true

-- Register Miax PearlEquities DepthOfMarket Mach 1.3.d Show Options
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_application_message = Pref.bool("Show Application Message", show.application_message, "Parse and add Application Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_esesm_packet_header = Pref.bool("Show Esesm Packet Header", show.esesm_packet_header, "Parse and add Esesm Packet Header to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_esesm_tcp_packet = Pref.bool("Show Esesm Tcp Packet", show.esesm_tcp_packet, "Parse and add Esesm Tcp Packet to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_mach_message = Pref.bool("Show Mach Message", show.mach_message, "Parse and add Mach Message to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_modify_order_flags = Pref.bool("Show Modify Order Flags", show.modify_order_flags, "Parse and add Modify Order Flags to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_order_execution_flags = Pref.bool("Show Order Execution Flags", show.order_execution_flags, "Parse and add Order Execution Flags to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_synchronization_complete = Pref.bool("Show Synchronization Complete", show.synchronization_complete, "Parse and add Synchronization Complete to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_tcp_packet = Pref.bool("Show Tcp Packet", show.tcp_packet, "Parse and add Tcp Packet to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_test_packet = Pref.bool("Show Test Packet", show.test_packet, "Parse and add Test Packet to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_udp_packet = Pref.bool("Show Udp Packet", show.udp_packet, "Parse and add Udp Packet to protocol tree")
omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")


-- Handle changed preferences
function omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs_changed()

  -- Check if preferences have changed
  if show.application_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_application_message then
    show.application_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_application_message
  end
  if show.application_messages ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_application_messages then
    show.application_messages = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_application_messages
  end
  if show.esesm_packet_header ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_esesm_packet_header then
    show.esesm_packet_header = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_esesm_packet_header
  end
  if show.esesm_tcp_packet ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_esesm_tcp_packet then
    show.esesm_tcp_packet = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_esesm_tcp_packet
  end
  if show.goodbye_packet ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_goodbye_packet then
    show.goodbye_packet = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_goodbye_packet
  end
  if show.login_request ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_login_request then
    show.login_request = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_login_request
  end
  if show.login_response ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_login_response then
    show.login_response = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_login_response
  end
  if show.logout_request ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_logout_request then
    show.logout_request = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_logout_request
  end
  if show.mach_message ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_mach_message then
    show.mach_message = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_mach_message
  end
  if show.modify_order_flags ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_modify_order_flags then
    show.modify_order_flags = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_modify_order_flags
  end
  if show.order_execution_flags ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_order_execution_flags then
    show.order_execution_flags = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_order_execution_flags
  end
  if show.retransmission_request ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_retransmission_request then
    show.retransmission_request = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_retransmission_request
  end
  if show.sequenced_data_packet ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_sequenced_data_packet
  end
  if show.synchronization_complete ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_synchronization_complete then
    show.synchronization_complete = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_synchronization_complete
  end
  if show.tcp_packet ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_tcp_packet then
    show.tcp_packet = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_tcp_packet
  end
  if show.test_packet ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_test_packet then
    show.test_packet = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_test_packet
  end
  if show.trade_flags ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_trade_flags then
    show.trade_flags = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_trade_flags
  end
  if show.udp_packet ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_udp_packet then
    show.udp_packet = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_udp_packet
  end
  if show.unsequenced_data_packet ~= omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.prefs.show_unsequenced_data_packet
  end
end


-----------------------------------------------------------------------
-- Protocol Conversation State
-----------------------------------------------------------------------

-- State, keyed by src/dst tuple
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation = {}
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.flows = {}

-- Conversation key for the current packet (src/dst tuple)
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.key = function(packet)
  return string.format("%s|%s|%s|%s", tostring(packet.src), packet.src_port, tostring(packet.dst), packet.dst_port)
end


-- Get/create our protocol's data record for the current packet's flow
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.data = function(packet)
  local key = miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.key(packet)
  local data = miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.flows[key]
  if data == nil then
    data = { seconds = { last = nil, frames = {} } }
    miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.flows[key] = data
  end
  return data
end


-- Handle to the current packet's conversation data
miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.current = nil


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
-- Miax PearlEquities DepthOfMarket Mach 1.3.d Fields
-----------------------------------------------------------------------

-- Application Protocol
miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol = {}

-- Size: Application Protocol
miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.size = 8

-- Display: Application Protocol
miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id = {}

-- Size: Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.size = 4

-- Display: Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.display = function(value)
  return "Attributable Id: "..value
end

-- Dissect: Attributable Id
miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.attributable_id, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time = {}

-- Size: Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.size = 8

-- Display: Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id = {}

-- Size: Computer Id
miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.size = 8

-- Display: Computer Id
miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number = {}

-- Size: Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.size = 1

-- Display: Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version = {}

-- Size: Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.size = 8

-- Display: Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.display = function(value)
  return "Do M Version: "..value
end

-- Dissect: Do M Version
miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.do_m_version, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number = {}

-- Size: End Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Esesm Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length = {}

-- Size: Esesm Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.size = 2

-- Display: Esesm Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.display = function(value)
  return "Esesm Packet Length: "..value
end

-- Dissect: Esesm Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_length, range, value, display)

  return offset + length, value
end

-- Esesm Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type = {}

-- Size: Esesm Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.size = 1

-- Display: Esesm Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.display = function(value)
  if value == "s" then
    return "Esesm Packet Type: Sequenced Data Packet (s)"
  end
  if value == "U" then
    return "Esesm Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "l" then
    return "Esesm Packet Type: Login Request (l)"
  end
  if value == "r" then
    return "Esesm Packet Type: Login Response (r)"
  end
  if value == "c" then
    return "Esesm Packet Type: Synchronization Complete (c)"
  end
  if value == "a" then
    return "Esesm Packet Type: Retransmission Request (a)"
  end
  if value == "X" then
    return "Esesm Packet Type: Logout Request (X)"
  end
  if value == "G" then
    return "Esesm Packet Type: Goodbye Packet (G)"
  end
  if value == "u" then
    return "Esesm Packet Type: Trading Session Update (u)"
  end
  if value == "0" then
    return "Esesm Packet Type: Server Heartbeat (0)"
  end
  if value == "1" then
    return "Esesm Packet Type: Client Heartbeat (1)"
  end
  if value == "T" then
    return "Esesm Packet Type: Test Packet (T)"
  end

  return "Esesm Packet Type: Unknown("..value..")"
end

-- Dissect: Esesm Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_type, range, value, display)

  return offset + length, value
end

-- Esesm Version
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version = {}

-- Size: Esesm Version
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.size = 5

-- Display: Esesm Version
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.display = function(value)
  return "Esesm Version: "..value
end

-- Dissect: Esesm Version
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_version, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Login Status
miax_pearlequities_depthofmarket_mach_v1_3_d.login_status = {}

-- Size: Login Status
miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.size = 1

-- Display: Login Status
miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason = {}

-- Size: Logout Reason
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.size = 1

-- Display: Logout Reason
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text = {}

-- Display: Logout Text
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size = {}

-- Size: Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.size = 2

-- Display: Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Mach Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length = {}

-- Size: Mach Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.size = 2

-- Display: Mach Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.display = function(value)
  return "Mach Packet Length: "..value
end

-- Dissect: Mach Packet Length
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_length, range, value, display)

  return offset + length, value
end

-- Mach Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type = {}

-- Size: Mach Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.size = 1

-- Display: Mach Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.display = function(value)
  if value == 0 then
    return "Mach Packet Type: Heartbeat (0)"
  end
  if value == 1 then
    return "Mach Packet Type: Start Of Session (1)"
  end
  if value == 2 then
    return "Mach Packet Type: End Of Session (2)"
  end
  if value == 3 then
    return "Mach Packet Type: Application Message (3)"
  end

  return "Mach Packet Type: Unknown("..value..")"
end

-- Dissect: Mach Packet Type
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_packet_type, range, value, display)

  return offset + length, value
end

-- Market State
miax_pearlequities_depthofmarket_mach_v1_3_d.market_state = {}

-- Size: Market State
miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.size = 1

-- Display: Market State
miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.display = function(value)
  if value == 1 then
    return "Market State: Pre Opening (1)"
  end
  if value == 2 then
    return "Market State: Early Trading Session (2)"
  end
  if value == 3 then
    return "Market State: Regular Trading Session (3)"
  end
  if value == 4 then
    return "Market State: Late Trading Session (4)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.market_state, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id = {}

-- Size: Matching Engine Id
miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.message_type = {}

-- Size: Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.size = 1

-- Display: Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.display = function(value)
  if value == 49 then
    return "Message Type: System Time Message (49)"
  end
  if value == 1 then
    return "Message Type: Symbol Update Message (1)"
  end
  if value == 83 then
    return "Message Type: System State Message (83)"
  end
  if value == 4 then
    return "Message Type: Security Trading Status Notification Message (4)"
  end
  if value == 5 then
    return "Message Type: Symbol Clear Message (5)"
  end
  if value == 20 then
    return "Message Type: Add Order Message (20)"
  end
  if value == 21 then
    return "Message Type: Modify Order Message (21)"
  end
  if value == 23 then
    return "Message Type: Delete Order Message (23)"
  end
  if value == 24 then
    return "Message Type: Order Execution Message (24)"
  end
  if value == 10 then
    return "Message Type: Trade Message (10)"
  end
  if value == 11 then
    return "Message Type: Trade Cancel Message (11)"
  end
  if value == R then
    return "Message Type: Refresh Request Message (R)"
  end
  if value == r then
    return "Message Type: Refresh Response Message (r)"
  end
  if value == E then
    return "Message Type: End Of Refresh Notification Message (E)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds = {}

-- Size: Nanoseconds
miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size = 4

-- Display: Nanoseconds
miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time = {}

-- Size: Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.size = 8

-- Display: Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Order Id
miax_pearlequities_depthofmarket_mach_v1_3_d.order_id = {}

-- Size: Order Id
miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size = 8

-- Display: Order Id
miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Side
miax_pearlequities_depthofmarket_mach_v1_3_d.order_side = {}

-- Size: Order Side
miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.size = 1

-- Display: Order Side
miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.display = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_side, range, value, display)

  return offset + length, value
end

-- Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price = {}

-- Size: Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price.size = 8

-- Display: Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_depthofmarket_mach_v1_3_d.price.translate(raw)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.price, range, value, display)

  return offset + length, value
end

-- Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code = {}

-- Size: Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.size = 1

-- Display: Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.display = function(value)
  if value == "A" then
    return "Primary Market Code: Nyse American (A)"
  end
  if value == "B" then
    return "Primary Market Code: Nasdaq Texas (B)"
  end
  if value == "C" then
    return "Primary Market Code: Nyse National (C)"
  end
  if value == "F" then
    return "Primary Market Code: Texas Stock Exchange (F)"
  end
  if value == "G" then
    return "Primary Market Code: 24 X Exchange (G)"
  end
  if value == "H" then
    return "Primary Market Code: Miax Pearl Equities (H)"
  end
  if value == "I" then
    return "Primary Market Code: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Primary Market Code: Cboe Edga Exchange (J)"
  end
  if value == "K" then
    return "Primary Market Code: Cboe Edgx Exchange (K)"
  end
  if value == "L" then
    return "Primary Market Code: Long Term Stock Exchange (L)"
  end
  if value == "M" then
    return "Primary Market Code: Nyse Texas (M)"
  end
  if value == "N" then
    return "Primary Market Code: New York Stock Exchange (N)"
  end
  if value == "P" then
    return "Primary Market Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Primary Market Code: Nasdaq (Q)"
  end
  if value == "U" then
    return "Primary Market Code: Members Exchange (U)"
  end
  if value == "V" then
    return "Primary Market Code: Investors Exchange (V)"
  end
  if value == "W" then
    return "Primary Market Code: Cboe Stock Exchange (W)"
  end
  if value == "X" then
    return "Primary Market Code: Nasdaq Phlx (X)"
  end
  if value == "Y" then
    return "Primary Market Code: Cboe Byx Exchange (Y)"
  end
  if value == "Z" then
    return "Primary Market Code: Cboe Bzx Exchange (Z)"
  end

  return "Primary Market Code: Unknown("..value..")"
end

-- Dissect: Primary Market Code
miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Refresh Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type = {}

-- Size: Refresh Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.size = 1

-- Display: Refresh Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.display = function(value)
  if value == "S" then
    return "Refresh Message Type: Symbol Update Refresh (S)"
  end
  if value == "t" then
    return "Refresh Message Type: Security Trading Status Refresh (t)"
  end
  if value == "s" then
    return "Refresh Message Type: System State Refresh (s)"
  end
  if value == "O" then
    return "Refresh Message Type: Order Book Refresh (O)"
  end

  return "Refresh Message Type: Unknown("..value..")"
end

-- Dissect: Refresh Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_message_type, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1 = {}

-- Size: Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.size = 1

-- Display: Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds = {}

-- Size: Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.size = 4

-- Store: Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current = nil

-- Generated: Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.generated = function(value, range, packet, parent)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.display(value)
  local seconds = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.seconds, range, value, display)
  seconds:set_generated()
end

-- Display: Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.display = function(value)
  -- Parse unix seconds timestamp
  return "Seconds: "..os.date("%Y-%m-%d %H:%M:%S.", value)
end

-- Dissect: Seconds
miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.seconds, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number = {}

-- Size: Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.size = 8

-- Display: Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.size = 1

-- Display: Sequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.display = function(value)
  return "Sequenced Message Type: "..value
end

-- Dissect: Sequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.session_id = {}

-- Size: Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.size = 1

-- Display: Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.session_id, range, value, display)

  return offset + length, value
end

-- Session Number
miax_pearlequities_depthofmarket_mach_v1_3_d.session_number = {}

-- Size: Session Number
miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.size = 1

-- Display: Session Number
miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.display = function(value)
  return "Session Number: "..value
end

-- Dissect: Session Number
miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.session_number, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction = {}

-- Size: Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.size = 1

-- Display: Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.display = function(value)
  if value == "Y" then
    return "Short Sale Restriction: Short Sale Restriction Is In Effect (Y)"
  end
  if value == "N" then
    return "Short Sale Restriction: Short Sale Restriction Is Not In Effect (N)"
  end

  return "Short Sale Restriction: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction
miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.short_sale_restriction, range, value, display)

  return offset + length, value
end

-- Size
miax_pearlequities_depthofmarket_mach_v1_3_d.size = {}

-- Size: Size
miax_pearlequities_depthofmarket_mach_v1_3_d.size.size = 4

-- Display: Size
miax_pearlequities_depthofmarket_mach_v1_3_d.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.size, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number = {}

-- Size: Start Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id = {}

-- Size: Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size = 4

-- Display: Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- System Status
miax_pearlequities_depthofmarket_mach_v1_3_d.system_status = {}

-- Size: System Status
miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.size = 1

-- Display: System Status
miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.display = function(value)
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
miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator = {}

-- Size: Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.size = 1

-- Display: Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.display = function(value)
  if value == "Y" then
    return "Test Security Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Test Security Indicator: No (N)"
  end

  return "Test Security Indicator: Unknown("..value..")"
end

-- Dissect: Test Security Indicator
miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Test Text
miax_pearlequities_depthofmarket_mach_v1_3_d.test_text = {}

-- Display: Test Text
miax_pearlequities_depthofmarket_mach_v1_3_d.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_pearlequities_depthofmarket_mach_v1_3_d.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_text, range, value, display)

  return offset + size, value
end

-- Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol = {}

-- Size: Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.size = 11

-- Display: Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.display = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id = {}

-- Size: Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size = 8

-- Display: Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id = {}

-- Size: Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.size = 1

-- Display: Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status = {}

-- Size: Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.size = 1

-- Display: Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.display = function(value)
  if value == 1 then
    return "Trading Status: Pre Open (1)"
  end
  if value == 2 then
    return "Trading Status: Trading (2)"
  end
  if value == 3 then
    return "Trading Status: Halt (3)"
  end
  if value == 4 then
    return "Trading Status: Operational Halt (4)"
  end
  if value == 5 then
    return "Trading Status: Closed (5)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.size = 1

-- Display: Unsequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.display = function(value)
  return "Unsequenced Message Type: "..value
end

-- Dissect: Unsequenced Message Type
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_pearlequities_depthofmarket_mach_v1_3_d.username = {}

-- Size: Username
miax_pearlequities_depthofmarket_mach_v1_3_d.username.size = 5

-- Display: Username
miax_pearlequities_depthofmarket_mach_v1_3_d.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_pearlequities_depthofmarket_mach_v1_3_d.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.username, range, value, display)

  return offset + length, value
end

-- Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp = {}

-- Translate: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.translate = function(nanoseconds, stored_seconds)
  return UInt64.new(stored_seconds * 1000000000 + nanoseconds)
end

-- Display: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.display = function(nanoseconds, stored_seconds)
  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", stored_seconds)..string.format("%09d", nanoseconds)
end

-- Composite: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.composite = function(buffer, offset, stored_seconds, packet, parent)
  local length = miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size
  local range = buffer(offset, length)
  local nanoseconds = range:le_uint()
  local value = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.translate(nanoseconds, stored_seconds)
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.display(nanoseconds, stored_seconds, packet)
  parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.timestamp, range, value, display)

  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.generated(stored_seconds, range, packet, parent)

  display = miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.display(nanoseconds)
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.nanoseconds, range, nanoseconds, display)

  return offset + length, value
end

-- Dissect: Timestamp
miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect = function(buffer, offset, packet, parent)
  local stored_seconds = miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current

  if stored_seconds ~= nil then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.composite(buffer, offset, stored_seconds, packet, parent)
  end

  return miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.dissect(buffer, offset, packet, parent)
end


-----------------------------------------------------------------------
-- Dissect Miax PearlEquities DepthOfMarket Mach 1.3.d
-----------------------------------------------------------------------

-- Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet = {}

-- Calculate size of: Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = esesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_pearlequities_depthofmarket_mach_v1_3_d.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.test_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.test_packet, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = esesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.goodbye_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request = {}

-- Calculate size of: Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = esesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.logout_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.logout_request, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request = {}

-- Size: Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.size

-- Display: Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.retransmission_request, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete = {}

-- Size: Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.synchronization_complete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response = {}

-- Size: Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.size

-- Display: Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearlequities_depthofmarket_mach_v1_3_d.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 9 values
  index, login_status = miax_pearlequities_depthofmarket_mach_v1_3_d.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.dissect = function(buffer, offset, packet, parent)
  if show.login_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_response, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request = {}

-- Size: Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.username.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.size

-- Display: Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Esesm Version: 5 Byte Ascii String
  index, esesm_version = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_pearlequities_depthofmarket_mach_v1_3_d.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_pearlequities_depthofmarket_mach_v1_3_d.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_pearlequities_depthofmarket_mach_v1_3_d.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.dissect = function(buffer, offset, packet, parent)
  if show.login_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.login_request, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.fields(buffer, offset, packet, parent)
  end
end

-- End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message = {}

-- Size: End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.size

-- Display: End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Refresh Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.end_of_refresh_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message = {}

-- Size: Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.size

-- Display: Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Response Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_response_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message = {}

-- Size: Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.size

-- Display: Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Refresh Message Type: Alphanumeric
  index, refresh_message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.refresh_request_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message = {}

-- Dissect: Unsequenced Message
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect Refresh Request Message
  if unsequenced_message_type == "R" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Response Message
  if unsequenced_message_type == "r" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.refresh_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Refresh Notification Message
  if unsequenced_message_type == "E" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.end_of_refresh_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  return esesm_packet_length - 2
end

-- Display: Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 1 Byte Ascii String
  index, unsequenced_message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 3 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.unsequenced_data_packet then
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  return esesm_packet_length - 11
end

-- Display: Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_pearlequities_depthofmarket_mach_v1_3_d.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 1 Byte Unsigned Fixed Width Integer
  index, sequenced_message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message
  index, sequenced_message = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequenced Data Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.sequenced_data_packet then
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Esesm Payload
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_payload = {}

-- Dissect: Esesm Payload
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_payload.dissect = function(buffer, offset, packet, parent, esesm_packet_type)
  -- Dissect Sequenced Data Packet
  if esesm_packet_type == "s" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if esesm_packet_type == "U" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if esesm_packet_type == "l" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if esesm_packet_type == "r" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if esesm_packet_type == "c" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.synchronization_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if esesm_packet_type == "a" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.retransmission_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if esesm_packet_type == "X" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if esesm_packet_type == "G" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.goodbye_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Update
  if esesm_packet_type == "u" then
    return offset
  end
  -- Dissect Server Heartbeat
  if esesm_packet_type == "0" then
    return offset
  end
  -- Dissect Client Heartbeat
  if esesm_packet_type == "1" then
    return offset
  end
  -- Dissect Test Packet
  if esesm_packet_type == "T" then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.test_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header = {}

-- Size: Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.size

-- Display: Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Esesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, esesm_packet_length = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_length.dissect(buffer, index, packet, parent)

  -- Esesm Packet Type: Alphanumeric
  index, esesm_packet_type = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Esesm Packet Header
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.esesm_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_packet_header, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Esesm Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet = {}

-- Display: Esesm Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Esesm Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset

  -- Esesm Packet Header: Struct of 2 fields
  index, esesm_packet_header = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Esesm Packet Type
  local esesm_packet_type = buffer(index - 1, 1):string()

  -- Esesm Payload: Runtime Type with 12 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_payload.dissect(buffer, index, packet, parent, esesm_packet_type)

  return index
end

-- Dissect: Esesm Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset + size_of_esesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.esesm_tcp_packet then
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.esesm_tcp_packet, buffer(offset, 0))
    local current = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
    parent:set_len(size_of_esesm_tcp_packet)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Esesm Tcp Packet
local esesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.size then
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
miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet = {}

-- Verify required size of Tcp packet
miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_packet_header.size
end

-- Dissect Tcp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Esesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Esesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_esesm_tcp_packet = esesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_pearlequities_depthofmarket_mach_v1_3_d.esesm_tcp_packet.dissect(buffer, index, packet, parent, size_of_esesm_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end

-- Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message = {}

-- Size: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size

-- Display: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_cancel_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags = {}

-- Size: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.size = 1

-- Display: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Sip Reporting flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Sip Reporting"
  end
  -- Is Retail Trade Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Retail Trade Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.bits = function(range, value, packet, parent)

  -- Sip Reporting: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sip_reporting, range, value)

  -- Retail Trade Indicator: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.retail_trade_indicator, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_6, range, value)
end

-- Dissect: Trade Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_flags, range, display)

  if show.trade_flags then
    miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message = {}

-- Size: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.size

-- Display: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_depthofmarket_mach_v1_3_d.correction_number.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 3 fields
  index, trade_flags = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.trade_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags = {}

-- Size: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.size = 1

-- Display: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Sip Reporting flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Sip Reporting"
  end
  -- Is Traded Against Retail flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Traded Against Retail"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.bits = function(range, value, packet, parent)

  -- Sip Reporting: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.sip_reporting, range, value)

  -- Traded Against Retail: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.traded_against_retail, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_6, range, value)
end

-- Dissect: Order Execution Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_execution_flags, range, display)

  if show.order_execution_flags then
    miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message = {}

-- Size: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.size

-- Display: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_depthofmarket_mach_v1_3_d.trade_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  -- Order Execution Flags: Struct of 3 fields
  index, order_execution_flags = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_execution_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message = {}

-- Size: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size

-- Display: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.delete_order_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags = {}

-- Size: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.size = 1

-- Display: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Order Position flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Order Position"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.bits = function(range, value, packet, parent)

  -- Order Position: 1 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.order_position, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.reserved_7, range, value)
end

-- Dissect: Modify Order Flags
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.modify_order_flags, range, display)

  if show.modify_order_flags then
    miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message = {}

-- Size: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.size

-- Display: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  -- Modify Order Flags: Struct of 2 fields
  index, modify_order_flags = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.modify_order_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message = {}

-- Size: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.price.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.size

-- Display: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_depthofmarket_mach_v1_3_d.order_id.dissect(buffer, index, packet, parent)

  -- Order Side: Alphanumeric
  index, order_side = miax_pearlequities_depthofmarket_mach_v1_3_d.order_side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrc6U
  index, price = miax_pearlequities_depthofmarket_mach_v1_3_d.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_depthofmarket_mach_v1_3_d.size.dissect(buffer, index, packet, parent)

  -- Attributable Id: Alphanumeric
  index, attributable_id = miax_pearlequities_depthofmarket_mach_v1_3_d.attributable_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.add_order_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message = {}

-- Size: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size

-- Display: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_clear_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message = {}

-- Size: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.size

-- Display: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Trading Status: BinaryU
  index, trading_status = miax_pearlequities_depthofmarket_mach_v1_3_d.trading_status.dissect(buffer, index, packet, parent)

  -- Market State: BinaryU
  index, market_state = miax_pearlequities_depthofmarket_mach_v1_3_d.market_state.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction: Alphanumeric
  index, short_sale_restriction = miax_pearlequities_depthofmarket_mach_v1_3_d.short_sale_restriction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Trading Status Notification Message
miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.security_trading_status_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message = {}

-- Size: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.size

-- Display: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Do M Version: Alphanumeric
  index, do_m_version = miax_pearlequities_depthofmarket_mach_v1_3_d.do_m_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearlequities_depthofmarket_mach_v1_3_d.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearlequities_depthofmarket_mach_v1_3_d.system_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_state_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message = {}

-- Size: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.nanoseconds.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.size + 
  miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.size

-- Display: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanoseconds: NanoTime
  index, nanoseconds = miax_pearlequities_depthofmarket_mach_v1_3_d.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_id.dissect(buffer, index, packet, parent)

  -- Ticker Symbol: Alphanumeric
  index, ticker_symbol = miax_pearlequities_depthofmarket_mach_v1_3_d.ticker_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.dissect(buffer, index, packet, parent)

  -- Test Security Indicator: Alphanumeric
  index, test_security_indicator = miax_pearlequities_depthofmarket_mach_v1_3_d.test_security_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_depthofmarket_mach_v1_3_d.reserved_1.dissect(buffer, index, packet, parent)

  -- Lot Size: BinaryU
  index, lot_size = miax_pearlequities_depthofmarket_mach_v1_3_d.lot_size.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearlequities_depthofmarket_mach_v1_3_d.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearlequities_depthofmarket_mach_v1_3_d.closing_time.dissect(buffer, index, packet, parent)

  -- Primary Market Code: Alphanumeric
  index, primary_market_code = miax_pearlequities_depthofmarket_mach_v1_3_d.primary_market_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update Message
miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.symbol_update_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.fields(buffer, offset, packet, parent)
  end
end

-- System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message = {}

-- Size: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.size =
  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.size

-- Display: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: SecTime
  index, seconds = miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current = seconds

  if not packet.visited then
    miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.current.seconds.last = seconds
  end

  return index
end

-- Dissect: System Time Message
miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.system_time_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Data
miax_pearlequities_depthofmarket_mach_v1_3_d.data = {}

-- Dissect: Data
miax_pearlequities_depthofmarket_mach_v1_3_d.data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Time Message
  if message_type == 49 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.system_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Update Message
  if message_type == 1 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Message
  if message_type == 83 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.system_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Trading Status Notification Message
  if message_type == 4 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.security_trading_status_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 5 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 20 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 21 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == 23 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 24 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 10 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == 11 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message = {}

-- Read runtime size of: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Mach Packet Length
  local mach_packet_length = buffer(offset - 4, 2):le_uint()

  return mach_packet_length - 12
end

-- Display: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.fields = function(buffer, offset, packet, parent, size_of_application_message)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, message_type = miax_pearlequities_depthofmarket_mach_v1_3_d.message_type.dissect(buffer, index, packet, parent)

  -- Data: Runtime Type with 11 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_d.data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Application Message
miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.dissect = function(buffer, offset, packet, parent, size_of_application_message)
  local size_of_application_message = miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.size(buffer, offset)
  local index = offset + size_of_application_message

  -- Optionally add group/struct element to protocol tree
  if show.application_message then
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.application_message, buffer(offset, 0))
    local current = miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.fields(buffer, offset, packet, parent, size_of_application_message)
    parent:set_len(size_of_application_message)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.fields(buffer, offset, packet, parent, size_of_application_message)

    return index
  end
end

-- Payload
miax_pearlequities_depthofmarket_mach_v1_3_d.payload = {}

-- Dissect: Payload
miax_pearlequities_depthofmarket_mach_v1_3_d.payload.dissect = function(buffer, offset, packet, parent, mach_packet_type)
  -- Dissect Heartbeat
  if mach_packet_type == 0 then
    return offset
  end
  -- Dissect Start Of Session
  if mach_packet_type == 1 then
    return offset
  end
  -- Dissect End Of Session
  if mach_packet_type == 2 then
    return offset
  end
  -- Dissect Application Message
  if mach_packet_type == 3 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.application_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Mach Message
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message = {}

-- Calculate size of: Mach Message
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.size

  index = index + miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 1):le_uint()
  index = index + miax_pearlequities_depthofmarket_mach_v1_3_d.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Mach Message
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mach Message
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: BinaryU
  index, sequence_number = miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.dissect(buffer, index, packet, parent)

  -- Mach Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, mach_packet_length = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.dissect(buffer, index, packet, parent)

  -- Mach Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, mach_packet_type = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.dissect(buffer, index, packet, parent)

  -- Session Number: 1 Byte Unsigned Fixed Width Integer
  index, session_number = miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.dissect(buffer, index, packet, parent)

  -- Payload: Runtime Type with 4 branches
  index = miax_pearlequities_depthofmarket_mach_v1_3_d.payload.dissect(buffer, index, packet, parent, mach_packet_type)

  return index
end

-- Dissect: Mach Message
miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.dissect = function(buffer, offset, packet, parent)
  if show.mach_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d.fields.mach_message, buffer(offset, 0))
    local index = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.fields(buffer, offset, packet, parent)
  end
end

-- Udp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet = {}

-- Verify required size of Udp packet
miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearlequities_depthofmarket_mach_v1_3_d.sequence_number.size + miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_length.size + miax_pearlequities_depthofmarket_mach_v1_3_d.mach_packet_type.size + miax_pearlequities_depthofmarket_mach_v1_3_d.session_number.size
end

-- Dissect Udp Packet
miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.dissect = function(buffer, packet, parent)
  -- establish frame context from the conversation's stored values
  local data = miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.data(packet)
  if not packet.visited then
    data.seconds.frames[packet.number] = data.seconds.last
  end
  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current = data.seconds.frames[packet.number]
  miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.current = data

  local index = 0

  -- Dependency for Mach Message
  local end_of_payload = buffer:len()

  -- Mach Message: Struct of 5 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, mach_message = miax_pearlequities_depthofmarket_mach_v1_3_d.mach_message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_miax_pearlequities_depthofmarket_mach_v1_3_d.init()
  miax_pearlequities_depthofmarket_mach_v1_3_d.seconds.current = nil
  miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.current = nil
  miax_pearlequities_depthofmarket_mach_v1_3_d.conversation.flows = {}
end

-- Dissector for Miax PearlEquities DepthOfMarket Mach 1.3.d
function omi_miax_pearlequities_depthofmarket_mach_v1_3_d.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_pearlequities_depthofmarket_mach_v1_3_d.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearlequities_depthofmarket_mach_v1_3_d, buffer(), omi_miax_pearlequities_depthofmarket_mach_v1_3_d.description, "("..buffer:len().." Bytes)")
  if packet.port_type == 2 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.dissect(buffer, packet, protocol)
  end
  if packet.port_type == 3 then
    return miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.dissect(buffer, packet, protocol)
  end
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax PearlEquities DepthOfMarket Mach 1.3.d (Udp)
local function omi_miax_pearlequities_depthofmarket_mach_v1_3_d_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearlequities_depthofmarket_mach_v1_3_d.udp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearlequities_depthofmarket_mach_v1_3_d
  omi_miax_pearlequities_depthofmarket_mach_v1_3_d.dissector(buffer, packet, parent)

  return true
end

-- Dissector Heuristic for Miax PearlEquities DepthOfMarket Mach 1.3.d (Tcp)
local function omi_miax_pearlequities_depthofmarket_mach_v1_3_d_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearlequities_depthofmarket_mach_v1_3_d.tcp_packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearlequities_depthofmarket_mach_v1_3_d
  omi_miax_pearlequities_depthofmarket_mach_v1_3_d.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristics for Miax PearlEquities DepthOfMarket Mach 1.3.d
omi_miax_pearlequities_depthofmarket_mach_v1_3_d:register_heuristic("udp", omi_miax_pearlequities_depthofmarket_mach_v1_3_d_udp_heuristic)
omi_miax_pearlequities_depthofmarket_mach_v1_3_d:register_heuristic("tcp", omi_miax_pearlequities_depthofmarket_mach_v1_3_d_tcp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.3.d
--   Date: Wednesday, February 4, 2026
--   Specification: pearl_equities_dom_feed_v1.3.d.pdf
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
