-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures ExpressInterface Fei 1.0.c Protocol
local omi_miax_onyxfutures_expressinterface_fei_v1_0_c = Proto("Miax.OnyxFutures.ExpressInterface.Fei.v1.0.c.Lua", "Miax OnyxFutures ExpressInterface Fei 1.0.c")

-- Protocol table
local miax_onyxfutures_expressinterface_fei_v1_0_c = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures ExpressInterface Fei 1.0.c Fields
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.account = ProtoField.new("Account", "miax.onyxfutures.expressinterface.fei.v1.0.c.account", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.action = ProtoField.new("Action", "miax.onyxfutures.expressinterface.fei.v1.0.c.action", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.additional_order_indicators = ProtoField.new("Additional Order Indicators", "miax.onyxfutures.expressinterface.fei.v1.0.c.additionalorderindicators", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.application_protocol = ProtoField.new("Application Protocol", "miax.onyxfutures.expressinterface.fei.v1.0.c.applicationprotocol", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_reason = ProtoField.new("Cancel Reason", "miax.onyxfutures.expressinterface.fei.v1.0.c.cancelreason", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.client_order_id = ProtoField.new("Client Order Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.clientorderid", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.client_send_time = ProtoField.new("Client Send Time", "miax.onyxfutures.expressinterface.fei.v1.0.c.clientsendtime", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.complex_trade_id = ProtoField.new("Complex Trade Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.complextradeid", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.computer_id = ProtoField.new("Computer Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.computerid", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.correction_number = ProtoField.new("Correction Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.correctionnumber", ftypes.UINT8)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cti_code = ProtoField.new("Cti Code", "miax.onyxfutures.expressinterface.fei.v1.0.c.cticode", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.customer_of_firm_designation = ProtoField.new("Customer Of Firm Designation", "miax.onyxfutures.expressinterface.fei.v1.0.c.customeroffirmdesignation", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.customer_order_handling_instruction = ProtoField.new("Customer Order Handling Instruction", "miax.onyxfutures.expressinterface.fei.v1.0.c.customerorderhandlinginstruction", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.endsequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.execution_id = ProtoField.new("Execution Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.executionid", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.goodbyepacket", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.highestsequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.instrument_id_binary_u_4 = ProtoField.new("Instrument Id Binary U 4", "miax.onyxfutures.expressinterface.fei.v1.0.c.instrumentidbinaryu4", ftypes.UINT32)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.instrument_id_string_20 = ProtoField.new("Instrument Id String 20", "miax.onyxfutures.expressinterface.fei.v1.0.c.instrumentidstring20", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_net_price = ProtoField.new("Last Net Price", "miax.onyxfutures.expressinterface.fei.v1.0.c.lastnetprice", ftypes.DOUBLE)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_price = ProtoField.new("Last Price", "miax.onyxfutures.expressinterface.fei.v1.0.c.lastprice", ftypes.DOUBLE)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_size = ProtoField.new("Last Size", "miax.onyxfutures.expressinterface.fei.v1.0.c.lastsize", ftypes.UINT32)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.leaves_qty = ProtoField.new("Leaves Qty", "miax.onyxfutures.expressinterface.fei.v1.0.c.leavesqty", ftypes.UINT32)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.leg_ratio = ProtoField.new("Leg Ratio", "miax.onyxfutures.expressinterface.fei.v1.0.c.legratio", ftypes.INT32)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.onyxfutures.expressinterface.fei.v1.0.c.liquidityindicator", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_request = ProtoField.new("Login Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.loginrequest", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_response = ProtoField.new("Login Response", "miax.onyxfutures.expressinterface.fei.v1.0.c.loginresponse", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_status = ProtoField.new("Login Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.loginstatus", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_reason = ProtoField.new("Logout Reason", "miax.onyxfutures.expressinterface.fei.v1.0.c.logoutreason", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_request = ProtoField.new("Logout Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.logoutrequest", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_text = ProtoField.new("Logout Text", "miax.onyxfutures.expressinterface.fei.v1.0.c.logouttext", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "miax.onyxfutures.expressinterface.fei.v1.0.c.manualorderindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.matching_engine = ProtoField.new("Matching Engine", "miax.onyxfutures.expressinterface.fei.v1.0.c.matchingengine", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.matching_engine_time = ProtoField.new("Matching Engine Time", "miax.onyxfutures.expressinterface.fei.v1.0.c.matchingenginetime", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.min_qty = ProtoField.new("Min Qty", "miax.onyxfutures.expressinterface.fei.v1.0.c.minqty", ftypes.UINT32)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mp_id = ProtoField.new("Mp Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.mpid", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.onyxfutures.expressinterface.fei.v1.0.c.numberoflegs", ftypes.UINT8)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.open_close_position_indicator = ProtoField.new("Open Close Position Indicator", "miax.onyxfutures.expressinterface.fei.v1.0.c.openclosepositionindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.operator_id = ProtoField.new("Operator Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.operatorid", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.operator_location = ProtoField.new("Operator Location", "miax.onyxfutures.expressinterface.fei.v1.0.c.operatorlocation", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_expiry_date = ProtoField.new("Order Expiry Date", "miax.onyxfutures.expressinterface.fei.v1.0.c.orderexpirydate", ftypes.UINT16)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_id = ProtoField.new("Order Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.orderid", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_instructions = ProtoField.new("Order Instructions", "miax.onyxfutures.expressinterface.fei.v1.0.c.orderinstructions", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_type = ProtoField.new("Order Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.ordertype", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.original_client_order = ProtoField.new("Original Client Order", "miax.onyxfutures.expressinterface.fei.v1.0.c.originalclientorder", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.originalclientorderid", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.packet", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_header = ProtoField.new("Packet Header", "miax.onyxfutures.expressinterface.fei.v1.0.c.packetheader", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_length = ProtoField.new("Packet Length", "miax.onyxfutures.expressinterface.fei.v1.0.c.packetlength", ftypes.UINT16)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_type = ProtoField.new("Packet Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.packettype", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.payload = ProtoField.new("Payload", "miax.onyxfutures.expressinterface.fei.v1.0.c.payload", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.price = ProtoField.new("Price", "miax.onyxfutures.expressinterface.fei.v1.0.c.price", ftypes.DOUBLE)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.product_group_code = ProtoField.new("Product Group Code", "miax.onyxfutures.expressinterface.fei.v1.0.c.productgroupcode", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.product_type = ProtoField.new("Product Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.producttype", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.purge_group = ProtoField.new("Purge Group", "miax.onyxfutures.expressinterface.fei.v1.0.c.purgegroup", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.requestedsequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.requested_session = ProtoField.new("Requested Session", "miax.onyxfutures.expressinterface.fei.v1.0.c.requestedsession", ftypes.UINT8)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved10", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved16", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_32 = ProtoField.new("Reserved 32", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved32", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved8", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_9 = ProtoField.new("Reserved 9", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved9", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.retransmissionrequest", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.scope = ProtoField.new("Scope", "miax.onyxfutures.expressinterface.fei.v1.0.c.scope", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection = ProtoField.new("Self Trade Protection", "miax.onyxfutures.expressinterface.fei.v1.0.c.selftradeprotection", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_group = ProtoField.new("Self Trade Protection Group", "miax.onyxfutures.expressinterface.fei.v1.0.c.selftradeprotectiongroup", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_instruction = ProtoField.new("Self Trade Protection Instruction", "miax.onyxfutures.expressinterface.fei.v1.0.c.selftradeprotectioninstruction", ftypes.UINT8, nil, base.DEC, 0x38)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_level = ProtoField.new("Self Trade Protection Level", "miax.onyxfutures.expressinterface.fei.v1.0.c.selftradeprotectionlevel", ftypes.UINT8, nil, base.DEC, 0x07)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.sequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.sequenceddatapacket", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_message = ProtoField.new("Sequenced Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.sequencedmessage", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.sequencedmessagetype", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.sesmtcppacket", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sesm_version = ProtoField.new("Sesm Version", "miax.onyxfutures.expressinterface.fei.v1.0.c.sesmversion", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.session_id = ProtoField.new("Session Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.sessionid", ftypes.UINT8)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.side = ProtoField.new("Side", "miax.onyxfutures.expressinterface.fei.v1.0.c.side", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.simple_trade_id = ProtoField.new("Simple Trade Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.simpletradeid", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.size_binary_s_4 = ProtoField.new("Size Binary S 4", "miax.onyxfutures.expressinterface.fei.v1.0.c.sizebinarys4", ftypes.INT32)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.size_binary_u_4 = ProtoField.new("Size Binary U 4", "miax.onyxfutures.expressinterface.fei.v1.0.c.sizebinaryu4", ftypes.UINT32)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.startsequencenumber", ftypes.UINT64)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.status = ProtoField.new("Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.status", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.stop_order_trigger_price = ProtoField.new("Stop Order Trigger Price", "miax.onyxfutures.expressinterface.fei.v1.0.c.stopordertriggerprice", ftypes.DOUBLE)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_leg = ProtoField.new("Strategy Leg", "miax.onyxfutures.expressinterface.fei.v1.0.c.strategyleg", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.system_status = ProtoField.new("System Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.systemstatus", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.text_memo = ProtoField.new("Text Memo", "miax.onyxfutures.expressinterface.fei.v1.0.c.textmemo", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.time_in_force = ProtoField.new("Time In Force", "miax.onyxfutures.expressinterface.fei.v1.0.c.timeinforce", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trade_date = ProtoField.new("Trade Date", "miax.onyxfutures.expressinterface.fei.v1.0.c.tradedate", ftypes.UINT16)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trade_status = ProtoField.new("Trade Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.tradestatus", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trading_collar_dollar_value = ProtoField.new("Trading Collar Dollar Value", "miax.onyxfutures.expressinterface.fei.v1.0.c.tradingcollardollarvalue", ftypes.DOUBLE)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.unsequenceddatapacket", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.unsequencedmessage", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.unsequencedmessagetype", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_15 = ProtoField.new("Unused 15", "miax.onyxfutures.expressinterface.fei.v1.0.c.unused15", ftypes.UINT16, nil, base.DEC, 0xFFFE)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_2 = ProtoField.new("Unused 2", "miax.onyxfutures.expressinterface.fei.v1.0.c.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_5 = ProtoField.new("Unused 5", "miax.onyxfutures.expressinterface.fei.v1.0.c.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.update_status = ProtoField.new("Update Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.updatestatus", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.username = ProtoField.new("Username", "miax.onyxfutures.expressinterface.fei.v1.0.c.username", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.version = ProtoField.new("Version", "miax.onyxfutures.expressinterface.fei.v1.0.c.version", ftypes.STRING)

-- Miax OnyxFutures ExpressInterface Fei 1.0.c messages
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_order_request_message = ProtoField.new("Cancel Order Request Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.cancelorderrequestmessage", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_order_response = ProtoField.new("Cancel Order Response", "miax.onyxfutures.expressinterface.fei.v1.0.c.cancelorderresponse", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_reduce_size_order_notification = ProtoField.new("Cancel Reduce Size Order Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.cancelreducesizeordernotification", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.complex_execution_notification = ProtoField.new("Complex Execution Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.complexexecutionnotification", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mass_cancel_request = ProtoField.new("Mass Cancel Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.masscancelrequest", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mass_cancel_response = ProtoField.new("Mass Cancel Response", "miax.onyxfutures.expressinterface.fei.v1.0.c.masscancelresponse", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_notification = ProtoField.new("Modify Order Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.modifyordernotification", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_request_message = ProtoField.new("Modify Order Request Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.modifyorderrequestmessage", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_response = ProtoField.new("Modify Order Response", "miax.onyxfutures.expressinterface.fei.v1.0.c.modifyorderresponse", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_notification = ProtoField.new("New Order Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.newordernotification", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_request_message = ProtoField.new("New Order Request Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.neworderrequestmessage", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_response_message = ProtoField.new("New Order Response Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.neworderresponsemessage", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_status_update_notification = ProtoField.new("Order Status Update Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.orderstatusupdatenotification", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.simple_execution_notification = ProtoField.new("Simple Execution Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.simpleexecutionnotification", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_creation_request = ProtoField.new("Strategy Creation Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.strategycreationrequest", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_creation_response_message = ProtoField.new("Strategy Creation Response Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.strategycreationresponsemessage", ftypes.STRING)
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.system_state_notification_message = ProtoField.new("System State Notification Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.systemstatenotificationmessage", ftypes.STRING)

-- Miax OnyxFutures ExpressInterface Fei 1.0.c generated fields
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_leg_index = ProtoField.new("Strategy Leg Index", "miax.onyxfutures.expressinterface.fei.v1.0.c.strategylegindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax OnyxFutures ExpressInterface Fei 1.0.c Element Dissection Options
show.additional_order_indicators = true
show.cancel_order_request_message = true
show.cancel_order_response = true
show.cancel_reduce_size_order_notification = true
show.complex_execution_notification = true
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
show.order_instructions = true
show.order_status_update_notification = true
show.packet = true
show.packet_header = true
show.retransmission_request = true
show.self_trade_protection = true
show.sequenced_data_packet = true
show.sesm_tcp_packet = true
show.simple_execution_notification = true
show.strategy_creation_request = true
show.strategy_creation_response_message = true
show.strategy_leg = true
show.system_state_notification_message = true
show.unsequenced_data_packet = true
show.payload = false
show.sequenced_message = false
show.unsequenced_message = false

-- Register Miax OnyxFutures ExpressInterface Fei 1.0.c Show Options
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_additional_order_indicators = Pref.bool("Show Additional Order Indicators", show.additional_order_indicators, "Parse and add Additional Order Indicators to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_request_message = Pref.bool("Show Cancel Order Request Message", show.cancel_order_request_message, "Parse and add Cancel Order Request Message to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_response = Pref.bool("Show Cancel Order Response", show.cancel_order_response, "Parse and add Cancel Order Response to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_reduce_size_order_notification = Pref.bool("Show Cancel Reduce Size Order Notification", show.cancel_reduce_size_order_notification, "Parse and add Cancel Reduce Size Order Notification to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_complex_execution_notification = Pref.bool("Show Complex Execution Notification", show.complex_execution_notification, "Parse and add Complex Execution Notification to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_request = Pref.bool("Show Mass Cancel Request", show.mass_cancel_request, "Parse and add Mass Cancel Request to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_response = Pref.bool("Show Mass Cancel Response", show.mass_cancel_response, "Parse and add Mass Cancel Response to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_notification = Pref.bool("Show Modify Order Notification", show.modify_order_notification, "Parse and add Modify Order Notification to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_request_message = Pref.bool("Show Modify Order Request Message", show.modify_order_request_message, "Parse and add Modify Order Request Message to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_response = Pref.bool("Show Modify Order Response", show.modify_order_response, "Parse and add Modify Order Response to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_notification = Pref.bool("Show New Order Notification", show.new_order_notification, "Parse and add New Order Notification to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_request_message = Pref.bool("Show New Order Request Message", show.new_order_request_message, "Parse and add New Order Request Message to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_response_message = Pref.bool("Show New Order Response Message", show.new_order_response_message, "Parse and add New Order Response Message to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_instructions = Pref.bool("Show Order Instructions", show.order_instructions, "Parse and add Order Instructions to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_status_update_notification = Pref.bool("Show Order Status Update Notification", show.order_status_update_notification, "Parse and add Order Status Update Notification to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_self_trade_protection = Pref.bool("Show Self Trade Protection", show.self_trade_protection, "Parse and add Self Trade Protection to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sesm_tcp_packet = Pref.bool("Show Sesm Tcp Packet", show.sesm_tcp_packet, "Parse and add Sesm Tcp Packet to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_simple_execution_notification = Pref.bool("Show Simple Execution Notification", show.simple_execution_notification, "Parse and add Simple Execution Notification to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_request = Pref.bool("Show Strategy Creation Request", show.strategy_creation_request, "Parse and add Strategy Creation Request to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_response_message = Pref.bool("Show Strategy Creation Response Message", show.strategy_creation_response_message, "Parse and add Strategy Creation Response Message to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_leg = Pref.bool("Show Strategy Leg", show.strategy_leg, "Parse and add Strategy Leg to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_system_state_notification_message = Pref.bool("Show System State Notification Message", show.system_state_notification_message, "Parse and add System State Notification Message to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.additional_order_indicators ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_additional_order_indicators then
    show.additional_order_indicators = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_additional_order_indicators
    changed = true
  end
  if show.cancel_order_request_message ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_request_message then
    show.cancel_order_request_message = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_request_message
    changed = true
  end
  if show.cancel_order_response ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_response then
    show.cancel_order_response = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_response
    changed = true
  end
  if show.cancel_reduce_size_order_notification ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_reduce_size_order_notification then
    show.cancel_reduce_size_order_notification = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_reduce_size_order_notification
    changed = true
  end
  if show.complex_execution_notification ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_complex_execution_notification then
    show.complex_execution_notification = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_complex_execution_notification
    changed = true
  end
  if show.goodbye_packet ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_goodbye_packet then
    show.goodbye_packet = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_goodbye_packet
    changed = true
  end
  if show.login_request ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_request then
    show.login_request = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_request
    changed = true
  end
  if show.login_response ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_response then
    show.login_response = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_response
    changed = true
  end
  if show.logout_request ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_logout_request then
    show.logout_request = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_logout_request
    changed = true
  end
  if show.mass_cancel_request ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_request then
    show.mass_cancel_request = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_request
    changed = true
  end
  if show.mass_cancel_response ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_response then
    show.mass_cancel_response = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_response
    changed = true
  end
  if show.modify_order_notification ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_notification then
    show.modify_order_notification = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_notification
    changed = true
  end
  if show.modify_order_request_message ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_request_message then
    show.modify_order_request_message = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_request_message
    changed = true
  end
  if show.modify_order_response ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_response then
    show.modify_order_response = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_response
    changed = true
  end
  if show.new_order_notification ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_notification then
    show.new_order_notification = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_notification
    changed = true
  end
  if show.new_order_request_message ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_request_message then
    show.new_order_request_message = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_request_message
    changed = true
  end
  if show.new_order_response_message ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_response_message then
    show.new_order_response_message = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_response_message
    changed = true
  end
  if show.order_instructions ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_instructions then
    show.order_instructions = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_instructions
    changed = true
  end
  if show.order_status_update_notification ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_status_update_notification then
    show.order_status_update_notification = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_status_update_notification
    changed = true
  end
  if show.packet ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet then
    show.packet = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet_header then
    show.packet_header = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet_header
    changed = true
  end
  if show.retransmission_request ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_retransmission_request then
    show.retransmission_request = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_retransmission_request
    changed = true
  end
  if show.self_trade_protection ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_self_trade_protection then
    show.self_trade_protection = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_self_trade_protection
    changed = true
  end
  if show.sequenced_data_packet ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.sesm_tcp_packet ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sesm_tcp_packet then
    show.sesm_tcp_packet = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sesm_tcp_packet
    changed = true
  end
  if show.simple_execution_notification ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_simple_execution_notification then
    show.simple_execution_notification = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_simple_execution_notification
    changed = true
  end
  if show.strategy_creation_request ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_request then
    show.strategy_creation_request = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_request
    changed = true
  end
  if show.strategy_creation_response_message ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_response_message then
    show.strategy_creation_response_message = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_response_message
    changed = true
  end
  if show.strategy_leg ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_leg then
    show.strategy_leg = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_leg
    changed = true
  end
  if show.system_state_notification_message ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_system_state_notification_message then
    show.system_state_notification_message = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_system_state_notification_message
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_payload then
    show.payload = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_message then
    show.sequenced_message = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_message
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
-- Dissect Miax OnyxFutures ExpressInterface Fei 1.0.c
-----------------------------------------------------------------------

-- Logout Text
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_text = {}

-- Display: Logout Text
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.logout_text.display(value, buffer, offset, packet, parent, size)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_text, range, value, display)

  return offset + size
end

-- Logout Reason
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason = {}

-- Size: Logout Reason
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason.size = 1

-- Display: Logout Reason
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason.display = function(value)
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
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_onyxfutures_expressinterface_fei_v1_0_c.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.goodbye_packet then
    local length = miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.goodbye_packet, range, display)
  end

  return miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet.fields(buffer, offset, packet, parent)
end

-- Logout Request
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request = {}

-- Calculate size of: Logout Request
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_onyxfutures_expressinterface_fei_v1_0_c.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_onyxfutures_expressinterface_fei_v1_0_c.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.logout_request then
    local length = miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_request, range, display)
  end

  return miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request.fields(buffer, offset, packet, parent)
end

-- End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.end_sequence_number = {}

-- Size: End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.start_sequence_number = {}

-- Size: Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request = {}

-- Calculate size of: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.start_sequence_number.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.end_sequence_number.size

  return index
end

-- Display: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.retransmission_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
miax_onyxfutures_expressinterface_fei_v1_0_c.session_id = {}

-- Size: Session Id
miax_onyxfutures_expressinterface_fei_v1_0_c.session_id.size = 1

-- Display: Session Id
miax_onyxfutures_expressinterface_fei_v1_0_c.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_onyxfutures_expressinterface_fei_v1_0_c.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.session_id, range, value, display)

  return offset + length, value
end

-- Login Status
miax_onyxfutures_expressinterface_fei_v1_0_c.login_status = {}

-- Size: Login Status
miax_onyxfutures_expressinterface_fei_v1_0_c.login_status.size = 1

-- Display: Login Status
miax_onyxfutures_expressinterface_fei_v1_0_c.login_status.display = function(value)
  if value == "" then
    return "Login Status: Successful (<whitespace>)"
  end
  if value == "X" then
    return "Login Status: Rejected (X)"
  end
  if value == "S" then
    return "Login Status: Requested Session Is Not Available (S)"
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
miax_onyxfutures_expressinterface_fei_v1_0_c.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_status, range, value, display)

  return offset + length, value
end

-- Login Response
miax_onyxfutures_expressinterface_fei_v1_0_c.login_response = {}

-- Calculate size of: Login Response
miax_onyxfutures_expressinterface_fei_v1_0_c.login_response.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.login_status.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.session_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.highest_sequence_number.size

  return index
end

-- Display: Login Response
miax_onyxfutures_expressinterface_fei_v1_0_c.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_onyxfutures_expressinterface_fei_v1_0_c.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: 1 Byte Ascii String Enum with 7 values
  index, login_status = miax_onyxfutures_expressinterface_fei_v1_0_c.login_status.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_expressinterface_fei_v1_0_c.session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_onyxfutures_expressinterface_fei_v1_0_c.login_response.dissect = function(buffer, offset, packet, parent)
  if show.login_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Session
miax_onyxfutures_expressinterface_fei_v1_0_c.requested_session = {}

-- Size: Requested Session
miax_onyxfutures_expressinterface_fei_v1_0_c.requested_session.size = 1

-- Display: Requested Session
miax_onyxfutures_expressinterface_fei_v1_0_c.requested_session.display = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
miax_onyxfutures_expressinterface_fei_v1_0_c.requested_session.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.requested_session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.requested_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_onyxfutures_expressinterface_fei_v1_0_c.application_protocol = {}

-- Size: Application Protocol
miax_onyxfutures_expressinterface_fei_v1_0_c.application_protocol.size = 8

-- Display: Application Protocol
miax_onyxfutures_expressinterface_fei_v1_0_c.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_onyxfutures_expressinterface_fei_v1_0_c.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.application_protocol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_onyxfutures_expressinterface_fei_v1_0_c.computer_id = {}

-- Size: Computer Id
miax_onyxfutures_expressinterface_fei_v1_0_c.computer_id.size = 8

-- Display: Computer Id
miax_onyxfutures_expressinterface_fei_v1_0_c.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_onyxfutures_expressinterface_fei_v1_0_c.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.computer_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Username
miax_onyxfutures_expressinterface_fei_v1_0_c.username = {}

-- Size: Username
miax_onyxfutures_expressinterface_fei_v1_0_c.username.size = 5

-- Display: Username
miax_onyxfutures_expressinterface_fei_v1_0_c.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_onyxfutures_expressinterface_fei_v1_0_c.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.username, range, value, display)

  return offset + length, value
end

-- Sesm Version
miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_version = {}

-- Size: Sesm Version
miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_version.size = 5

-- Display: Sesm Version
miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_version.display = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Login Request
miax_onyxfutures_expressinterface_fei_v1_0_c.login_request = {}

-- Calculate size of: Login Request
miax_onyxfutures_expressinterface_fei_v1_0_c.login_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_version.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.username.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.computer_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.application_protocol.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.requested_session.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.requested_sequence_number.size

  return index
end

-- Display: Login Request
miax_onyxfutures_expressinterface_fei_v1_0_c.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_onyxfutures_expressinterface_fei_v1_0_c.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_onyxfutures_expressinterface_fei_v1_0_c.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_onyxfutures_expressinterface_fei_v1_0_c.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_onyxfutures_expressinterface_fei_v1_0_c.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Session: 1 Byte Unsigned Fixed Width Integer
  index, requested_session = miax_onyxfutures_expressinterface_fei_v1_0_c.requested_session.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_onyxfutures_expressinterface_fei_v1_0_c.login_request.dissect = function(buffer, offset, packet, parent)
  if show.login_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.login_request.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 16
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16 = {}

-- Size: Reserved 16
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16.size = 16

-- Display: Reserved 16
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Status
miax_onyxfutures_expressinterface_fei_v1_0_c.status = {}

-- Size: Status
miax_onyxfutures_expressinterface_fei_v1_0_c.status.size = 1

-- Display: Status
miax_onyxfutures_expressinterface_fei_v1_0_c.status.display = function(value)
  return "Status: "..value
end

-- Dissect: Status
miax_onyxfutures_expressinterface_fei_v1_0_c.status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.status, range, value, display)

  return offset + length, value
end

-- Instrument Id String 20
miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_string_20 = {}

-- Size: Instrument Id String 20
miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_string_20.size = 20

-- Display: Instrument Id String 20
miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_string_20.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Id String 20: No Value"
  end

  return "Instrument Id String 20: "..value
end

-- Dissect: Instrument Id String 20
miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_string_20.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_string_20.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_string_20.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.instrument_id_string_20, range, value, display)

  return offset + length, value
end

-- Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id = {}

-- Size: Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size = 20

-- Display: Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Mp Id
miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id = {}

-- Size: Mp Id
miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size = 5

-- Display: Mp Id
miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.display = function(value)
  return "Mp Id: "..value
end

-- Dissect: Mp Id
miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mp_id, range, value, display)

  return offset + length, value
end

-- Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time = {}

-- Size: Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size = 8

-- Display: Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Matching Engine Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.matching_engine_time, range, value, display)

  return offset + length, value
end

-- Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message = {}

-- Calculate size of: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_string_20.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.status.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16.size

  return index
end

-- Display: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id String 20: String
  index, instrument_id_string_20 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_string_20.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c.status.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_creation_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_creation_response_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 8
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8 = {}

-- Size: Reserved 8
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.size = 8

-- Display: Reserved 8
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_0_c.leg_ratio = {}

-- Size: Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_0_c.leg_ratio.size = 4

-- Display: Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_0_c.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_0_c.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Instrument Id Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4 = {}

-- Size: Instrument Id Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size = 4

-- Display: Instrument Id Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.display = function(value)
  return "Instrument Id Binary U 4: "..value
end

-- Dissect: Instrument Id Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.instrument_id_binary_u_4, range, value, display)

  return offset + length, value
end

-- Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_leg = {}

-- Calculate size of: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_leg.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.leg_ratio.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.size

  return index
end

-- Display: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_leg.fields = function(buffer, offset, packet, parent, strategy_leg_index)
  local index = offset

  -- Implicit Strategy Leg Index
  if strategy_leg_index ~= nil then
    local iteration = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_leg_index, strategy_leg_index)
    iteration:set_generated()
  end

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Leg Ratio: BinaryS
  index, leg_ratio = miax_onyxfutures_expressinterface_fei_v1_0_c.leg_ratio.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_leg.dissect = function(buffer, offset, packet, parent, strategy_leg_index)
  if show.strategy_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_leg, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_leg.fields(buffer, offset, packet, parent, strategy_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_leg.fields(buffer, offset, packet, parent, strategy_leg_index)
  end
end

-- Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_0_c.number_of_legs = {}

-- Size: Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_0_c.number_of_legs.size = 1

-- Display: Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_0_c.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_0_c.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Operator Location
miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location = {}

-- Size: Operator Location
miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size = 6

-- Display: Operator Location
miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Operator Location: No Value"
  end

  return "Operator Location: "..value
end

-- Dissect: Operator Location
miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.operator_location, range, value, display)

  return offset + length, value
end

-- Operator Id
miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id = {}

-- Size: Operator Id
miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size = 18

-- Display: Operator Id
miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Operator Id: No Value"
  end

  return "Operator Id: "..value
end

-- Dissect: Operator Id
miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.operator_id, range, value, display)

  return offset + length, value
end

-- Client Send Time
miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time = {}

-- Size: Client Send Time
miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size = 8

-- Display: Client Send Time
miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Client Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Client Send Time
miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.client_send_time, range, value, display)

  return offset + length, value
end

-- Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request = {}

-- Calculate size of: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.number_of_legs.size

  -- Calculate field size from count
  local strategy_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_leg_count * 16

  return index
end

-- Display: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_16.dissect(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_onyxfutures_expressinterface_fei_v1_0_c.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Leg
  for strategy_leg_index = 1, number_of_legs do
    index, strategy_leg = miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_leg.dissect(buffer, index, packet, parent, strategy_leg_index)
  end

  return index
end

-- Dissect: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_creation_request then
    local length = miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_creation_request, range, display)
  end

  return miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request.fields(buffer, offset, packet, parent)
end

-- Reserved 10
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10 = {}

-- Size: Reserved 10
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.size = 10

-- Display: Reserved 10
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response = {}

-- Calculate size of: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.status.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.size

  return index
end

-- Display: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c.status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mass_cancel_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 9
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_9 = {}

-- Size: Reserved 9
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_9.size = 9

-- Display: Reserved 9
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_9.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Purge Group
miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group = {}

-- Size: Purge Group
miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.size = 1

-- Display: Purge Group
miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.display = function(value)
  return "Purge Group: "..value
end

-- Dissect: Purge Group
miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.purge_group, range, value, display)

  return offset + length, value
end

-- Product Type
miax_onyxfutures_expressinterface_fei_v1_0_c.product_type = {}

-- Size: Product Type
miax_onyxfutures_expressinterface_fei_v1_0_c.product_type.size = 1

-- Display: Product Type
miax_onyxfutures_expressinterface_fei_v1_0_c.product_type.display = function(value)
  return "Product Type: "..value
end

-- Dissect: Product Type
miax_onyxfutures_expressinterface_fei_v1_0_c.product_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.product_type, range, value, display)

  return offset + length, value
end

-- Product Group Code
miax_onyxfutures_expressinterface_fei_v1_0_c.product_group_code = {}

-- Size: Product Group Code
miax_onyxfutures_expressinterface_fei_v1_0_c.product_group_code.size = 6

-- Display: Product Group Code
miax_onyxfutures_expressinterface_fei_v1_0_c.product_group_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Group Code: No Value"
  end

  return "Product Group Code: "..value
end

-- Dissect: Product Group Code
miax_onyxfutures_expressinterface_fei_v1_0_c.product_group_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.product_group_code.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.product_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.product_group_code, range, value, display)

  return offset + length, value
end

-- Action
miax_onyxfutures_expressinterface_fei_v1_0_c.action = {}

-- Size: Action
miax_onyxfutures_expressinterface_fei_v1_0_c.action.size = 1

-- Display: Action
miax_onyxfutures_expressinterface_fei_v1_0_c.action.display = function(value)
  return "Action: "..value
end

-- Dissect: Action
miax_onyxfutures_expressinterface_fei_v1_0_c.action.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.action, range, value, display)

  return offset + length, value
end

-- Scope
miax_onyxfutures_expressinterface_fei_v1_0_c.scope = {}

-- Size: Scope
miax_onyxfutures_expressinterface_fei_v1_0_c.scope.size = 1

-- Display: Scope
miax_onyxfutures_expressinterface_fei_v1_0_c.scope.display = function(value)
  return "Scope: "..value
end

-- Dissect: Scope
miax_onyxfutures_expressinterface_fei_v1_0_c.scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.scope, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request = {}

-- Calculate size of: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.scope.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.action.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.product_group_code.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.product_type.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_9.size

  return index
end

-- Display: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Scope: Alphanumeric
  index, scope = miax_onyxfutures_expressinterface_fei_v1_0_c.scope.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_onyxfutures_expressinterface_fei_v1_0_c.action.dissect(buffer, index, packet, parent)

  -- Product Group Code: String
  index, product_group_code = miax_onyxfutures_expressinterface_fei_v1_0_c.product_group_code.dissect(buffer, index, packet, parent)

  -- Product Type: Alphanumeric
  index, product_type = miax_onyxfutures_expressinterface_fei_v1_0_c.product_type.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.dissect(buffer, index, packet, parent)

  -- Reserved 9: BinaryU
  index, reserved_9 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mass_cancel_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.order_id = {}

-- Size: Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size = 8

-- Display: Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_id, range, value, display)

  return offset + length, value
end

-- Original Client Order
miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order = {}

-- Size: Original Client Order
miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order.size = 20

-- Display: Original Client Order
miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order: No Value"
  end

  return "Original Client Order: "..value
end

-- Dissect: Original Client Order
miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.original_client_order, range, value, display)

  return offset + length, value
end

-- Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response = {}

-- Calculate size of: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.status.size

  return index
end

-- Display: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order: String
  index, original_client_order = miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_order_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.fields(buffer, offset, packet, parent)
  end
end

-- Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id = {}

-- Size: Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.size = 20

-- Display: Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order Id: No Value"
  end

  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message = {}

-- Calculate size of: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.size

  return index
end

-- Display: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_order_request_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty = {}

-- Size: Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.size = 4

-- Display: Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response = {}

-- Calculate size of: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.status.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.size

  return index
end

-- Display: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c.status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 32
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32 = {}

-- Size: Reserved 32
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.size = 32

-- Display: Reserved 32
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_32, range, value, display)

  return offset + length, value
end

-- Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators = {}

-- Size: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.size = 1

-- Display: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.display = function(buffer, packet, parent)
  local display = ""

  -- Is Open Close Position Indicator flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Open Close Position Indicator|"
  end
  -- Is Manual Order Indicator flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Manual Order Indicator|"
  end
  -- Is Customer Of Firm Designation flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Customer Of Firm Designation|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.bits = function(buffer, offset, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_5, buffer(offset, 1))

  -- Open Close Position Indicator: 1 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.open_close_position_indicator, buffer(offset, 1))

  -- Manual Order Indicator: 1 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.manual_order_indicator, buffer(offset, 1))

  -- Customer Of Firm Designation: 1 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.customer_of_firm_designation, buffer(offset, 1))
end

-- Dissect: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.display(range, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.additional_order_indicators, range, display)

  if show.additional_order_indicators then
    miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction = {}

-- Size: Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.size = 1

-- Display: Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.display = function(value)
  return "Customer Order Handling Instruction: "..value
end

-- Dissect: Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.customer_order_handling_instruction, range, value, display)

  return offset + length, value
end

-- Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group = {}

-- Size: Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.size = 2

-- Display: Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Self Trade Protection Group: No Value"
  end

  return "Self Trade Protection Group: "..value
end

-- Dissect: Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_group, range, value, display)

  return offset + length, value
end

-- Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date = {}

-- Size: Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.size = 2

-- Display: Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.display = function(value)
  return "Order Expiry Date: "..value
end

-- Dissect: Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_expiry_date, range, value, display)

  return offset + length, value
end

-- Size Binary S 4
miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4 = {}

-- Size: Size Binary S 4
miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4.size = 4

-- Display: Size Binary S 4
miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4.display = function(value)
  return "Size Binary S 4: "..value
end

-- Dissect: Size Binary S 4
miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.size_binary_s_4, range, value, display)

  return offset + length, value
end

-- Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price = {}

-- Size: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.size = 8

-- Display: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.display = function(value)
  return "Stop Order Trigger Price: "..value
end

-- Translate: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.stop_order_trigger_price, range, value, display)

  return offset + length, value
end

-- Price
miax_onyxfutures_expressinterface_fei_v1_0_c.price = {}

-- Size: Price
miax_onyxfutures_expressinterface_fei_v1_0_c.price.size = 8

-- Display: Price
miax_onyxfutures_expressinterface_fei_v1_0_c.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_onyxfutures_expressinterface_fei_v1_0_c.price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
miax_onyxfutures_expressinterface_fei_v1_0_c.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_0_c.price.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.price, range, value, display)

  return offset + length, value
end

-- Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message = {}

-- Calculate size of: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.size

  return index
end

-- Display: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_0_c.price.dissect(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.dissect(buffer, index, packet, parent)

  -- Size Binary S 4: BinaryS
  index, size_binary_s_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4.dissect(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.dissect(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.dissect(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 4 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_request_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Matching Engine
miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine = {}

-- Size: Matching Engine
miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine.size = 8

-- Display: Matching Engine
miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Matching Engine: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Matching Engine
miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.matching_engine, range, value, display)

  return offset + length, value
end

-- New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message = {}

-- Calculate size of: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.status.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.size

  return index
end

-- Display: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine: NanoTime
  index, matching_engine = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.dissect(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c.status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.new_order_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_response_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Text Memo
miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo = {}

-- Size: Text Memo
miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.size = 20

-- Display: Text Memo
miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text Memo: No Value"
  end

  return "Text Memo: "..value
end

-- Dissect: Text Memo
miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.text_memo, range, value, display)

  return offset + length, value
end

-- Cti Code
miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code = {}

-- Size: Cti Code
miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.size = 1

-- Display: Cti Code
miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.display = function(value)
  return "Cti Code: "..value
end

-- Dissect: Cti Code
miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cti_code, range, value, display)

  return offset + length, value
end

-- Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value = {}

-- Size: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.size = 8

-- Display: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.display = function(value)
  return "Trading Collar Dollar Value: "..value
end

-- Translate: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trading_collar_dollar_value, range, value, display)

  return offset + length, value
end

-- Min Qty
miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty = {}

-- Size: Min Qty
miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty.size = 4

-- Display: Min Qty
miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection = {}

-- Size: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.size = 1

-- Display: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.display = function(buffer, packet, parent)
  local display = ""


  return display:sub(1, -2)
end

-- Dissect Bit Fields: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_2, buffer(offset, 1))

  -- Self Trade Protection Instruction: 3 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_instruction, buffer(offset, 1))

  -- Self Trade Protection Level: 3 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_level, buffer(offset, 1))
end

-- Dissect: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.display(range, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection, range, display)

  if show.self_trade_protection then
    miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Order Type
miax_onyxfutures_expressinterface_fei_v1_0_c.order_type = {}

-- Size: Order Type
miax_onyxfutures_expressinterface_fei_v1_0_c.order_type.size = 1

-- Display: Order Type
miax_onyxfutures_expressinterface_fei_v1_0_c.order_type.display = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
miax_onyxfutures_expressinterface_fei_v1_0_c.order_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_type, range, value, display)

  return offset + length, value
end

-- Time In Force
miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force = {}

-- Size: Time In Force
miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force.size = 1

-- Display: Time In Force
miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force.display = function(value)
  if value == "I" then
    return "Time In Force: Ioc (I)"
  end
  if value == "D" then
    return "Time In Force: Day (D)"
  end
  if value == "F" then
    return "Time In Force: Fok (F)"
  end
  if value == "C" then
    return "Time In Force: Gtc (C)"
  end
  if value == "X" then
    return "Time In Force: Gtd (X)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Order Instructions
miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions = {}

-- Size: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.size = 2

-- Display: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.display = function(buffer, packet, parent)
  local display = ""

  -- Is Side flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Side|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.bits = function(buffer, offset, packet, parent)

  -- Unused 15: 15 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_15, buffer(offset, 2))

  -- Side: 1 Bit
  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.side, buffer(offset, 2))
end

-- Dissect: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.display(range, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_instructions, range, display)

  if show.order_instructions then
    miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4 = {}

-- Size: Size Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4.size = 4

-- Display: Size Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4.display = function(value)
  return "Size Binary U 4: "..value
end

-- Dissect: Size Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Account
miax_onyxfutures_expressinterface_fei_v1_0_c.account = {}

-- Size: Account
miax_onyxfutures_expressinterface_fei_v1_0_c.account.size = 16

-- Display: Account
miax_onyxfutures_expressinterface_fei_v1_0_c.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
miax_onyxfutures_expressinterface_fei_v1_0_c.account.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.account.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.account, range, value, display)

  return offset + length, value
end

-- New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message = {}

-- Calculate size of: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.account.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_type.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.size

  return index
end

-- Display: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_onyxfutures_expressinterface_fei_v1_0_c.account.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_0_c.price.dissect(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.dissect(buffer, index, packet, parent)

  -- Size Binary U 4: BinaryU
  index, size_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_onyxfutures_expressinterface_fei_v1_0_c.order_type.dissect(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.dissect(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.dissect(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 4 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty.dissect(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.dissect(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price9S
  index, trading_collar_dollar_value = miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.dissect(buffer, index, packet, parent)

  -- Text Memo: String
  index, text_memo = miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.new_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_request_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message = {}

-- Calculate runtime size of: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message.size = function(buffer, offset, unsequenced_message_type)
  -- Size of New Order Request Message
  if unsequenced_message_type == "N1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message.size(buffer, offset)
  end
  -- Size of New Order Response Message
  if unsequenced_message_type == "NR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.size(buffer, offset)
  end
  -- Size of Modify Order Request Message
  if unsequenced_message_type == "M1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message.size(buffer, offset)
  end
  -- Size of Modify Order Response
  if unsequenced_message_type == "MR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.size(buffer, offset)
  end
  -- Size of Cancel Order Request Message
  if unsequenced_message_type == "CO" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message.size(buffer, offset)
  end
  -- Size of Cancel Order Response
  if unsequenced_message_type == "CR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.size(buffer, offset)
  end
  -- Size of Mass Cancel Request
  if unsequenced_message_type == "XQ" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request.size(buffer, offset)
  end
  -- Size of Mass Cancel Response
  if unsequenced_message_type == "XR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.size(buffer, offset)
  end
  -- Size of Strategy Creation Request
  if unsequenced_message_type == "SD" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request.size(buffer, offset)
  end
  -- Size of Strategy Creation Response Message
  if unsequenced_message_type == "SR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.size(buffer, offset)
  end

  return 0
end

-- Display: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message.branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect New Order Request Message
  if unsequenced_message_type == "N1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response Message
  if unsequenced_message_type == "NR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Request Message
  if unsequenced_message_type == "M1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if unsequenced_message_type == "MR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Request Message
  if unsequenced_message_type == "CO" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response
  if unsequenced_message_type == "CR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request
  if unsequenced_message_type == "XQ" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Response
  if unsequenced_message_type == "XR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Creation Request
  if unsequenced_message_type == "SD" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Creation Response Message
  if unsequenced_message_type == "SR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message.size(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_message, range, display)

  return miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message_type.size = 2

-- Display: Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message_type.display = function(value)
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
    return "Unsequenced Message Type: Cancel Order Request Message (CO)"
  end
  if value == "CR" then
    return "Unsequenced Message Type: Cancel Order Response (CR)"
  end
  if value == "XQ" then
    return "Unsequenced Message Type: Mass Cancel Request (XQ)"
  end
  if value == "XR" then
    return "Unsequenced Message Type: Mass Cancel Response (XR)"
  end
  if value == "SD" then
    return "Unsequenced Message Type: Strategy Creation Request (SD)"
  end
  if value == "SR" then
    return "Unsequenced Message Type: Strategy Creation Response Message (SR)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length
end

-- Display: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 10 values
  index, unsequenced_message_type = miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 10 branches
  index = miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_data_packet, range, display)
  end

  miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Last Size
miax_onyxfutures_expressinterface_fei_v1_0_c.last_size = {}

-- Size: Last Size
miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.size = 4

-- Display: Last Size
miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.display = function(value)
  return "Last Size: "..value
end

-- Dissect: Last Size
miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_size, range, value, display)

  return offset + length, value
end

-- Last Net Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price = {}

-- Size: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price.size = 8

-- Display: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price.display = function(value)
  return "Last Net Price: "..value
end

-- Translate: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_net_price, range, value, display)

  return offset + length, value
end

-- Trade Date
miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date = {}

-- Size: Trade Date
miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date.size = 2

-- Display: Trade Date
miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id = {}

-- Size: Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id.size = 8

-- Display: Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id.display = function(value)
  return "Complex Trade Id: "..value
end

-- Dissect: Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.complex_trade_id, range, value, display)

  return offset + length, value
end

-- Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification = {}

-- Calculate size of: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.size

  return index
end

-- Display: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Complex Trade Id: BinaryU
  index, complex_trade_id = miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date.dissect(buffer, index, packet, parent)

  -- Last Net Price: Price9S
  index, last_net_price = miax_onyxfutures_expressinterface_fei_v1_0_c.last_net_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.complex_execution_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.complex_execution_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_0_c.liquidity_indicator = {}

-- Size: Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_0_c.liquidity_indicator.size = 3

-- Display: Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_0_c.liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_0_c.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.liquidity_indicator.size
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Last Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_price = {}

-- Size: Last Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.size = 8

-- Display: Last Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.translate = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Last Price
miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.translate(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_price, range, value, display)

  return offset + length, value
end

-- Trade Status
miax_onyxfutures_expressinterface_fei_v1_0_c.trade_status = {}

-- Size: Trade Status
miax_onyxfutures_expressinterface_fei_v1_0_c.trade_status.size = 1

-- Display: Trade Status
miax_onyxfutures_expressinterface_fei_v1_0_c.trade_status.display = function(value)
  return "Trade Status: "..value
end

-- Dissect: Trade Status
miax_onyxfutures_expressinterface_fei_v1_0_c.trade_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.trade_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.trade_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trade_status, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_onyxfutures_expressinterface_fei_v1_0_c.correction_number = {}

-- Size: Correction Number
miax_onyxfutures_expressinterface_fei_v1_0_c.correction_number.size = 1

-- Display: Correction Number
miax_onyxfutures_expressinterface_fei_v1_0_c.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_onyxfutures_expressinterface_fei_v1_0_c.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Execution Id
miax_onyxfutures_expressinterface_fei_v1_0_c.execution_id = {}

-- Size: Execution Id
miax_onyxfutures_expressinterface_fei_v1_0_c.execution_id.size = 8

-- Display: Execution Id
miax_onyxfutures_expressinterface_fei_v1_0_c.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_onyxfutures_expressinterface_fei_v1_0_c.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c.simple_trade_id = {}

-- Size: Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c.simple_trade_id.size = 8

-- Display: Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c.simple_trade_id.display = function(value)
  return "Simple Trade Id: "..value
end

-- Dissect: Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c.simple_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.simple_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.simple_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.simple_trade_id, range, value, display)

  return offset + length, value
end

-- Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification = {}

-- Calculate size of: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.simple_trade_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.execution_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.correction_number.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.trade_status.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.liquidity_indicator.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.size

  return index
end

-- Display: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Simple Trade Id: BinaryU
  index, simple_trade_id = miax_onyxfutures_expressinterface_fei_v1_0_c.simple_trade_id.dissect(buffer, index, packet, parent)

  -- Complex Trade Id: BinaryU
  index, complex_trade_id = miax_onyxfutures_expressinterface_fei_v1_0_c.complex_trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_onyxfutures_expressinterface_fei_v1_0_c.execution_id.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_expressinterface_fei_v1_0_c.trade_date.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_expressinterface_fei_v1_0_c.correction_number.dissect(buffer, index, packet, parent)

  -- Trade Status: Alphanumeric
  index, trade_status = miax_onyxfutures_expressinterface_fei_v1_0_c.trade_status.dissect(buffer, index, packet, parent)

  -- Last Price: Price9S
  index, last_price = miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.dissect(buffer, index, packet, parent)

  -- Text Memo: String
  index, text_memo = miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: String
  index, liquidity_indicator = miax_onyxfutures_expressinterface_fei_v1_0_c.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.simple_execution_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.simple_execution_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Update Status
miax_onyxfutures_expressinterface_fei_v1_0_c.update_status = {}

-- Size: Update Status
miax_onyxfutures_expressinterface_fei_v1_0_c.update_status.size = 1

-- Display: Update Status
miax_onyxfutures_expressinterface_fei_v1_0_c.update_status.display = function(value)
  return "Update Status: "..value
end

-- Dissect: Update Status
miax_onyxfutures_expressinterface_fei_v1_0_c.update_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.update_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.update_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.update_status, range, value, display)

  return offset + length, value
end

-- Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification = {}

-- Calculate size of: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.update_status.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.size

  return index
end

-- Display: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.dissect(buffer, index, packet, parent)

  -- Update Status: Alphanumeric
  index, update_status = miax_onyxfutures_expressinterface_fei_v1_0_c.update_status.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification.dissect = function(buffer, offset, packet, parent)
  if show.order_status_update_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_status_update_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reason = {}

-- Size: Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reason.size = 1

-- Display: Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reason.display = function(value)
  return "Cancel Reason: "..value
end

-- Dissect: Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification = {}

-- Calculate size of: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reason.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.size

  return index
end

-- Display: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.dissect(buffer, index, packet, parent)

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alphanumeric
  index, cancel_reason = miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reason.dissect(buffer, index, packet, parent)

  -- Last Price: Price9S
  index, last_price = miax_onyxfutures_expressinterface_fei_v1_0_c.last_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_onyxfutures_expressinterface_fei_v1_0_c.last_size.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification.dissect = function(buffer, offset, packet, parent)
  if show.cancel_reduce_size_order_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_reduce_size_order_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification = {}

-- Calculate size of: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.size

  return index
end

-- Display: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.dissect(buffer, index, packet, parent)

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_onyxfutures_expressinterface_fei_v1_0_c.leaves_qty.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_0_c.price.dissect(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.dissect(buffer, index, packet, parent)

  -- Size Binary S 4: BinaryS
  index, size_binary_s_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_s_4.dissect(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.dissect(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.dissect(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 4 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification.fields(buffer, offset, packet, parent)
  end
end

-- New Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification = {}

-- Calculate size of: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.account.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_type.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.size

  return index
end

-- Display: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c.mp_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.order_id.dissect(buffer, index, packet, parent)

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c.client_send_time.dissect(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_id.dissect(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c.operator_location.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_onyxfutures_expressinterface_fei_v1_0_c.account.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c.client_order_id.dissect(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.instrument_id_binary_u_4.dissect(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_0_c.price.dissect(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_0_c.stop_order_trigger_price.dissect(buffer, index, packet, parent)

  -- Size Binary U 4: BinaryU
  index, size_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c.size_binary_u_4.dissect(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_0_c.order_instructions.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_onyxfutures_expressinterface_fei_v1_0_c.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_onyxfutures_expressinterface_fei_v1_0_c.order_type.dissect(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_0_c.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c.purge_group.dissect(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_0_c.customer_order_handling_instruction.dissect(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 4 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_0_c.additional_order_indicators.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_onyxfutures_expressinterface_fei_v1_0_c.min_qty.dissect(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_0_c.order_expiry_date.dissect(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price9S
  index, trading_collar_dollar_value = miax_onyxfutures_expressinterface_fei_v1_0_c.trading_collar_dollar_value.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = miax_onyxfutures_expressinterface_fei_v1_0_c.cti_code.dissect(buffer, index, packet, parent)

  -- Text Memo: String
  index, text_memo = miax_onyxfutures_expressinterface_fei_v1_0_c.text_memo.dissect(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification.dissect = function(buffer, offset, packet, parent)
  if show.new_order_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification.fields(buffer, offset, packet, parent)
  end
end

-- System Status
miax_onyxfutures_expressinterface_fei_v1_0_c.system_status = {}

-- Size: System Status
miax_onyxfutures_expressinterface_fei_v1_0_c.system_status.size = 1

-- Display: System Status
miax_onyxfutures_expressinterface_fei_v1_0_c.system_status.display = function(value)
  return "System Status: "..value
end

-- Dissect: System Status
miax_onyxfutures_expressinterface_fei_v1_0_c.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.system_status, range, value, display)

  return offset + length, value
end

-- Version
miax_onyxfutures_expressinterface_fei_v1_0_c.version = {}

-- Size: Version
miax_onyxfutures_expressinterface_fei_v1_0_c.version.size = 8

-- Display: Version
miax_onyxfutures_expressinterface_fei_v1_0_c.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
miax_onyxfutures_expressinterface_fei_v1_0_c.version.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.version, range, value, display)

  return offset + length, value
end

-- System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message = {}

-- Calculate size of: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.version.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.session_id.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.system_status.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.size

  return index
end

-- Display: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Version: Alphanumeric
  index, version = miax_onyxfutures_expressinterface_fei_v1_0_c.version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_expressinterface_fei_v1_0_c.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_onyxfutures_expressinterface_fei_v1_0_c.system_status.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_onyxfutures_expressinterface_fei_v1_0_c.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.system_state_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.system_state_notification_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message = {}

-- Calculate runtime size of: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of New Order Response Message
  if sequenced_message_type == "NR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.size(buffer, offset)
  end
  -- Size of Modify Order Response
  if sequenced_message_type == "MR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.size(buffer, offset)
  end
  -- Size of Cancel Order Response
  if sequenced_message_type == "CR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.size(buffer, offset)
  end
  -- Size of Mass Cancel Response
  if sequenced_message_type == "XR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.size(buffer, offset)
  end
  -- Size of Strategy Creation Response Message
  if sequenced_message_type == "SR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.size(buffer, offset)
  end
  -- Size of System State Notification Message
  if sequenced_message_type == "SN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message.size(buffer, offset)
  end
  -- Size of New Order Notification
  if sequenced_message_type == "O1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification.size(buffer, offset)
  end
  -- Size of Modify Order Notification
  if sequenced_message_type == "MN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification.size(buffer, offset)
  end
  -- Size of Cancel Reduce Size Order Notification
  if sequenced_message_type == "XN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification.size(buffer, offset)
  end
  -- Size of Order Status Update Notification
  if sequenced_message_type == "OS" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification.size(buffer, offset)
  end
  -- Size of Simple Execution Notification
  if sequenced_message_type == "EN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification.size(buffer, offset)
  end
  -- Size of Complex Execution Notification
  if sequenced_message_type == "CN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect New Order Response Message
  if sequenced_message_type == "NR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if sequenced_message_type == "MR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response
  if sequenced_message_type == "CR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Response
  if sequenced_message_type == "XR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.mass_cancel_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Creation Response Message
  if sequenced_message_type == "SR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.strategy_creation_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Notification Message
  if sequenced_message_type == "SN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.system_state_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Notification
  if sequenced_message_type == "O1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.new_order_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Notification
  if sequenced_message_type == "MN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.modify_order_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reduce Size Order Notification
  if sequenced_message_type == "XN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.cancel_reduce_size_order_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Status Update Notification
  if sequenced_message_type == "OS" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.order_status_update_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Simple Execution Notification
  if sequenced_message_type == "EN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.simple_execution_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Execution Notification
  if sequenced_message_type == "CN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.complex_execution_notification.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message.size(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_message, range, display)

  return miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message_type.size = 2

-- Display: Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message_type.display = function(value)
  if value == "NR" then
    return "Sequenced Message Type: New Order Response Message (NR)"
  end
  if value == "MR" then
    return "Sequenced Message Type: Modify Order Response (MR)"
  end
  if value == "CR" then
    return "Sequenced Message Type: Cancel Order Response (CR)"
  end
  if value == "XR" then
    return "Sequenced Message Type: Mass Cancel Response (XR)"
  end
  if value == "SR" then
    return "Sequenced Message Type: Strategy Creation Response Message (SR)"
  end
  if value == "SN" then
    return "Sequenced Message Type: System State Notification Message (SN)"
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
  if value == "OS" then
    return "Sequenced Message Type: Order Status Update Notification (OS)"
  end
  if value == "EN" then
    return "Sequenced Message Type: Simple Execution Notification (EN)"
  end
  if value == "CN" then
    return "Sequenced Message Type: Complex Execution Notification (CN)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.sequence_number = {}

-- Size: Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.sequence_number.size = 8

-- Display: Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 9
end

-- Display: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c.sequence_number.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_data_packet, range, display)
  end

  miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Payload
miax_onyxfutures_expressinterface_fei_v1_0_c.payload = {}

-- Calculate runtime size of: Payload
miax_onyxfutures_expressinterface_fei_v1_0_c.payload.size = function(buffer, offset, packet_type)
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet.size(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet.size(buffer, offset)
  end
  -- Size of Login Request
  if packet_type == "L" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.login_request.size(buffer, offset)
  end
  -- Size of Login Response
  if packet_type == "R" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.login_response.size(buffer, offset)
  end
  -- Size of Synchronization Complete
  if packet_type == "C" then
    return 0
  end
  -- Size of Retransmission Request
  if packet_type == "A" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request.size(buffer, offset)
  end
  -- Size of Logout Request
  if packet_type == "X" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request.size(buffer, offset)
  end
  -- Size of Goodbye Packet
  if packet_type == "G" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet.size(buffer, offset)
  end
  -- Size of End Of Session
  if packet_type == "E" then
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

  return 0
end

-- Display: Payload
miax_onyxfutures_expressinterface_fei_v1_0_c.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_onyxfutures_expressinterface_fei_v1_0_c.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if packet_type == "L" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if packet_type == "R" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if packet_type == "C" then
  end
  -- Dissect Retransmission Request
  if packet_type == "A" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.retransmission_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if packet_type == "X" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if packet_type == "G" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.goodbye_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session
  if packet_type == "E" then
  end
  -- Dissect Server Heartbeat
  if packet_type == "0" then
  end
  -- Dissect Client Heartbeat
  if packet_type == "1" then
  end

  return offset
end

-- Dissect: Payload
miax_onyxfutures_expressinterface_fei_v1_0_c.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_onyxfutures_expressinterface_fei_v1_0_c.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_expressinterface_fei_v1_0_c.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.payload.display(buffer, packet, parent)
  local element = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.payload, range, display)

  return miax_onyxfutures_expressinterface_fei_v1_0_c.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_type = {}

-- Size: Packet Type
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_type.size = 1

-- Display: Packet Type
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_type.display = function(value)
  if value == "S" then
    return "Packet Type: Sequenced Data Packet (S)"
  end
  if value == "U" then
    return "Packet Type: Unsequenced Data Packet (U)"
  end
  if value == "L" then
    return "Packet Type: Login Request (L)"
  end
  if value == "R" then
    return "Packet Type: Login Response (R)"
  end
  if value == "C" then
    return "Packet Type: Synchronization Complete (C)"
  end
  if value == "A" then
    return "Packet Type: Retransmission Request (A)"
  end
  if value == "X" then
    return "Packet Type: Logout Request (X)"
  end
  if value == "G" then
    return "Packet Type: Goodbye Packet (G)"
  end
  if value == "E" then
    return "Packet Type: End Of Session (E)"
  end
  if value == "0" then
    return "Packet Type: Server Heartbeat (0)"
  end
  if value == "1" then
    return "Packet Type: Client Heartbeat (1)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_length = {}

-- Size: Packet Length
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_length.size = 2

-- Display: Packet Length
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Header
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header = {}

-- Calculate size of: Packet Header
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.packet_length.size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c.packet_type.size

  return index
end

-- Display: Packet Header
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_onyxfutures_expressinterface_fei_v1_0_c.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 11 values
  index, packet_type = miax_onyxfutures_expressinterface_fei_v1_0_c.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_header, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_tcp_packet = {}

-- Display: Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = miax_onyxfutures_expressinterface_fei_v1_0_c.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset + size_of_sesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.sesm_tcp_packet then
    parent = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sesm_tcp_packet, buffer(offset, 0))
    local current = miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
    parent:set_len(size_of_sesm_tcp_packet)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_onyxfutures_expressinterface_fei_v1_0_c.packet_header.size(buffer, index) then
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

-- Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.packet = {}

-- Dissect Packet
miax_onyxfutures_expressinterface_fei_v1_0_c.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_onyxfutures_expressinterface_fei_v1_0_c.sesm_tcp_packet.dissect(buffer, index, packet, parent, size_of_sesm_tcp_packet)
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
function omi_miax_onyxfutures_expressinterface_fei_v1_0_c.init()
end

-- Dissector for Miax OnyxFutures ExpressInterface Fei 1.0.c
function omi_miax_onyxfutures_expressinterface_fei_v1_0_c.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_onyxfutures_expressinterface_fei_v1_0_c.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_onyxfutures_expressinterface_fei_v1_0_c, buffer(), omi_miax_onyxfutures_expressinterface_fei_v1_0_c.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_expressinterface_fei_v1_0_c.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_miax_onyxfutures_expressinterface_fei_v1_0_c)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
miax_onyxfutures_expressinterface_fei_v1_0_c.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Miax OnyxFutures ExpressInterface Fei 1.0.c
local function omi_miax_onyxfutures_expressinterface_fei_v1_0_c_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_onyxfutures_expressinterface_fei_v1_0_c.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_onyxfutures_expressinterface_fei_v1_0_c
  omi_miax_onyxfutures_expressinterface_fei_v1_0_c.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures ExpressInterface Fei 1.0.c
omi_miax_onyxfutures_expressinterface_fei_v1_0_c:register_heuristic("tcp", omi_miax_onyxfutures_expressinterface_fei_v1_0_c_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 1.0.c
--   Date: Thursday, May 22, 2025
--   Specification: onyx_futures_express_interface_fei_v1.0c.pdf
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
