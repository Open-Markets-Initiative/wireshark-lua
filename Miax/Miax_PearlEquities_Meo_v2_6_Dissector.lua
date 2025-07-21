-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlEquities Express Orders Meo 2.6 Protocol
local miax_pearlequities_meo_v2_6 = Proto("Miax.PearlEquities.Meo.v2.6.Lua", "Miax PearlEquities Express Orders Meo 2.6")

-- Component Tables
local show = {}
local format = {}
local miax_pearlequities_meo_v2_6_display = {}
local miax_pearlequities_meo_v2_6_dissect = {}
local miax_pearlequities_meo_v2_6_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlEquities Express Orders Meo 2.6 Fields
miax_pearlequities_meo_v2_6.fields.account = ProtoField.new("Account", "miax.pearlequities.meo.v2.6.account", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.action = ProtoField.new("Action", "miax.pearlequities.meo.v2.6.action", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.additional_liquidity_indicator = ProtoField.new("Additional Liquidity Indicator", "miax.pearlequities.meo.v2.6.additionalliquidityindicator", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.application_protocol = ProtoField.new("Application Protocol", "miax.pearlequities.meo.v2.6.applicationprotocol", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.binary_u = ProtoField.new("Binary U", "miax.pearlequities.meo.v2.6.binaryu", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.cancel_order_by_exchange_order_id_request = ProtoField.new("Cancel Order By Exchange Order Id Request", "miax.pearlequities.meo.v2.6.cancelorderbyexchangeorderidrequest", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.cancel_order_by_exchange_order_id_response_message = ProtoField.new("Cancel Order By Exchange Order Id Response Message", "miax.pearlequities.meo.v2.6.cancelorderbyexchangeorderidresponsemessage", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.cancel_order_request = ProtoField.new("Cancel Order Request", "miax.pearlequities.meo.v2.6.cancelorderrequest", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.cancel_order_response = ProtoField.new("Cancel Order Response", "miax.pearlequities.meo.v2.6.cancelorderresponse", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.cancel_reason = ProtoField.new("Cancel Reason", "miax.pearlequities.meo.v2.6.cancelreason", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.cancel_reduce_size_order_notification = ProtoField.new("Cancel Reduce Size Order Notification", "miax.pearlequities.meo.v2.6.cancelreducesizeordernotification", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.capacity = ProtoField.new("Capacity", "miax.pearlequities.meo.v2.6.capacity", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.clearing_account = ProtoField.new("Clearing Account", "miax.pearlequities.meo.v2.6.clearingaccount", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.client_order_id = ProtoField.new("Client Order Id", "miax.pearlequities.meo.v2.6.clientorderid", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.closing_time = ProtoField.new("Closing Time", "miax.pearlequities.meo.v2.6.closingtime", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.computer_id = ProtoField.new("Computer Id", "miax.pearlequities.meo.v2.6.computerid", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.correction_number = ProtoField.new("Correction Number", "miax.pearlequities.meo.v2.6.correctionnumber", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.display_qty = ProtoField.new("Display Qty", "miax.pearlequities.meo.v2.6.displayqty", ftypes.UINT32)
miax_pearlequities_meo_v2_6.fields.display_range_qty = ProtoField.new("Display Range Qty", "miax.pearlequities.meo.v2.6.displayrangeqty", ftypes.UINT32)
miax_pearlequities_meo_v2_6.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.pearlequities.meo.v2.6.endsequencenumber", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.esesm_tcp_packet = ProtoField.new("Esesm Tcp Packet", "miax.pearlequities.meo.v2.6.esesmtcppacket", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.esesm_version = ProtoField.new("Esesm Version", "miax.pearlequities.meo.v2.6.esesmversion", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.executing_trading_center = ProtoField.new("Executing Trading Center", "miax.pearlequities.meo.v2.6.executingtradingcenter", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.executing_trading_center_mpid = ProtoField.new("Executing Trading Center Mpid", "miax.pearlequities.meo.v2.6.executingtradingcentermpid", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.execution_id = ProtoField.new("Execution Id", "miax.pearlequities.meo.v2.6.executionid", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.execution_notification = ProtoField.new("Execution Notification", "miax.pearlequities.meo.v2.6.executionnotification", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.future = ProtoField.new("Future", "miax.pearlequities.meo.v2.6.future", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.pearlequities.meo.v2.6.goodbyepacket", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.pearlequities.meo.v2.6.highestsequencenumber", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.last_price = ProtoField.new("Last Price", "miax.pearlequities.meo.v2.6.lastprice", ftypes.DOUBLE)
miax_pearlequities_meo_v2_6.fields.last_size = ProtoField.new("Last Size", "miax.pearlequities.meo.v2.6.lastsize", ftypes.UINT32)
miax_pearlequities_meo_v2_6.fields.leaves_qty = ProtoField.new("Leaves Qty", "miax.pearlequities.meo.v2.6.leavesqty", ftypes.UINT32)
miax_pearlequities_meo_v2_6.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.pearlequities.meo.v2.6.liquidityindicator", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.locate_account = ProtoField.new("Locate Account", "miax.pearlequities.meo.v2.6.locateaccount", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.login_request = ProtoField.new("Login Request", "miax.pearlequities.meo.v2.6.loginrequest", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.login_response = ProtoField.new("Login Response", "miax.pearlequities.meo.v2.6.loginresponse", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.login_status = ProtoField.new("Login Status", "miax.pearlequities.meo.v2.6.loginstatus", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.logout_reason = ProtoField.new("Logout Reason", "miax.pearlequities.meo.v2.6.logoutreason", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.logout_request = ProtoField.new("Logout Request", "miax.pearlequities.meo.v2.6.logoutrequest", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.logout_text = ProtoField.new("Logout Text", "miax.pearlequities.meo.v2.6.logouttext", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.lot_size = ProtoField.new("Lot Size", "miax.pearlequities.meo.v2.6.lotsize", ftypes.UINT32)
miax_pearlequities_meo_v2_6.fields.mass_cancel_request = ProtoField.new("Mass Cancel Request", "miax.pearlequities.meo.v2.6.masscancelrequest", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.mass_cancel_response = ProtoField.new("Mass Cancel Response", "miax.pearlequities.meo.v2.6.masscancelresponse", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.pearlequities.meo.v2.6.matchingengineid", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.matching_engine_status = ProtoField.new("Matching Engine Status", "miax.pearlequities.meo.v2.6.matchingenginestatus", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.matching_engine_time = ProtoField.new("Matching Engine Time", "miax.pearlequities.meo.v2.6.matchingenginetime", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.max_floor_qty = ProtoField.new("Max Floor Qty", "miax.pearlequities.meo.v2.6.maxfloorqty", ftypes.UINT32)
miax_pearlequities_meo_v2_6.fields.meo_version = ProtoField.new("Meo Version", "miax.pearlequities.meo.v2.6.meoversion", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.min_qty = ProtoField.new("Min Qty", "miax.pearlequities.meo.v2.6.minqty", ftypes.UINT32)
miax_pearlequities_meo_v2_6.fields.modify_order_notification = ProtoField.new("Modify Order Notification", "miax.pearlequities.meo.v2.6.modifyordernotification", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.modify_order_request_message = ProtoField.new("Modify Order Request Message", "miax.pearlequities.meo.v2.6.modifyorderrequestmessage", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.modify_order_response = ProtoField.new("Modify Order Response", "miax.pearlequities.meo.v2.6.modifyorderresponse", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.mpid = ProtoField.new("Mpid", "miax.pearlequities.meo.v2.6.mpid", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.nbbo_indicator = ProtoField.new("Nbbo Indicator", "miax.pearlequities.meo.v2.6.nbboindicator", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.new_order_notification = ProtoField.new("New Order Notification", "miax.pearlequities.meo.v2.6.newordernotification", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.new_order_request_message = ProtoField.new("New Order Request Message", "miax.pearlequities.meo.v2.6.neworderrequestmessage", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.new_order_response_message = ProtoField.new("New Order Response Message", "miax.pearlequities.meo.v2.6.neworderresponsemessage", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.notification_time = ProtoField.new("Notification Time", "miax.pearlequities.meo.v2.6.notificationtime", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.pearlequities.meo.v2.6.numberofmatchingengines", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.opening_time = ProtoField.new("Opening Time", "miax.pearlequities.meo.v2.6.openingtime", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.order_id = ProtoField.new("Order Id", "miax.pearlequities.meo.v2.6.orderid", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.order_instructions_binary_u_1 = ProtoField.new("Order Instructions Binary U 1", "miax.pearlequities.meo.v2.6.orderinstructionsbinaryu1", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.order_instructions_binary_u_2 = ProtoField.new("Order Instructions Binary U 2", "miax.pearlequities.meo.v2.6.orderinstructionsbinaryu2", ftypes.UINT16)
miax_pearlequities_meo_v2_6.fields.order_price_update_notification = ProtoField.new("Order Price Update Notification", "miax.pearlequities.meo.v2.6.orderpriceupdatenotification", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.order_status = ProtoField.new("Order Status", "miax.pearlequities.meo.v2.6.orderstatus", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.order_type = ProtoField.new("Order Type", "miax.pearlequities.meo.v2.6.ordertype", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "miax.pearlequities.meo.v2.6.originalclientorderid", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.original_order_capacity = ProtoField.new("Original Order Capacity", "miax.pearlequities.meo.v2.6.originalordercapacity", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.packet = ProtoField.new("Packet", "miax.pearlequities.meo.v2.6.packet", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.packet_header = ProtoField.new("Packet Header", "miax.pearlequities.meo.v2.6.packetheader", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.packet_length = ProtoField.new("Packet Length", "miax.pearlequities.meo.v2.6.packetlength", ftypes.UINT16)
miax_pearlequities_meo_v2_6.fields.packet_type = ProtoField.new("Packet Type", "miax.pearlequities.meo.v2.6.packettype", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.payload = ProtoField.new("Payload", "miax.pearlequities.meo.v2.6.payload", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.peg_offset = ProtoField.new("Peg Offset", "miax.pearlequities.meo.v2.6.pegoffset", ftypes.DOUBLE)
miax_pearlequities_meo_v2_6.fields.pending_cancel_status = ProtoField.new("Pending Cancel Status", "miax.pearlequities.meo.v2.6.pendingcancelstatus", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.pending_modify_status = ProtoField.new("Pending Modify Status", "miax.pearlequities.meo.v2.6.pendingmodifystatus", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.pending_reject_reason = ProtoField.new("Pending Reject Reason", "miax.pearlequities.meo.v2.6.pendingrejectreason", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.price = ProtoField.new("Price", "miax.pearlequities.meo.v2.6.price", ftypes.DOUBLE)
miax_pearlequities_meo_v2_6.fields.price_sliding_and_reprice_frequency = ProtoField.new("Price Sliding And Reprice Frequency", "miax.pearlequities.meo.v2.6.priceslidingandrepricefrequency", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearlequities.meo.v2.6.primarymarketcode", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.purge_group = ProtoField.new("Purge Group", "miax.pearlequities.meo.v2.6.purgegroup", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.pearlequities.meo.v2.6.requestedsequencenumber", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.pearlequities.meo.v2.6.requestedtradingsessionid", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.reserve_order_replenishment_notification = ProtoField.new("Reserve Order Replenishment Notification", "miax.pearlequities.meo.v2.6.reserveorderreplenishmentnotification", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.pearlequities.meo.v2.6.reserved1", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.pearlequities.meo.v2.6.reserved10", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.pearlequities.meo.v2.6.reserved12", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.reserved_18 = ProtoField.new("Reserved 18", "miax.pearlequities.meo.v2.6.reserved18", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.reserved_19 = ProtoField.new("Reserved 19", "miax.pearlequities.meo.v2.6.reserved19", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.reserved_28 = ProtoField.new("Reserved 28", "miax.pearlequities.meo.v2.6.reserved28", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.pearlequities.meo.v2.6.reserved8", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.reserved_9 = ProtoField.new("Reserved 9", "miax.pearlequities.meo.v2.6.reserved9", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.pearlequities.meo.v2.6.retransmissionrequest", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.routing = ProtoField.new("Routing", "miax.pearlequities.meo.v2.6.routing", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.scope = ProtoField.new("Scope", "miax.pearlequities.meo.v2.6.scope", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "miax.pearlequities.meo.v2.6.secondaryorderid", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.self_trade_protection = ProtoField.new("Self Trade Protection", "miax.pearlequities.meo.v2.6.selftradeprotection", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.self_trade_protection_group = ProtoField.new("Self Trade Protection Group", "miax.pearlequities.meo.v2.6.selftradeprotectiongroup", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearlequities.meo.v2.6.sequencenumber", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.pearlequities.meo.v2.6.sequenceddatapacket", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.sequenced_message = ProtoField.new("Sequenced Message", "miax.pearlequities.meo.v2.6.sequencedmessage", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.pearlequities.meo.v2.6.sequencedmessagetype", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.session_id = ProtoField.new("Session Id", "miax.pearlequities.meo.v2.6.sessionid", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.size = ProtoField.new("Size", "miax.pearlequities.meo.v2.6.size", ftypes.UINT32)
miax_pearlequities_meo_v2_6.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.pearlequities.meo.v2.6.startsequencenumber", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearlequities.meo.v2.6.symbolid", ftypes.UINT32)
miax_pearlequities_meo_v2_6.fields.symbol_update_message = ProtoField.new("Symbol Update Message", "miax.pearlequities.meo.v2.6.symbolupdatemessage", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.pearlequities.meo.v2.6.synchronizationcomplete", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.system_state_notification = ProtoField.new("System State Notification", "miax.pearlequities.meo.v2.6.systemstatenotification", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.system_status = ProtoField.new("System Status", "miax.pearlequities.meo.v2.6.systemstatus", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.test_packet = ProtoField.new("Test Packet", "miax.pearlequities.meo.v2.6.testpacket", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearlequities.meo.v2.6.testsecurityindicator", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.test_text = ProtoField.new("Test Text", "miax.pearlequities.meo.v2.6.testtext", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearlequities.meo.v2.6.tickersymbol", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.time_in_force = ProtoField.new("Time In Force", "miax.pearlequities.meo.v2.6.timeinforce", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.trade_id = ProtoField.new("Trade Id", "miax.pearlequities.meo.v2.6.tradeid", ftypes.UINT64)
miax_pearlequities_meo_v2_6.fields.trade_status = ProtoField.new("Trade Status", "miax.pearlequities.meo.v2.6.tradestatus", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.trading_collar_dollar_value = ProtoField.new("Trading Collar Dollar Value", "miax.pearlequities.meo.v2.6.tradingcollardollarvalue", ftypes.DOUBLE)
miax_pearlequities_meo_v2_6.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.pearlequities.meo.v2.6.tradingsessionid", ftypes.UINT8)
miax_pearlequities_meo_v2_6.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.pearlequities.meo.v2.6.unsequenceddatapacket", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "miax.pearlequities.meo.v2.6.unsequencedmessage", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.pearlequities.meo.v2.6.unsequencedmessagetype", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.username = ProtoField.new("Username", "miax.pearlequities.meo.v2.6.username", ftypes.STRING)
miax_pearlequities_meo_v2_6.fields.working_price = ProtoField.new("Working Price", "miax.pearlequities.meo.v2.6.workingprice", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Miax PearlEquities Express Orders Meo 2.6 Element Dissection Options
show.cancel_order_by_exchange_order_id_request = true
show.cancel_order_by_exchange_order_id_response_message = true
show.cancel_order_request = true
show.cancel_order_response = true
show.cancel_reduce_size_order_notification = true
show.esesm_tcp_packet = true
show.execution_notification = true
show.goodbye_packet = true
show.login_request = true
show.login_response = true
show.logout_request = true
show.mass_cancel_request = true
show.mass_cancel_response = true
show.modify_order_notification = true
show.modify_order_request_message = true
show.modify_order_response = true
show.new_order_notification = true
show.new_order_request_message = true
show.new_order_response_message = true
show.order_price_update_notification = true
show.packet = true
show.packet_header = true
show.reserve_order_replenishment_notification = true
show.retransmission_request = true
show.sequenced_data_packet = true
show.symbol_update_message = true
show.synchronization_complete = true
show.system_state_notification = true
show.test_packet = true
show.unsequenced_data_packet = true
show.payload = false
show.sequenced_message = false
show.unsequenced_message = false

-- Register Miax PearlEquities Express Orders Meo 2.6 Show Options
miax_pearlequities_meo_v2_6.prefs.show_cancel_order_by_exchange_order_id_request = Pref.bool("Show Cancel Order By Exchange Order Id Request", show.cancel_order_by_exchange_order_id_request, "Parse and add Cancel Order By Exchange Order Id Request to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_cancel_order_by_exchange_order_id_response_message = Pref.bool("Show Cancel Order By Exchange Order Id Response Message", show.cancel_order_by_exchange_order_id_response_message, "Parse and add Cancel Order By Exchange Order Id Response Message to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_cancel_order_request = Pref.bool("Show Cancel Order Request", show.cancel_order_request, "Parse and add Cancel Order Request to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_cancel_order_response = Pref.bool("Show Cancel Order Response", show.cancel_order_response, "Parse and add Cancel Order Response to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_cancel_reduce_size_order_notification = Pref.bool("Show Cancel Reduce Size Order Notification", show.cancel_reduce_size_order_notification, "Parse and add Cancel Reduce Size Order Notification to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_esesm_tcp_packet = Pref.bool("Show Esesm Tcp Packet", show.esesm_tcp_packet, "Parse and add Esesm Tcp Packet to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_execution_notification = Pref.bool("Show Execution Notification", show.execution_notification, "Parse and add Execution Notification to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_mass_cancel_request = Pref.bool("Show Mass Cancel Request", show.mass_cancel_request, "Parse and add Mass Cancel Request to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_mass_cancel_response = Pref.bool("Show Mass Cancel Response", show.mass_cancel_response, "Parse and add Mass Cancel Response to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_modify_order_notification = Pref.bool("Show Modify Order Notification", show.modify_order_notification, "Parse and add Modify Order Notification to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_modify_order_request_message = Pref.bool("Show Modify Order Request Message", show.modify_order_request_message, "Parse and add Modify Order Request Message to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_modify_order_response = Pref.bool("Show Modify Order Response", show.modify_order_response, "Parse and add Modify Order Response to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_new_order_notification = Pref.bool("Show New Order Notification", show.new_order_notification, "Parse and add New Order Notification to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_new_order_request_message = Pref.bool("Show New Order Request Message", show.new_order_request_message, "Parse and add New Order Request Message to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_new_order_response_message = Pref.bool("Show New Order Response Message", show.new_order_response_message, "Parse and add New Order Response Message to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_order_price_update_notification = Pref.bool("Show Order Price Update Notification", show.order_price_update_notification, "Parse and add Order Price Update Notification to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_reserve_order_replenishment_notification = Pref.bool("Show Reserve Order Replenishment Notification", show.reserve_order_replenishment_notification, "Parse and add Reserve Order Replenishment Notification to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_symbol_update_message = Pref.bool("Show Symbol Update Message", show.symbol_update_message, "Parse and add Symbol Update Message to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_synchronization_complete = Pref.bool("Show Synchronization Complete", show.synchronization_complete, "Parse and add Synchronization Complete to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_system_state_notification = Pref.bool("Show System State Notification", show.system_state_notification, "Parse and add System State Notification to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_test_packet = Pref.bool("Show Test Packet", show.test_packet, "Parse and add Test Packet to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
miax_pearlequities_meo_v2_6.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function miax_pearlequities_meo_v2_6.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_order_by_exchange_order_id_request ~= miax_pearlequities_meo_v2_6.prefs.show_cancel_order_by_exchange_order_id_request then
    show.cancel_order_by_exchange_order_id_request = miax_pearlequities_meo_v2_6.prefs.show_cancel_order_by_exchange_order_id_request
    changed = true
  end
  if show.cancel_order_by_exchange_order_id_response_message ~= miax_pearlequities_meo_v2_6.prefs.show_cancel_order_by_exchange_order_id_response_message then
    show.cancel_order_by_exchange_order_id_response_message = miax_pearlequities_meo_v2_6.prefs.show_cancel_order_by_exchange_order_id_response_message
    changed = true
  end
  if show.cancel_order_request ~= miax_pearlequities_meo_v2_6.prefs.show_cancel_order_request then
    show.cancel_order_request = miax_pearlequities_meo_v2_6.prefs.show_cancel_order_request
    changed = true
  end
  if show.cancel_order_response ~= miax_pearlequities_meo_v2_6.prefs.show_cancel_order_response then
    show.cancel_order_response = miax_pearlequities_meo_v2_6.prefs.show_cancel_order_response
    changed = true
  end
  if show.cancel_reduce_size_order_notification ~= miax_pearlequities_meo_v2_6.prefs.show_cancel_reduce_size_order_notification then
    show.cancel_reduce_size_order_notification = miax_pearlequities_meo_v2_6.prefs.show_cancel_reduce_size_order_notification
    changed = true
  end
  if show.esesm_tcp_packet ~= miax_pearlequities_meo_v2_6.prefs.show_esesm_tcp_packet then
    show.esesm_tcp_packet = miax_pearlequities_meo_v2_6.prefs.show_esesm_tcp_packet
    changed = true
  end
  if show.execution_notification ~= miax_pearlequities_meo_v2_6.prefs.show_execution_notification then
    show.execution_notification = miax_pearlequities_meo_v2_6.prefs.show_execution_notification
    changed = true
  end
  if show.goodbye_packet ~= miax_pearlequities_meo_v2_6.prefs.show_goodbye_packet then
    show.goodbye_packet = miax_pearlequities_meo_v2_6.prefs.show_goodbye_packet
    changed = true
  end
  if show.login_request ~= miax_pearlequities_meo_v2_6.prefs.show_login_request then
    show.login_request = miax_pearlequities_meo_v2_6.prefs.show_login_request
    changed = true
  end
  if show.login_response ~= miax_pearlequities_meo_v2_6.prefs.show_login_response then
    show.login_response = miax_pearlequities_meo_v2_6.prefs.show_login_response
    changed = true
  end
  if show.logout_request ~= miax_pearlequities_meo_v2_6.prefs.show_logout_request then
    show.logout_request = miax_pearlequities_meo_v2_6.prefs.show_logout_request
    changed = true
  end
  if show.mass_cancel_request ~= miax_pearlequities_meo_v2_6.prefs.show_mass_cancel_request then
    show.mass_cancel_request = miax_pearlequities_meo_v2_6.prefs.show_mass_cancel_request
    changed = true
  end
  if show.mass_cancel_response ~= miax_pearlequities_meo_v2_6.prefs.show_mass_cancel_response then
    show.mass_cancel_response = miax_pearlequities_meo_v2_6.prefs.show_mass_cancel_response
    changed = true
  end
  if show.modify_order_notification ~= miax_pearlequities_meo_v2_6.prefs.show_modify_order_notification then
    show.modify_order_notification = miax_pearlequities_meo_v2_6.prefs.show_modify_order_notification
    changed = true
  end
  if show.modify_order_request_message ~= miax_pearlequities_meo_v2_6.prefs.show_modify_order_request_message then
    show.modify_order_request_message = miax_pearlequities_meo_v2_6.prefs.show_modify_order_request_message
    changed = true
  end
  if show.modify_order_response ~= miax_pearlequities_meo_v2_6.prefs.show_modify_order_response then
    show.modify_order_response = miax_pearlequities_meo_v2_6.prefs.show_modify_order_response
    changed = true
  end
  if show.new_order_notification ~= miax_pearlequities_meo_v2_6.prefs.show_new_order_notification then
    show.new_order_notification = miax_pearlequities_meo_v2_6.prefs.show_new_order_notification
    changed = true
  end
  if show.new_order_request_message ~= miax_pearlequities_meo_v2_6.prefs.show_new_order_request_message then
    show.new_order_request_message = miax_pearlequities_meo_v2_6.prefs.show_new_order_request_message
    changed = true
  end
  if show.new_order_response_message ~= miax_pearlequities_meo_v2_6.prefs.show_new_order_response_message then
    show.new_order_response_message = miax_pearlequities_meo_v2_6.prefs.show_new_order_response_message
    changed = true
  end
  if show.order_price_update_notification ~= miax_pearlequities_meo_v2_6.prefs.show_order_price_update_notification then
    show.order_price_update_notification = miax_pearlequities_meo_v2_6.prefs.show_order_price_update_notification
    changed = true
  end
  if show.packet ~= miax_pearlequities_meo_v2_6.prefs.show_packet then
    show.packet = miax_pearlequities_meo_v2_6.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= miax_pearlequities_meo_v2_6.prefs.show_packet_header then
    show.packet_header = miax_pearlequities_meo_v2_6.prefs.show_packet_header
    changed = true
  end
  if show.reserve_order_replenishment_notification ~= miax_pearlequities_meo_v2_6.prefs.show_reserve_order_replenishment_notification then
    show.reserve_order_replenishment_notification = miax_pearlequities_meo_v2_6.prefs.show_reserve_order_replenishment_notification
    changed = true
  end
  if show.retransmission_request ~= miax_pearlequities_meo_v2_6.prefs.show_retransmission_request then
    show.retransmission_request = miax_pearlequities_meo_v2_6.prefs.show_retransmission_request
    changed = true
  end
  if show.sequenced_data_packet ~= miax_pearlequities_meo_v2_6.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = miax_pearlequities_meo_v2_6.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.symbol_update_message ~= miax_pearlequities_meo_v2_6.prefs.show_symbol_update_message then
    show.symbol_update_message = miax_pearlequities_meo_v2_6.prefs.show_symbol_update_message
    changed = true
  end
  if show.synchronization_complete ~= miax_pearlequities_meo_v2_6.prefs.show_synchronization_complete then
    show.synchronization_complete = miax_pearlequities_meo_v2_6.prefs.show_synchronization_complete
    changed = true
  end
  if show.system_state_notification ~= miax_pearlequities_meo_v2_6.prefs.show_system_state_notification then
    show.system_state_notification = miax_pearlequities_meo_v2_6.prefs.show_system_state_notification
    changed = true
  end
  if show.test_packet ~= miax_pearlequities_meo_v2_6.prefs.show_test_packet then
    show.test_packet = miax_pearlequities_meo_v2_6.prefs.show_test_packet
    changed = true
  end
  if show.unsequenced_data_packet ~= miax_pearlequities_meo_v2_6.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = miax_pearlequities_meo_v2_6.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= miax_pearlequities_meo_v2_6.prefs.show_payload then
    show.payload = miax_pearlequities_meo_v2_6.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= miax_pearlequities_meo_v2_6.prefs.show_sequenced_message then
    show.sequenced_message = miax_pearlequities_meo_v2_6.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= miax_pearlequities_meo_v2_6.prefs.show_unsequenced_message then
    show.unsequenced_message = miax_pearlequities_meo_v2_6.prefs.show_unsequenced_message
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
-- Dissect Miax PearlEquities Express Orders Meo 2.6
-----------------------------------------------------------------------

-- Display: Test Text
miax_pearlequities_meo_v2_6_display.test_text = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_pearlequities_meo_v2_6_dissect.test_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.test_text(value, buffer, offset, packet, parent, size)

  parent:add(miax_pearlequities_meo_v2_6.fields.test_text, range, value, display)

  return offset + size
end

-- Calculate size of: Test Packet
miax_pearlequities_meo_v2_6_size_of.test_packet = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_pearlequities_meo_v2_6_display.test_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Test Packet
miax_pearlequities_meo_v2_6_dissect.test_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index = miax_pearlequities_meo_v2_6_dissect.test_text(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_pearlequities_meo_v2_6_dissect.test_packet = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.test_packet then
    local length = miax_pearlequities_meo_v2_6_size_of.test_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.test_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.test_packet, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.test_packet_fields(buffer, offset, packet, parent)
end

-- Display: Logout Text
miax_pearlequities_meo_v2_6_display.logout_text = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_pearlequities_meo_v2_6_dissect.logout_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.logout_text(value, buffer, offset, packet, parent, size)

  parent:add(miax_pearlequities_meo_v2_6.fields.logout_text, range, value, display)

  return offset + size
end

-- Size: Logout Reason
miax_pearlequities_meo_v2_6_size_of.logout_reason = 1

-- Display: Logout Reason
miax_pearlequities_meo_v2_6_display.logout_reason = function(value)
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
miax_pearlequities_meo_v2_6_dissect.logout_reason = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.logout_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.logout_reason(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Goodbye Packet
miax_pearlequities_meo_v2_6_size_of.goodbye_packet = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.logout_reason

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_pearlequities_meo_v2_6_display.goodbye_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_pearlequities_meo_v2_6_dissect.goodbye_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_meo_v2_6_dissect.logout_reason(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index = miax_pearlequities_meo_v2_6_dissect.logout_text(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_pearlequities_meo_v2_6_dissect.goodbye_packet = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.goodbye_packet then
    local length = miax_pearlequities_meo_v2_6_size_of.goodbye_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.goodbye_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.goodbye_packet, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.goodbye_packet_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logout Request
miax_pearlequities_meo_v2_6_size_of.logout_request = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.logout_reason

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_pearlequities_meo_v2_6_display.logout_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Request
miax_pearlequities_meo_v2_6_dissect.logout_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_meo_v2_6_dissect.logout_reason(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index = miax_pearlequities_meo_v2_6_dissect.logout_text(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_pearlequities_meo_v2_6_dissect.logout_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.logout_request then
    local length = miax_pearlequities_meo_v2_6_size_of.logout_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.logout_request(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.logout_request, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.logout_request_fields(buffer, offset, packet, parent)
end

-- Size: End Sequence Number
miax_pearlequities_meo_v2_6_size_of.end_sequence_number = 8

-- Display: End Sequence Number
miax_pearlequities_meo_v2_6_display.end_sequence_number = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_pearlequities_meo_v2_6_dissect.end_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.end_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.end_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Start Sequence Number
miax_pearlequities_meo_v2_6_size_of.start_sequence_number = 8

-- Display: Start Sequence Number
miax_pearlequities_meo_v2_6_display.start_sequence_number = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_pearlequities_meo_v2_6_dissect.start_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.start_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.start_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmission Request
miax_pearlequities_meo_v2_6_size_of.retransmission_request = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.start_sequence_number

  index = index + miax_pearlequities_meo_v2_6_size_of.end_sequence_number

  return index
end

-- Display: Retransmission Request
miax_pearlequities_meo_v2_6_display.retransmission_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_pearlequities_meo_v2_6_dissect.retransmission_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_pearlequities_meo_v2_6_dissect.start_sequence_number(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_pearlequities_meo_v2_6_dissect.end_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_pearlequities_meo_v2_6_dissect.retransmission_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmission_request then
    local length = miax_pearlequities_meo_v2_6_size_of.retransmission_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.retransmission_request(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.retransmission_request, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.retransmission_request_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Matching Engines
miax_pearlequities_meo_v2_6_size_of.number_of_matching_engines = 1

-- Display: Number Of Matching Engines
miax_pearlequities_meo_v2_6_display.number_of_matching_engines = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_pearlequities_meo_v2_6_dissect.number_of_matching_engines = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.number_of_matching_engines
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.number_of_matching_engines(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Calculate size of: Synchronization Complete
miax_pearlequities_meo_v2_6_size_of.synchronization_complete = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.number_of_matching_engines

  return index
end

-- Display: Synchronization Complete
miax_pearlequities_meo_v2_6_display.synchronization_complete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_pearlequities_meo_v2_6_dissect.synchronization_complete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearlequities_meo_v2_6_dissect.number_of_matching_engines(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_pearlequities_meo_v2_6_dissect.synchronization_complete = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.synchronization_complete then
    local length = miax_pearlequities_meo_v2_6_size_of.synchronization_complete(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.synchronization_complete(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.synchronization_complete, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.synchronization_complete_fields(buffer, offset, packet, parent)
end

-- Size: Highest Sequence Number
miax_pearlequities_meo_v2_6_size_of.highest_sequence_number = 8

-- Display: Highest Sequence Number
miax_pearlequities_meo_v2_6_display.highest_sequence_number = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_pearlequities_meo_v2_6_dissect.highest_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.highest_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.highest_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Id
miax_pearlequities_meo_v2_6_size_of.trading_session_id = 1

-- Display: Trading Session Id
miax_pearlequities_meo_v2_6_display.trading_session_id = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_pearlequities_meo_v2_6_dissect.trading_session_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.trading_session_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_meo_v2_6_display.trading_session_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Size: Login Status
miax_pearlequities_meo_v2_6_size_of.login_status = 1

-- Display: Login Status
miax_pearlequities_meo_v2_6_display.login_status = function(value)
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
miax_pearlequities_meo_v2_6_dissect.login_status = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.login_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.login_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.login_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Response
miax_pearlequities_meo_v2_6_size_of.login_response = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.number_of_matching_engines

  index = index + miax_pearlequities_meo_v2_6_size_of.login_status

  index = index + miax_pearlequities_meo_v2_6_size_of.trading_session_id

  index = index + miax_pearlequities_meo_v2_6_size_of.highest_sequence_number

  return index
end

-- Display: Login Response
miax_pearlequities_meo_v2_6_display.login_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Response
miax_pearlequities_meo_v2_6_dissect.login_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearlequities_meo_v2_6_dissect.number_of_matching_engines(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 9 values
  index, login_status = miax_pearlequities_meo_v2_6_dissect.login_status(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_pearlequities_meo_v2_6_dissect.trading_session_id(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_pearlequities_meo_v2_6_dissect.highest_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_pearlequities_meo_v2_6_dissect.login_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_response then
    local length = miax_pearlequities_meo_v2_6_size_of.login_response(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.login_response(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.login_response, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.login_response_fields(buffer, offset, packet, parent)
end

-- Size: Requested Sequence Number
miax_pearlequities_meo_v2_6_size_of.requested_sequence_number = 8

-- Display: Requested Sequence Number
miax_pearlequities_meo_v2_6_display.requested_sequence_number = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_pearlequities_meo_v2_6_dissect.requested_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.requested_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.requested_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Requested Trading Session Id
miax_pearlequities_meo_v2_6_size_of.requested_trading_session_id = 1

-- Display: Requested Trading Session Id
miax_pearlequities_meo_v2_6_display.requested_trading_session_id = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_pearlequities_meo_v2_6_dissect.requested_trading_session_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.requested_trading_session_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_meo_v2_6_display.requested_trading_session_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Size: Application Protocol
miax_pearlequities_meo_v2_6_size_of.application_protocol = 8

-- Display: Application Protocol
miax_pearlequities_meo_v2_6_display.application_protocol = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_pearlequities_meo_v2_6_dissect.application_protocol = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.application_protocol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.application_protocol(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Size: Computer Id
miax_pearlequities_meo_v2_6_size_of.computer_id = 8

-- Display: Computer Id
miax_pearlequities_meo_v2_6_display.computer_id = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_pearlequities_meo_v2_6_dissect.computer_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.computer_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.computer_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Size: Username
miax_pearlequities_meo_v2_6_size_of.username = 5

-- Display: Username
miax_pearlequities_meo_v2_6_display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_pearlequities_meo_v2_6_dissect.username = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.username
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.username(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.username, range, value, display)

  return offset + length, value
end

-- Size: Esesm Version
miax_pearlequities_meo_v2_6_size_of.esesm_version = 5

-- Display: Esesm Version
miax_pearlequities_meo_v2_6_display.esesm_version = function(value)
  return "Esesm Version: "..value
end

-- Dissect: Esesm Version
miax_pearlequities_meo_v2_6_dissect.esesm_version = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.esesm_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.esesm_version(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.esesm_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request
miax_pearlequities_meo_v2_6_size_of.login_request = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.esesm_version

  index = index + miax_pearlequities_meo_v2_6_size_of.username

  index = index + miax_pearlequities_meo_v2_6_size_of.computer_id

  index = index + miax_pearlequities_meo_v2_6_size_of.application_protocol

  index = index + miax_pearlequities_meo_v2_6_size_of.requested_trading_session_id

  index = index + miax_pearlequities_meo_v2_6_size_of.requested_sequence_number

  return index
end

-- Display: Login Request
miax_pearlequities_meo_v2_6_display.login_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request
miax_pearlequities_meo_v2_6_dissect.login_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Esesm Version: 5 Byte Ascii String
  index, esesm_version = miax_pearlequities_meo_v2_6_dissect.esesm_version(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_pearlequities_meo_v2_6_dissect.username(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_pearlequities_meo_v2_6_dissect.computer_id(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_pearlequities_meo_v2_6_dissect.application_protocol(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_pearlequities_meo_v2_6_dissect.requested_trading_session_id(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_pearlequities_meo_v2_6_dissect.requested_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_pearlequities_meo_v2_6_dissect.login_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.login_request then
    local length = miax_pearlequities_meo_v2_6_size_of.login_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.login_request(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.login_request, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.login_request_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 12
miax_pearlequities_meo_v2_6_size_of.reserved_12 = 12

-- Display: Reserved 12
miax_pearlequities_meo_v2_6_display.reserved_12 = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_pearlequities_meo_v2_6_dissect.reserved_12 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.reserved_12
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.reserved_12(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Size: Executing Trading Center Mpid
miax_pearlequities_meo_v2_6_size_of.executing_trading_center_mpid = 4

-- Display: Executing Trading Center Mpid
miax_pearlequities_meo_v2_6_display.executing_trading_center_mpid = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Executing Trading Center Mpid: No Value"
  end

  return "Executing Trading Center Mpid: "..value
end

-- Dissect: Executing Trading Center Mpid
miax_pearlequities_meo_v2_6_dissect.executing_trading_center_mpid = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.executing_trading_center_mpid
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = miax_pearlequities_meo_v2_6_display.executing_trading_center_mpid(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.executing_trading_center_mpid, range, value, display)

  return offset + length, value
end

-- Size: Additional Liquidity Indicator
miax_pearlequities_meo_v2_6_size_of.additional_liquidity_indicator = 1

-- Display: Additional Liquidity Indicator
miax_pearlequities_meo_v2_6_display.additional_liquidity_indicator = function(value)
  return "Additional Liquidity Indicator: "..value
end

-- Dissect: Additional Liquidity Indicator
miax_pearlequities_meo_v2_6_dissect.additional_liquidity_indicator = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.additional_liquidity_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.additional_liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.additional_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Original Order Capacity
miax_pearlequities_meo_v2_6_size_of.original_order_capacity = 1

-- Display: Original Order Capacity
miax_pearlequities_meo_v2_6_display.original_order_capacity = function(value)
  return "Original Order Capacity: "..value
end

-- Dissect: Original Order Capacity
miax_pearlequities_meo_v2_6_dissect.original_order_capacity = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.original_order_capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.original_order_capacity(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.original_order_capacity, range, value, display)

  return offset + length, value
end

-- Size: Locate Account
miax_pearlequities_meo_v2_6_size_of.locate_account = 4

-- Display: Locate Account
miax_pearlequities_meo_v2_6_display.locate_account = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Account: No Value"
  end

  return "Locate Account: "..value
end

-- Dissect: Locate Account
miax_pearlequities_meo_v2_6_dissect.locate_account = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.locate_account
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = miax_pearlequities_meo_v2_6_display.locate_account(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.locate_account, range, value, display)

  return offset + length, value
end

-- Size: Liquidity Indicator
miax_pearlequities_meo_v2_6_size_of.liquidity_indicator = 3

-- Display: Liquidity Indicator
miax_pearlequities_meo_v2_6_display.liquidity_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
miax_pearlequities_meo_v2_6_dissect.liquidity_indicator = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.liquidity_indicator
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = miax_pearlequities_meo_v2_6_display.liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Secondary Order Id
miax_pearlequities_meo_v2_6_size_of.secondary_order_id = 8

-- Display: Secondary Order Id
miax_pearlequities_meo_v2_6_display.secondary_order_id = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
miax_pearlequities_meo_v2_6_dissect.secondary_order_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.secondary_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.secondary_order_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Size: Executing Trading Center
miax_pearlequities_meo_v2_6_size_of.executing_trading_center = 1

-- Display: Executing Trading Center
miax_pearlequities_meo_v2_6_display.executing_trading_center = function(value)
  return "Executing Trading Center: "..value
end

-- Dissect: Executing Trading Center
miax_pearlequities_meo_v2_6_dissect.executing_trading_center = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.executing_trading_center
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.executing_trading_center(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.executing_trading_center, range, value, display)

  return offset + length, value
end

-- Size: Order Instructions Binary U 2
miax_pearlequities_meo_v2_6_size_of.order_instructions_binary_u_2 = 2

-- Display: Order Instructions Binary U 2
miax_pearlequities_meo_v2_6_display.order_instructions_binary_u_2 = function(value)
  return "Order Instructions Binary U 2: "..value
end

-- Dissect: Order Instructions Binary U 2
miax_pearlequities_meo_v2_6_dissect.order_instructions_binary_u_2 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.order_instructions_binary_u_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.order_instructions_binary_u_2(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.order_instructions_binary_u_2, range, value, display)

  return offset + length, value
end

-- Size: Last Size
miax_pearlequities_meo_v2_6_size_of.last_size = 4

-- Display: Last Size
miax_pearlequities_meo_v2_6_display.last_size = function(value)
  return "Last Size: "..value
end

-- Dissect: Last Size
miax_pearlequities_meo_v2_6_dissect.last_size = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.last_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.last_size(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.last_size, range, value, display)

  return offset + length, value
end

-- Size: Last Price
miax_pearlequities_meo_v2_6_size_of.last_price = 8

-- Display: Last Price
miax_pearlequities_meo_v2_6_display.last_price = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
translate.last_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price
miax_pearlequities_meo_v2_6_dissect.last_price = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.last_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.last_price(raw)
  local display = miax_pearlequities_meo_v2_6_display.last_price(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Status
miax_pearlequities_meo_v2_6_size_of.trade_status = 1

-- Display: Trade Status
miax_pearlequities_meo_v2_6_display.trade_status = function(value)
  return "Trade Status: "..value
end

-- Dissect: Trade Status
miax_pearlequities_meo_v2_6_dissect.trade_status = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.trade_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.trade_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.trade_status, range, value, display)

  return offset + length, value
end

-- Size: Correction Number
miax_pearlequities_meo_v2_6_size_of.correction_number = 1

-- Display: Correction Number
miax_pearlequities_meo_v2_6_display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearlequities_meo_v2_6_dissect.correction_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.correction_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Size: Execution Id
miax_pearlequities_meo_v2_6_size_of.execution_id = 8

-- Display: Execution Id
miax_pearlequities_meo_v2_6_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_pearlequities_meo_v2_6_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
miax_pearlequities_meo_v2_6_size_of.trade_id = 8

-- Display: Trade Id
miax_pearlequities_meo_v2_6_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearlequities_meo_v2_6_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Client Order Id
miax_pearlequities_meo_v2_6_size_of.client_order_id = 20

-- Display: Client Order Id
miax_pearlequities_meo_v2_6_display.client_order_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
miax_pearlequities_meo_v2_6_dissect.client_order_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.client_order_id
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = miax_pearlequities_meo_v2_6_display.client_order_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Size: Symbol Id
miax_pearlequities_meo_v2_6_size_of.symbol_id = 4

-- Display: Symbol Id
miax_pearlequities_meo_v2_6_display.symbol_id = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
miax_pearlequities_meo_v2_6_dissect.symbol_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.symbol_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.symbol_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Size: Mpid
miax_pearlequities_meo_v2_6_size_of.mpid = 4

-- Display: Mpid
miax_pearlequities_meo_v2_6_display.mpid = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
miax_pearlequities_meo_v2_6_dissect.mpid = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.mpid
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.mpid(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.mpid, range, value, display)

  return offset + length, value
end

-- Size: Matching Engine Time
miax_pearlequities_meo_v2_6_size_of.matching_engine_time = 8

-- Display: Matching Engine Time
miax_pearlequities_meo_v2_6_display.matching_engine_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Matching Engine Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Matching Engine Time
miax_pearlequities_meo_v2_6_dissect.matching_engine_time = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.matching_engine_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.matching_engine_time(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.matching_engine_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Notification
miax_pearlequities_meo_v2_6_size_of.execution_notification = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.trade_id

  index = index + miax_pearlequities_meo_v2_6_size_of.execution_id

  index = index + miax_pearlequities_meo_v2_6_size_of.correction_number

  index = index + miax_pearlequities_meo_v2_6_size_of.trade_status

  index = index + miax_pearlequities_meo_v2_6_size_of.last_price

  index = index + miax_pearlequities_meo_v2_6_size_of.last_size

  index = index + miax_pearlequities_meo_v2_6_size_of.order_instructions_binary_u_2

  index = index + miax_pearlequities_meo_v2_6_size_of.executing_trading_center

  index = index + miax_pearlequities_meo_v2_6_size_of.secondary_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.liquidity_indicator

  index = index + miax_pearlequities_meo_v2_6_size_of.locate_account

  index = index + miax_pearlequities_meo_v2_6_size_of.original_order_capacity

  index = index + miax_pearlequities_meo_v2_6_size_of.additional_liquidity_indicator

  index = index + miax_pearlequities_meo_v2_6_size_of.executing_trading_center_mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_12

  return index
end

-- Display: Execution Notification
miax_pearlequities_meo_v2_6_display.execution_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Notification
miax_pearlequities_meo_v2_6_dissect.execution_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = miax_pearlequities_meo_v2_6_dissect.trade_id(buffer, index, packet, parent)

  -- Execution Id: 8 Byte Unsigned Fixed Width Integer
  index, execution_id = miax_pearlequities_meo_v2_6_dissect.execution_id(buffer, index, packet, parent)

  -- Correction Number: 1 Byte Unsigned Fixed Width Integer
  index, correction_number = miax_pearlequities_meo_v2_6_dissect.correction_number(buffer, index, packet, parent)

  -- Trade Status: 1 Byte Ascii String
  index, trade_status = miax_pearlequities_meo_v2_6_dissect.trade_status(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = miax_pearlequities_meo_v2_6_dissect.last_price(buffer, index, packet, parent)

  -- Last Size: 4 Byte Unsigned Fixed Width Integer
  index, last_size = miax_pearlequities_meo_v2_6_dissect.last_size(buffer, index, packet, parent)

  -- Order Instructions Binary U 2: 2 Byte Unsigned Fixed Width Integer
  index, order_instructions_binary_u_2 = miax_pearlequities_meo_v2_6_dissect.order_instructions_binary_u_2(buffer, index, packet, parent)

  -- Executing Trading Center: 1 Byte Ascii String
  index, executing_trading_center = miax_pearlequities_meo_v2_6_dissect.executing_trading_center(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = miax_pearlequities_meo_v2_6_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Liquidity Indicator: 3 Byte Ascii String
  index, liquidity_indicator = miax_pearlequities_meo_v2_6_dissect.liquidity_indicator(buffer, index, packet, parent)

  -- Locate Account: 4 Byte Ascii String
  index, locate_account = miax_pearlequities_meo_v2_6_dissect.locate_account(buffer, index, packet, parent)

  -- Original Order Capacity: 1 Byte Ascii String
  index, original_order_capacity = miax_pearlequities_meo_v2_6_dissect.original_order_capacity(buffer, index, packet, parent)

  -- Additional Liquidity Indicator: 1 Byte Unsigned Fixed Width Integer
  index, additional_liquidity_indicator = miax_pearlequities_meo_v2_6_dissect.additional_liquidity_indicator(buffer, index, packet, parent)

  -- Executing Trading Center Mpid: 4 Byte Ascii String
  index, executing_trading_center_mpid = miax_pearlequities_meo_v2_6_dissect.executing_trading_center_mpid(buffer, index, packet, parent)

  -- Reserved 12: 12 Byte Ascii String
  index, reserved_12 = miax_pearlequities_meo_v2_6_dissect.reserved_12(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Notification
miax_pearlequities_meo_v2_6_dissect.execution_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_notification then
    local length = miax_pearlequities_meo_v2_6_size_of.execution_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.execution_notification(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.execution_notification, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.execution_notification_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 10
miax_pearlequities_meo_v2_6_size_of.reserved_10 = 10

-- Display: Reserved 10
miax_pearlequities_meo_v2_6_display.reserved_10 = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_pearlequities_meo_v2_6_dissect.reserved_10 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.reserved_10
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.reserved_10(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
miax_pearlequities_meo_v2_6_size_of.display_qty = 4

-- Display: Display Qty
miax_pearlequities_meo_v2_6_display.display_qty = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
miax_pearlequities_meo_v2_6_dissect.display_qty = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.display_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.display_qty(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Size: Order Id
miax_pearlequities_meo_v2_6_size_of.order_id = 8

-- Display: Order Id
miax_pearlequities_meo_v2_6_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_pearlequities_meo_v2_6_dissect.order_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.order_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reserve Order Replenishment Notification
miax_pearlequities_meo_v2_6_size_of.reserve_order_replenishment_notification = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.secondary_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.display_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_10

  return index
end

-- Display: Reserve Order Replenishment Notification
miax_pearlequities_meo_v2_6_display.reserve_order_replenishment_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reserve Order Replenishment Notification
miax_pearlequities_meo_v2_6_dissect.reserve_order_replenishment_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = miax_pearlequities_meo_v2_6_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index, display_qty = miax_pearlequities_meo_v2_6_dissect.display_qty(buffer, index, packet, parent)

  -- Reserved 10: 10 Byte Ascii String
  index, reserved_10 = miax_pearlequities_meo_v2_6_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Reserve Order Replenishment Notification
miax_pearlequities_meo_v2_6_dissect.reserve_order_replenishment_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reserve_order_replenishment_notification then
    local length = miax_pearlequities_meo_v2_6_size_of.reserve_order_replenishment_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.reserve_order_replenishment_notification(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.reserve_order_replenishment_notification, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.reserve_order_replenishment_notification_fields(buffer, offset, packet, parent)
end

-- Size: Matching Engine Status
miax_pearlequities_meo_v2_6_size_of.matching_engine_status = 24

-- Display: Matching Engine Status
miax_pearlequities_meo_v2_6_display.matching_engine_status = function(value)
  return "Matching Engine Status: "..value
end

-- Dissect: Matching Engine Status
miax_pearlequities_meo_v2_6_dissect.matching_engine_status = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.matching_engine_status
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.matching_engine_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.matching_engine_status, range, value, display)

  return offset + length, value
end

-- Size: Notification Time
miax_pearlequities_meo_v2_6_size_of.notification_time = 8

-- Display: Notification Time
miax_pearlequities_meo_v2_6_display.notification_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Notification Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification Time
miax_pearlequities_meo_v2_6_dissect.notification_time = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.notification_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.notification_time(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Response
miax_pearlequities_meo_v2_6_size_of.mass_cancel_response = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.notification_time

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.number_of_matching_engines

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_status

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_10

  return index
end

-- Display: Mass Cancel Response
miax_pearlequities_meo_v2_6_display.mass_cancel_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Response
miax_pearlequities_meo_v2_6_dissect.mass_cancel_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: 8 Byte Unsigned Fixed Width Integer
  index, notification_time = miax_pearlequities_meo_v2_6_dissect.notification_time(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Number Of Matching Engines: 1 Byte Unsigned Fixed Width Integer
  index, number_of_matching_engines = miax_pearlequities_meo_v2_6_dissect.number_of_matching_engines(buffer, index, packet, parent)

  -- Matching Engine Status: 24 Byte Ascii String
  index, matching_engine_status = miax_pearlequities_meo_v2_6_dissect.matching_engine_status(buffer, index, packet, parent)

  -- Reserved 10: 10 Byte Ascii String
  index, reserved_10 = miax_pearlequities_meo_v2_6_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Response
miax_pearlequities_meo_v2_6_dissect.mass_cancel_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_response then
    local length = miax_pearlequities_meo_v2_6_size_of.mass_cancel_response(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.mass_cancel_response(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.mass_cancel_response, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.mass_cancel_response_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 9
miax_pearlequities_meo_v2_6_size_of.reserved_9 = 9

-- Display: Reserved 9
miax_pearlequities_meo_v2_6_display.reserved_9 = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
miax_pearlequities_meo_v2_6_dissect.reserved_9 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.reserved_9
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.reserved_9(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Size: Purge Group
miax_pearlequities_meo_v2_6_size_of.purge_group = 1

-- Display: Purge Group
miax_pearlequities_meo_v2_6_display.purge_group = function(value)
  return "Purge Group: "..value
end

-- Dissect: Purge Group
miax_pearlequities_meo_v2_6_dissect.purge_group = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.purge_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.purge_group(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.purge_group, range, value, display)

  return offset + length, value
end

-- Size: Action
miax_pearlequities_meo_v2_6_size_of.action = 1

-- Display: Action
miax_pearlequities_meo_v2_6_display.action = function(value)
  return "Action: "..value
end

-- Dissect: Action
miax_pearlequities_meo_v2_6_dissect.action = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.action
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.action(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.action, range, value, display)

  return offset + length, value
end

-- Size: Scope
miax_pearlequities_meo_v2_6_size_of.scope = 1

-- Display: Scope
miax_pearlequities_meo_v2_6_display.scope = function(value)
  return "Scope: "..value
end

-- Dissect: Scope
miax_pearlequities_meo_v2_6_dissect.scope = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.scope
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.scope(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.scope, range, value, display)

  return offset + length, value
end

-- Size: Reserved 8
miax_pearlequities_meo_v2_6_size_of.reserved_8 = 8

-- Display: Reserved 8
miax_pearlequities_meo_v2_6_display.reserved_8 = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_pearlequities_meo_v2_6_dissect.reserved_8 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.reserved_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.reserved_8(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Request
miax_pearlequities_meo_v2_6_size_of.mass_cancel_request = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_8

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.scope

  index = index + miax_pearlequities_meo_v2_6_size_of.action

  index = index + miax_pearlequities_meo_v2_6_size_of.purge_group

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_9

  return index
end

-- Display: Mass Cancel Request
miax_pearlequities_meo_v2_6_display.mass_cancel_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Request
miax_pearlequities_meo_v2_6_dissect.mass_cancel_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: 8 Byte Ascii String
  index, reserved_8 = miax_pearlequities_meo_v2_6_dissect.reserved_8(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Scope: 1 Byte Ascii String
  index, scope = miax_pearlequities_meo_v2_6_dissect.scope(buffer, index, packet, parent)

  -- Action: 1 Byte Ascii String
  index, action = miax_pearlequities_meo_v2_6_dissect.action(buffer, index, packet, parent)

  -- Purge Group: 1 Byte Ascii String
  index, purge_group = miax_pearlequities_meo_v2_6_dissect.purge_group(buffer, index, packet, parent)

  -- Reserved 9: 9 Byte Ascii String
  index, reserved_9 = miax_pearlequities_meo_v2_6_dissect.reserved_9(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request
miax_pearlequities_meo_v2_6_dissect.mass_cancel_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_request then
    local length = miax_pearlequities_meo_v2_6_size_of.mass_cancel_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.mass_cancel_request(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.mass_cancel_request, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.mass_cancel_request_fields(buffer, offset, packet, parent)
end

-- Size: Order Status
miax_pearlequities_meo_v2_6_size_of.order_status = 1

-- Display: Order Status
miax_pearlequities_meo_v2_6_display.order_status = function(value)
  return "Order Status: "..value
end

-- Dissect: Order Status
miax_pearlequities_meo_v2_6_dissect.order_status = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.order_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.order_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.order_status, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
miax_pearlequities_meo_v2_6_size_of.leaves_qty = 4

-- Display: Leaves Qty
miax_pearlequities_meo_v2_6_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
miax_pearlequities_meo_v2_6_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_meo_v2_6_size_of.cancel_order_by_exchange_order_id_response_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.leaves_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.order_status

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_10

  return index
end

-- Display: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_meo_v2_6_display.cancel_order_by_exchange_order_id_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_meo_v2_6_dissect.cancel_order_by_exchange_order_id_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = miax_pearlequities_meo_v2_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Order Status: 1 Byte Ascii String
  index, order_status = miax_pearlequities_meo_v2_6_dissect.order_status(buffer, index, packet, parent)

  -- Reserved 10: 10 Byte Ascii String
  index, reserved_10 = miax_pearlequities_meo_v2_6_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_meo_v2_6_dissect.cancel_order_by_exchange_order_id_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_by_exchange_order_id_response_message then
    local length = miax_pearlequities_meo_v2_6_size_of.cancel_order_by_exchange_order_id_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.cancel_order_by_exchange_order_id_response_message(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.cancel_order_by_exchange_order_id_response_message, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.cancel_order_by_exchange_order_id_response_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Order By Exchange Order Id Request
miax_pearlequities_meo_v2_6_size_of.cancel_order_by_exchange_order_id_request = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_8

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_10

  return index
end

-- Display: Cancel Order By Exchange Order Id Request
miax_pearlequities_meo_v2_6_display.cancel_order_by_exchange_order_id_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order By Exchange Order Id Request
miax_pearlequities_meo_v2_6_dissect.cancel_order_by_exchange_order_id_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: 8 Byte Ascii String
  index, reserved_8 = miax_pearlequities_meo_v2_6_dissect.reserved_8(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Reserved 10: 10 Byte Ascii String
  index, reserved_10 = miax_pearlequities_meo_v2_6_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order By Exchange Order Id Request
miax_pearlequities_meo_v2_6_dissect.cancel_order_by_exchange_order_id_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_by_exchange_order_id_request then
    local length = miax_pearlequities_meo_v2_6_size_of.cancel_order_by_exchange_order_id_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.cancel_order_by_exchange_order_id_request(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.cancel_order_by_exchange_order_id_request, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.cancel_order_by_exchange_order_id_request_fields(buffer, offset, packet, parent)
end

-- Size: Original Client Order Id
miax_pearlequities_meo_v2_6_size_of.original_client_order_id = 20

-- Display: Original Client Order Id
miax_pearlequities_meo_v2_6_display.original_client_order_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order Id: No Value"
  end

  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
miax_pearlequities_meo_v2_6_dissect.original_client_order_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.original_client_order_id
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = miax_pearlequities_meo_v2_6_display.original_client_order_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Order Response
miax_pearlequities_meo_v2_6_size_of.cancel_order_response = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.original_client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.leaves_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.order_status

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_10

  return index
end

-- Display: Cancel Order Response
miax_pearlequities_meo_v2_6_display.cancel_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order Response
miax_pearlequities_meo_v2_6_dissect.cancel_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order Id: 20 Byte Ascii String
  index, original_client_order_id = miax_pearlequities_meo_v2_6_dissect.original_client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = miax_pearlequities_meo_v2_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Order Status: 1 Byte Ascii String
  index, order_status = miax_pearlequities_meo_v2_6_dissect.order_status(buffer, index, packet, parent)

  -- Reserved 10: 10 Byte Ascii String
  index, reserved_10 = miax_pearlequities_meo_v2_6_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Response
miax_pearlequities_meo_v2_6_dissect.cancel_order_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_response then
    local length = miax_pearlequities_meo_v2_6_size_of.cancel_order_response(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.cancel_order_response(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.cancel_order_response, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.cancel_order_response_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Order Request
miax_pearlequities_meo_v2_6_size_of.cancel_order_request = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_8

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.original_client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_10

  return index
end

-- Display: Cancel Order Request
miax_pearlequities_meo_v2_6_display.cancel_order_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order Request
miax_pearlequities_meo_v2_6_dissect.cancel_order_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: 8 Byte Ascii String
  index, reserved_8 = miax_pearlequities_meo_v2_6_dissect.reserved_8(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order Id: 20 Byte Ascii String
  index, original_client_order_id = miax_pearlequities_meo_v2_6_dissect.original_client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Reserved 10: 10 Byte Ascii String
  index, reserved_10 = miax_pearlequities_meo_v2_6_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Request
miax_pearlequities_meo_v2_6_dissect.cancel_order_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_request then
    local length = miax_pearlequities_meo_v2_6_size_of.cancel_order_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.cancel_order_request(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.cancel_order_request, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.cancel_order_request_fields(buffer, offset, packet, parent)
end

-- Size: Price
miax_pearlequities_meo_v2_6_size_of.price = 8

-- Display: Price
miax_pearlequities_meo_v2_6_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
miax_pearlequities_meo_v2_6_dissect.price = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = miax_pearlequities_meo_v2_6_display.price(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Response
miax_pearlequities_meo_v2_6_size_of.modify_order_response = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.original_client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.leaves_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.price

  index = index + miax_pearlequities_meo_v2_6_size_of.order_status

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_10

  return index
end

-- Display: Modify Order Response
miax_pearlequities_meo_v2_6_display.modify_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Response
miax_pearlequities_meo_v2_6_dissect.modify_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order Id: 20 Byte Ascii String
  index, original_client_order_id = miax_pearlequities_meo_v2_6_dissect.original_client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = miax_pearlequities_meo_v2_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = miax_pearlequities_meo_v2_6_dissect.price(buffer, index, packet, parent)

  -- Order Status: 1 Byte Ascii String
  index, order_status = miax_pearlequities_meo_v2_6_dissect.order_status(buffer, index, packet, parent)

  -- Reserved 10: 10 Byte Ascii String
  index, reserved_10 = miax_pearlequities_meo_v2_6_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Response
miax_pearlequities_meo_v2_6_dissect.modify_order_response = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_response then
    local length = miax_pearlequities_meo_v2_6_size_of.modify_order_response(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.modify_order_response(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.modify_order_response, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.modify_order_response_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 28
miax_pearlequities_meo_v2_6_size_of.reserved_28 = 28

-- Display: Reserved 28
miax_pearlequities_meo_v2_6_display.reserved_28 = function(value)
  return "Reserved 28: "..value
end

-- Dissect: Reserved 28
miax_pearlequities_meo_v2_6_dissect.reserved_28 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.reserved_28
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.reserved_28(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.reserved_28, range, value, display)

  return offset + length, value
end

-- Size: Max Floor Qty
miax_pearlequities_meo_v2_6_size_of.max_floor_qty = 4

-- Display: Max Floor Qty
miax_pearlequities_meo_v2_6_display.max_floor_qty = function(value)
  return "Max Floor Qty: "..value
end

-- Dissect: Max Floor Qty
miax_pearlequities_meo_v2_6_dissect.max_floor_qty = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.max_floor_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.max_floor_qty(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.max_floor_qty, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
miax_pearlequities_meo_v2_6_size_of.min_qty = 4

-- Display: Min Qty
miax_pearlequities_meo_v2_6_display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
miax_pearlequities_meo_v2_6_dissect.min_qty = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.min_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.min_qty(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Size
miax_pearlequities_meo_v2_6_size_of.size = 4

-- Display: Size
miax_pearlequities_meo_v2_6_display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearlequities_meo_v2_6_dissect.size = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.size(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Request Message
miax_pearlequities_meo_v2_6_size_of.modify_order_request_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_8

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.original_client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.price

  index = index + miax_pearlequities_meo_v2_6_size_of.size

  index = index + miax_pearlequities_meo_v2_6_size_of.order_instructions_binary_u_2

  index = index + miax_pearlequities_meo_v2_6_size_of.min_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.max_floor_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.locate_account

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_28

  return index
end

-- Display: Modify Order Request Message
miax_pearlequities_meo_v2_6_display.modify_order_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Request Message
miax_pearlequities_meo_v2_6_dissect.modify_order_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: 8 Byte Ascii String
  index, reserved_8 = miax_pearlequities_meo_v2_6_dissect.reserved_8(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order Id: 20 Byte Ascii String
  index, original_client_order_id = miax_pearlequities_meo_v2_6_dissect.original_client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = miax_pearlequities_meo_v2_6_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_pearlequities_meo_v2_6_dissect.size(buffer, index, packet, parent)

  -- Order Instructions Binary U 2: 2 Byte Unsigned Fixed Width Integer
  index, order_instructions_binary_u_2 = miax_pearlequities_meo_v2_6_dissect.order_instructions_binary_u_2(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = miax_pearlequities_meo_v2_6_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor Qty: 4 Byte Unsigned Fixed Width Integer
  index, max_floor_qty = miax_pearlequities_meo_v2_6_dissect.max_floor_qty(buffer, index, packet, parent)

  -- Locate Account: 4 Byte Ascii String
  index, locate_account = miax_pearlequities_meo_v2_6_dissect.locate_account(buffer, index, packet, parent)

  -- Reserved 28: 28 Byte Ascii String
  index, reserved_28 = miax_pearlequities_meo_v2_6_dissect.reserved_28(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Request Message
miax_pearlequities_meo_v2_6_dissect.modify_order_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_request_message then
    local length = miax_pearlequities_meo_v2_6_size_of.modify_order_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.modify_order_request_message(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.modify_order_request_message, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.modify_order_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 19
miax_pearlequities_meo_v2_6_size_of.reserved_19 = 19

-- Display: Reserved 19
miax_pearlequities_meo_v2_6_display.reserved_19 = function(value)
  return "Reserved 19: "..value
end

-- Dissect: Reserved 19
miax_pearlequities_meo_v2_6_dissect.reserved_19 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.reserved_19
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.reserved_19(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.reserved_19, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Response Message
miax_pearlequities_meo_v2_6_size_of.new_order_response_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.price

  index = index + miax_pearlequities_meo_v2_6_size_of.size

  index = index + miax_pearlequities_meo_v2_6_size_of.order_status

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_19

  return index
end

-- Display: New Order Response Message
miax_pearlequities_meo_v2_6_display.new_order_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Response Message
miax_pearlequities_meo_v2_6_dissect.new_order_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = miax_pearlequities_meo_v2_6_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_pearlequities_meo_v2_6_dissect.size(buffer, index, packet, parent)

  -- Order Status: 1 Byte Ascii String
  index, order_status = miax_pearlequities_meo_v2_6_dissect.order_status(buffer, index, packet, parent)

  -- Reserved 19: 19 Byte Ascii String
  index, reserved_19 = miax_pearlequities_meo_v2_6_dissect.reserved_19(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response Message
miax_pearlequities_meo_v2_6_dissect.new_order_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_response_message then
    local length = miax_pearlequities_meo_v2_6_size_of.new_order_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.new_order_response_message(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.new_order_response_message, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.new_order_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Peg Offset
miax_pearlequities_meo_v2_6_size_of.peg_offset = 8

-- Display: Peg Offset
miax_pearlequities_meo_v2_6_display.peg_offset = function(value)
  return "Peg Offset: "..value
end

-- Translate: Peg Offset
translate.peg_offset = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Peg Offset
miax_pearlequities_meo_v2_6_dissect.peg_offset = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.peg_offset
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.peg_offset(raw)
  local display = miax_pearlequities_meo_v2_6_display.peg_offset(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Size: Display Range Qty
miax_pearlequities_meo_v2_6_size_of.display_range_qty = 4

-- Display: Display Range Qty
miax_pearlequities_meo_v2_6_display.display_range_qty = function(value)
  return "Display Range Qty: "..value
end

-- Dissect: Display Range Qty
miax_pearlequities_meo_v2_6_dissect.display_range_qty = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.display_range_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.display_range_qty(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.display_range_qty, range, value, display)

  return offset + length, value
end

-- Size: Clearing Account
miax_pearlequities_meo_v2_6_size_of.clearing_account = 4

-- Display: Clearing Account
miax_pearlequities_meo_v2_6_display.clearing_account = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
miax_pearlequities_meo_v2_6_dissect.clearing_account = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.clearing_account
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = miax_pearlequities_meo_v2_6_display.clearing_account(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Size: Account
miax_pearlequities_meo_v2_6_size_of.account = 16

-- Display: Account
miax_pearlequities_meo_v2_6_display.account = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
miax_pearlequities_meo_v2_6_dissect.account = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.account
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = miax_pearlequities_meo_v2_6_display.account(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.account, range, value, display)

  return offset + length, value
end

-- Size: Capacity
miax_pearlequities_meo_v2_6_size_of.capacity = 1

-- Display: Capacity
miax_pearlequities_meo_v2_6_display.capacity = function(value)
  return "Capacity: "..value
end

-- Dissect: Capacity
miax_pearlequities_meo_v2_6_dissect.capacity = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.capacity(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.capacity, range, value, display)

  return offset + length, value
end

-- Size: Trading Collar Dollar Value
miax_pearlequities_meo_v2_6_size_of.trading_collar_dollar_value = 8

-- Display: Trading Collar Dollar Value
miax_pearlequities_meo_v2_6_display.trading_collar_dollar_value = function(value)
  return "Trading Collar Dollar Value: "..value
end

-- Translate: Trading Collar Dollar Value
translate.trading_collar_dollar_value = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trading Collar Dollar Value
miax_pearlequities_meo_v2_6_dissect.trading_collar_dollar_value = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.trading_collar_dollar_value
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.trading_collar_dollar_value(raw)
  local display = miax_pearlequities_meo_v2_6_display.trading_collar_dollar_value(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.trading_collar_dollar_value, range, value, display)

  return offset + length, value
end

-- Size: Routing
miax_pearlequities_meo_v2_6_size_of.routing = 1

-- Display: Routing
miax_pearlequities_meo_v2_6_display.routing = function(value)
  return "Routing: "..value
end

-- Dissect: Routing
miax_pearlequities_meo_v2_6_dissect.routing = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.routing
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.routing(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.routing, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Protection Group
miax_pearlequities_meo_v2_6_size_of.self_trade_protection_group = 1

-- Display: Self Trade Protection Group
miax_pearlequities_meo_v2_6_display.self_trade_protection_group = function(value)
  return "Self Trade Protection Group: "..value
end

-- Dissect: Self Trade Protection Group
miax_pearlequities_meo_v2_6_dissect.self_trade_protection_group = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.self_trade_protection_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.self_trade_protection_group(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.self_trade_protection_group, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Protection
miax_pearlequities_meo_v2_6_size_of.self_trade_protection = 1

-- Display: Self Trade Protection
miax_pearlequities_meo_v2_6_display.self_trade_protection = function(value)
  return "Self Trade Protection: "..value
end

-- Dissect: Self Trade Protection
miax_pearlequities_meo_v2_6_dissect.self_trade_protection = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.self_trade_protection
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.self_trade_protection(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.self_trade_protection, range, value, display)

  return offset + length, value
end

-- Size: Price Sliding And Reprice Frequency
miax_pearlequities_meo_v2_6_size_of.price_sliding_and_reprice_frequency = 1

-- Display: Price Sliding And Reprice Frequency
miax_pearlequities_meo_v2_6_display.price_sliding_and_reprice_frequency = function(value)
  return "Price Sliding And Reprice Frequency: "..value
end

-- Dissect: Price Sliding And Reprice Frequency
miax_pearlequities_meo_v2_6_dissect.price_sliding_and_reprice_frequency = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.price_sliding_and_reprice_frequency
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.price_sliding_and_reprice_frequency(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.price_sliding_and_reprice_frequency, range, value, display)

  return offset + length, value
end

-- Size: Order Type
miax_pearlequities_meo_v2_6_size_of.order_type = 1

-- Display: Order Type
miax_pearlequities_meo_v2_6_display.order_type = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
miax_pearlequities_meo_v2_6_dissect.order_type = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.order_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.order_type(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
miax_pearlequities_meo_v2_6_size_of.time_in_force = 1

-- Display: Time In Force
miax_pearlequities_meo_v2_6_display.time_in_force = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
miax_pearlequities_meo_v2_6_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Request Message
miax_pearlequities_meo_v2_6_size_of.new_order_request_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_8

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.price

  index = index + miax_pearlequities_meo_v2_6_size_of.size

  index = index + miax_pearlequities_meo_v2_6_size_of.order_instructions_binary_u_2

  index = index + miax_pearlequities_meo_v2_6_size_of.time_in_force

  index = index + miax_pearlequities_meo_v2_6_size_of.order_type

  index = index + miax_pearlequities_meo_v2_6_size_of.price_sliding_and_reprice_frequency

  index = index + miax_pearlequities_meo_v2_6_size_of.self_trade_protection

  index = index + miax_pearlequities_meo_v2_6_size_of.self_trade_protection_group

  index = index + miax_pearlequities_meo_v2_6_size_of.routing

  index = index + miax_pearlequities_meo_v2_6_size_of.trading_collar_dollar_value

  index = index + miax_pearlequities_meo_v2_6_size_of.capacity

  index = index + miax_pearlequities_meo_v2_6_size_of.account

  index = index + miax_pearlequities_meo_v2_6_size_of.clearing_account

  index = index + miax_pearlequities_meo_v2_6_size_of.min_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.max_floor_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.display_range_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.peg_offset

  index = index + miax_pearlequities_meo_v2_6_size_of.locate_account

  index = index + miax_pearlequities_meo_v2_6_size_of.purge_group

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_19

  return index
end

-- Display: New Order Request Message
miax_pearlequities_meo_v2_6_display.new_order_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Request Message
miax_pearlequities_meo_v2_6_dissect.new_order_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: 8 Byte Ascii String
  index, reserved_8 = miax_pearlequities_meo_v2_6_dissect.reserved_8(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = miax_pearlequities_meo_v2_6_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_pearlequities_meo_v2_6_dissect.size(buffer, index, packet, parent)

  -- Order Instructions Binary U 2: 2 Byte Unsigned Fixed Width Integer
  index, order_instructions_binary_u_2 = miax_pearlequities_meo_v2_6_dissect.order_instructions_binary_u_2(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String
  index, time_in_force = miax_pearlequities_meo_v2_6_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String
  index, order_type = miax_pearlequities_meo_v2_6_dissect.order_type(buffer, index, packet, parent)

  -- Price Sliding And Reprice Frequency: 1 Byte Ascii String
  index, price_sliding_and_reprice_frequency = miax_pearlequities_meo_v2_6_dissect.price_sliding_and_reprice_frequency(buffer, index, packet, parent)

  -- Self Trade Protection: 1 Byte Unsigned Fixed Width Integer
  index, self_trade_protection = miax_pearlequities_meo_v2_6_dissect.self_trade_protection(buffer, index, packet, parent)

  -- Self Trade Protection Group: 1 Byte Ascii String
  index, self_trade_protection_group = miax_pearlequities_meo_v2_6_dissect.self_trade_protection_group(buffer, index, packet, parent)

  -- Routing: 1 Byte Unsigned Fixed Width Integer
  index, routing = miax_pearlequities_meo_v2_6_dissect.routing(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: 8 Byte Signed Fixed Width Integer
  index, trading_collar_dollar_value = miax_pearlequities_meo_v2_6_dissect.trading_collar_dollar_value(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String
  index, capacity = miax_pearlequities_meo_v2_6_dissect.capacity(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = miax_pearlequities_meo_v2_6_dissect.account(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = miax_pearlequities_meo_v2_6_dissect.clearing_account(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = miax_pearlequities_meo_v2_6_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor Qty: 4 Byte Unsigned Fixed Width Integer
  index, max_floor_qty = miax_pearlequities_meo_v2_6_dissect.max_floor_qty(buffer, index, packet, parent)

  -- Display Range Qty: 4 Byte Unsigned Fixed Width Integer
  index, display_range_qty = miax_pearlequities_meo_v2_6_dissect.display_range_qty(buffer, index, packet, parent)

  -- Peg Offset: 8 Byte Signed Fixed Width Integer
  index, peg_offset = miax_pearlequities_meo_v2_6_dissect.peg_offset(buffer, index, packet, parent)

  -- Locate Account: 4 Byte Ascii String
  index, locate_account = miax_pearlequities_meo_v2_6_dissect.locate_account(buffer, index, packet, parent)

  -- Purge Group: 1 Byte Ascii String
  index, purge_group = miax_pearlequities_meo_v2_6_dissect.purge_group(buffer, index, packet, parent)

  -- Reserved 19: 19 Byte Ascii String
  index, reserved_19 = miax_pearlequities_meo_v2_6_dissect.reserved_19(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Request Message
miax_pearlequities_meo_v2_6_dissect.new_order_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_request_message then
    local length = miax_pearlequities_meo_v2_6_size_of.new_order_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.new_order_request_message(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.new_order_request_message, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.new_order_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Unsequenced Message
miax_pearlequities_meo_v2_6_size_of.unsequenced_message = function(buffer, offset, unsequenced_message_type)
  -- Size of New Order Request Message
  if unsequenced_message_type == "N1" then
    return miax_pearlequities_meo_v2_6_size_of.new_order_request_message(buffer, offset)
  end
  -- Size of New Order Response Message
  if unsequenced_message_type == "NR" then
    return miax_pearlequities_meo_v2_6_size_of.new_order_response_message(buffer, offset)
  end
  -- Size of Modify Order Request Message
  if unsequenced_message_type == "M1" then
    return miax_pearlequities_meo_v2_6_size_of.modify_order_request_message(buffer, offset)
  end
  -- Size of Modify Order Response
  if unsequenced_message_type == "MR" then
    return miax_pearlequities_meo_v2_6_size_of.modify_order_response(buffer, offset)
  end
  -- Size of Cancel Order Request
  if unsequenced_message_type == "CO" then
    return miax_pearlequities_meo_v2_6_size_of.cancel_order_request(buffer, offset)
  end
  -- Size of Cancel Order Response
  if unsequenced_message_type == "CR" then
    return miax_pearlequities_meo_v2_6_size_of.cancel_order_response(buffer, offset)
  end
  -- Size of Cancel Order By Exchange Order Id Request
  if unsequenced_message_type == "CX" then
    return miax_pearlequities_meo_v2_6_size_of.cancel_order_by_exchange_order_id_request(buffer, offset)
  end
  -- Size of Cancel Order By Exchange Order Id Response Message
  if unsequenced_message_type == "CQ" then
    return miax_pearlequities_meo_v2_6_size_of.cancel_order_by_exchange_order_id_response_message(buffer, offset)
  end
  -- Size of Mass Cancel Request
  if unsequenced_message_type == "XQ" then
    return miax_pearlequities_meo_v2_6_size_of.mass_cancel_request(buffer, offset)
  end
  -- Size of Mass Cancel Response
  if unsequenced_message_type == "XR" then
    return miax_pearlequities_meo_v2_6_size_of.mass_cancel_response(buffer, offset)
  end
  -- Size of Reserve Order Replenishment Notification
  if unsequenced_message_type == "RA" then
    return miax_pearlequities_meo_v2_6_size_of.reserve_order_replenishment_notification(buffer, offset)
  end
  -- Size of Execution Notification
  if unsequenced_message_type == "E1" then
    return miax_pearlequities_meo_v2_6_size_of.execution_notification(buffer, offset)
  end

  return 0
end

-- Display: Unsequenced Message
miax_pearlequities_meo_v2_6_display.unsequenced_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
miax_pearlequities_meo_v2_6_dissect.unsequenced_message_branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect New Order Request Message
  if unsequenced_message_type == "N1" then
    return miax_pearlequities_meo_v2_6_dissect.new_order_request_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response Message
  if unsequenced_message_type == "NR" then
    return miax_pearlequities_meo_v2_6_dissect.new_order_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Request Message
  if unsequenced_message_type == "M1" then
    return miax_pearlequities_meo_v2_6_dissect.modify_order_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if unsequenced_message_type == "MR" then
    return miax_pearlequities_meo_v2_6_dissect.modify_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Request
  if unsequenced_message_type == "CO" then
    return miax_pearlequities_meo_v2_6_dissect.cancel_order_request(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response
  if unsequenced_message_type == "CR" then
    return miax_pearlequities_meo_v2_6_dissect.cancel_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order By Exchange Order Id Request
  if unsequenced_message_type == "CX" then
    return miax_pearlequities_meo_v2_6_dissect.cancel_order_by_exchange_order_id_request(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order By Exchange Order Id Response Message
  if unsequenced_message_type == "CQ" then
    return miax_pearlequities_meo_v2_6_dissect.cancel_order_by_exchange_order_id_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request
  if unsequenced_message_type == "XQ" then
    return miax_pearlequities_meo_v2_6_dissect.mass_cancel_request(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Response
  if unsequenced_message_type == "XR" then
    return miax_pearlequities_meo_v2_6_dissect.mass_cancel_response(buffer, offset, packet, parent)
  end
  -- Dissect Reserve Order Replenishment Notification
  if unsequenced_message_type == "RA" then
    return miax_pearlequities_meo_v2_6_dissect.reserve_order_replenishment_notification(buffer, offset, packet, parent)
  end
  -- Dissect Execution Notification
  if unsequenced_message_type == "E1" then
    return miax_pearlequities_meo_v2_6_dissect.execution_notification(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
miax_pearlequities_meo_v2_6_dissect.unsequenced_message = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return miax_pearlequities_meo_v2_6_dissect.unsequenced_message_branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_meo_v2_6_size_of.unsequenced_message(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_meo_v2_6_display.unsequenced_message(buffer, packet, parent)
  local element = parent:add(miax_pearlequities_meo_v2_6.fields.unsequenced_message, range, display)

  return miax_pearlequities_meo_v2_6_dissect.unsequenced_message_branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Size: Unsequenced Message Type
miax_pearlequities_meo_v2_6_size_of.unsequenced_message_type = 2

-- Display: Unsequenced Message Type
miax_pearlequities_meo_v2_6_display.unsequenced_message_type = function(value)
  if value == "N1" then
    return "Unsequenced Message Type: New Order Request Message (N1)"
  end
  if value == "NR" then
    return "Unsequenced Message Type: New Order Response Message (NR)"
  end
  if value == "M1" then
    return "Unsequenced Message Type: Modify Order Request Message (M1)"
  end
  if value == "MR" then
    return "Unsequenced Message Type: Modify Order Response (MR)"
  end
  if value == "CO" then
    return "Unsequenced Message Type: Cancel Order Request (CO)"
  end
  if value == "CR" then
    return "Unsequenced Message Type: Cancel Order Response (CR)"
  end
  if value == "CX" then
    return "Unsequenced Message Type: Cancel Order By Exchange Order Id Request (CX)"
  end
  if value == "CQ" then
    return "Unsequenced Message Type: Cancel Order By Exchange Order Id Response Message (CQ)"
  end
  if value == "XQ" then
    return "Unsequenced Message Type: Mass Cancel Request (XQ)"
  end
  if value == "XR" then
    return "Unsequenced Message Type: Mass Cancel Response (XR)"
  end
  if value == "RA" then
    return "Unsequenced Message Type: Reserve Order Replenishment Notification (RA)"
  end
  if value == "E1" then
    return "Unsequenced Message Type: Execution Notification (E1)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_pearlequities_meo_v2_6_dissect.unsequenced_message_type = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.unsequenced_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.unsequenced_message_type(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Unsequenced Data Packet
miax_pearlequities_meo_v2_6_size_of.unsequenced_data_packet = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 3
end

-- Display: Unsequenced Data Packet
miax_pearlequities_meo_v2_6_display.unsequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_pearlequities_meo_v2_6_dissect.unsequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 12 values
  index, unsequenced_message_type = miax_pearlequities_meo_v2_6_dissect.unsequenced_message_type(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 12 branches
  index = miax_pearlequities_meo_v2_6_dissect.unsequenced_message(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_pearlequities_meo_v2_6_dissect.unsequenced_data_packet = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = miax_pearlequities_meo_v2_6_size_of.unsequenced_data_packet(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = miax_pearlequities_meo_v2_6_display.unsequenced_data_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.unsequenced_data_packet, range, display)
  end

  miax_pearlequities_meo_v2_6_dissect.unsequenced_data_packet_fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Size: Nbbo Indicator
miax_pearlequities_meo_v2_6_size_of.nbbo_indicator = 1

-- Display: Nbbo Indicator
miax_pearlequities_meo_v2_6_display.nbbo_indicator = function(value)
  return "Nbbo Indicator: "..value
end

-- Dissect: Nbbo Indicator
miax_pearlequities_meo_v2_6_dissect.nbbo_indicator = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.nbbo_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.nbbo_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.nbbo_indicator, range, value, display)

  return offset + length, value
end

-- Size: Working Price
miax_pearlequities_meo_v2_6_size_of.working_price = 8

-- Display: Working Price
miax_pearlequities_meo_v2_6_display.working_price = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
translate.working_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Working Price
miax_pearlequities_meo_v2_6_dissect.working_price = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.working_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.working_price(raw)
  local display = miax_pearlequities_meo_v2_6_display.working_price(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.working_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Price Update Notification
miax_pearlequities_meo_v2_6_size_of.order_price_update_notification = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.working_price

  index = index + miax_pearlequities_meo_v2_6_size_of.nbbo_indicator

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_9

  return index
end

-- Display: Order Price Update Notification
miax_pearlequities_meo_v2_6_display.order_price_update_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Price Update Notification
miax_pearlequities_meo_v2_6_dissect.order_price_update_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Working Price: 8 Byte Unsigned Fixed Width Integer
  index, working_price = miax_pearlequities_meo_v2_6_dissect.working_price(buffer, index, packet, parent)

  -- Nbbo Indicator: 1 Byte Ascii String
  index, nbbo_indicator = miax_pearlequities_meo_v2_6_dissect.nbbo_indicator(buffer, index, packet, parent)

  -- Reserved 9: 9 Byte Ascii String
  index, reserved_9 = miax_pearlequities_meo_v2_6_dissect.reserved_9(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Update Notification
miax_pearlequities_meo_v2_6_dissect.order_price_update_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_price_update_notification then
    local length = miax_pearlequities_meo_v2_6_size_of.order_price_update_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.order_price_update_notification(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.order_price_update_notification, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.order_price_update_notification_fields(buffer, offset, packet, parent)
end

-- Size: Pending Reject Reason
miax_pearlequities_meo_v2_6_size_of.pending_reject_reason = 1

-- Display: Pending Reject Reason
miax_pearlequities_meo_v2_6_display.pending_reject_reason = function(value)
  return "Pending Reject Reason: "..value
end

-- Dissect: Pending Reject Reason
miax_pearlequities_meo_v2_6_dissect.pending_reject_reason = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.pending_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.pending_reject_reason(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.pending_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Pending Cancel Status
miax_pearlequities_meo_v2_6_size_of.pending_cancel_status = 1

-- Display: Pending Cancel Status
miax_pearlequities_meo_v2_6_display.pending_cancel_status = function(value)
  return "Pending Cancel Status: "..value
end

-- Dissect: Pending Cancel Status
miax_pearlequities_meo_v2_6_dissect.pending_cancel_status = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.pending_cancel_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.pending_cancel_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.pending_cancel_status, range, value, display)

  return offset + length, value
end

-- Size: Cancel Reason
miax_pearlequities_meo_v2_6_size_of.cancel_reason = 1

-- Display: Cancel Reason
miax_pearlequities_meo_v2_6_display.cancel_reason = function(value)
  return "Cancel Reason: "..value
end

-- Dissect: Cancel Reason
miax_pearlequities_meo_v2_6_dissect.cancel_reason = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.cancel_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.cancel_reason(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Reduce Size Order Notification
miax_pearlequities_meo_v2_6_size_of.cancel_reduce_size_order_notification = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.leaves_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.cancel_reason

  index = index + miax_pearlequities_meo_v2_6_size_of.last_price

  index = index + miax_pearlequities_meo_v2_6_size_of.last_size

  index = index + miax_pearlequities_meo_v2_6_size_of.pending_cancel_status

  index = index + miax_pearlequities_meo_v2_6_size_of.pending_reject_reason

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_8

  return index
end

-- Display: Cancel Reduce Size Order Notification
miax_pearlequities_meo_v2_6_display.cancel_reduce_size_order_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Reduce Size Order Notification
miax_pearlequities_meo_v2_6_dissect.cancel_reduce_size_order_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = miax_pearlequities_meo_v2_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Ascii String
  index, cancel_reason = miax_pearlequities_meo_v2_6_dissect.cancel_reason(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = miax_pearlequities_meo_v2_6_dissect.last_price(buffer, index, packet, parent)

  -- Last Size: 4 Byte Unsigned Fixed Width Integer
  index, last_size = miax_pearlequities_meo_v2_6_dissect.last_size(buffer, index, packet, parent)

  -- Pending Cancel Status: 1 Byte Ascii String
  index, pending_cancel_status = miax_pearlequities_meo_v2_6_dissect.pending_cancel_status(buffer, index, packet, parent)

  -- Pending Reject Reason: 1 Byte Ascii String
  index, pending_reject_reason = miax_pearlequities_meo_v2_6_dissect.pending_reject_reason(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte Ascii String
  index, reserved_8 = miax_pearlequities_meo_v2_6_dissect.reserved_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reduce Size Order Notification
miax_pearlequities_meo_v2_6_dissect.cancel_reduce_size_order_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_reduce_size_order_notification then
    local length = miax_pearlequities_meo_v2_6_size_of.cancel_reduce_size_order_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.cancel_reduce_size_order_notification(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.cancel_reduce_size_order_notification, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.cancel_reduce_size_order_notification_fields(buffer, offset, packet, parent)
end

-- Size: Binary U
miax_pearlequities_meo_v2_6_size_of.binary_u = 26

-- Display: Binary U
miax_pearlequities_meo_v2_6_display.binary_u = function(value)
  return "Binary U: "..value
end

-- Dissect: Binary U
miax_pearlequities_meo_v2_6_dissect.binary_u = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.binary_u
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.binary_u(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.binary_u, range, value, display)

  return offset + length, value
end

-- Size: Pending Modify Status
miax_pearlequities_meo_v2_6_size_of.pending_modify_status = 1

-- Display: Pending Modify Status
miax_pearlequities_meo_v2_6_display.pending_modify_status = function(value)
  return "Pending Modify Status: "..value
end

-- Dissect: Pending Modify Status
miax_pearlequities_meo_v2_6_dissect.pending_modify_status = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.pending_modify_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.pending_modify_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.pending_modify_status, range, value, display)

  return offset + length, value
end

-- Size: Order Instructions Binary U 1
miax_pearlequities_meo_v2_6_size_of.order_instructions_binary_u_1 = 1

-- Display: Order Instructions Binary U 1
miax_pearlequities_meo_v2_6_display.order_instructions_binary_u_1 = function(value)
  return "Order Instructions Binary U 1: "..value
end

-- Dissect: Order Instructions Binary U 1
miax_pearlequities_meo_v2_6_dissect.order_instructions_binary_u_1 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.order_instructions_binary_u_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.order_instructions_binary_u_1(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.order_instructions_binary_u_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Notification
miax_pearlequities_meo_v2_6_size_of.modify_order_notification = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.original_client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.price

  index = index + miax_pearlequities_meo_v2_6_size_of.size

  index = index + miax_pearlequities_meo_v2_6_size_of.leaves_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.order_instructions_binary_u_1

  index = index + miax_pearlequities_meo_v2_6_size_of.min_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.max_floor_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.pending_modify_status

  index = index + miax_pearlequities_meo_v2_6_size_of.pending_reject_reason

  index = index + miax_pearlequities_meo_v2_6_size_of.locate_account

  index = index + miax_pearlequities_meo_v2_6_size_of.binary_u

  return index
end

-- Display: Modify Order Notification
miax_pearlequities_meo_v2_6_display.modify_order_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Notification
miax_pearlequities_meo_v2_6_dissect.modify_order_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order Id: 20 Byte Ascii String
  index, original_client_order_id = miax_pearlequities_meo_v2_6_dissect.original_client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = miax_pearlequities_meo_v2_6_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_pearlequities_meo_v2_6_dissect.size(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = miax_pearlequities_meo_v2_6_dissect.leaves_qty(buffer, index, packet, parent)

  -- Order Instructions Binary U 1: 1 Byte Unsigned Fixed Width Integer
  index, order_instructions_binary_u_1 = miax_pearlequities_meo_v2_6_dissect.order_instructions_binary_u_1(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = miax_pearlequities_meo_v2_6_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor Qty: 4 Byte Unsigned Fixed Width Integer
  index, max_floor_qty = miax_pearlequities_meo_v2_6_dissect.max_floor_qty(buffer, index, packet, parent)

  -- Pending Modify Status: 1 Byte Ascii String
  index, pending_modify_status = miax_pearlequities_meo_v2_6_dissect.pending_modify_status(buffer, index, packet, parent)

  -- Pending Reject Reason: 1 Byte Ascii String
  index, pending_reject_reason = miax_pearlequities_meo_v2_6_dissect.pending_reject_reason(buffer, index, packet, parent)

  -- Locate Account: 4 Byte Ascii String
  index, locate_account = miax_pearlequities_meo_v2_6_dissect.locate_account(buffer, index, packet, parent)

  -- Binary U: 26 Byte Ascii String
  index, binary_u = miax_pearlequities_meo_v2_6_dissect.binary_u(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Notification
miax_pearlequities_meo_v2_6_dissect.modify_order_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_notification then
    local length = miax_pearlequities_meo_v2_6_size_of.modify_order_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.modify_order_notification(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.modify_order_notification, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.modify_order_notification_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 18
miax_pearlequities_meo_v2_6_size_of.reserved_18 = 18

-- Display: Reserved 18
miax_pearlequities_meo_v2_6_display.reserved_18 = function(value)
  return "Reserved 18: "..value
end

-- Dissect: Reserved 18
miax_pearlequities_meo_v2_6_dissect.reserved_18 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.reserved_18
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.reserved_18(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.reserved_18, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Notification
miax_pearlequities_meo_v2_6_size_of.new_order_notification = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.mpid

  index = index + miax_pearlequities_meo_v2_6_size_of.order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.client_order_id

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.price

  index = index + miax_pearlequities_meo_v2_6_size_of.size

  index = index + miax_pearlequities_meo_v2_6_size_of.order_instructions_binary_u_2

  index = index + miax_pearlequities_meo_v2_6_size_of.time_in_force

  index = index + miax_pearlequities_meo_v2_6_size_of.order_type

  index = index + miax_pearlequities_meo_v2_6_size_of.price_sliding_and_reprice_frequency

  index = index + miax_pearlequities_meo_v2_6_size_of.self_trade_protection

  index = index + miax_pearlequities_meo_v2_6_size_of.self_trade_protection_group

  index = index + miax_pearlequities_meo_v2_6_size_of.routing

  index = index + miax_pearlequities_meo_v2_6_size_of.trading_collar_dollar_value

  index = index + miax_pearlequities_meo_v2_6_size_of.capacity

  index = index + miax_pearlequities_meo_v2_6_size_of.account

  index = index + miax_pearlequities_meo_v2_6_size_of.clearing_account

  index = index + miax_pearlequities_meo_v2_6_size_of.min_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.max_floor_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.display_range_qty

  index = index + miax_pearlequities_meo_v2_6_size_of.peg_offset

  index = index + miax_pearlequities_meo_v2_6_size_of.locate_account

  index = index + miax_pearlequities_meo_v2_6_size_of.purge_group

  index = index + miax_pearlequities_meo_v2_6_size_of.original_order_capacity

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_18

  return index
end

-- Display: New Order Notification
miax_pearlequities_meo_v2_6_display.new_order_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Notification
miax_pearlequities_meo_v2_6_dissect.new_order_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mpid: 4 Byte Ascii String
  index, mpid = miax_pearlequities_meo_v2_6_dissect.mpid(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = miax_pearlequities_meo_v2_6_dissect.order_id(buffer, index, packet, parent)

  -- Client Order Id: 20 Byte Ascii String
  index, client_order_id = miax_pearlequities_meo_v2_6_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = miax_pearlequities_meo_v2_6_dissect.price(buffer, index, packet, parent)

  -- Size: 4 Byte Unsigned Fixed Width Integer
  index, size = miax_pearlequities_meo_v2_6_dissect.size(buffer, index, packet, parent)

  -- Order Instructions Binary U 2: 2 Byte Unsigned Fixed Width Integer
  index, order_instructions_binary_u_2 = miax_pearlequities_meo_v2_6_dissect.order_instructions_binary_u_2(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String
  index, time_in_force = miax_pearlequities_meo_v2_6_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Type: 1 Byte Ascii String
  index, order_type = miax_pearlequities_meo_v2_6_dissect.order_type(buffer, index, packet, parent)

  -- Price Sliding And Reprice Frequency: 1 Byte Ascii String
  index, price_sliding_and_reprice_frequency = miax_pearlequities_meo_v2_6_dissect.price_sliding_and_reprice_frequency(buffer, index, packet, parent)

  -- Self Trade Protection: 1 Byte Unsigned Fixed Width Integer
  index, self_trade_protection = miax_pearlequities_meo_v2_6_dissect.self_trade_protection(buffer, index, packet, parent)

  -- Self Trade Protection Group: 1 Byte Ascii String
  index, self_trade_protection_group = miax_pearlequities_meo_v2_6_dissect.self_trade_protection_group(buffer, index, packet, parent)

  -- Routing: 1 Byte Unsigned Fixed Width Integer
  index, routing = miax_pearlequities_meo_v2_6_dissect.routing(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: 8 Byte Signed Fixed Width Integer
  index, trading_collar_dollar_value = miax_pearlequities_meo_v2_6_dissect.trading_collar_dollar_value(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String
  index, capacity = miax_pearlequities_meo_v2_6_dissect.capacity(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = miax_pearlequities_meo_v2_6_dissect.account(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = miax_pearlequities_meo_v2_6_dissect.clearing_account(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = miax_pearlequities_meo_v2_6_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor Qty: 4 Byte Unsigned Fixed Width Integer
  index, max_floor_qty = miax_pearlequities_meo_v2_6_dissect.max_floor_qty(buffer, index, packet, parent)

  -- Display Range Qty: 4 Byte Unsigned Fixed Width Integer
  index, display_range_qty = miax_pearlequities_meo_v2_6_dissect.display_range_qty(buffer, index, packet, parent)

  -- Peg Offset: 8 Byte Signed Fixed Width Integer
  index, peg_offset = miax_pearlequities_meo_v2_6_dissect.peg_offset(buffer, index, packet, parent)

  -- Locate Account: 4 Byte Ascii String
  index, locate_account = miax_pearlequities_meo_v2_6_dissect.locate_account(buffer, index, packet, parent)

  -- Purge Group: 1 Byte Ascii String
  index, purge_group = miax_pearlequities_meo_v2_6_dissect.purge_group(buffer, index, packet, parent)

  -- Original Order Capacity: 1 Byte Ascii String
  index, original_order_capacity = miax_pearlequities_meo_v2_6_dissect.original_order_capacity(buffer, index, packet, parent)

  -- Reserved 18: 18 Byte Ascii String
  index, reserved_18 = miax_pearlequities_meo_v2_6_dissect.reserved_18(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Notification
miax_pearlequities_meo_v2_6_dissect.new_order_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_notification then
    local length = miax_pearlequities_meo_v2_6_size_of.new_order_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.new_order_notification(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.new_order_notification, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.new_order_notification_fields(buffer, offset, packet, parent)
end

-- Size: System Status
miax_pearlequities_meo_v2_6_size_of.system_status = 1

-- Display: System Status
miax_pearlequities_meo_v2_6_display.system_status = function(value)
  return "System Status: "..value
end

-- Dissect: System Status
miax_pearlequities_meo_v2_6_dissect.system_status = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.system_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.system_status, range, value, display)

  return offset + length, value
end

-- Size: Session Id
miax_pearlequities_meo_v2_6_size_of.session_id = 1

-- Display: Session Id
miax_pearlequities_meo_v2_6_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearlequities_meo_v2_6_dissect.session_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Meo Version
miax_pearlequities_meo_v2_6_size_of.meo_version = 8

-- Display: Meo Version
miax_pearlequities_meo_v2_6_display.meo_version = function(value)
  return "Meo Version: "..value
end

-- Dissect: Meo Version
miax_pearlequities_meo_v2_6_dissect.meo_version = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.meo_version
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.meo_version(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.meo_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: System State Notification
miax_pearlequities_meo_v2_6_size_of.system_state_notification = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.meo_version

  index = index + miax_pearlequities_meo_v2_6_size_of.session_id

  index = index + miax_pearlequities_meo_v2_6_size_of.system_status

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_8

  return index
end

-- Display: System State Notification
miax_pearlequities_meo_v2_6_display.system_state_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System State Notification
miax_pearlequities_meo_v2_6_dissect.system_state_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Meo Version: 8 Byte Ascii String
  index, meo_version = miax_pearlequities_meo_v2_6_dissect.meo_version(buffer, index, packet, parent)

  -- Session Id: 1 Byte Unsigned Fixed Width Integer
  index, session_id = miax_pearlequities_meo_v2_6_dissect.session_id(buffer, index, packet, parent)

  -- System Status: 1 Byte Ascii String
  index, system_status = miax_pearlequities_meo_v2_6_dissect.system_status(buffer, index, packet, parent)

  -- Reserved 8: 8 Byte Ascii String
  index, reserved_8 = miax_pearlequities_meo_v2_6_dissect.reserved_8(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Notification
miax_pearlequities_meo_v2_6_dissect.system_state_notification = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_state_notification then
    local length = miax_pearlequities_meo_v2_6_size_of.system_state_notification(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.system_state_notification(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.system_state_notification, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.system_state_notification_fields(buffer, offset, packet, parent)
end

-- Size: Primary Market Code
miax_pearlequities_meo_v2_6_size_of.primary_market_code = 1

-- Display: Primary Market Code
miax_pearlequities_meo_v2_6_display.primary_market_code = function(value)
  return "Primary Market Code: "..value
end

-- Dissect: Primary Market Code
miax_pearlequities_meo_v2_6_dissect.primary_market_code = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.primary_market_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.primary_market_code(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Size: Closing Time
miax_pearlequities_meo_v2_6_size_of.closing_time = 8

-- Display: Closing Time
miax_pearlequities_meo_v2_6_display.closing_time = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearlequities_meo_v2_6_dissect.closing_time = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.closing_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.closing_time(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Size: Opening Time
miax_pearlequities_meo_v2_6_size_of.opening_time = 8

-- Display: Opening Time
miax_pearlequities_meo_v2_6_display.opening_time = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearlequities_meo_v2_6_dissect.opening_time = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.opening_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.opening_time(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Size: Lot Size
miax_pearlequities_meo_v2_6_size_of.lot_size = 4

-- Display: Lot Size
miax_pearlequities_meo_v2_6_display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
miax_pearlequities_meo_v2_6_dissect.lot_size = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.lot_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.lot_size(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Size: Future
miax_pearlequities_meo_v2_6_size_of.future = 1

-- Display: Future
miax_pearlequities_meo_v2_6_display.future = function(value)
  return "Future: "..value
end

-- Dissect: Future
miax_pearlequities_meo_v2_6_dissect.future = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.future
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.future(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.future, range, value, display)

  return offset + length, value
end

-- Size: Test Security Indicator
miax_pearlequities_meo_v2_6_size_of.test_security_indicator = 1

-- Display: Test Security Indicator
miax_pearlequities_meo_v2_6_display.test_security_indicator = function(value)
  return "Test Security Indicator: "..value
end

-- Dissect: Test Security Indicator
miax_pearlequities_meo_v2_6_dissect.test_security_indicator = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.test_security_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.test_security_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
miax_pearlequities_meo_v2_6_size_of.reserved_1 = 1

-- Display: Reserved 1
miax_pearlequities_meo_v2_6_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_pearlequities_meo_v2_6_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Ticker Symbol
miax_pearlequities_meo_v2_6_size_of.ticker_symbol = 11

-- Display: Ticker Symbol
miax_pearlequities_meo_v2_6_display.ticker_symbol = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
miax_pearlequities_meo_v2_6_dissect.ticker_symbol = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.ticker_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_meo_v2_6_display.ticker_symbol(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Update Message
miax_pearlequities_meo_v2_6_size_of.symbol_update_message = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.matching_engine_time

  index = index + miax_pearlequities_meo_v2_6_size_of.symbol_id

  index = index + miax_pearlequities_meo_v2_6_size_of.ticker_symbol

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_1

  index = index + miax_pearlequities_meo_v2_6_size_of.test_security_indicator

  index = index + miax_pearlequities_meo_v2_6_size_of.future

  index = index + miax_pearlequities_meo_v2_6_size_of.lot_size

  index = index + miax_pearlequities_meo_v2_6_size_of.opening_time

  index = index + miax_pearlequities_meo_v2_6_size_of.closing_time

  index = index + miax_pearlequities_meo_v2_6_size_of.primary_market_code

  index = index + miax_pearlequities_meo_v2_6_size_of.reserved_12

  return index
end

-- Display: Symbol Update Message
miax_pearlequities_meo_v2_6_display.symbol_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Update Message
miax_pearlequities_meo_v2_6_dissect.symbol_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: 8 Byte Unsigned Fixed Width Integer
  index, matching_engine_time = miax_pearlequities_meo_v2_6_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Symbol Id: 4 Byte Unsigned Fixed Width Integer
  index, symbol_id = miax_pearlequities_meo_v2_6_dissect.symbol_id(buffer, index, packet, parent)

  -- Ticker Symbol: 11 Byte Ascii String
  index, ticker_symbol = miax_pearlequities_meo_v2_6_dissect.ticker_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte Ascii String
  index, reserved_1 = miax_pearlequities_meo_v2_6_dissect.reserved_1(buffer, index, packet, parent)

  -- Test Security Indicator: 1 Byte Ascii String
  index, test_security_indicator = miax_pearlequities_meo_v2_6_dissect.test_security_indicator(buffer, index, packet, parent)

  -- Future: 1 Byte Unsigned Fixed Width Integer
  index, future = miax_pearlequities_meo_v2_6_dissect.future(buffer, index, packet, parent)

  -- Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, lot_size = miax_pearlequities_meo_v2_6_dissect.lot_size(buffer, index, packet, parent)

  -- Opening Time: 8 Byte Ascii String
  index, opening_time = miax_pearlequities_meo_v2_6_dissect.opening_time(buffer, index, packet, parent)

  -- Closing Time: 8 Byte Ascii String
  index, closing_time = miax_pearlequities_meo_v2_6_dissect.closing_time(buffer, index, packet, parent)

  -- Primary Market Code: 1 Byte Ascii String
  index, primary_market_code = miax_pearlequities_meo_v2_6_dissect.primary_market_code(buffer, index, packet, parent)

  -- Reserved 12: 12 Byte Ascii String
  index, reserved_12 = miax_pearlequities_meo_v2_6_dissect.reserved_12(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update Message
miax_pearlequities_meo_v2_6_dissect.symbol_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_update_message then
    local length = miax_pearlequities_meo_v2_6_size_of.symbol_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.symbol_update_message(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.symbol_update_message, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.symbol_update_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Sequenced Message
miax_pearlequities_meo_v2_6_size_of.sequenced_message = function(buffer, offset, sequenced_message_type)
  -- Size of Symbol Update Message
  if sequenced_message_type == "SU" then
    return miax_pearlequities_meo_v2_6_size_of.symbol_update_message(buffer, offset)
  end
  -- Size of New Order Response Message
  if sequenced_message_type == "NR" then
    return miax_pearlequities_meo_v2_6_size_of.new_order_response_message(buffer, offset)
  end
  -- Size of Modify Order Response
  if sequenced_message_type == "MR" then
    return miax_pearlequities_meo_v2_6_size_of.modify_order_response(buffer, offset)
  end
  -- Size of Cancel Order Response
  if sequenced_message_type == "CR" then
    return miax_pearlequities_meo_v2_6_size_of.cancel_order_response(buffer, offset)
  end
  -- Size of Cancel Order By Exchange Order Id Response Message
  if sequenced_message_type == "CQ" then
    return miax_pearlequities_meo_v2_6_size_of.cancel_order_by_exchange_order_id_response_message(buffer, offset)
  end
  -- Size of System State Notification
  if sequenced_message_type == "SN" then
    return miax_pearlequities_meo_v2_6_size_of.system_state_notification(buffer, offset)
  end
  -- Size of New Order Notification
  if sequenced_message_type == "O1" then
    return miax_pearlequities_meo_v2_6_size_of.new_order_notification(buffer, offset)
  end
  -- Size of Modify Order Notification
  if sequenced_message_type == "MN" then
    return miax_pearlequities_meo_v2_6_size_of.modify_order_notification(buffer, offset)
  end
  -- Size of Cancel Reduce Size Order Notification
  if sequenced_message_type == "XN" then
    return miax_pearlequities_meo_v2_6_size_of.cancel_reduce_size_order_notification(buffer, offset)
  end
  -- Size of Order Price Update Notification
  if sequenced_message_type == "PU" then
    return miax_pearlequities_meo_v2_6_size_of.order_price_update_notification(buffer, offset)
  end
  -- Size of Reserve Order Replenishment Notification
  if sequenced_message_type == "RA" then
    return miax_pearlequities_meo_v2_6_size_of.reserve_order_replenishment_notification(buffer, offset)
  end
  -- Size of Execution Notification
  if sequenced_message_type == "E1" then
    return miax_pearlequities_meo_v2_6_size_of.execution_notification(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
miax_pearlequities_meo_v2_6_display.sequenced_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
miax_pearlequities_meo_v2_6_dissect.sequenced_message_branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Symbol Update Message
  if sequenced_message_type == "SU" then
    return miax_pearlequities_meo_v2_6_dissect.symbol_update_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response Message
  if sequenced_message_type == "NR" then
    return miax_pearlequities_meo_v2_6_dissect.new_order_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if sequenced_message_type == "MR" then
    return miax_pearlequities_meo_v2_6_dissect.modify_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response
  if sequenced_message_type == "CR" then
    return miax_pearlequities_meo_v2_6_dissect.cancel_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order By Exchange Order Id Response Message
  if sequenced_message_type == "CQ" then
    return miax_pearlequities_meo_v2_6_dissect.cancel_order_by_exchange_order_id_response_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Notification
  if sequenced_message_type == "SN" then
    return miax_pearlequities_meo_v2_6_dissect.system_state_notification(buffer, offset, packet, parent)
  end
  -- Dissect New Order Notification
  if sequenced_message_type == "O1" then
    return miax_pearlequities_meo_v2_6_dissect.new_order_notification(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Notification
  if sequenced_message_type == "MN" then
    return miax_pearlequities_meo_v2_6_dissect.modify_order_notification(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reduce Size Order Notification
  if sequenced_message_type == "XN" then
    return miax_pearlequities_meo_v2_6_dissect.cancel_reduce_size_order_notification(buffer, offset, packet, parent)
  end
  -- Dissect Order Price Update Notification
  if sequenced_message_type == "PU" then
    return miax_pearlequities_meo_v2_6_dissect.order_price_update_notification(buffer, offset, packet, parent)
  end
  -- Dissect Reserve Order Replenishment Notification
  if sequenced_message_type == "RA" then
    return miax_pearlequities_meo_v2_6_dissect.reserve_order_replenishment_notification(buffer, offset, packet, parent)
  end
  -- Dissect Execution Notification
  if sequenced_message_type == "E1" then
    return miax_pearlequities_meo_v2_6_dissect.execution_notification(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
miax_pearlequities_meo_v2_6_dissect.sequenced_message = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return miax_pearlequities_meo_v2_6_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_meo_v2_6_size_of.sequenced_message(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_meo_v2_6_display.sequenced_message(buffer, packet, parent)
  local element = parent:add(miax_pearlequities_meo_v2_6.fields.sequenced_message, range, display)

  return miax_pearlequities_meo_v2_6_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Size: Sequenced Message Type
miax_pearlequities_meo_v2_6_size_of.sequenced_message_type = 2

-- Display: Sequenced Message Type
miax_pearlequities_meo_v2_6_display.sequenced_message_type = function(value)
  if value == "SU" then
    return "Sequenced Message Type: Symbol Update Message (SU)"
  end
  if value == "NR" then
    return "Sequenced Message Type: New Order Response Message (NR)"
  end
  if value == "MR" then
    return "Sequenced Message Type: Modify Order Response (MR)"
  end
  if value == "CR" then
    return "Sequenced Message Type: Cancel Order Response (CR)"
  end
  if value == "CQ" then
    return "Sequenced Message Type: Cancel Order By Exchange Order Id Response Message (CQ)"
  end
  if value == "SN" then
    return "Sequenced Message Type: System State Notification (SN)"
  end
  if value == "O1" then
    return "Sequenced Message Type: New Order Notification (O1)"
  end
  if value == "MN" then
    return "Sequenced Message Type: Modify Order Notification (MN)"
  end
  if value == "XN" then
    return "Sequenced Message Type: Cancel Reduce Size Order Notification (XN)"
  end
  if value == "PU" then
    return "Sequenced Message Type: Order Price Update Notification (PU)"
  end
  if value == "RA" then
    return "Sequenced Message Type: Reserve Order Replenishment Notification (RA)"
  end
  if value == "E1" then
    return "Sequenced Message Type: Execution Notification (E1)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
miax_pearlequities_meo_v2_6_dissect.sequenced_message_type = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.sequenced_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.sequenced_message_type(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Size: Matching Engine Id
miax_pearlequities_meo_v2_6_size_of.matching_engine_id = 1

-- Display: Matching Engine Id
miax_pearlequities_meo_v2_6_display.matching_engine_id = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_pearlequities_meo_v2_6_dissect.matching_engine_id = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.matching_engine_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_meo_v2_6_display.matching_engine_id(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
miax_pearlequities_meo_v2_6_size_of.sequence_number = 8

-- Display: Sequence Number
miax_pearlequities_meo_v2_6_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearlequities_meo_v2_6_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_meo_v2_6_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Sequenced Data Packet
miax_pearlequities_meo_v2_6_size_of.sequenced_data_packet = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 12
end

-- Display: Sequenced Data Packet
miax_pearlequities_meo_v2_6_display.sequenced_data_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_pearlequities_meo_v2_6_dissect.sequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearlequities_meo_v2_6_dissect.sequence_number(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_pearlequities_meo_v2_6_dissect.matching_engine_id(buffer, index, packet, parent)

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = miax_pearlequities_meo_v2_6_dissect.sequenced_message_type(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = miax_pearlequities_meo_v2_6_dissect.sequenced_message(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_pearlequities_meo_v2_6_dissect.sequenced_data_packet = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = miax_pearlequities_meo_v2_6_size_of.sequenced_data_packet(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = miax_pearlequities_meo_v2_6_display.sequenced_data_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.sequenced_data_packet, range, display)
  end

  miax_pearlequities_meo_v2_6_dissect.sequenced_data_packet_fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Calculate runtime size of: Payload
miax_pearlequities_meo_v2_6_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Sequenced Data Packet
  if packet_type == "s" then
    return miax_pearlequities_meo_v2_6_size_of.sequenced_data_packet(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return miax_pearlequities_meo_v2_6_size_of.unsequenced_data_packet(buffer, offset)
  end
  -- Size of Login Request
  if packet_type == "l" then
    return miax_pearlequities_meo_v2_6_size_of.login_request(buffer, offset)
  end
  -- Size of Login Response
  if packet_type == "r" then
    return miax_pearlequities_meo_v2_6_size_of.login_response(buffer, offset)
  end
  -- Size of Synchronization Complete
  if packet_type == "c" then
    return miax_pearlequities_meo_v2_6_size_of.synchronization_complete(buffer, offset)
  end
  -- Size of Retransmission Request
  if packet_type == "a" then
    return miax_pearlequities_meo_v2_6_size_of.retransmission_request(buffer, offset)
  end
  -- Size of Logout Request
  if packet_type == "X" then
    return miax_pearlequities_meo_v2_6_size_of.logout_request(buffer, offset)
  end
  -- Size of Goodbye Packet
  if packet_type == "G" then
    return miax_pearlequities_meo_v2_6_size_of.goodbye_packet(buffer, offset)
  end
  -- Size of Trading Session Update
  if packet_type == "u" then
    return 0
  end
  -- Size of Server Heartbeat
  if packet_type == "0" then
    return 0
  end
  -- Size of Client Heartbeat
  if packet_type == "1" then
    return 0
  end
  -- Size of Test Packet
  if packet_type == "T" then
    return miax_pearlequities_meo_v2_6_size_of.test_packet(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_pearlequities_meo_v2_6_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_pearlequities_meo_v2_6_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Sequenced Data Packet
  if packet_type == "s" then
    return miax_pearlequities_meo_v2_6_dissect.sequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return miax_pearlequities_meo_v2_6_dissect.unsequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if packet_type == "l" then
    return miax_pearlequities_meo_v2_6_dissect.login_request(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if packet_type == "r" then
    return miax_pearlequities_meo_v2_6_dissect.login_response(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if packet_type == "c" then
    return miax_pearlequities_meo_v2_6_dissect.synchronization_complete(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if packet_type == "a" then
    return miax_pearlequities_meo_v2_6_dissect.retransmission_request(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if packet_type == "X" then
    return miax_pearlequities_meo_v2_6_dissect.logout_request(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if packet_type == "G" then
    return miax_pearlequities_meo_v2_6_dissect.goodbye_packet(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Update
  if packet_type == "u" then
  end
  -- Dissect Server Heartbeat
  if packet_type == "0" then
  end
  -- Dissect Client Heartbeat
  if packet_type == "1" then
  end
  -- Dissect Test Packet
  if packet_type == "T" then
    return miax_pearlequities_meo_v2_6_dissect.test_packet(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_pearlequities_meo_v2_6_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_pearlequities_meo_v2_6_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_meo_v2_6_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_meo_v2_6_display.payload(buffer, packet, parent)
  local element = parent:add(miax_pearlequities_meo_v2_6.fields.payload, range, display)

  return miax_pearlequities_meo_v2_6_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Packet Type
miax_pearlequities_meo_v2_6_size_of.packet_type = 1

-- Display: Packet Type
miax_pearlequities_meo_v2_6_display.packet_type = function(value)
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
miax_pearlequities_meo_v2_6_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_meo_v2_6_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
miax_pearlequities_meo_v2_6_size_of.packet_length = 2

-- Display: Packet Length
miax_pearlequities_meo_v2_6_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_pearlequities_meo_v2_6_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_meo_v2_6_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_meo_v2_6_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_pearlequities_meo_v2_6.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
miax_pearlequities_meo_v2_6_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_meo_v2_6_size_of.packet_length

  index = index + miax_pearlequities_meo_v2_6_size_of.packet_type

  return index
end

-- Display: Packet Header
miax_pearlequities_meo_v2_6_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
miax_pearlequities_meo_v2_6_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_pearlequities_meo_v2_6_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 12 values
  index, packet_type = miax_pearlequities_meo_v2_6_dissect.packet_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
miax_pearlequities_meo_v2_6_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = miax_pearlequities_meo_v2_6_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_meo_v2_6_display.packet_header(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.packet_header, range, display)
  end

  return miax_pearlequities_meo_v2_6_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Display: Esesm Tcp Packet
miax_pearlequities_meo_v2_6_display.esesm_tcp_packet = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Esesm Tcp Packet
miax_pearlequities_meo_v2_6_dissect.esesm_tcp_packet_fields = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = miax_pearlequities_meo_v2_6_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 12 branches
  index = miax_pearlequities_meo_v2_6_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Esesm Tcp Packet
miax_pearlequities_meo_v2_6_dissect.esesm_tcp_packet = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  -- Optionally add struct element to protocol tree
  if show.esesm_tcp_packet then
    local range = buffer(offset, size_of_esesm_tcp_packet)
    local display = miax_pearlequities_meo_v2_6_display.esesm_tcp_packet(buffer, packet, parent)
    parent = parent:add(miax_pearlequities_meo_v2_6.fields.esesm_tcp_packet, range, display)
  end

  miax_pearlequities_meo_v2_6_dissect.esesm_tcp_packet_fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)

  return offset + size_of_esesm_tcp_packet
end

-- Remaining Bytes For: Esesm Tcp Packet
local esesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_pearlequities_meo_v2_6_size_of.packet_header(buffer, index) then
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

-- Dissect Packet
miax_pearlequities_meo_v2_6_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Esesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Esesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_esesm_tcp_packet = esesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_pearlequities_meo_v2_6_dissect.esesm_tcp_packet(buffer, index, packet, parent, size_of_esesm_tcp_packet)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function miax_pearlequities_meo_v2_6.init()
end

-- Dissector for Miax PearlEquities Express Orders Meo 2.6
function miax_pearlequities_meo_v2_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_pearlequities_meo_v2_6.name

  -- Dissect protocol
  local protocol = parent:add(miax_pearlequities_meo_v2_6, buffer(), miax_pearlequities_meo_v2_6.description, "("..buffer:len().." Bytes)")
  return miax_pearlequities_meo_v2_6_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, miax_pearlequities_meo_v2_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_pearlequities_meo_v2_6_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax PearlEquities Express Orders Meo 2.6
local function miax_pearlequities_meo_v2_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_pearlequities_meo_v2_6_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_pearlequities_meo_v2_6
  miax_pearlequities_meo_v2_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlEquities Express Orders Meo 2.6
miax_pearlequities_meo_v2_6:register_heuristic("tcp", miax_pearlequities_meo_v2_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.6
--   Date: Monday, September 25, 2023
--   Specification: miax_express_orders_meo.pdf
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
