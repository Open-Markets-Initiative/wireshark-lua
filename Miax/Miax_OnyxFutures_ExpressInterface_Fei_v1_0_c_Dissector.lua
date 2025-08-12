-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax OnyxFutures ExpressInterface Fei 1.0.c Protocol
local miax_onyxfutures_expressinterface_fei_v1_0_c = Proto("Miax.OnyxFutures.ExpressInterface.Fei.v1.0.c.Lua", "Miax OnyxFutures ExpressInterface Fei 1.0.c")

-- Component Tables
local show = {}
local format = {}
local miax_onyxfutures_expressinterface_fei_v1_0_c_display = {}
local miax_onyxfutures_expressinterface_fei_v1_0_c_dissect = {}
local miax_onyxfutures_expressinterface_fei_v1_0_c_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax OnyxFutures ExpressInterface Fei 1.0.c Fields
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.account = ProtoField.new("Account", "miax.onyxfutures.expressinterface.fei.v1.0.c.account", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.action = ProtoField.new("Action", "miax.onyxfutures.expressinterface.fei.v1.0.c.action", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.additional_order_indicators = ProtoField.new("Additional Order Indicators", "miax.onyxfutures.expressinterface.fei.v1.0.c.additionalorderindicators", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.application_protocol = ProtoField.new("Application Protocol", "miax.onyxfutures.expressinterface.fei.v1.0.c.applicationprotocol", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_order_request_message = ProtoField.new("Cancel Order Request Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.cancelorderrequestmessage", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_order_response = ProtoField.new("Cancel Order Response", "miax.onyxfutures.expressinterface.fei.v1.0.c.cancelorderresponse", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_reason = ProtoField.new("Cancel Reason", "miax.onyxfutures.expressinterface.fei.v1.0.c.cancelreason", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_reduce_size_order_notification = ProtoField.new("Cancel Reduce Size Order Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.cancelreducesizeordernotification", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.client_order_id = ProtoField.new("Client Order Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.clientorderid", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.client_send_time = ProtoField.new("Client Send Time", "miax.onyxfutures.expressinterface.fei.v1.0.c.clientsendtime", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.complex_execution_notification = ProtoField.new("Complex Execution Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.complexexecutionnotification", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.complex_trade_id = ProtoField.new("Complex Trade Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.complextradeid", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.computer_id = ProtoField.new("Computer Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.computerid", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.correction_number = ProtoField.new("Correction Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.correctionnumber", ftypes.UINT8)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cti_code = ProtoField.new("Cti Code", "miax.onyxfutures.expressinterface.fei.v1.0.c.cticode", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.customer_of_firm_designation = ProtoField.new("Customer Of Firm Designation", "miax.onyxfutures.expressinterface.fei.v1.0.c.customeroffirmdesignation", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.customer_order_handling_instruction = ProtoField.new("Customer Order Handling Instruction", "miax.onyxfutures.expressinterface.fei.v1.0.c.customerorderhandlinginstruction", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.endsequencenumber", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.execution_id = ProtoField.new("Execution Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.executionid", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.goodbyepacket", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.highestsequencenumber", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.instrument_id_binary_u_4 = ProtoField.new("Instrument Id Binary U 4", "miax.onyxfutures.expressinterface.fei.v1.0.c.instrumentidbinaryu4", ftypes.UINT32)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.instrument_id_string_20 = ProtoField.new("Instrument Id String 20", "miax.onyxfutures.expressinterface.fei.v1.0.c.instrumentidstring20", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_net_price = ProtoField.new("Last Net Price", "miax.onyxfutures.expressinterface.fei.v1.0.c.lastnetprice", ftypes.DOUBLE)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_price = ProtoField.new("Last Price", "miax.onyxfutures.expressinterface.fei.v1.0.c.lastprice", ftypes.DOUBLE)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_size = ProtoField.new("Last Size", "miax.onyxfutures.expressinterface.fei.v1.0.c.lastsize", ftypes.UINT32)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.leaves_qty = ProtoField.new("Leaves Qty", "miax.onyxfutures.expressinterface.fei.v1.0.c.leavesqty", ftypes.UINT32)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.leg_ratio = ProtoField.new("Leg Ratio", "miax.onyxfutures.expressinterface.fei.v1.0.c.legratio", ftypes.INT32)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.onyxfutures.expressinterface.fei.v1.0.c.liquidityindicator", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_request = ProtoField.new("Login Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.loginrequest", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_response = ProtoField.new("Login Response", "miax.onyxfutures.expressinterface.fei.v1.0.c.loginresponse", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_status = ProtoField.new("Login Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.loginstatus", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_reason = ProtoField.new("Logout Reason", "miax.onyxfutures.expressinterface.fei.v1.0.c.logoutreason", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_request = ProtoField.new("Logout Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.logoutrequest", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_text = ProtoField.new("Logout Text", "miax.onyxfutures.expressinterface.fei.v1.0.c.logouttext", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "miax.onyxfutures.expressinterface.fei.v1.0.c.manualorderindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mass_cancel_request = ProtoField.new("Mass Cancel Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.masscancelrequest", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mass_cancel_response = ProtoField.new("Mass Cancel Response", "miax.onyxfutures.expressinterface.fei.v1.0.c.masscancelresponse", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.matching_engine = ProtoField.new("Matching Engine", "miax.onyxfutures.expressinterface.fei.v1.0.c.matchingengine", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.matching_engine_time = ProtoField.new("Matching Engine Time", "miax.onyxfutures.expressinterface.fei.v1.0.c.matchingenginetime", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.min_qty = ProtoField.new("Min Qty", "miax.onyxfutures.expressinterface.fei.v1.0.c.minqty", ftypes.UINT32)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_notification = ProtoField.new("Modify Order Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.modifyordernotification", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_request_message = ProtoField.new("Modify Order Request Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.modifyorderrequestmessage", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_response = ProtoField.new("Modify Order Response", "miax.onyxfutures.expressinterface.fei.v1.0.c.modifyorderresponse", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mp_id = ProtoField.new("Mp Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.mpid", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_notification = ProtoField.new("New Order Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.newordernotification", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_request_message = ProtoField.new("New Order Request Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.neworderrequestmessage", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_response_message = ProtoField.new("New Order Response Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.neworderresponsemessage", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.number_of_legs = ProtoField.new("Number Of Legs", "miax.onyxfutures.expressinterface.fei.v1.0.c.numberoflegs", ftypes.UINT8)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.open_close_position_indicator = ProtoField.new("Open Close Position Indicator", "miax.onyxfutures.expressinterface.fei.v1.0.c.openclosepositionindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.operator_id = ProtoField.new("Operator Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.operatorid", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.operator_location = ProtoField.new("Operator Location", "miax.onyxfutures.expressinterface.fei.v1.0.c.operatorlocation", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_expiry_date = ProtoField.new("Order Expiry Date", "miax.onyxfutures.expressinterface.fei.v1.0.c.orderexpirydate", ftypes.UINT16)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_id = ProtoField.new("Order Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.orderid", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_instructions = ProtoField.new("Order Instructions", "miax.onyxfutures.expressinterface.fei.v1.0.c.orderinstructions", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_status_update_notification = ProtoField.new("Order Status Update Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.orderstatusupdatenotification", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_type = ProtoField.new("Order Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.ordertype", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.original_client_order = ProtoField.new("Original Client Order", "miax.onyxfutures.expressinterface.fei.v1.0.c.originalclientorder", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.originalclientorderid", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet = ProtoField.new("Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.packet", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_header = ProtoField.new("Packet Header", "miax.onyxfutures.expressinterface.fei.v1.0.c.packetheader", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_length = ProtoField.new("Packet Length", "miax.onyxfutures.expressinterface.fei.v1.0.c.packetlength", ftypes.UINT16)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_type = ProtoField.new("Packet Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.packettype", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.payload = ProtoField.new("Payload", "miax.onyxfutures.expressinterface.fei.v1.0.c.payload", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.price = ProtoField.new("Price", "miax.onyxfutures.expressinterface.fei.v1.0.c.price", ftypes.DOUBLE)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.product_group_code = ProtoField.new("Product Group Code", "miax.onyxfutures.expressinterface.fei.v1.0.c.productgroupcode", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.product_type = ProtoField.new("Product Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.producttype", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.purge_group = ProtoField.new("Purge Group", "miax.onyxfutures.expressinterface.fei.v1.0.c.purgegroup", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.requestedsequencenumber", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.requested_session = ProtoField.new("Requested Session", "miax.onyxfutures.expressinterface.fei.v1.0.c.requestedsession", ftypes.UINT8)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved10", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_16 = ProtoField.new("Reserved 16", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved16", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_32 = ProtoField.new("Reserved 32", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved32", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved8", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_9 = ProtoField.new("Reserved 9", "miax.onyxfutures.expressinterface.fei.v1.0.c.reserved9", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.retransmissionrequest", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.scope = ProtoField.new("Scope", "miax.onyxfutures.expressinterface.fei.v1.0.c.scope", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection = ProtoField.new("Self Trade Protection", "miax.onyxfutures.expressinterface.fei.v1.0.c.selftradeprotection", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_group = ProtoField.new("Self Trade Protection Group", "miax.onyxfutures.expressinterface.fei.v1.0.c.selftradeprotectiongroup", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_instruction = ProtoField.new("Self Trade Protection Instruction", "miax.onyxfutures.expressinterface.fei.v1.0.c.selftradeprotectioninstruction", ftypes.UINT8, nil, base.DEC, 0x38)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_level = ProtoField.new("Self Trade Protection Level", "miax.onyxfutures.expressinterface.fei.v1.0.c.selftradeprotectionlevel", ftypes.UINT8, nil, base.DEC, 0x07)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequence_number = ProtoField.new("Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.sequencenumber", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.sequenceddatapacket", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_message = ProtoField.new("Sequenced Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.sequencedmessage", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.sequencedmessagetype", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sesm_tcp_packet = ProtoField.new("Sesm Tcp Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.sesmtcppacket", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sesm_version = ProtoField.new("Sesm Version", "miax.onyxfutures.expressinterface.fei.v1.0.c.sesmversion", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.session_id = ProtoField.new("Session Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.sessionid", ftypes.UINT8)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.side = ProtoField.new("Side", "miax.onyxfutures.expressinterface.fei.v1.0.c.side", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.simple_execution_notification = ProtoField.new("Simple Execution Notification", "miax.onyxfutures.expressinterface.fei.v1.0.c.simpleexecutionnotification", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.simple_trade_id = ProtoField.new("Simple Trade Id", "miax.onyxfutures.expressinterface.fei.v1.0.c.simpletradeid", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.size_binary_s_4 = ProtoField.new("Size Binary S 4", "miax.onyxfutures.expressinterface.fei.v1.0.c.sizebinarys4", ftypes.INT32)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.size_binary_u_4 = ProtoField.new("Size Binary U 4", "miax.onyxfutures.expressinterface.fei.v1.0.c.sizebinaryu4", ftypes.UINT32)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.onyxfutures.expressinterface.fei.v1.0.c.startsequencenumber", ftypes.UINT64)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.status = ProtoField.new("Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.status", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.stop_order_trigger_price = ProtoField.new("Stop Order Trigger Price", "miax.onyxfutures.expressinterface.fei.v1.0.c.stopordertriggerprice", ftypes.DOUBLE)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_creation_request = ProtoField.new("Strategy Creation Request", "miax.onyxfutures.expressinterface.fei.v1.0.c.strategycreationrequest", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_creation_response_message = ProtoField.new("Strategy Creation Response Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.strategycreationresponsemessage", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_leg = ProtoField.new("Strategy Leg", "miax.onyxfutures.expressinterface.fei.v1.0.c.strategyleg", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.system_state_notification_message = ProtoField.new("System State Notification Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.systemstatenotificationmessage", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.system_status = ProtoField.new("System Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.systemstatus", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.text_memo = ProtoField.new("Text Memo", "miax.onyxfutures.expressinterface.fei.v1.0.c.textmemo", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.time_in_force = ProtoField.new("Time In Force", "miax.onyxfutures.expressinterface.fei.v1.0.c.timeinforce", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trade_date = ProtoField.new("Trade Date", "miax.onyxfutures.expressinterface.fei.v1.0.c.tradedate", ftypes.UINT16)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trade_status = ProtoField.new("Trade Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.tradestatus", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trading_collar_dollar_value = ProtoField.new("Trading Collar Dollar Value", "miax.onyxfutures.expressinterface.fei.v1.0.c.tradingcollardollarvalue", ftypes.DOUBLE)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.onyxfutures.expressinterface.fei.v1.0.c.unsequenceddatapacket", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "miax.onyxfutures.expressinterface.fei.v1.0.c.unsequencedmessage", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.onyxfutures.expressinterface.fei.v1.0.c.unsequencedmessagetype", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_15 = ProtoField.new("Unused 15", "miax.onyxfutures.expressinterface.fei.v1.0.c.unused15", ftypes.UINT16, nil, base.DEC, 0xFFFE)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_2 = ProtoField.new("Unused 2", "miax.onyxfutures.expressinterface.fei.v1.0.c.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_5 = ProtoField.new("Unused 5", "miax.onyxfutures.expressinterface.fei.v1.0.c.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.update_status = ProtoField.new("Update Status", "miax.onyxfutures.expressinterface.fei.v1.0.c.updatestatus", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.username = ProtoField.new("Username", "miax.onyxfutures.expressinterface.fei.v1.0.c.username", ftypes.STRING)
miax_onyxfutures_expressinterface_fei_v1_0_c.fields.version = ProtoField.new("Version", "miax.onyxfutures.expressinterface.fei.v1.0.c.version", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

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
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_additional_order_indicators = Pref.bool("Show Additional Order Indicators", show.additional_order_indicators, "Parse and add Additional Order Indicators to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_request_message = Pref.bool("Show Cancel Order Request Message", show.cancel_order_request_message, "Parse and add Cancel Order Request Message to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_response = Pref.bool("Show Cancel Order Response", show.cancel_order_response, "Parse and add Cancel Order Response to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_reduce_size_order_notification = Pref.bool("Show Cancel Reduce Size Order Notification", show.cancel_reduce_size_order_notification, "Parse and add Cancel Reduce Size Order Notification to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_complex_execution_notification = Pref.bool("Show Complex Execution Notification", show.complex_execution_notification, "Parse and add Complex Execution Notification to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_request = Pref.bool("Show Mass Cancel Request", show.mass_cancel_request, "Parse and add Mass Cancel Request to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_response = Pref.bool("Show Mass Cancel Response", show.mass_cancel_response, "Parse and add Mass Cancel Response to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_notification = Pref.bool("Show Modify Order Notification", show.modify_order_notification, "Parse and add Modify Order Notification to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_request_message = Pref.bool("Show Modify Order Request Message", show.modify_order_request_message, "Parse and add Modify Order Request Message to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_response = Pref.bool("Show Modify Order Response", show.modify_order_response, "Parse and add Modify Order Response to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_notification = Pref.bool("Show New Order Notification", show.new_order_notification, "Parse and add New Order Notification to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_request_message = Pref.bool("Show New Order Request Message", show.new_order_request_message, "Parse and add New Order Request Message to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_response_message = Pref.bool("Show New Order Response Message", show.new_order_response_message, "Parse and add New Order Response Message to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_instructions = Pref.bool("Show Order Instructions", show.order_instructions, "Parse and add Order Instructions to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_status_update_notification = Pref.bool("Show Order Status Update Notification", show.order_status_update_notification, "Parse and add Order Status Update Notification to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_self_trade_protection = Pref.bool("Show Self Trade Protection", show.self_trade_protection, "Parse and add Self Trade Protection to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sesm_tcp_packet = Pref.bool("Show Sesm Tcp Packet", show.sesm_tcp_packet, "Parse and add Sesm Tcp Packet to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_simple_execution_notification = Pref.bool("Show Simple Execution Notification", show.simple_execution_notification, "Parse and add Simple Execution Notification to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_request = Pref.bool("Show Strategy Creation Request", show.strategy_creation_request, "Parse and add Strategy Creation Request to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_response_message = Pref.bool("Show Strategy Creation Response Message", show.strategy_creation_response_message, "Parse and add Strategy Creation Response Message to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_leg = Pref.bool("Show Strategy Leg", show.strategy_leg, "Parse and add Strategy Leg to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_system_state_notification_message = Pref.bool("Show System State Notification Message", show.system_state_notification_message, "Parse and add System State Notification Message to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function miax_onyxfutures_expressinterface_fei_v1_0_c.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.additional_order_indicators ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_additional_order_indicators then
    show.additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_additional_order_indicators
    changed = true
  end
  if show.cancel_order_request_message ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_request_message then
    show.cancel_order_request_message = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_request_message
    changed = true
  end
  if show.cancel_order_response ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_response then
    show.cancel_order_response = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_order_response
    changed = true
  end
  if show.cancel_reduce_size_order_notification ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_reduce_size_order_notification then
    show.cancel_reduce_size_order_notification = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_cancel_reduce_size_order_notification
    changed = true
  end
  if show.complex_execution_notification ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_complex_execution_notification then
    show.complex_execution_notification = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_complex_execution_notification
    changed = true
  end
  if show.goodbye_packet ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_goodbye_packet then
    show.goodbye_packet = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_goodbye_packet
    changed = true
  end
  if show.login_request ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_request then
    show.login_request = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_request
    changed = true
  end
  if show.login_response ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_response then
    show.login_response = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_login_response
    changed = true
  end
  if show.logout_request ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_logout_request then
    show.logout_request = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_logout_request
    changed = true
  end
  if show.mass_cancel_request ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_request then
    show.mass_cancel_request = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_request
    changed = true
  end
  if show.mass_cancel_response ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_response then
    show.mass_cancel_response = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_mass_cancel_response
    changed = true
  end
  if show.modify_order_notification ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_notification then
    show.modify_order_notification = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_notification
    changed = true
  end
  if show.modify_order_request_message ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_request_message then
    show.modify_order_request_message = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_request_message
    changed = true
  end
  if show.modify_order_response ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_response then
    show.modify_order_response = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_modify_order_response
    changed = true
  end
  if show.new_order_notification ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_notification then
    show.new_order_notification = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_notification
    changed = true
  end
  if show.new_order_request_message ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_request_message then
    show.new_order_request_message = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_request_message
    changed = true
  end
  if show.new_order_response_message ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_response_message then
    show.new_order_response_message = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_new_order_response_message
    changed = true
  end
  if show.order_instructions ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_instructions then
    show.order_instructions = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_instructions
    changed = true
  end
  if show.order_status_update_notification ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_status_update_notification then
    show.order_status_update_notification = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_order_status_update_notification
    changed = true
  end
  if show.packet ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet then
    show.packet = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet_header then
    show.packet_header = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_packet_header
    changed = true
  end
  if show.retransmission_request ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_retransmission_request then
    show.retransmission_request = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_retransmission_request
    changed = true
  end
  if show.self_trade_protection ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_self_trade_protection then
    show.self_trade_protection = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_self_trade_protection
    changed = true
  end
  if show.sequenced_data_packet ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.sesm_tcp_packet ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sesm_tcp_packet then
    show.sesm_tcp_packet = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sesm_tcp_packet
    changed = true
  end
  if show.simple_execution_notification ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_simple_execution_notification then
    show.simple_execution_notification = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_simple_execution_notification
    changed = true
  end
  if show.strategy_creation_request ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_request then
    show.strategy_creation_request = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_request
    changed = true
  end
  if show.strategy_creation_response_message ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_response_message then
    show.strategy_creation_response_message = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_creation_response_message
    changed = true
  end
  if show.strategy_leg ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_leg then
    show.strategy_leg = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_strategy_leg
    changed = true
  end
  if show.system_state_notification_message ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_system_state_notification_message then
    show.system_state_notification_message = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_system_state_notification_message
    changed = true
  end
  if show.unsequenced_data_packet ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_payload then
    show.payload = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_message then
    show.sequenced_message = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_message then
    show.unsequenced_message = miax_onyxfutures_expressinterface_fei_v1_0_c.prefs.show_unsequenced_message
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

-- Display: Logout Text
miax_onyxfutures_expressinterface_fei_v1_0_c_display.logout_text = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.logout_text(value, buffer, offset, packet, parent, size)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_text, range, value, display)

  return offset + size
end

-- Size: Logout Reason
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.logout_reason = 1

-- Display: Logout Reason
miax_onyxfutures_expressinterface_fei_v1_0_c_display.logout_reason = function(value)
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
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_reason = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.logout_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.logout_reason(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.goodbye_packet = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.logout_reason

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_display.goodbye_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.goodbye_packet_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_reason(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_text(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.goodbye_packet = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.goodbye_packet then
    local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.goodbye_packet(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.goodbye_packet(buffer, packet, parent)
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.goodbye_packet, range, display)
  end

  return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.goodbye_packet_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logout Request
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.logout_request = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.logout_reason

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_onyxfutures_expressinterface_fei_v1_0_c_display.logout_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_reason(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_text(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.logout_request then
    local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.logout_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.logout_request(buffer, packet, parent)
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.logout_request, range, display)
  end

  return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_request_fields(buffer, offset, packet, parent)
end

-- Size: End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.end_sequence_number = 8

-- Display: End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_display.end_sequence_number = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.end_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.end_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.end_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.start_sequence_number = 8

-- Display: Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_display.start_sequence_number = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.start_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.start_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.start_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.retransmission_request = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.start_sequence_number

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.end_sequence_number

  return index
end

-- Display: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_0_c_display.retransmission_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.retransmission_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.start_sequence_number(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.end_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.retransmission_request = function(buffer, offset, packet, parent)
  if show.retransmission_request then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.retransmission_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.retransmission_request_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.retransmission_request(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.retransmission_request_fields(buffer, offset, packet, parent)
  end
end

-- Size: Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.highest_sequence_number = 8

-- Display: Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_display.highest_sequence_number = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.highest_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.highest_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.highest_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.session_id = 1

-- Display: Session Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.session_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.session_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Login Status
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.login_status = 1

-- Display: Login Status
miax_onyxfutures_expressinterface_fei_v1_0_c_display.login_status = function(value)
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
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_status = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.login_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.login_status(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Response
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.login_response = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.login_status

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.session_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.highest_sequence_number

  return index
end

-- Display: Login Response
miax_onyxfutures_expressinterface_fei_v1_0_c_display.login_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Status: 1 Byte Ascii String Enum with 7 values
  index, login_status = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_status(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.session_id(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.highest_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_response = function(buffer, offset, packet, parent)
  if show.login_response then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_response_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.login_response(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_response_fields(buffer, offset, packet, parent)
  end
end

-- Size: Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.requested_sequence_number = 8

-- Display: Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_display.requested_sequence_number = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.requested_sequence_number = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.requested_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.requested_sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Requested Session
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.requested_session = 1

-- Display: Requested Session
miax_onyxfutures_expressinterface_fei_v1_0_c_display.requested_session = function(value)
  return "Requested Session: "..value
end

-- Dissect: Requested Session
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.requested_session = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.requested_session
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.requested_session(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.requested_session, range, value, display)

  return offset + length, value
end

-- Size: Application Protocol
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.application_protocol = 8

-- Display: Application Protocol
miax_onyxfutures_expressinterface_fei_v1_0_c_display.application_protocol = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.application_protocol = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.application_protocol
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.application_protocol(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Size: Computer Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.computer_id = 8

-- Display: Computer Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.computer_id = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.computer_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.computer_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.computer_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Size: Username
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.username = 5

-- Display: Username
miax_onyxfutures_expressinterface_fei_v1_0_c_display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.username = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.username
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.username(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.username, range, value, display)

  return offset + length, value
end

-- Size: Sesm Version
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sesm_version = 5

-- Display: Sesm Version
miax_onyxfutures_expressinterface_fei_v1_0_c_display.sesm_version = function(value)
  return "Sesm Version: "..value
end

-- Dissect: Sesm Version
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sesm_version = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sesm_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.sesm_version(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sesm_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.login_request = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sesm_version

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.username

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.computer_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.application_protocol

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.requested_session

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.requested_sequence_number

  return index
end

-- Display: Login Request
miax_onyxfutures_expressinterface_fei_v1_0_c_display.login_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sesm Version: 5 Byte Ascii String
  index, sesm_version = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sesm_version(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.username(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.computer_id(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.application_protocol(buffer, index, packet, parent)

  -- Requested Session: 1 Byte Unsigned Fixed Width Integer
  index, requested_session = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.requested_session(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.requested_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_request = function(buffer, offset, packet, parent)
  if show.login_request then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.login_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_request_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.login_request(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_request_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 16
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_16 = 16

-- Display: Reserved 16
miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_16 = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_16 = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_16
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_16(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Size: Status
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.status = 1

-- Display: Status
miax_onyxfutures_expressinterface_fei_v1_0_c_display.status = function(value)
  return "Status: "..value
end

-- Dissect: Status
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.status = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.status(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.status, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id String 20
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_string_20 = 20

-- Display: Instrument Id String 20
miax_onyxfutures_expressinterface_fei_v1_0_c_display.instrument_id_string_20 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Id String 20: No Value"
  end

  return "Instrument Id String 20: "..value
end

-- Dissect: Instrument Id String 20
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_string_20 = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_string_20
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.instrument_id_string_20(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.instrument_id_string_20, range, value, display)

  return offset + length, value
end

-- Size: Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id = 20

-- Display: Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.client_order_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.client_order_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Size: Mp Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id = 5

-- Display: Mp Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.mp_id = function(value)
  return "Mp Id: "..value
end

-- Dissect: Mp Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.mp_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mp_id, range, value, display)

  return offset + length, value
end

-- Size: Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time = 8

-- Display: Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_0_c_display.matching_engine_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Matching Engine Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Matching Engine Time
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.matching_engine_time(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.matching_engine_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.strategy_creation_response_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_string_20

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.status

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_16

  return index
end

-- Display: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c_display.strategy_creation_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Instrument Id String 20: String
  index, instrument_id_string_20 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_string_20(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.status(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_16(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Creation Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_response_message = function(buffer, offset, packet, parent)
  if show.strategy_creation_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_creation_response_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_response_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.strategy_creation_response_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_response_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 8
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_8 = 8

-- Display: Reserved 8
miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_8 = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_8 = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_8(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.leg_ratio = 4

-- Display: Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_0_c_display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4 = 4

-- Display: Instrument Id Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c_display.instrument_id_binary_u_4 = function(value)
  return "Instrument Id Binary U 4: "..value
end

-- Dissect: Instrument Id Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4 = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.instrument_id_binary_u_4(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.instrument_id_binary_u_4, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.strategy_leg = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.leg_ratio

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_8

  return index
end

-- Display: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_0_c_display.strategy_leg = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Leg Ratio: BinaryS
  index, leg_ratio = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.leg_ratio(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Leg
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_leg = function(buffer, offset, packet, parent)
  if show.strategy_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_leg, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_leg_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.strategy_leg(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_leg_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.number_of_legs = 1

-- Display: Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_0_c_display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.number_of_legs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Operator Location
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location = 6

-- Display: Operator Location
miax_onyxfutures_expressinterface_fei_v1_0_c_display.operator_location = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Operator Location: No Value"
  end

  return "Operator Location: "..value
end

-- Dissect: Operator Location
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.operator_location(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.operator_location, range, value, display)

  return offset + length, value
end

-- Size: Operator Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id = 18

-- Display: Operator Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.operator_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Operator Id: No Value"
  end

  return "Operator Id: "..value
end

-- Dissect: Operator Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.operator_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.operator_id, range, value, display)

  return offset + length, value
end

-- Size: Client Send Time
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time = 8

-- Display: Client Send Time
miax_onyxfutures_expressinterface_fei_v1_0_c_display.client_send_time = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Client Send Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Client Send Time
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_send_time = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.client_send_time(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.client_send_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.strategy_creation_request = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_16

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.number_of_legs

  -- Calculate field size from count
  local strategy_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_leg_count * 16

  return index
end

-- Display: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_0_c_display.strategy_creation_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_send_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Reserved 16: BinaryU
  index, reserved_16 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_16(buffer, index, packet, parent)

  -- Number Of Legs: BinaryU
  index, number_of_legs = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.number_of_legs(buffer, index, packet, parent)

  -- Strategy Leg: Struct of 3 fields
  for i = 1, number_of_legs do
    index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Creation Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_request = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_creation_request then
    local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.strategy_creation_request(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.strategy_creation_request(buffer, packet, parent)
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.strategy_creation_request, range, display)
  end

  return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_request_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 10
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_10 = 10

-- Display: Reserved 10
miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_10 = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_10 = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_10
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_10(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mass_cancel_response = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.status

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_10

  return index
end

-- Display: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_0_c_display.mass_cancel_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.status(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Response
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_response = function(buffer, offset, packet, parent)
  if show.mass_cancel_response then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mass_cancel_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_response_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.mass_cancel_response(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_response_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 9
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_9 = 9

-- Display: Reserved 9
miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_9 = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_9 = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_9
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_9(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Size: Purge Group
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.purge_group = 1

-- Display: Purge Group
miax_onyxfutures_expressinterface_fei_v1_0_c_display.purge_group = function(value)
  return "Purge Group: "..value
end

-- Dissect: Purge Group
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.purge_group = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.purge_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.purge_group(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.purge_group, range, value, display)

  return offset + length, value
end

-- Size: Product Type
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.product_type = 1

-- Display: Product Type
miax_onyxfutures_expressinterface_fei_v1_0_c_display.product_type = function(value)
  return "Product Type: "..value
end

-- Dissect: Product Type
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.product_type = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.product_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.product_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.product_type, range, value, display)

  return offset + length, value
end

-- Size: Product Group Code
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.product_group_code = 6

-- Display: Product Group Code
miax_onyxfutures_expressinterface_fei_v1_0_c_display.product_group_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Group Code: No Value"
  end

  return "Product Group Code: "..value
end

-- Dissect: Product Group Code
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.product_group_code = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.product_group_code
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.product_group_code(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.product_group_code, range, value, display)

  return offset + length, value
end

-- Size: Action
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.action = 1

-- Display: Action
miax_onyxfutures_expressinterface_fei_v1_0_c_display.action = function(value)
  return "Action: "..value
end

-- Dissect: Action
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.action = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.action
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.action(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.action, range, value, display)

  return offset + length, value
end

-- Size: Scope
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.scope = 1

-- Display: Scope
miax_onyxfutures_expressinterface_fei_v1_0_c_display.scope = function(value)
  return "Scope: "..value
end

-- Dissect: Scope
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.scope = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.scope
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.scope(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.scope, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mass_cancel_request = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_10

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.scope

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.action

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.product_group_code

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.product_type

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.purge_group

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_9

  return index
end

-- Display: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_0_c_display.mass_cancel_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_send_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_10(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Scope: Alphanumeric
  index, scope = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.scope(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.action(buffer, index, packet, parent)

  -- Product Group Code: String
  index, product_group_code = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.product_group_code(buffer, index, packet, parent)

  -- Product Type: Alphanumeric
  index, product_type = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.product_type(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.purge_group(buffer, index, packet, parent)

  -- Reserved 9: BinaryU
  index, reserved_9 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_9(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_request = function(buffer, offset, packet, parent)
  if show.mass_cancel_request then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.mass_cancel_request, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_request_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.mass_cancel_request(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_request_fields(buffer, offset, packet, parent)
  end
end

-- Size: Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id = 8

-- Display: Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Original Client Order
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.original_client_order = 20

-- Display: Original Client Order
miax_onyxfutures_expressinterface_fei_v1_0_c_display.original_client_order = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order: No Value"
  end

  return "Original Client Order: "..value
end

-- Dissect: Original Client Order
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.original_client_order = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.original_client_order
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.original_client_order(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.original_client_order, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_order_response = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.original_client_order

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.status

  return index
end

-- Display: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c_display.cancel_order_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order: String
  index, original_client_order = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.original_client_order(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_id(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_response = function(buffer, offset, packet, parent)
  if show.cancel_order_response then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_order_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_response_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.cancel_order_response(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_response_fields(buffer, offset, packet, parent)
  end
end

-- Size: Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.original_client_order_id = 20

-- Display: Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.original_client_order_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order Id: No Value"
  end

  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.original_client_order_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.original_client_order_id
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.original_client_order_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_order_request_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.original_client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_10

  return index
end

-- Display: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_display.cancel_order_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_send_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_id(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.original_client_order_id(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_request_message = function(buffer, offset, packet, parent)
  if show.cancel_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_order_request_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.cancel_order_request_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.leaves_qty = 4

-- Display: Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_0_c_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.modify_order_response = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.original_client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.leaves_qty

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.status

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_10

  return index
end

-- Display: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c_display.modify_order_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_response_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.original_client_order_id(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_id(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.leaves_qty(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.status(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Response
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_response = function(buffer, offset, packet, parent)
  if show.modify_order_response then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_response, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_response_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.modify_order_response(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_response_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reserved 32
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_32 = 32

-- Display: Reserved 32
miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_32 = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_32 = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_32
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.reserved_32(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.reserved_32, range, value, display)

  return offset + length, value
end

-- Size: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.additional_order_indicators = 1

-- Display: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_0_c_display.additional_order_indicators = function(buffer, packet, parent)
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
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.additional_order_indicators_bits = function(buffer, offset, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_5, buffer(offset, 1))

  -- Open Close Position Indicator: 1 Bit
  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.open_close_position_indicator, buffer(offset, 1))

  -- Manual Order Indicator: 1 Bit
  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.manual_order_indicator, buffer(offset, 1))

  -- Customer Of Firm Designation: 1 Bit
  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.customer_of_firm_designation, buffer(offset, 1))
end

-- Dissect: Additional Order Indicators
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.additional_order_indicators = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.additional_order_indicators(range, packet, parent)
  local element = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.additional_order_indicators, range, display)

  if show.additional_order_indicators then
    miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.additional_order_indicators_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.customer_order_handling_instruction = 1

-- Display: Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_0_c_display.customer_order_handling_instruction = function(value)
  return "Customer Order Handling Instruction: "..value
end

-- Dissect: Customer Order Handling Instruction
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.customer_order_handling_instruction = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.customer_order_handling_instruction
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.customer_order_handling_instruction(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.customer_order_handling_instruction, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.self_trade_protection_group = 2

-- Display: Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_0_c_display.self_trade_protection_group = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Self Trade Protection Group: No Value"
  end

  return "Self Trade Protection Group: "..value
end

-- Dissect: Self Trade Protection Group
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection_group = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.self_trade_protection_group
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.self_trade_protection_group(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_group, range, value, display)

  return offset + length, value
end

-- Size: Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_expiry_date = 2

-- Display: Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_expiry_date = function(value)
  return "Order Expiry Date: "..value
end

-- Dissect: Order Expiry Date
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_expiry_date = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_expiry_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_expiry_date(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_expiry_date, range, value, display)

  return offset + length, value
end

-- Size: Size Binary S 4
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.size_binary_s_4 = 4

-- Display: Size Binary S 4
miax_onyxfutures_expressinterface_fei_v1_0_c_display.size_binary_s_4 = function(value)
  return "Size Binary S 4: "..value
end

-- Dissect: Size Binary S 4
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.size_binary_s_4 = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.size_binary_s_4
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.size_binary_s_4(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.size_binary_s_4, range, value, display)

  return offset + length, value
end

-- Size: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.stop_order_trigger_price = 8

-- Display: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_0_c_display.stop_order_trigger_price = function(value)
  return "Stop Order Trigger Price: "..value
end

-- Translate: Stop Order Trigger Price
translate.stop_order_trigger_price = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Stop Order Trigger Price
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.stop_order_trigger_price = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.stop_order_trigger_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.stop_order_trigger_price(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.stop_order_trigger_price(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.stop_order_trigger_price, range, value, display)

  return offset + length, value
end

-- Size: Price
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.price = 8

-- Display: Price
miax_onyxfutures_expressinterface_fei_v1_0_c_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Price
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.price = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.price(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.modify_order_request_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.original_client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.stop_order_trigger_price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.size_binary_s_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_expiry_date

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.self_trade_protection_group

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.purge_group

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.customer_order_handling_instruction

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.additional_order_indicators

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_32

  return index
end

-- Display: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_display.modify_order_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_send_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.original_client_order_id(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.price(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.stop_order_trigger_price(buffer, index, packet, parent)

  -- Size Binary S 4: BinaryS
  index, size_binary_s_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.size_binary_s_4(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_expiry_date(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection_group(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.purge_group(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.customer_order_handling_instruction(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 4 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.additional_order_indicators(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_32(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_request_message = function(buffer, offset, packet, parent)
  if show.modify_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_request_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.modify_order_request_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Matching Engine
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine = 8

-- Display: Matching Engine
miax_onyxfutures_expressinterface_fei_v1_0_c_display.matching_engine = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Matching Engine: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Matching Engine
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.matching_engine(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.matching_engine, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.new_order_response_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.status

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_10

  return index
end

-- Display: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c_display.new_order_response_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine: NanoTime
  index, matching_engine = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_id(buffer, index, packet, parent)

  -- Status: Alphanumeric
  index, status = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.status(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_10(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_response_message = function(buffer, offset, packet, parent)
  if show.new_order_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_response_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_response_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.new_order_response_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_response_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Text Memo
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.text_memo = 20

-- Display: Text Memo
miax_onyxfutures_expressinterface_fei_v1_0_c_display.text_memo = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text Memo: No Value"
  end

  return "Text Memo: "..value
end

-- Dissect: Text Memo
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.text_memo = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.text_memo
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.text_memo(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.text_memo, range, value, display)

  return offset + length, value
end

-- Size: Cti Code
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cti_code = 1

-- Display: Cti Code
miax_onyxfutures_expressinterface_fei_v1_0_c_display.cti_code = function(value)
  return "Cti Code: "..value
end

-- Dissect: Cti Code
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cti_code = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cti_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.cti_code(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cti_code, range, value, display)

  return offset + length, value
end

-- Size: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trading_collar_dollar_value = 8

-- Display: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_0_c_display.trading_collar_dollar_value = function(value)
  return "Trading Collar Dollar Value: "..value
end

-- Translate: Trading Collar Dollar Value
translate.trading_collar_dollar_value = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Trading Collar Dollar Value
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.trading_collar_dollar_value = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trading_collar_dollar_value
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.trading_collar_dollar_value(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.trading_collar_dollar_value(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trading_collar_dollar_value, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.min_qty = 4

-- Display: Min Qty
miax_onyxfutures_expressinterface_fei_v1_0_c_display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.min_qty = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.min_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.min_qty(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.self_trade_protection = 1

-- Display: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_0_c_display.self_trade_protection = function(buffer, packet, parent)
  local display = ""


  return display:sub(1, -2)
end

-- Dissect Bit Fields: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection_bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_2, buffer(offset, 1))

  -- Self Trade Protection Instruction: 3 Bit
  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_instruction, buffer(offset, 1))

  -- Self Trade Protection Level: 3 Bit
  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection_level, buffer(offset, 1))
end

-- Dissect: Self Trade Protection
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.self_trade_protection(range, packet, parent)
  local element = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.self_trade_protection, range, display)

  if show.self_trade_protection then
    miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Order Type
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_type = 1

-- Display: Order Type
miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_type = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_type = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.time_in_force = 1

-- Display: Time In Force
miax_onyxfutures_expressinterface_fei_v1_0_c_display.time_in_force = function(value)
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
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_instructions = 2

-- Display: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_instructions = function(buffer, packet, parent)
  local display = ""

  -- Is Side flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Side|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_instructions_bits = function(buffer, offset, packet, parent)

  -- Unused 15: 15 Bit
  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unused_15, buffer(offset, 2))

  -- Side: 1 Bit
  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.side, buffer(offset, 2))
end

-- Dissect: Order Instructions
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_instructions = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_instructions(range, packet, parent)
  local element = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_instructions, range, display)

  if show.order_instructions then
    miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_instructions_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Size Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.size_binary_u_4 = 4

-- Display: Size Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c_display.size_binary_u_4 = function(value)
  return "Size Binary U 4: "..value
end

-- Dissect: Size Binary U 4
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.size_binary_u_4 = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.size_binary_u_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.size_binary_u_4(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.size_binary_u_4, range, value, display)

  return offset + length, value
end

-- Size: Account
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.account = 16

-- Display: Account
miax_onyxfutures_expressinterface_fei_v1_0_c_display.account = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.account = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.account
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.account(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.account, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.new_order_request_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.account

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.stop_order_trigger_price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.size_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_instructions

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.time_in_force

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_type

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.self_trade_protection

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.self_trade_protection_group

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.purge_group

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.customer_order_handling_instruction

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.additional_order_indicators

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.min_qty

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_expiry_date

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trading_collar_dollar_value

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cti_code

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.text_memo

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_32

  return index
end

-- Display: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_display.new_order_request_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_send_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.account(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.price(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.stop_order_trigger_price(buffer, index, packet, parent)

  -- Size Binary U 4: BinaryU
  index, size_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.size_binary_u_4(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_instructions(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_type(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection_group(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.purge_group(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.customer_order_handling_instruction(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 4 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.additional_order_indicators(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.min_qty(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_expiry_date(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price9S
  index, trading_collar_dollar_value = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.trading_collar_dollar_value(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cti_code(buffer, index, packet, parent)

  -- Text Memo: String
  index, text_memo = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.text_memo(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_32(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Request Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_request_message = function(buffer, offset, packet, parent)
  if show.new_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_request_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_request_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.new_order_request_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_request_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.unsequenced_message = function(buffer, offset, unsequenced_message_type)
  -- Size of New Order Request Message
  if unsequenced_message_type == "N1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.new_order_request_message(buffer, offset)
  end
  -- Size of New Order Response Message
  if unsequenced_message_type == "NR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.new_order_response_message(buffer, offset)
  end
  -- Size of Modify Order Request Message
  if unsequenced_message_type == "M1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.modify_order_request_message(buffer, offset)
  end
  -- Size of Modify Order Response
  if unsequenced_message_type == "MR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.modify_order_response(buffer, offset)
  end
  -- Size of Cancel Order Request Message
  if unsequenced_message_type == "CO" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_order_request_message(buffer, offset)
  end
  -- Size of Cancel Order Response
  if unsequenced_message_type == "CR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_order_response(buffer, offset)
  end
  -- Size of Mass Cancel Request
  if unsequenced_message_type == "XQ" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mass_cancel_request(buffer, offset)
  end
  -- Size of Mass Cancel Response
  if unsequenced_message_type == "XR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mass_cancel_response(buffer, offset)
  end
  -- Size of Strategy Creation Request
  if unsequenced_message_type == "SD" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.strategy_creation_request(buffer, offset)
  end
  -- Size of Strategy Creation Response Message
  if unsequenced_message_type == "SR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.strategy_creation_response_message(buffer, offset)
  end

  return 0
end

-- Display: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c_display.unsequenced_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_message_branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect New Order Request Message
  if unsequenced_message_type == "N1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_request_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response Message
  if unsequenced_message_type == "NR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Request Message
  if unsequenced_message_type == "M1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if unsequenced_message_type == "MR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Request Message
  if unsequenced_message_type == "CO" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response
  if unsequenced_message_type == "CR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request
  if unsequenced_message_type == "XQ" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_request(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Response
  if unsequenced_message_type == "XR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_response(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Creation Request
  if unsequenced_message_type == "SD" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_request(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Creation Response Message
  if unsequenced_message_type == "SR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_response_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_message = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_message_branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.unsequenced_message(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.unsequenced_message(buffer, packet, parent)
  local element = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_message, range, display)

  return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_message_branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Size: Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.unsequenced_message_type = 2

-- Display: Unsequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c_display.unsequenced_message_type = function(value)
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
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_message_type = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.unsequenced_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.unsequenced_message_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.unsequenced_data_packet = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length
end

-- Display: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_display.unsequenced_data_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 10 values
  index, unsequenced_message_type = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_message_type(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 10 branches
  index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_message(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_data_packet = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.unsequenced_data_packet(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.unsequenced_data_packet(buffer, packet, parent)
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.unsequenced_data_packet, range, display)
  end

  miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_data_packet_fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Size: Last Size
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_size = 4

-- Display: Last Size
miax_onyxfutures_expressinterface_fei_v1_0_c_display.last_size = function(value)
  return "Last Size: "..value
end

-- Dissect: Last Size
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.last_size = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.last_size(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_size, range, value, display)

  return offset + length, value
end

-- Size: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_net_price = 8

-- Display: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_0_c_display.last_net_price = function(value)
  return "Last Net Price: "..value
end

-- Translate: Last Net Price
translate.last_net_price = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Last Net Price
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.last_net_price = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_net_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_net_price(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.last_net_price(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_net_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trade_date = 2

-- Display: Trade Date
miax_onyxfutures_expressinterface_fei_v1_0_c_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.complex_trade_id = 8

-- Display: Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.complex_trade_id = function(value)
  return "Complex Trade Id: "..value
end

-- Dissect: Complex Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.complex_trade_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.complex_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.complex_trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.complex_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.complex_execution_notification = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.complex_trade_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trade_date

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_net_price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_instructions

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_32

  return index
end

-- Display: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_display.complex_execution_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.complex_execution_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Complex Trade Id: BinaryU
  index, complex_trade_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.complex_trade_id(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.trade_date(buffer, index, packet, parent)

  -- Last Net Price: Price9S
  index, last_net_price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.last_net_price(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.last_size(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_instructions(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_32(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.complex_execution_notification = function(buffer, offset, packet, parent)
  if show.complex_execution_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.complex_execution_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.complex_execution_notification_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.complex_execution_notification(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.complex_execution_notification_fields(buffer, offset, packet, parent)
  end
end

-- Size: Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.liquidity_indicator = 3

-- Display: Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_0_c_display.liquidity_indicator = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.liquidity_indicator = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.liquidity_indicator
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

  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Last Price
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_price = 8

-- Display: Last Price
miax_onyxfutures_expressinterface_fei_v1_0_c_display.last_price = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
translate.last_price = function(raw)
  return raw:tonumber()/1000000000
end

-- Dissect: Last Price
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.last_price = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_price(raw)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.last_price(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Status
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trade_status = 1

-- Display: Trade Status
miax_onyxfutures_expressinterface_fei_v1_0_c_display.trade_status = function(value)
  return "Trade Status: "..value
end

-- Dissect: Trade Status
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.trade_status = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trade_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.trade_status(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.trade_status, range, value, display)

  return offset + length, value
end

-- Size: Correction Number
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.correction_number = 1

-- Display: Correction Number
miax_onyxfutures_expressinterface_fei_v1_0_c_display.correction_number = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.correction_number = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.correction_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.correction_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Size: Execution Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.execution_id = 8

-- Display: Execution Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Size: Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.simple_trade_id = 8

-- Display: Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c_display.simple_trade_id = function(value)
  return "Simple Trade Id: "..value
end

-- Dissect: Simple Trade Id
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.simple_trade_id = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.simple_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.simple_trade_id(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.simple_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.simple_execution_notification = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.simple_trade_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.complex_trade_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.execution_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trade_date

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.correction_number

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trade_status

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_instructions

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cti_code

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.text_memo

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.liquidity_indicator

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_32

  return index
end

-- Display: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_display.simple_execution_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.simple_execution_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Simple Trade Id: BinaryU
  index, simple_trade_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.simple_trade_id(buffer, index, packet, parent)

  -- Complex Trade Id: BinaryU
  index, complex_trade_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.complex_trade_id(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.execution_id(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.trade_date(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.correction_number(buffer, index, packet, parent)

  -- Trade Status: Alphanumeric
  index, trade_status = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.trade_status(buffer, index, packet, parent)

  -- Last Price: Price9S
  index, last_price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.last_price(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.last_size(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_instructions(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cti_code(buffer, index, packet, parent)

  -- Text Memo: String
  index, text_memo = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.text_memo(buffer, index, packet, parent)

  -- Liquidity Indicator: String
  index, liquidity_indicator = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.liquidity_indicator(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_32(buffer, index, packet, parent)

  return index
end

-- Dissect: Simple Execution Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.simple_execution_notification = function(buffer, offset, packet, parent)
  if show.simple_execution_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.simple_execution_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.simple_execution_notification_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.simple_execution_notification(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.simple_execution_notification_fields(buffer, offset, packet, parent)
  end
end

-- Size: Update Status
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.update_status = 1

-- Display: Update Status
miax_onyxfutures_expressinterface_fei_v1_0_c_display.update_status = function(value)
  return "Update Status: "..value
end

-- Dissect: Update Status
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.update_status = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.update_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.update_status(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.update_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_status_update_notification = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.update_status

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_32

  return index
end

-- Display: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_status_update_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_status_update_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_id(buffer, index, packet, parent)

  -- Update Status: Alphanumeric
  index, update_status = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.update_status(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_32(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Status Update Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_status_update_notification = function(buffer, offset, packet, parent)
  if show.order_status_update_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.order_status_update_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_status_update_notification_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.order_status_update_notification(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_status_update_notification_fields(buffer, offset, packet, parent)
  end
end

-- Size: Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_reason = 1

-- Display: Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_0_c_display.cancel_reason = function(value)
  return "Cancel Reason: "..value
end

-- Dissect: Cancel Reason
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_reason = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.cancel_reason(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_reduce_size_order_notification = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.leaves_qty

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_reason

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.last_size

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_8

  return index
end

-- Display: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_display.cancel_reduce_size_order_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_reduce_size_order_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_id(buffer, index, packet, parent)

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_send_time(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cancel Reason: Alphanumeric
  index, cancel_reason = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_reason(buffer, index, packet, parent)

  -- Last Price: Price9S
  index, last_price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.last_price(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.last_size(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reduce Size Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_reduce_size_order_notification = function(buffer, offset, packet, parent)
  if show.cancel_reduce_size_order_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.cancel_reduce_size_order_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_reduce_size_order_notification_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.cancel_reduce_size_order_notification(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_reduce_size_order_notification_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.modify_order_notification = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.leaves_qty

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.original_client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.stop_order_trigger_price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.size_binary_s_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_expiry_date

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.self_trade_protection_group

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.purge_group

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.customer_order_handling_instruction

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.additional_order_indicators

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_32

  return index
end

-- Display: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_display.modify_order_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_id(buffer, index, packet, parent)

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_send_time(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.leaves_qty(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.original_client_order_id(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.price(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.stop_order_trigger_price(buffer, index, packet, parent)

  -- Size Binary S 4: BinaryS
  index, size_binary_s_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.size_binary_s_4(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_expiry_date(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection_group(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.purge_group(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.customer_order_handling_instruction(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 4 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.additional_order_indicators(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_32(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_notification = function(buffer, offset, packet, parent)
  if show.modify_order_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.modify_order_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_notification_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.modify_order_notification(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_notification_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.new_order_notification = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mp_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_send_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.operator_location

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.account

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.client_order_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.instrument_id_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.stop_order_trigger_price

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.size_binary_u_4

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_instructions

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.time_in_force

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_type

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.self_trade_protection

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.self_trade_protection_group

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.purge_group

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.customer_order_handling_instruction

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.additional_order_indicators

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.min_qty

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_expiry_date

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.trading_collar_dollar_value

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cti_code

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.text_memo

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_32

  return index
end

-- Display: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_display.new_order_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_notification_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Mp Id: Alphanumeric
  index, mp_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mp_id(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_id(buffer, index, packet, parent)

  -- Client Send Time: NanoTime
  index, client_send_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_send_time(buffer, index, packet, parent)

  -- Operator Id: String
  index, operator_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_id(buffer, index, packet, parent)

  -- Operator Location: String
  index, operator_location = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.operator_location(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.account(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.client_order_id(buffer, index, packet, parent)

  -- Instrument Id Binary U 4: BinaryU
  index, instrument_id_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.instrument_id_binary_u_4(buffer, index, packet, parent)

  -- Price: Price9S
  index, price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.price(buffer, index, packet, parent)

  -- Stop Order Trigger Price: Price9S
  index, stop_order_trigger_price = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.stop_order_trigger_price(buffer, index, packet, parent)

  -- Size Binary U 4: BinaryU
  index, size_binary_u_4 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.size_binary_u_4(buffer, index, packet, parent)

  -- Order Instructions: Struct of 2 fields
  index, order_instructions = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_instructions(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_type(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection(buffer, index, packet, parent)

  -- Self Trade Protection Group: String
  index, self_trade_protection_group = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.self_trade_protection_group(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.purge_group(buffer, index, packet, parent)

  -- Customer Order Handling Instruction: Alphanumeric
  index, customer_order_handling_instruction = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.customer_order_handling_instruction(buffer, index, packet, parent)

  -- Additional Order Indicators: Struct of 4 fields
  index, additional_order_indicators = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.additional_order_indicators(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.min_qty(buffer, index, packet, parent)

  -- Order Expiry Date: Date
  index, order_expiry_date = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_expiry_date(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price9S
  index, trading_collar_dollar_value = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.trading_collar_dollar_value(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cti_code(buffer, index, packet, parent)

  -- Text Memo: String
  index, text_memo = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.text_memo(buffer, index, packet, parent)

  -- Reserved 32: BinaryU
  index, reserved_32 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_32(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Notification
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_notification = function(buffer, offset, packet, parent)
  if show.new_order_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.new_order_notification, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_notification_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.new_order_notification(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_notification_fields(buffer, offset, packet, parent)
  end
end

-- Size: System Status
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.system_status = 1

-- Display: System Status
miax_onyxfutures_expressinterface_fei_v1_0_c_display.system_status = function(value)
  return "System Status: "..value
end

-- Dissect: System Status
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.system_status = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.system_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.system_status(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.system_status, range, value, display)

  return offset + length, value
end

-- Size: Version
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.version = 8

-- Display: Version
miax_onyxfutures_expressinterface_fei_v1_0_c_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.version = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.version
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.version(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.system_state_notification_message = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.matching_engine_time

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.version

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.session_id

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.system_status

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.reserved_8

  return index
end

-- Display: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_0_c_display.system_state_notification_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.system_state_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.matching_engine_time(buffer, index, packet, parent)

  -- Version: Alphanumeric
  index, version = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.version(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.session_id(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.system_status(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.reserved_8(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Notification Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.system_state_notification_message = function(buffer, offset, packet, parent)
  if show.system_state_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.system_state_notification_message, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.system_state_notification_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.system_state_notification_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.system_state_notification_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sequenced_message = function(buffer, offset, sequenced_message_type)
  -- Size of New Order Response Message
  if sequenced_message_type == "NR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.new_order_response_message(buffer, offset)
  end
  -- Size of Modify Order Response
  if sequenced_message_type == "MR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.modify_order_response(buffer, offset)
  end
  -- Size of Cancel Order Response
  if sequenced_message_type == "CR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_order_response(buffer, offset)
  end
  -- Size of Mass Cancel Response
  if sequenced_message_type == "XR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.mass_cancel_response(buffer, offset)
  end
  -- Size of Strategy Creation Response Message
  if sequenced_message_type == "SR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.strategy_creation_response_message(buffer, offset)
  end
  -- Size of System State Notification Message
  if sequenced_message_type == "SN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.system_state_notification_message(buffer, offset)
  end
  -- Size of New Order Notification
  if sequenced_message_type == "O1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.new_order_notification(buffer, offset)
  end
  -- Size of Modify Order Notification
  if sequenced_message_type == "MN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.modify_order_notification(buffer, offset)
  end
  -- Size of Cancel Reduce Size Order Notification
  if sequenced_message_type == "XN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.cancel_reduce_size_order_notification(buffer, offset)
  end
  -- Size of Order Status Update Notification
  if sequenced_message_type == "OS" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.order_status_update_notification(buffer, offset)
  end
  -- Size of Simple Execution Notification
  if sequenced_message_type == "EN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.simple_execution_notification(buffer, offset)
  end
  -- Size of Complex Execution Notification
  if sequenced_message_type == "CN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.complex_execution_notification(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c_display.sequenced_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_message_branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect New Order Response Message
  if sequenced_message_type == "NR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if sequenced_message_type == "MR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response
  if sequenced_message_type == "CR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Response
  if sequenced_message_type == "XR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.mass_cancel_response(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Creation Response Message
  if sequenced_message_type == "SR" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.strategy_creation_response_message(buffer, offset, packet, parent)
  end
  -- Dissect System State Notification Message
  if sequenced_message_type == "SN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.system_state_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Notification
  if sequenced_message_type == "O1" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.new_order_notification(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Notification
  if sequenced_message_type == "MN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.modify_order_notification(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reduce Size Order Notification
  if sequenced_message_type == "XN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.cancel_reduce_size_order_notification(buffer, offset, packet, parent)
  end
  -- Dissect Order Status Update Notification
  if sequenced_message_type == "OS" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.order_status_update_notification(buffer, offset, packet, parent)
  end
  -- Dissect Simple Execution Notification
  if sequenced_message_type == "EN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.simple_execution_notification(buffer, offset, packet, parent)
  end
  -- Dissect Complex Execution Notification
  if sequenced_message_type == "CN" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.complex_execution_notification(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_message = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sequenced_message(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.sequenced_message(buffer, packet, parent)
  local element = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_message, range, display)

  return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_message_branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Size: Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sequenced_message_type = 2

-- Display: Sequenced Message Type
miax_onyxfutures_expressinterface_fei_v1_0_c_display.sequenced_message_type = function(value)
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
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_message_type = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sequenced_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.sequenced_message_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sequence_number = 8

-- Display: Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sequenced_data_packet = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 9
end

-- Display: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_display.sequenced_data_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_data_packet_fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequence_number(buffer, index, packet, parent)

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_message_type(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_message(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_data_packet = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sequenced_data_packet(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.sequenced_data_packet(buffer, packet, parent)
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sequenced_data_packet, range, display)
  end

  miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_data_packet_fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Calculate runtime size of: Payload
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.payload = function(buffer, offset, packet_type)
  -- Size of Sequenced Data Packet
  if packet_type == "S" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.sequenced_data_packet(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.unsequenced_data_packet(buffer, offset)
  end
  -- Size of Login Request
  if packet_type == "L" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.login_request(buffer, offset)
  end
  -- Size of Login Response
  if packet_type == "R" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.login_response(buffer, offset)
  end
  -- Size of Synchronization Complete
  if packet_type == "C" then
    return 0
  end
  -- Size of Retransmission Request
  if packet_type == "A" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.retransmission_request(buffer, offset)
  end
  -- Size of Logout Request
  if packet_type == "X" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.logout_request(buffer, offset)
  end
  -- Size of Goodbye Packet
  if packet_type == "G" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.goodbye_packet(buffer, offset)
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
miax_onyxfutures_expressinterface_fei_v1_0_c_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.payload_branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Sequenced Data Packet
  if packet_type == "S" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.unsequenced_data_packet(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if packet_type == "L" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_request(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if packet_type == "R" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.login_response(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if packet_type == "C" then
  end
  -- Dissect Retransmission Request
  if packet_type == "A" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.retransmission_request(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if packet_type == "X" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.logout_request(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if packet_type == "G" then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.goodbye_packet(buffer, offset, packet, parent)
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
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.payload = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.payload(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.payload(buffer, packet, parent)
  local element = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.payload, range, display)

  return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.payload_branches(buffer, offset, packet, parent, packet_type)
end

-- Size: Packet Type
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.packet_type = 1

-- Display: Packet Type
miax_onyxfutures_expressinterface_fei_v1_0_c_display.packet_type = function(value)
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
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet_type = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.packet_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.packet_type(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Size: Packet Length
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.packet_length = 2

-- Display: Packet Length
miax_onyxfutures_expressinterface_fei_v1_0_c_display.packet_length = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet_length = function(buffer, offset, packet, parent)
  local length = miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.packet_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.packet_length(value, buffer, offset, packet, parent)

  parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.packet_length

  index = index + miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.packet_type

  return index
end

-- Display: Packet Header
miax_onyxfutures_expressinterface_fei_v1_0_c_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet_length(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 11 values
  index, packet_type = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.packet_header, buffer(offset, 0))
    local index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.packet_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_display.sesm_tcp_packet = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sesm_tcp_packet_fields = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 11 branches
  index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.payload(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Sesm Tcp Packet
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sesm_tcp_packet = function(buffer, offset, packet, parent, size_of_sesm_tcp_packet)
  -- Optionally add struct element to protocol tree
  if show.sesm_tcp_packet then
    local range = buffer(offset, size_of_sesm_tcp_packet)
    local display = miax_onyxfutures_expressinterface_fei_v1_0_c_display.sesm_tcp_packet(buffer, packet, parent)
    parent = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c.fields.sesm_tcp_packet, range, display)
  end

  miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sesm_tcp_packet_fields(buffer, offset, packet, parent, size_of_sesm_tcp_packet)

  return offset + size_of_sesm_tcp_packet
end

-- Remaining Bytes For: Sesm Tcp Packet
local sesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_onyxfutures_expressinterface_fei_v1_0_c_size_of.packet_header(buffer, index) then
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
miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Sesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Sesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_sesm_tcp_packet = sesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.sesm_tcp_packet(buffer, index, packet, parent, size_of_sesm_tcp_packet)
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
function miax_onyxfutures_expressinterface_fei_v1_0_c.init()
end

-- Dissector for Miax OnyxFutures ExpressInterface Fei 1.0.c
function miax_onyxfutures_expressinterface_fei_v1_0_c.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = miax_onyxfutures_expressinterface_fei_v1_0_c.name

  -- Dissect protocol
  local protocol = parent:add(miax_onyxfutures_expressinterface_fei_v1_0_c, buffer(), miax_onyxfutures_expressinterface_fei_v1_0_c.description, "("..buffer:len().." Bytes)")
  return miax_onyxfutures_expressinterface_fei_v1_0_c_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, miax_onyxfutures_expressinterface_fei_v1_0_c)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.miax_onyxfutures_expressinterface_fei_v1_0_c_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Miax OnyxFutures ExpressInterface Fei 1.0.c
local function miax_onyxfutures_expressinterface_fei_v1_0_c_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.miax_onyxfutures_expressinterface_fei_v1_0_c_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = miax_onyxfutures_expressinterface_fei_v1_0_c
  miax_onyxfutures_expressinterface_fei_v1_0_c.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax OnyxFutures ExpressInterface Fei 1.0.c
miax_onyxfutures_expressinterface_fei_v1_0_c:register_heuristic("tcp", miax_onyxfutures_expressinterface_fei_v1_0_c_heuristic)

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
