-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlEquities ExpressOrders Meo 2.7.a Protocol
local omi_miax_pearlequities_expressorders_meo_v2_7_a = Proto("Miax.PearlEquities.ExpressOrders.Meo.v2.7.a.Lua", "Miax PearlEquities ExpressOrders Meo 2.7.a")

-- Protocol table
local miax_pearlequities_expressorders_meo_v2_7_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlEquities ExpressOrders Meo 2.7.a Fields
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.account = ProtoField.new("Account", "miax.pearlequities.expressorders.meo.v2.7.a.account", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.action = ProtoField.new("Action", "miax.pearlequities.expressorders.meo.v2.7.a.action", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.additional_liquidity_indicator = ProtoField.new("Additional Liquidity Indicator", "miax.pearlequities.expressorders.meo.v2.7.a.additionalliquidityindicator", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.application_protocol = ProtoField.new("Application Protocol", "miax.pearlequities.expressorders.meo.v2.7.a.applicationprotocol", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.asp_eligible_orders_cancelled = ProtoField.new("Asp Eligible Orders Cancelled", "miax.pearlequities.expressorders.meo.v2.7.a.aspeligibleorderscancelled", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.attributable_order = ProtoField.new("Attributable Order", "miax.pearlequities.expressorders.meo.v2.7.a.attributableorder", ftypes.UINT16, nil, base.DEC, 0x0300)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_if_not_a_nbbo_setter = ProtoField.new("Cancel Order If Not A Nbbo Setter", "miax.pearlequities.expressorders.meo.v2.7.a.cancelorderifnotanbbosetter", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x1000)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_if_not_a_nbbo_setter_with_size = ProtoField.new("Cancel Order If Not A Nbbo Setter With Size", "miax.pearlequities.expressorders.meo.v2.7.a.cancelorderifnotanbbosetterwithsize", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x2000)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_reason = ProtoField.new("Cancel Reason", "miax.pearlequities.expressorders.meo.v2.7.a.cancelreason", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_status = ProtoField.new("Cancel Status", "miax.pearlequities.expressorders.meo.v2.7.a.cancelstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.capacity = ProtoField.new("Capacity", "miax.pearlequities.expressorders.meo.v2.7.a.capacity", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.clearing_account = ProtoField.new("Clearing Account", "miax.pearlequities.expressorders.meo.v2.7.a.clearingaccount", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.client_order_id = ProtoField.new("Client Order Id", "miax.pearlequities.expressorders.meo.v2.7.a.clientorderid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.closing_time = ProtoField.new("Closing Time", "miax.pearlequities.expressorders.meo.v2.7.a.closingtime", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.computer_id = ProtoField.new("Computer Id", "miax.pearlequities.expressorders.meo.v2.7.a.computerid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.correction_number = ProtoField.new("Correction Number", "miax.pearlequities.expressorders.meo.v2.7.a.correctionnumber", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.display_qty = ProtoField.new("Display Qty", "miax.pearlequities.expressorders.meo.v2.7.a.displayqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.display_range_qty = ProtoField.new("Display Range Qty", "miax.pearlequities.expressorders.meo.v2.7.a.displayrangeqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.displayed = ProtoField.new("Displayed", "miax.pearlequities.expressorders.meo.v2.7.a.displayed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.a.endsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.esesm_tcp_packet = ProtoField.new("Esesm Tcp Packet", "miax.pearlequities.expressorders.meo.v2.7.a.esesmtcppacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.esesm_version = ProtoField.new("Esesm Version", "miax.pearlequities.expressorders.meo.v2.7.a.esesmversion", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.executing_trading_center = ProtoField.new("Executing Trading Center", "miax.pearlequities.expressorders.meo.v2.7.a.executingtradingcenter", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.executing_trading_center_mpid = ProtoField.new("Executing Trading Center Mpid", "miax.pearlequities.expressorders.meo.v2.7.a.executingtradingcentermpid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.execution_id = ProtoField.new("Execution Id", "miax.pearlequities.expressorders.meo.v2.7.a.executionid", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.future = ProtoField.new("Future", "miax.pearlequities.expressorders.meo.v2.7.a.future", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.pearlequities.expressorders.meo.v2.7.a.goodbyepacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.a.highestsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.iso = ProtoField.new("Iso", "miax.pearlequities.expressorders.meo.v2.7.a.iso", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.last_price = ProtoField.new("Last Price", "miax.pearlequities.expressorders.meo.v2.7.a.lastprice", ftypes.DOUBLE)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.last_size = ProtoField.new("Last Size", "miax.pearlequities.expressorders.meo.v2.7.a.lastsize", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.leaves_qty = ProtoField.new("Leaves Qty", "miax.pearlequities.expressorders.meo.v2.7.a.leavesqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.pearlequities.expressorders.meo.v2.7.a.liquidityindicator", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.locate_account = ProtoField.new("Locate Account", "miax.pearlequities.expressorders.meo.v2.7.a.locateaccount", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.locate_required = ProtoField.new("Locate Required", "miax.pearlequities.expressorders.meo.v2.7.a.locaterequired", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.login_request = ProtoField.new("Login Request", "miax.pearlequities.expressorders.meo.v2.7.a.loginrequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.login_response = ProtoField.new("Login Response", "miax.pearlequities.expressorders.meo.v2.7.a.loginresponse", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.login_status = ProtoField.new("Login Status", "miax.pearlequities.expressorders.meo.v2.7.a.loginstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.logout_reason = ProtoField.new("Logout Reason", "miax.pearlequities.expressorders.meo.v2.7.a.logoutreason", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.logout_request = ProtoField.new("Logout Request", "miax.pearlequities.expressorders.meo.v2.7.a.logoutrequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.logout_text = ProtoField.new("Logout Text", "miax.pearlequities.expressorders.meo.v2.7.a.logouttext", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.lot_size = ProtoField.new("Lot Size", "miax.pearlequities.expressorders.meo.v2.7.a.lotsize", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.pearlequities.expressorders.meo.v2.7.a.matchingengineid", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.matching_engine_status = ProtoField.new("Matching Engine Status", "miax.pearlequities.expressorders.meo.v2.7.a.matchingenginestatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.matching_engine_time = ProtoField.new("Matching Engine Time", "miax.pearlequities.expressorders.meo.v2.7.a.matchingenginetime", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.max_floor_qty = ProtoField.new("Max Floor Qty", "miax.pearlequities.expressorders.meo.v2.7.a.maxfloorqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.meo_version = ProtoField.new("Meo Version", "miax.pearlequities.expressorders.meo.v2.7.a.meoversion", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.min_qty = ProtoField.new("Min Qty", "miax.pearlequities.expressorders.meo.v2.7.a.minqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.min_qty_exec_type = ProtoField.new("Min Qty Exec Type", "miax.pearlequities.expressorders.meo.v2.7.a.minqtyexectype", ftypes.UINT16, nil, base.DEC, 0x0C00)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_order_instructions = ProtoField.new("Modify Order Instructions", "miax.pearlequities.expressorders.meo.v2.7.a.modifyorderinstructions", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_status = ProtoField.new("Modify Status", "miax.pearlequities.expressorders.meo.v2.7.a.modifystatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.mpid = ProtoField.new("Mpid", "miax.pearlequities.expressorders.meo.v2.7.a.mpid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.nbbo_indicator = ProtoField.new("Nbbo Indicator", "miax.pearlequities.expressorders.meo.v2.7.a.nbboindicator", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.nbbo_setter_joiner = ProtoField.new("Nbbo Setter Joiner", "miax.pearlequities.expressorders.meo.v2.7.a.nbbosetterjoiner", ftypes.UINT8, nil, base.DEC, 0x07)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.new_order_instructions = ProtoField.new("New Order Instructions", "miax.pearlequities.expressorders.meo.v2.7.a.neworderinstructions", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.notification_time = ProtoField.new("Notification Time", "miax.pearlequities.expressorders.meo.v2.7.a.notificationtime", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.pearlequities.expressorders.meo.v2.7.a.numberofmatchingengines", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.number_of_orders_cancelled = ProtoField.new("Number Of Orders Cancelled", "miax.pearlequities.expressorders.meo.v2.7.a.numberoforderscancelled", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.opening_time = ProtoField.new("Opening Time", "miax.pearlequities.expressorders.meo.v2.7.a.openingtime", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_execution_instructions = ProtoField.new("Order Execution Instructions", "miax.pearlequities.expressorders.meo.v2.7.a.orderexecutioninstructions", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_expiry_time = ProtoField.new("Order Expiry Time", "miax.pearlequities.expressorders.meo.v2.7.a.orderexpirytime", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_id = ProtoField.new("Order Id", "miax.pearlequities.expressorders.meo.v2.7.a.orderid", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_status = ProtoField.new("Order Status", "miax.pearlequities.expressorders.meo.v2.7.a.orderstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_type = ProtoField.new("Order Type", "miax.pearlequities.expressorders.meo.v2.7.a.ordertype", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "miax.pearlequities.expressorders.meo.v2.7.a.originalclientorderid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.original_order_capacity = ProtoField.new("Original Order Capacity", "miax.pearlequities.expressorders.meo.v2.7.a.originalordercapacity", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.packet = ProtoField.new("Packet", "miax.pearlequities.expressorders.meo.v2.7.a.packet", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.packet_header = ProtoField.new("Packet Header", "miax.pearlequities.expressorders.meo.v2.7.a.packetheader", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.packet_length = ProtoField.new("Packet Length", "miax.pearlequities.expressorders.meo.v2.7.a.packetlength", ftypes.UINT16)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.packet_type = ProtoField.new("Packet Type", "miax.pearlequities.expressorders.meo.v2.7.a.packettype", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.payload = ProtoField.new("Payload", "miax.pearlequities.expressorders.meo.v2.7.a.payload", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.peg_offset = ProtoField.new("Peg Offset", "miax.pearlequities.expressorders.meo.v2.7.a.pegoffset", ftypes.DOUBLE)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.pending_cancel_status = ProtoField.new("Pending Cancel Status", "miax.pearlequities.expressorders.meo.v2.7.a.pendingcancelstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.pending_modify_status = ProtoField.new("Pending Modify Status", "miax.pearlequities.expressorders.meo.v2.7.a.pendingmodifystatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.pending_reject_reason = ProtoField.new("Pending Reject Reason", "miax.pearlequities.expressorders.meo.v2.7.a.pendingrejectreason", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.post_only = ProtoField.new("Post Only", "miax.pearlequities.expressorders.meo.v2.7.a.postonly", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.price = ProtoField.new("Price", "miax.pearlequities.expressorders.meo.v2.7.a.price", ftypes.DOUBLE)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.price_sliding_and_reprice_frequency = ProtoField.new("Price Sliding And Reprice Frequency", "miax.pearlequities.expressorders.meo.v2.7.a.priceslidingandrepricefrequency", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearlequities.expressorders.meo.v2.7.a.primarymarketcode", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.purge_group = ProtoField.new("Purge Group", "miax.pearlequities.expressorders.meo.v2.7.a.purgegroup", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.purge_instructions = ProtoField.new("Purge Instructions", "miax.pearlequities.expressorders.meo.v2.7.a.purgeinstructions", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.purge_status = ProtoField.new("Purge Status", "miax.pearlequities.expressorders.meo.v2.7.a.purgestatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.a.requestedsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.pearlequities.expressorders.meo.v2.7.a.requestedtradingsessionid", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.pearlequities.expressorders.meo.v2.7.a.reserved1", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.pearlequities.expressorders.meo.v2.7.a.reserved10", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_11 = ProtoField.new("Reserved 11", "miax.pearlequities.expressorders.meo.v2.7.a.reserved11", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.pearlequities.expressorders.meo.v2.7.a.reserved12", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_17 = ProtoField.new("Reserved 17", "miax.pearlequities.expressorders.meo.v2.7.a.reserved17", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_19 = ProtoField.new("Reserved 19", "miax.pearlequities.expressorders.meo.v2.7.a.reserved19", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.pearlequities.expressorders.meo.v2.7.a.reserved8", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_9 = ProtoField.new("Reserved 9", "miax.pearlequities.expressorders.meo.v2.7.a.reserved9", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.retail_order = ProtoField.new("Retail Order", "miax.pearlequities.expressorders.meo.v2.7.a.retailorder", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.pearlequities.expressorders.meo.v2.7.a.retransmissionrequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.routing = ProtoField.new("Routing", "miax.pearlequities.expressorders.meo.v2.7.a.routing", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.routing_instruction = ProtoField.new("Routing Instruction", "miax.pearlequities.expressorders.meo.v2.7.a.routinginstruction", ftypes.UINT8, nil, base.DEC, 0x07)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.routing_strategy = ProtoField.new("Routing Strategy", "miax.pearlequities.expressorders.meo.v2.7.a.routingstrategy", ftypes.UINT8, nil, base.DEC, 0x38)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.scope = ProtoField.new("Scope", "miax.pearlequities.expressorders.meo.v2.7.a.scope", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "miax.pearlequities.expressorders.meo.v2.7.a.secondaryorderid", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.self_trade_protection = ProtoField.new("Self Trade Protection", "miax.pearlequities.expressorders.meo.v2.7.a.selftradeprotection", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.self_trade_protection_group = ProtoField.new("Self Trade Protection Group", "miax.pearlequities.expressorders.meo.v2.7.a.selftradeprotectiongroup", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.self_trade_protection_instruction = ProtoField.new("Self Trade Protection Instruction", "miax.pearlequities.expressorders.meo.v2.7.a.selftradeprotectioninstruction", ftypes.UINT8, nil, base.DEC, 0x38)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.self_trade_protection_level = ProtoField.new("Self Trade Protection Level", "miax.pearlequities.expressorders.meo.v2.7.a.selftradeprotectionlevel", ftypes.UINT8, nil, base.DEC, 0x07)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.a.sequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.pearlequities.expressorders.meo.v2.7.a.sequenceddatapacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.sequenced_message = ProtoField.new("Sequenced Message", "miax.pearlequities.expressorders.meo.v2.7.a.sequencedmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.pearlequities.expressorders.meo.v2.7.a.sequencedmessagetype", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.session_id = ProtoField.new("Session Id", "miax.pearlequities.expressorders.meo.v2.7.a.sessionid", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.short_sale_indicator = ProtoField.new("Short Sale Indicator", "miax.pearlequities.expressorders.meo.v2.7.a.shortsaleindicator", ftypes.UINT16, nil, base.DEC, 0x0006)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.side = ProtoField.new("Side", "miax.pearlequities.expressorders.meo.v2.7.a.side", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.size = ProtoField.new("Size", "miax.pearlequities.expressorders.meo.v2.7.a.size", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.a.startsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearlequities.expressorders.meo.v2.7.a.symbolid", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.symbold_id = ProtoField.new("Symbold Id", "miax.pearlequities.expressorders.meo.v2.7.a.symboldid", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.pearlequities.expressorders.meo.v2.7.a.synchronizationcomplete", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.system_status = ProtoField.new("System Status", "miax.pearlequities.expressorders.meo.v2.7.a.systemstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.test_packet = ProtoField.new("Test Packet", "miax.pearlequities.expressorders.meo.v2.7.a.testpacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearlequities.expressorders.meo.v2.7.a.testsecurityindicator", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.test_text = ProtoField.new("Test Text", "miax.pearlequities.expressorders.meo.v2.7.a.testtext", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearlequities.expressorders.meo.v2.7.a.tickersymbol", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.time_in_force = ProtoField.new("Time In Force", "miax.pearlequities.expressorders.meo.v2.7.a.timeinforce", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.trade_id = ProtoField.new("Trade Id", "miax.pearlequities.expressorders.meo.v2.7.a.tradeid", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.trade_status = ProtoField.new("Trade Status", "miax.pearlequities.expressorders.meo.v2.7.a.tradestatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.trading_collar_dollar_value = ProtoField.new("Trading Collar Dollar Value", "miax.pearlequities.expressorders.meo.v2.7.a.tradingcollardollarvalue", ftypes.DOUBLE)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.pearlequities.expressorders.meo.v2.7.a.tradingsessionid", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.pearlequities.expressorders.meo.v2.7.a.unsequenceddatapacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unsequenced_message = ProtoField.new("Unsequenced Message", "miax.pearlequities.expressorders.meo.v2.7.a.unsequencedmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.pearlequities.expressorders.meo.v2.7.a.unsequencedmessagetype", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_15 = ProtoField.new("Unused 15", "miax.pearlequities.expressorders.meo.v2.7.a.unused15", ftypes.UINT16, nil, base.DEC, 0xFFFE)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_2 = ProtoField.new("Unused 2", "miax.pearlequities.expressorders.meo.v2.7.a.unused2", ftypes.UINT16, nil, base.DEC, 0xC000)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_5 = ProtoField.new("Unused 5", "miax.pearlequities.expressorders.meo.v2.7.a.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.username = ProtoField.new("Username", "miax.pearlequities.expressorders.meo.v2.7.a.username", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.working_price = ProtoField.new("Working Price", "miax.pearlequities.expressorders.meo.v2.7.a.workingprice", ftypes.DOUBLE)

-- Miax PearlEquities ExpressOrders Meo 2.7.a messages
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.aggressive_side_purge_request = ProtoField.new("Aggressive Side Purge Request", "miax.pearlequities.expressorders.meo.v2.7.a.aggressivesidepurgerequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.aggressive_side_purge_response = ProtoField.new("Aggressive Side Purge Response", "miax.pearlequities.expressorders.meo.v2.7.a.aggressivesidepurgeresponse", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_by_exchange_order_id_request = ProtoField.new("Cancel Order By Exchange Order Id Request", "miax.pearlequities.expressorders.meo.v2.7.a.cancelorderbyexchangeorderidrequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_by_exchange_order_id_response_message = ProtoField.new("Cancel Order By Exchange Order Id Response Message", "miax.pearlequities.expressorders.meo.v2.7.a.cancelorderbyexchangeorderidresponsemessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_request = ProtoField.new("Cancel Order Request", "miax.pearlequities.expressorders.meo.v2.7.a.cancelorderrequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_response = ProtoField.new("Cancel Order Response", "miax.pearlequities.expressorders.meo.v2.7.a.cancelorderresponse", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_reduce_size_order_notification = ProtoField.new("Cancel Reduce Size Order Notification", "miax.pearlequities.expressorders.meo.v2.7.a.cancelreducesizeordernotification", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.execution_notification = ProtoField.new("Execution Notification", "miax.pearlequities.expressorders.meo.v2.7.a.executionnotification", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.mass_cancel_request = ProtoField.new("Mass Cancel Request", "miax.pearlequities.expressorders.meo.v2.7.a.masscancelrequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.mass_cancel_response = ProtoField.new("Mass Cancel Response", "miax.pearlequities.expressorders.meo.v2.7.a.masscancelresponse", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_order_notification = ProtoField.new("Modify Order Notification", "miax.pearlequities.expressorders.meo.v2.7.a.modifyordernotification", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_order_request_message = ProtoField.new("Modify Order Request Message", "miax.pearlequities.expressorders.meo.v2.7.a.modifyorderrequestmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_order_response = ProtoField.new("Modify Order Response", "miax.pearlequities.expressorders.meo.v2.7.a.modifyorderresponse", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.new_order_notification = ProtoField.new("New Order Notification", "miax.pearlequities.expressorders.meo.v2.7.a.newordernotification", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.new_order_request_message = ProtoField.new("New Order Request Message", "miax.pearlequities.expressorders.meo.v2.7.a.neworderrequestmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.new_order_response_message = ProtoField.new("New Order Response Message", "miax.pearlequities.expressorders.meo.v2.7.a.neworderresponsemessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_price_update_notification = ProtoField.new("Order Price Update Notification", "miax.pearlequities.expressorders.meo.v2.7.a.orderpriceupdatenotification", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserve_order_replenishment_notification = ProtoField.new("Reserve Order Replenishment Notification", "miax.pearlequities.expressorders.meo.v2.7.a.reserveorderreplenishmentnotification", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.symbol_update = ProtoField.new("Symbol Update", "miax.pearlequities.expressorders.meo.v2.7.a.symbolupdate", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.system_state_notification = ProtoField.new("System State Notification", "miax.pearlequities.expressorders.meo.v2.7.a.systemstatenotification", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlEquities ExpressOrders Meo 2.7.a Element Dissection Options
show.additional_liquidity_indicator = true
show.aggressive_side_purge_request = true
show.aggressive_side_purge_response = true
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
show.modify_order_instructions = true
show.modify_order_notification = true
show.modify_order_request_message = true
show.modify_order_response = true
show.new_order_instructions = true
show.new_order_notification = true
show.new_order_request_message = true
show.new_order_response_message = true
show.order_execution_instructions = true
show.order_price_update_notification = true
show.packet = true
show.packet_header = true
show.purge_instructions = true
show.reserve_order_replenishment_notification = true
show.retransmission_request = true
show.routing = true
show.self_trade_protection = true
show.sequenced_data_packet = true
show.symbol_update = true
show.synchronization_complete = true
show.system_state_notification = true
show.test_packet = true
show.unsequenced_data_packet = true
show.payload = false
show.sequenced_message = false
show.unsequenced_message = false

-- Register Miax PearlEquities ExpressOrders Meo 2.7.a Show Options
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_additional_liquidity_indicator = Pref.bool("Show Additional Liquidity Indicator", show.additional_liquidity_indicator, "Parse and add Additional Liquidity Indicator to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_aggressive_side_purge_request = Pref.bool("Show Aggressive Side Purge Request", show.aggressive_side_purge_request, "Parse and add Aggressive Side Purge Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_aggressive_side_purge_response = Pref.bool("Show Aggressive Side Purge Response", show.aggressive_side_purge_response, "Parse and add Aggressive Side Purge Response to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_by_exchange_order_id_request = Pref.bool("Show Cancel Order By Exchange Order Id Request", show.cancel_order_by_exchange_order_id_request, "Parse and add Cancel Order By Exchange Order Id Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_by_exchange_order_id_response_message = Pref.bool("Show Cancel Order By Exchange Order Id Response Message", show.cancel_order_by_exchange_order_id_response_message, "Parse and add Cancel Order By Exchange Order Id Response Message to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_request = Pref.bool("Show Cancel Order Request", show.cancel_order_request, "Parse and add Cancel Order Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_response = Pref.bool("Show Cancel Order Response", show.cancel_order_response, "Parse and add Cancel Order Response to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_reduce_size_order_notification = Pref.bool("Show Cancel Reduce Size Order Notification", show.cancel_reduce_size_order_notification, "Parse and add Cancel Reduce Size Order Notification to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_esesm_tcp_packet = Pref.bool("Show Esesm Tcp Packet", show.esesm_tcp_packet, "Parse and add Esesm Tcp Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_execution_notification = Pref.bool("Show Execution Notification", show.execution_notification, "Parse and add Execution Notification to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_mass_cancel_request = Pref.bool("Show Mass Cancel Request", show.mass_cancel_request, "Parse and add Mass Cancel Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_mass_cancel_response = Pref.bool("Show Mass Cancel Response", show.mass_cancel_response, "Parse and add Mass Cancel Response to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_instructions = Pref.bool("Show Modify Order Instructions", show.modify_order_instructions, "Parse and add Modify Order Instructions to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_notification = Pref.bool("Show Modify Order Notification", show.modify_order_notification, "Parse and add Modify Order Notification to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_request_message = Pref.bool("Show Modify Order Request Message", show.modify_order_request_message, "Parse and add Modify Order Request Message to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_response = Pref.bool("Show Modify Order Response", show.modify_order_response, "Parse and add Modify Order Response to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_instructions = Pref.bool("Show New Order Instructions", show.new_order_instructions, "Parse and add New Order Instructions to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_notification = Pref.bool("Show New Order Notification", show.new_order_notification, "Parse and add New Order Notification to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_request_message = Pref.bool("Show New Order Request Message", show.new_order_request_message, "Parse and add New Order Request Message to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_response_message = Pref.bool("Show New Order Response Message", show.new_order_response_message, "Parse and add New Order Response Message to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_order_execution_instructions = Pref.bool("Show Order Execution Instructions", show.order_execution_instructions, "Parse and add Order Execution Instructions to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_order_price_update_notification = Pref.bool("Show Order Price Update Notification", show.order_price_update_notification, "Parse and add Order Price Update Notification to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_purge_instructions = Pref.bool("Show Purge Instructions", show.purge_instructions, "Parse and add Purge Instructions to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_reserve_order_replenishment_notification = Pref.bool("Show Reserve Order Replenishment Notification", show.reserve_order_replenishment_notification, "Parse and add Reserve Order Replenishment Notification to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_routing = Pref.bool("Show Routing", show.routing, "Parse and add Routing to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_self_trade_protection = Pref.bool("Show Self Trade Protection", show.self_trade_protection, "Parse and add Self Trade Protection to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_symbol_update = Pref.bool("Show Symbol Update", show.symbol_update, "Parse and add Symbol Update to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_synchronization_complete = Pref.bool("Show Synchronization Complete", show.synchronization_complete, "Parse and add Synchronization Complete to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_system_state_notification = Pref.bool("Show System State Notification", show.system_state_notification, "Parse and add System State Notification to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_test_packet = Pref.bool("Show Test Packet", show.test_packet, "Parse and add Test Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_unsequenced_message = Pref.bool("Show Unsequenced Message", show.unsequenced_message, "Parse and add Unsequenced Message to protocol tree")

-- Handle changed preferences
function omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.additional_liquidity_indicator ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_additional_liquidity_indicator then
    show.additional_liquidity_indicator = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_additional_liquidity_indicator
    changed = true
  end
  if show.aggressive_side_purge_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_aggressive_side_purge_request then
    show.aggressive_side_purge_request = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_aggressive_side_purge_request
    changed = true
  end
  if show.aggressive_side_purge_response ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_aggressive_side_purge_response then
    show.aggressive_side_purge_response = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_aggressive_side_purge_response
    changed = true
  end
  if show.cancel_order_by_exchange_order_id_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_by_exchange_order_id_request then
    show.cancel_order_by_exchange_order_id_request = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_by_exchange_order_id_request
    changed = true
  end
  if show.cancel_order_by_exchange_order_id_response_message ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_by_exchange_order_id_response_message then
    show.cancel_order_by_exchange_order_id_response_message = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_by_exchange_order_id_response_message
    changed = true
  end
  if show.cancel_order_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_request then
    show.cancel_order_request = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_request
    changed = true
  end
  if show.cancel_order_response ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_response then
    show.cancel_order_response = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_order_response
    changed = true
  end
  if show.cancel_reduce_size_order_notification ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_reduce_size_order_notification then
    show.cancel_reduce_size_order_notification = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_cancel_reduce_size_order_notification
    changed = true
  end
  if show.esesm_tcp_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_esesm_tcp_packet then
    show.esesm_tcp_packet = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_esesm_tcp_packet
    changed = true
  end
  if show.execution_notification ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_execution_notification then
    show.execution_notification = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_execution_notification
    changed = true
  end
  if show.goodbye_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_goodbye_packet then
    show.goodbye_packet = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_goodbye_packet
    changed = true
  end
  if show.login_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_login_request then
    show.login_request = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_login_request
    changed = true
  end
  if show.login_response ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_login_response then
    show.login_response = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_login_response
    changed = true
  end
  if show.logout_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_logout_request then
    show.logout_request = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_logout_request
    changed = true
  end
  if show.mass_cancel_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_mass_cancel_request then
    show.mass_cancel_request = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_mass_cancel_request
    changed = true
  end
  if show.mass_cancel_response ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_mass_cancel_response then
    show.mass_cancel_response = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_mass_cancel_response
    changed = true
  end
  if show.modify_order_instructions ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_instructions then
    show.modify_order_instructions = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_instructions
    changed = true
  end
  if show.modify_order_notification ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_notification then
    show.modify_order_notification = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_notification
    changed = true
  end
  if show.modify_order_request_message ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_request_message then
    show.modify_order_request_message = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_request_message
    changed = true
  end
  if show.modify_order_response ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_response then
    show.modify_order_response = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_modify_order_response
    changed = true
  end
  if show.new_order_instructions ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_instructions then
    show.new_order_instructions = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_instructions
    changed = true
  end
  if show.new_order_notification ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_notification then
    show.new_order_notification = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_notification
    changed = true
  end
  if show.new_order_request_message ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_request_message then
    show.new_order_request_message = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_request_message
    changed = true
  end
  if show.new_order_response_message ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_response_message then
    show.new_order_response_message = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_new_order_response_message
    changed = true
  end
  if show.order_execution_instructions ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_order_execution_instructions then
    show.order_execution_instructions = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_order_execution_instructions
    changed = true
  end
  if show.order_price_update_notification ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_order_price_update_notification then
    show.order_price_update_notification = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_order_price_update_notification
    changed = true
  end
  if show.packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_packet then
    show.packet = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_packet_header then
    show.packet_header = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_packet_header
    changed = true
  end
  if show.purge_instructions ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_purge_instructions then
    show.purge_instructions = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_purge_instructions
    changed = true
  end
  if show.reserve_order_replenishment_notification ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_reserve_order_replenishment_notification then
    show.reserve_order_replenishment_notification = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_reserve_order_replenishment_notification
    changed = true
  end
  if show.retransmission_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_retransmission_request then
    show.retransmission_request = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_retransmission_request
    changed = true
  end
  if show.routing ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_routing then
    show.routing = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_routing
    changed = true
  end
  if show.self_trade_protection ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_self_trade_protection then
    show.self_trade_protection = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_self_trade_protection
    changed = true
  end
  if show.sequenced_data_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_sequenced_data_packet
    changed = true
  end
  if show.symbol_update ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_symbol_update then
    show.symbol_update = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_symbol_update
    changed = true
  end
  if show.synchronization_complete ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_synchronization_complete then
    show.synchronization_complete = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_synchronization_complete
    changed = true
  end
  if show.system_state_notification ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_system_state_notification then
    show.system_state_notification = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_system_state_notification
    changed = true
  end
  if show.test_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_test_packet then
    show.test_packet = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_test_packet
    changed = true
  end
  if show.unsequenced_data_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_unsequenced_data_packet
    changed = true
  end
  if show.payload ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_payload then
    show.payload = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_payload
    changed = true
  end
  if show.sequenced_message ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_sequenced_message then
    show.sequenced_message = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_sequenced_message
    changed = true
  end
  if show.unsequenced_message ~= omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_unsequenced_message then
    show.unsequenced_message = omi_miax_pearlequities_expressorders_meo_v2_7_a.prefs.show_unsequenced_message
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
-- Dissect Miax PearlEquities ExpressOrders Meo 2.7.a
-----------------------------------------------------------------------

-- Test Text
miax_pearlequities_expressorders_meo_v2_7_a.test_text = {}

-- Display: Test Text
miax_pearlequities_expressorders_meo_v2_7_a.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_pearlequities_expressorders_meo_v2_7_a.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.test_text, range, value, display)

  return offset + size, value
end

-- Test Packet
miax_pearlequities_expressorders_meo_v2_7_a.test_packet = {}

-- Calculate size of: Test Packet
miax_pearlequities_expressorders_meo_v2_7_a.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_pearlequities_expressorders_meo_v2_7_a.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_pearlequities_expressorders_meo_v2_7_a.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_pearlequities_expressorders_meo_v2_7_a.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_pearlequities_expressorders_meo_v2_7_a.test_packet.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.test_packet then
    local length = miax_pearlequities_expressorders_meo_v2_7_a.test_packet.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.test_packet.display(buffer, packet, parent)
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.test_packet, range, display)
  end

  return miax_pearlequities_expressorders_meo_v2_7_a.test_packet.fields(buffer, offset, packet, parent)
end

-- Logout Text
miax_pearlequities_expressorders_meo_v2_7_a.logout_text = {}

-- Display: Logout Text
miax_pearlequities_expressorders_meo_v2_7_a.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_pearlequities_expressorders_meo_v2_7_a.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Logout Reason
miax_pearlequities_expressorders_meo_v2_7_a.logout_reason = {}

-- Size: Logout Reason
miax_pearlequities_expressorders_meo_v2_7_a.logout_reason.size = 1

-- Display: Logout Reason
miax_pearlequities_expressorders_meo_v2_7_a.logout_reason.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_a.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_expressorders_meo_v2_7_a.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_expressorders_meo_v2_7_a.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearlequities_expressorders_meo_v2_7_a.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.goodbye_packet then
    local length = miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet.display(buffer, packet, parent)
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.goodbye_packet, range, display)
  end

  return miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet.fields(buffer, offset, packet, parent)
end

-- Logout Request
miax_pearlequities_expressorders_meo_v2_7_a.logout_request = {}

-- Calculate size of: Logout Request
miax_pearlequities_expressorders_meo_v2_7_a.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_expressorders_meo_v2_7_a.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_pearlequities_expressorders_meo_v2_7_a.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_pearlequities_expressorders_meo_v2_7_a.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_expressorders_meo_v2_7_a.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearlequities_expressorders_meo_v2_7_a.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_pearlequities_expressorders_meo_v2_7_a.logout_request.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.logout_request then
    local length = miax_pearlequities_expressorders_meo_v2_7_a.logout_request.size(buffer, offset)
    local range = buffer(offset, length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.logout_request.display(buffer, packet, parent)
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.logout_request, range, display)
  end

  return miax_pearlequities_expressorders_meo_v2_7_a.logout_request.fields(buffer, offset, packet, parent)
end

-- End Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.end_sequence_number = {}

-- Size: End Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.start_sequence_number = {}

-- Size: Start Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request = {}

-- Size: Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request.size =
  miax_pearlequities_expressorders_meo_v2_7_a.start_sequence_number.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.end_sequence_number.size

-- Display: Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_pearlequities_expressorders_meo_v2_7_a.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_pearlequities_expressorders_meo_v2_7_a.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.retransmission_request, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Matching Engines
miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete = {}

-- Size: Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete.size =
  miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: BinaryU
  index, number_of_matching_engines = miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.synchronization_complete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Highest Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_a.trading_session_id = {}

-- Size: Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_a.trading_session_id.size = 1

-- Display: Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_a.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_a.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Login Status
miax_pearlequities_expressorders_meo_v2_7_a.login_status = {}

-- Size: Login Status
miax_pearlequities_expressorders_meo_v2_7_a.login_status.size = 1

-- Display: Login Status
miax_pearlequities_expressorders_meo_v2_7_a.login_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_a.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.login_status, range, value, display)

  return offset + length, value
end

-- Login Response
miax_pearlequities_expressorders_meo_v2_7_a.login_response = {}

-- Size: Login Response
miax_pearlequities_expressorders_meo_v2_7_a.login_response.size =
  miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.login_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.trading_session_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.highest_sequence_number.size

-- Display: Login Response
miax_pearlequities_expressorders_meo_v2_7_a.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_pearlequities_expressorders_meo_v2_7_a.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: BinaryU
  index, number_of_matching_engines = miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 9 values
  index, login_status = miax_pearlequities_expressorders_meo_v2_7_a.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_pearlequities_expressorders_meo_v2_7_a.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_pearlequities_expressorders_meo_v2_7_a.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_pearlequities_expressorders_meo_v2_7_a.login_response.dissect = function(buffer, offset, packet, parent)
  if show.login_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.login_response, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Requested Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_a.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_a.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_a.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_a.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_pearlequities_expressorders_meo_v2_7_a.application_protocol = {}

-- Size: Application Protocol
miax_pearlequities_expressorders_meo_v2_7_a.application_protocol.size = 8

-- Display: Application Protocol
miax_pearlequities_expressorders_meo_v2_7_a.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_pearlequities_expressorders_meo_v2_7_a.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_a.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_pearlequities_expressorders_meo_v2_7_a.computer_id = {}

-- Size: Computer Id
miax_pearlequities_expressorders_meo_v2_7_a.computer_id.size = 8

-- Display: Computer Id
miax_pearlequities_expressorders_meo_v2_7_a.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_pearlequities_expressorders_meo_v2_7_a.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_a.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Username
miax_pearlequities_expressorders_meo_v2_7_a.username = {}

-- Size: Username
miax_pearlequities_expressorders_meo_v2_7_a.username.size = 5

-- Display: Username
miax_pearlequities_expressorders_meo_v2_7_a.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_pearlequities_expressorders_meo_v2_7_a.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_a.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.username, range, value, display)

  return offset + length, value
end

-- Esesm Version
miax_pearlequities_expressorders_meo_v2_7_a.esesm_version = {}

-- Size: Esesm Version
miax_pearlequities_expressorders_meo_v2_7_a.esesm_version.size = 5

-- Display: Esesm Version
miax_pearlequities_expressorders_meo_v2_7_a.esesm_version.display = function(value)
  return "Esesm Version: "..value
end

-- Dissect: Esesm Version
miax_pearlequities_expressorders_meo_v2_7_a.esesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.esesm_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.esesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.esesm_version, range, value, display)

  return offset + length, value
end

-- Login Request
miax_pearlequities_expressorders_meo_v2_7_a.login_request = {}

-- Size: Login Request
miax_pearlequities_expressorders_meo_v2_7_a.login_request.size =
  miax_pearlequities_expressorders_meo_v2_7_a.esesm_version.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.username.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.computer_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.application_protocol.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.requested_trading_session_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.requested_sequence_number.size

-- Display: Login Request
miax_pearlequities_expressorders_meo_v2_7_a.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_pearlequities_expressorders_meo_v2_7_a.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Esesm Version: 5 Byte Ascii String
  index, esesm_version = miax_pearlequities_expressorders_meo_v2_7_a.esesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_pearlequities_expressorders_meo_v2_7_a.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_pearlequities_expressorders_meo_v2_7_a.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_pearlequities_expressorders_meo_v2_7_a.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_pearlequities_expressorders_meo_v2_7_a.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_pearlequities_expressorders_meo_v2_7_a.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_pearlequities_expressorders_meo_v2_7_a.login_request.dissect = function(buffer, offset, packet, parent)
  if show.login_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.login_request, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.login_request.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 12
miax_pearlequities_expressorders_meo_v2_7_a.reserved_12 = {}

-- Size: Reserved 12
miax_pearlequities_expressorders_meo_v2_7_a.reserved_12.size = 12

-- Display: Reserved 12
miax_pearlequities_expressorders_meo_v2_7_a.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_pearlequities_expressorders_meo_v2_7_a.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.reserved_12.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Executing Trading Center Mpid
miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center_mpid = {}

-- Size: Executing Trading Center Mpid
miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center_mpid.size = 4

-- Display: Executing Trading Center Mpid
miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Executing Trading Center Mpid: No Value"
  end

  return "Executing Trading Center Mpid: "..value
end

-- Dissect: Executing Trading Center Mpid
miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center_mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center_mpid.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.executing_trading_center_mpid, range, value, display)

  return offset + length, value
end

-- Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_a.additional_liquidity_indicator = {}

-- Size: Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_a.additional_liquidity_indicator.size = 1

-- Display: Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_a.additional_liquidity_indicator.display = function(buffer, packet, parent)
  local display = ""


  return display:sub(1, -2)
end

-- Dissect Bit Fields: Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_a.additional_liquidity_indicator.bits = function(buffer, offset, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_5, buffer(offset, 1))

  -- Nbbo Setter Joiner: 3 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.nbbo_setter_joiner, buffer(offset, 1))
end

-- Dissect: Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_a.additional_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.additional_liquidity_indicator.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.additional_liquidity_indicator, range, display)

  if show.additional_liquidity_indicator then
    miax_pearlequities_expressorders_meo_v2_7_a.additional_liquidity_indicator.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Original Order Capacity
miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity = {}

-- Size: Original Order Capacity
miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity.size = 1

-- Display: Original Order Capacity
miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity.display = function(value)
  if value == "A" then
    return "Original Order Capacity: Agency (A)"
  end
  if value == "P" then
    return "Original Order Capacity: Principal (P)"
  end
  if value == "R" then
    return "Original Order Capacity: Riskless Principal (R)"
  end

  return "Original Order Capacity: Unknown("..value..")"
end

-- Dissect: Original Order Capacity
miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.original_order_capacity, range, value, display)

  return offset + length, value
end

-- Locate Account
miax_pearlequities_expressorders_meo_v2_7_a.locate_account = {}

-- Size: Locate Account
miax_pearlequities_expressorders_meo_v2_7_a.locate_account.size = 4

-- Display: Locate Account
miax_pearlequities_expressorders_meo_v2_7_a.locate_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Account: No Value"
  end

  return "Locate Account: "..value
end

-- Dissect: Locate Account
miax_pearlequities_expressorders_meo_v2_7_a.locate_account.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.locate_account.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_a.locate_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.locate_account, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_a.liquidity_indicator = {}

-- Size: Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_a.liquidity_indicator.size = 3

-- Display: Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_a.liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_a.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.liquidity_indicator.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_a.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id = {}

-- Size: Secondary Order Id
miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id.size = 8

-- Display: Secondary Order Id
miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Executing Trading Center
miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center = {}

-- Size: Executing Trading Center
miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center.size = 1

-- Display: Executing Trading Center
miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center.display = function(value)
  if value == "A" then
    return "Executing Trading Center: Nyse American (A)"
  end
  if value == "B" then
    return "Executing Trading Center: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Executing Trading Center: Nyse National (C)"
  end
  if value == "G" then
    return "Executing Trading Center: 24 X Exchange (G)"
  end
  if value == "H" then
    return "Executing Trading Center: Miax Pearl Equities (H)"
  end
  if value == "I" then
    return "Executing Trading Center: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Executing Trading Center: Cboe Edga Exchange (J)"
  end
  if value == "K" then
    return "Executing Trading Center: Cboe Edgx Exchange (K)"
  end
  if value == "L" then
    return "Executing Trading Center: Long Term Stock Exchange (L)"
  end
  if value == "M" then
    return "Executing Trading Center: Nyse Texas (M)"
  end
  if value == "N" then
    return "Executing Trading Center: New York Stock Exchange (N)"
  end
  if value == "P" then
    return "Executing Trading Center: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Executing Trading Center: Nasdaq (Q)"
  end
  if value == "U" then
    return "Executing Trading Center: Members Exchange (U)"
  end
  if value == "V" then
    return "Executing Trading Center: Investors Exchange (V)"
  end
  if value == "X" then
    return "Executing Trading Center: Nasdaq Phlx (X)"
  end
  if value == "Y" then
    return "Executing Trading Center: Cboe Byx Exchange (Y)"
  end
  if value == "Z" then
    return "Executing Trading Center: Cboe Bzx Exchange (Z)"
  end

  return "Executing Trading Center: Unknown("..value..")"
end

-- Dissect: Executing Trading Center
miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.executing_trading_center, range, value, display)

  return offset + length, value
end

-- Order Execution Instructions
miax_pearlequities_expressorders_meo_v2_7_a.order_execution_instructions = {}

-- Size: Order Execution Instructions
miax_pearlequities_expressorders_meo_v2_7_a.order_execution_instructions.size = 2

-- Display: Order Execution Instructions
miax_pearlequities_expressorders_meo_v2_7_a.order_execution_instructions.display = function(buffer, packet, parent)
  local display = ""

  -- Is Side flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Side|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Order Execution Instructions
miax_pearlequities_expressorders_meo_v2_7_a.order_execution_instructions.bits = function(buffer, offset, packet, parent)

  -- Unused 15: 15 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_15, buffer(offset, 2))

  -- Side: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.side, buffer(offset, 2))
end

-- Dissect: Order Execution Instructions
miax_pearlequities_expressorders_meo_v2_7_a.order_execution_instructions.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.order_execution_instructions.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_execution_instructions, range, display)

  if show.order_execution_instructions then
    miax_pearlequities_expressorders_meo_v2_7_a.order_execution_instructions.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Last Size
miax_pearlequities_expressorders_meo_v2_7_a.last_size = {}

-- Size: Last Size
miax_pearlequities_expressorders_meo_v2_7_a.last_size.size = 4

-- Display: Last Size
miax_pearlequities_expressorders_meo_v2_7_a.last_size.display = function(value)
  return "Last Size: "..value
end

-- Dissect: Last Size
miax_pearlequities_expressorders_meo_v2_7_a.last_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.last_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.last_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.last_size, range, value, display)

  return offset + length, value
end

-- Last Price
miax_pearlequities_expressorders_meo_v2_7_a.last_price = {}

-- Size: Last Price
miax_pearlequities_expressorders_meo_v2_7_a.last_price.size = 8

-- Display: Last Price
miax_pearlequities_expressorders_meo_v2_7_a.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
miax_pearlequities_expressorders_meo_v2_7_a.last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price
miax_pearlequities_expressorders_meo_v2_7_a.last_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_expressorders_meo_v2_7_a.last_price.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.last_price, range, value, display)

  return offset + length, value
end

-- Trade Status
miax_pearlequities_expressorders_meo_v2_7_a.trade_status = {}

-- Size: Trade Status
miax_pearlequities_expressorders_meo_v2_7_a.trade_status.size = 1

-- Display: Trade Status
miax_pearlequities_expressorders_meo_v2_7_a.trade_status.display = function(value)
  if value == "E" then
    return "Trade Status: New Execution (E)"
  end
  if value == "C" then
    return "Trade Status: Price Size Correction (C)"
  end
  if value == "X" then
    return "Trade Status: Trade Cancellation (X)"
  end

  return "Trade Status: Unknown("..value..")"
end

-- Dissect: Trade Status
miax_pearlequities_expressorders_meo_v2_7_a.trade_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.trade_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.trade_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.trade_status, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearlequities_expressorders_meo_v2_7_a.correction_number = {}

-- Size: Correction Number
miax_pearlequities_expressorders_meo_v2_7_a.correction_number.size = 1

-- Display: Correction Number
miax_pearlequities_expressorders_meo_v2_7_a.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearlequities_expressorders_meo_v2_7_a.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Execution Id
miax_pearlequities_expressorders_meo_v2_7_a.execution_id = {}

-- Size: Execution Id
miax_pearlequities_expressorders_meo_v2_7_a.execution_id.size = 8

-- Display: Execution Id
miax_pearlequities_expressorders_meo_v2_7_a.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_pearlequities_expressorders_meo_v2_7_a.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearlequities_expressorders_meo_v2_7_a.trade_id = {}

-- Size: Trade Id
miax_pearlequities_expressorders_meo_v2_7_a.trade_id.size = 8

-- Display: Trade Id
miax_pearlequities_expressorders_meo_v2_7_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearlequities_expressorders_meo_v2_7_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Client Order Id
miax_pearlequities_expressorders_meo_v2_7_a.client_order_id = {}

-- Size: Client Order Id
miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size = 20

-- Display: Client Order Id
miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Symbol Id
miax_pearlequities_expressorders_meo_v2_7_a.symbol_id = {}

-- Size: Symbol Id
miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size = 4

-- Display: Symbol Id
miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Mpid
miax_pearlequities_expressorders_meo_v2_7_a.mpid = {}

-- Size: Mpid
miax_pearlequities_expressorders_meo_v2_7_a.mpid.size = 4

-- Display: Mpid
miax_pearlequities_expressorders_meo_v2_7_a.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_a.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.mpid, range, value, display)

  return offset + length, value
end

-- Matching Engine Time
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time = {}

-- Size: Matching Engine Time
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size = 8

-- Display: Matching Engine Time
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Matching Engine Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Matching Engine Time
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.matching_engine_time, range, value, display)

  return offset + length, value
end

-- Execution Notification
miax_pearlequities_expressorders_meo_v2_7_a.execution_notification = {}

-- Size: Execution Notification
miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.trade_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.execution_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.correction_number.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.trade_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.last_price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.last_size.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_execution_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.liquidity_indicator.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.additional_liquidity_indicator.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center_mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_12.size

-- Display: Execution Notification
miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Notification
miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_expressorders_meo_v2_7_a.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_pearlequities_expressorders_meo_v2_7_a.execution_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_expressorders_meo_v2_7_a.correction_number.dissect(buffer, index, packet, parent)

  -- Trade Status: Alphanumeric
  index, trade_status = miax_pearlequities_expressorders_meo_v2_7_a.trade_status.dissect(buffer, index, packet, parent)

  -- Last Price: Price6U
  index, last_price = miax_pearlequities_expressorders_meo_v2_7_a.last_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_pearlequities_expressorders_meo_v2_7_a.last_size.dissect(buffer, index, packet, parent)

  -- Order Execution Instructions: Struct of 2 fields
  index, order_execution_instructions = miax_pearlequities_expressorders_meo_v2_7_a.order_execution_instructions.dissect(buffer, index, packet, parent)

  -- Executing Trading Center: Alphanumeric
  index, executing_trading_center = miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: BinaryU
  index, secondary_order_id = miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: String
  index, liquidity_indicator = miax_pearlequities_expressorders_meo_v2_7_a.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_a.locate_account.dissect(buffer, index, packet, parent)

  -- Original Order Capacity: Alphanumeric
  index, original_order_capacity = miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity.dissect(buffer, index, packet, parent)

  -- Additional Liquidity Indicator: Struct of 2 fields
  index, additional_liquidity_indicator = miax_pearlequities_expressorders_meo_v2_7_a.additional_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Executing Trading Center Mpid: String
  index, executing_trading_center_mpid = miax_pearlequities_expressorders_meo_v2_7_a.executing_trading_center_mpid.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  index, reserved_12 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Notification
miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.dissect = function(buffer, offset, packet, parent)
  if show.execution_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.execution_notification, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 10
miax_pearlequities_expressorders_meo_v2_7_a.reserved_10 = {}

-- Size: Reserved 10
miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size = 10

-- Display: Reserved 10
miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Display Qty
miax_pearlequities_expressorders_meo_v2_7_a.display_qty = {}

-- Size: Display Qty
miax_pearlequities_expressorders_meo_v2_7_a.display_qty.size = 4

-- Display: Display Qty
miax_pearlequities_expressorders_meo_v2_7_a.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
miax_pearlequities_expressorders_meo_v2_7_a.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Order Id
miax_pearlequities_expressorders_meo_v2_7_a.order_id = {}

-- Size: Order Id
miax_pearlequities_expressorders_meo_v2_7_a.order_id.size = 8

-- Display: Order Id
miax_pearlequities_expressorders_meo_v2_7_a.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_id, range, value, display)

  return offset + length, value
end

-- Reserve Order Replenishment Notification
miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification = {}

-- Size: Reserve Order Replenishment Notification
miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.display_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: Reserve Order Replenishment Notification
miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reserve Order Replenishment Notification
miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: BinaryU
  index, secondary_order_id = miax_pearlequities_expressorders_meo_v2_7_a.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Display Qty: BinaryU
  index, display_qty = miax_pearlequities_expressorders_meo_v2_7_a.display_qty.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reserve Order Replenishment Notification
miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.dissect = function(buffer, offset, packet, parent)
  if show.reserve_order_replenishment_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserve_order_replenishment_notification, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.fields(buffer, offset, packet, parent)
  end
end

-- Asp Eligible Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_a.asp_eligible_orders_cancelled = {}

-- Size: Asp Eligible Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_a.asp_eligible_orders_cancelled.size = 1

-- Display: Asp Eligible Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_a.asp_eligible_orders_cancelled.display = function(value)
  return "Asp Eligible Orders Cancelled: "..value
end

-- Dissect: Asp Eligible Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_a.asp_eligible_orders_cancelled.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.asp_eligible_orders_cancelled.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.asp_eligible_orders_cancelled.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.asp_eligible_orders_cancelled, range, value, display)

  return offset + length, value
end

-- Number Of Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_a.number_of_orders_cancelled = {}

-- Size: Number Of Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_a.number_of_orders_cancelled.size = 1

-- Display: Number Of Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_a.number_of_orders_cancelled.display = function(value)
  return "Number Of Orders Cancelled: "..value
end

-- Dissect: Number Of Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_a.number_of_orders_cancelled.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.number_of_orders_cancelled.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.number_of_orders_cancelled.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.number_of_orders_cancelled, range, value, display)

  return offset + length, value
end

-- Purge Status
miax_pearlequities_expressorders_meo_v2_7_a.purge_status = {}

-- Size: Purge Status
miax_pearlequities_expressorders_meo_v2_7_a.purge_status.size = 1

-- Display: Purge Status
miax_pearlequities_expressorders_meo_v2_7_a.purge_status.display = function(value)
  if value == " " then
    return "Purge Status: Successful (<whitespace>)"
  end
  if value == "C" then
    return "Purge Status: Matching Engine Is Not Available (C)"
  end
  if value == "E" then
    return "Purge Status: Exceeded Test Symbol Throttle (E)"
  end
  if value == "I" then
    return "Purge Status: Invalid Mpid (I)"
  end
  if value == "J" then
    return "Purge Status: Invalid Price (J)"
  end
  if value == "O" then
    return "Purge Status: Invalid Client Order Id (O)"
  end
  if value == "P" then
    return "Purge Status: Request Is Not Permitted For This Session (P)"
  end
  if value == "S" then
    return "Purge Status: Invalid Symbol Id (S)"
  end
  if value == "X" then
    return "Purge Status: Mpid Not Permitted (X)"
  end
  if value == "Z" then
    return "Purge Status: Undefined Reason (Z)"
  end
  if value == "*" then
    return "Purge Status: Downgraded From Older Version (*)"
  end

  return "Purge Status: Unknown("..value..")"
end

-- Dissect: Purge Status
miax_pearlequities_expressorders_meo_v2_7_a.purge_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.purge_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.purge_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.purge_status, range, value, display)

  return offset + length, value
end

-- Symbold Id
miax_pearlequities_expressorders_meo_v2_7_a.symbold_id = {}

-- Size: Symbold Id
miax_pearlequities_expressorders_meo_v2_7_a.symbold_id.size = 4

-- Display: Symbold Id
miax_pearlequities_expressorders_meo_v2_7_a.symbold_id.display = function(value)
  return "Symbold Id: "..value
end

-- Dissect: Symbold Id
miax_pearlequities_expressorders_meo_v2_7_a.symbold_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.symbold_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.symbold_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.symbold_id, range, value, display)

  return offset + length, value
end

-- Aggressive Side Purge Response
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response = {}

-- Size: Aggressive Side Purge Response
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbold_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.purge_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.number_of_orders_cancelled.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.asp_eligible_orders_cancelled.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: Aggressive Side Purge Response
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aggressive Side Purge Response
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbold Id: BinaryU
  index, symbold_id = miax_pearlequities_expressorders_meo_v2_7_a.symbold_id.dissect(buffer, index, packet, parent)

  -- Purge Status: Alphanumeric
  index, purge_status = miax_pearlequities_expressorders_meo_v2_7_a.purge_status.dissect(buffer, index, packet, parent)

  -- Number Of Orders Cancelled: BinaryU
  index, number_of_orders_cancelled = miax_pearlequities_expressorders_meo_v2_7_a.number_of_orders_cancelled.dissect(buffer, index, packet, parent)

  -- Asp Eligible Orders Cancelled: Alphanumeric
  index, asp_eligible_orders_cancelled = miax_pearlequities_expressorders_meo_v2_7_a.asp_eligible_orders_cancelled.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aggressive Side Purge Response
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response.dissect = function(buffer, offset, packet, parent)
  if show.aggressive_side_purge_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.aggressive_side_purge_response, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response.fields(buffer, offset, packet, parent)
  end
end

-- Price
miax_pearlequities_expressorders_meo_v2_7_a.price = {}

-- Size: Price
miax_pearlequities_expressorders_meo_v2_7_a.price.size = 8

-- Display: Price
miax_pearlequities_expressorders_meo_v2_7_a.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_pearlequities_expressorders_meo_v2_7_a.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
miax_pearlequities_expressorders_meo_v2_7_a.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_expressorders_meo_v2_7_a.price.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.price, range, value, display)

  return offset + length, value
end

-- Purge Instructions
miax_pearlequities_expressorders_meo_v2_7_a.purge_instructions = {}

-- Size: Purge Instructions
miax_pearlequities_expressorders_meo_v2_7_a.purge_instructions.size = 2

-- Display: Purge Instructions
miax_pearlequities_expressorders_meo_v2_7_a.purge_instructions.display = function(buffer, packet, parent)
  local display = ""

  -- Is Side flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Side|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Purge Instructions
miax_pearlequities_expressorders_meo_v2_7_a.purge_instructions.bits = function(buffer, offset, packet, parent)

  -- Unused 15: 15 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_15, buffer(offset, 2))

  -- Side: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.side, buffer(offset, 2))
end

-- Dissect: Purge Instructions
miax_pearlequities_expressorders_meo_v2_7_a.purge_instructions.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.purge_instructions.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.purge_instructions, range, display)

  if show.purge_instructions then
    miax_pearlequities_expressorders_meo_v2_7_a.purge_instructions.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Reserved 8
miax_pearlequities_expressorders_meo_v2_7_a.reserved_8 = {}

-- Size: Reserved 8
miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size = 8

-- Display: Reserved 8
miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Aggressive Side Purge Request
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request = {}

-- Size: Aggressive Side Purge Request
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request.size =
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.purge_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: Aggressive Side Purge Request
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aggressive Side Purge Request
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Purge Instructions: Struct of 2 fields
  index, purge_instructions = miax_pearlequities_expressorders_meo_v2_7_a.purge_instructions.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_a.price.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aggressive Side Purge Request
miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request.dissect = function(buffer, offset, packet, parent)
  if show.aggressive_side_purge_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.aggressive_side_purge_request, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request.fields(buffer, offset, packet, parent)
  end
end

-- Matching Engine Status
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_status = {}

-- Size: Matching Engine Status
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_status.size = 24

-- Display: Matching Engine Status
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_status.display = function(value)
  if value == "“ “" then
    return "Matching Engine Status: Successful (“ “)"
  end
  if value == "I" then
    return "Matching Engine Status: Invalid Mpid (I)"
  end
  if value == "X" then
    return "Matching Engine Status: Mpid Not Permitted (X)"
  end
  if value == "P" then
    return "Matching Engine Status: Request Is Not Permitted For This Session (P)"
  end
  if value == "R" then
    return "Matching Engine Status: Invalid Scope (R)"
  end
  if value == "A" then
    return "Matching Engine Status: Invalid Action (A)"
  end
  if value == "C" then
    return "Matching Engine Status: Matching Engine Not Available (C)"
  end
  if value == "U" then
    return "Matching Engine Status: State Of The Request For This Matching Engine (U)"
  end
  if value == "O" then
    return "Matching Engine Status: Invalid Client Order Id (O)"
  end
  if value == "Z" then
    return "Matching Engine Status: Undefined Reason (Z)"
  end
  if value == "6" then
    return "Matching Engine Status: Invalid Purge Group Specified (6)"
  end
  if value == "*" then
    return "Matching Engine Status: Downgraded From Older Version (*)"
  end

  return "Matching Engine Status: Unknown("..value..")"
end

-- Dissect: Matching Engine Status
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_status.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.matching_engine_status, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_pearlequities_expressorders_meo_v2_7_a.notification_time = {}

-- Size: Notification Time
miax_pearlequities_expressorders_meo_v2_7_a.notification_time.size = 8

-- Display: Notification Time
miax_pearlequities_expressorders_meo_v2_7_a.notification_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Notification Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification Time
miax_pearlequities_expressorders_meo_v2_7_a.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Mass Cancel Response
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response = {}

-- Size: Mass Cancel Response
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response.size =
  miax_pearlequities_expressorders_meo_v2_7_a.notification_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: Mass Cancel Response
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Response
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearlequities_expressorders_meo_v2_7_a.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Number Of Matching Engines: BinaryU
  index, number_of_matching_engines = miax_pearlequities_expressorders_meo_v2_7_a.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Matching Engine Status: Alphanumeric
  index, matching_engine_status = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Response
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.mass_cancel_response, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 9
miax_pearlequities_expressorders_meo_v2_7_a.reserved_9 = {}

-- Size: Reserved 9
miax_pearlequities_expressorders_meo_v2_7_a.reserved_9.size = 9

-- Display: Reserved 9
miax_pearlequities_expressorders_meo_v2_7_a.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
miax_pearlequities_expressorders_meo_v2_7_a.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.reserved_9.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Purge Group
miax_pearlequities_expressorders_meo_v2_7_a.purge_group = {}

-- Size: Purge Group
miax_pearlequities_expressorders_meo_v2_7_a.purge_group.size = 1

-- Display: Purge Group
miax_pearlequities_expressorders_meo_v2_7_a.purge_group.display = function(value)
  return "Purge Group: "..value
end

-- Dissect: Purge Group
miax_pearlequities_expressorders_meo_v2_7_a.purge_group.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.purge_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.purge_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.purge_group, range, value, display)

  return offset + length, value
end

-- Action
miax_pearlequities_expressorders_meo_v2_7_a.action = {}

-- Size: Action
miax_pearlequities_expressorders_meo_v2_7_a.action.size = 1

-- Display: Action
miax_pearlequities_expressorders_meo_v2_7_a.action.display = function(value)
  if value == "B" then
    return "Action: Block Only (B)"
  end
  if value == "M" then
    return "Action: Mass Cancel Only (M)"
  end
  if value == "X" then
    return "Action: Block And Mass Cancel (X)"
  end
  if value == "R" then
    return "Action: Remove Blocking For The Specified Scope (R)"
  end

  return "Action: Unknown("..value..")"
end

-- Dissect: Action
miax_pearlequities_expressorders_meo_v2_7_a.action.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.action, range, value, display)

  return offset + length, value
end

-- Scope
miax_pearlequities_expressorders_meo_v2_7_a.scope = {}

-- Size: Scope
miax_pearlequities_expressorders_meo_v2_7_a.scope.size = 1

-- Display: Scope
miax_pearlequities_expressorders_meo_v2_7_a.scope.display = function(value)
  if value == "M" then
    return "Scope: Purge All Orders For Specified Mpid (M)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
miax_pearlequities_expressorders_meo_v2_7_a.scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.scope, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request = {}

-- Size: Mass Cancel Request
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request.size =
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.scope.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.action.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.purge_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_9.size

-- Display: Mass Cancel Request
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Scope: Alphanumeric
  index, scope = miax_pearlequities_expressorders_meo_v2_7_a.scope.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_pearlequities_expressorders_meo_v2_7_a.action.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_pearlequities_expressorders_meo_v2_7_a.purge_group.dissect(buffer, index, packet, parent)

  -- Reserved 9: BinaryU
  index, reserved_9 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request
miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.mass_cancel_request, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Status
miax_pearlequities_expressorders_meo_v2_7_a.cancel_status = {}

-- Size: Cancel Status
miax_pearlequities_expressorders_meo_v2_7_a.cancel_status.size = 1

-- Display: Cancel Status
miax_pearlequities_expressorders_meo_v2_7_a.cancel_status.display = function(value)
  if value == " " then
    return "Cancel Status: Successful (<whitespace>)"
  end
  if value == "A" then
    return "Cancel Status: Duplicate Client Order Id (A)"
  end
  if value == "B" then
    return "Cancel Status: Not In Live Order Window (B)"
  end
  if value == "C" then
    return "Cancel Status: Matching Engine Is Not Available (C)"
  end
  if value == "D" then
    return "Cancel Status: Cannot Find Order With Target Client Order Id (D)"
  end
  if value == "E" then
    return "Cancel Status: Exceeded Test Symbol Throttle (E)"
  end
  if value == "F" then
    return "Cancel Status: Order Is Routed (F)"
  end
  if value == "I" then
    return "Cancel Status: Invalid Mpid (I)"
  end
  if value == "O" then
    return "Cancel Status: Invalid Client Order Id (O)"
  end
  if value == "P" then
    return "Cancel Status: Request Is Not Permitted For This Session (P)"
  end
  if value == "Q" then
    return "Cancel Status: Specified Mpid Does Not Match Target Order (Q)"
  end
  if value == "S" then
    return "Cancel Status: Invalid Symbol Id (S)"
  end
  if value == "T" then
    return "Cancel Status: Invalid Target Client Order Id (T)"
  end
  if value == "X" then
    return "Cancel Status: Mpid Not Permitted (X)"
  end
  if value == "Z" then
    return "Cancel Status: Undefined Reason (Z)"
  end
  if value == "c" then
    return "Cancel Status: Modification Request Is Sent To Another Market And Pending Completion (c)"
  end
  if value == "*" then
    return "Cancel Status: Downgraded From Older Version (*)"
  end

  return "Cancel Status: Unknown("..value..")"
end

-- Dissect: Cancel Status
miax_pearlequities_expressorders_meo_v2_7_a.cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.cancel_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_status, range, value, display)

  return offset + length, value
end

-- Leaves Qty
miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty = {}

-- Size: Leaves Qty
miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.size = 4

-- Display: Leaves Qty
miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message = {}

-- Size: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.cancel_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cancel Status: Alphanumeric
  index, cancel_status = miax_pearlequities_expressorders_meo_v2_7_a.cancel_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_by_exchange_order_id_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_by_exchange_order_id_response_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order By Exchange Order Id Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request = {}

-- Size: Cancel Order By Exchange Order Id Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request.size =
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: Cancel Order By Exchange Order Id Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order By Exchange Order Id Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order By Exchange Order Id Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_by_exchange_order_id_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_by_exchange_order_id_request, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request.fields(buffer, offset, packet, parent)
  end
end

-- Original Client Order Id
miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id = {}

-- Size: Original Client Order Id
miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.size = 20

-- Display: Original Client Order Id
miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order Id: No Value"
  end

  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Cancel Order Response
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response = {}

-- Size: Cancel Order Response
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.cancel_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: Cancel Order Response
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Response
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cancel Status: Alphanumeric
  index, cancel_status = miax_pearlequities_expressorders_meo_v2_7_a.cancel_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Response
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_response, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request = {}

-- Size: Cancel Order Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request.size =
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: Cancel Order Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Request
miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_request, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request.fields(buffer, offset, packet, parent)
  end
end

-- Modify Status
miax_pearlequities_expressorders_meo_v2_7_a.modify_status = {}

-- Size: Modify Status
miax_pearlequities_expressorders_meo_v2_7_a.modify_status.size = 1

-- Display: Modify Status
miax_pearlequities_expressorders_meo_v2_7_a.modify_status.display = function(value)
  if value == " " then
    return "Modify Status: Successful (<whitespace>)"
  end
  if value == "A" then
    return "Modify Status: Duplicate Client Order Id (A)"
  end
  if value == "B" then
    return "Modify Status: Not In Live Order Window (B)"
  end
  if value == "C" then
    return "Modify Status: Matching Engine Is Not Available (C)"
  end
  if value == "D" then
    return "Modify Status: Cannot Find Order With Target Client Order Id (D)"
  end
  if value == "E" then
    return "Modify Status: Exceeded Test Symbol Throttle (E)"
  end
  if value == "F" then
    return "Modify Status: Order Is Routed (F)"
  end
  if value == "G" then
    return "Modify Status: Short Sale Orders Not Allowed (G)"
  end
  if value == "H" then
    return "Modify Status: Blocked By Meo User (H)"
  end
  if value == "I" then
    return "Modify Status: Invalid Mpid (I)"
  end
  if value == "J" then
    return "Modify Status: Invalid Price (J)"
  end
  if value == "K" then
    return "Modify Status: Invalid Size (K)"
  end
  if value == "L" then
    return "Modify Status: Blocked By Firm Over Miax Member Firm Portal Or By Helpdesk (L)"
  end
  if value == "M" then
    return "Modify Status: Exceeded Max Allowed Size (M)"
  end
  if value == "N" then
    return "Modify Status: Exceeded Max Notional Value (N)"
  end
  if value == "O" then
    return "Modify Status: Invalid Client Order Id (O)"
  end
  if value == "P" then
    return "Modify Status: Request Is Not Permitted For This Session (P)"
  end
  if value == "Q" then
    return "Modify Status: Specified Mpid Does Not Match Target Order (Q)"
  end
  if value == "R" then
    return "Modify Status: Blocked By Cumulative Risk Metrics (R)"
  end
  if value == "S" then
    return "Modify Status: Invalid Symbol Id (S)"
  end
  if value == "T" then
    return "Modify Status: Invalid Target Client Order Id (T)"
  end
  if value == "U" then
    return "Modify Status: Invalid Use Of Locate Required (U)"
  end
  if value == "V" then
    return "Modify Status: Invalid Sell Short (V)"
  end
  if value == "W" then
    return "Modify Status: Limit Order Price Protection (W)"
  end
  if value == "X" then
    return "Modify Status: Mpid Not Permitted (X)"
  end
  if value == "Z" then
    return "Modify Status: Undefined Reason (Z)"
  end
  if value == "a" then
    return "Modify Status: Invalid Min Qty Modification (a)"
  end
  if value == "b" then
    return "Modify Status: Invalid To Change Max Floor Qty (b)"
  end
  if value == "c" then
    return "Modify Status: Modification Request Is Sent To Another Market And Pending Completion (c)"
  end
  if value == "d" then
    return "Modify Status: Not Allowed Order Is Already Pending Modification (d)"
  end
  if value == "p" then
    return "Modify Status: Invalid For Current Symbol Trading Status Or Market State (p)"
  end
  if value == "t" then
    return "Modify Status: Invalid Max Floor Qty (t)"
  end
  if value == "y" then
    return "Modify Status: Pac Orders Are Not Allowed Routing To Primary (y)"
  end
  if value == "z" then
    return "Modify Status: Short Sale Exempt Orders Not Allowed (z)"
  end
  if value == "0" then
    return "Modify Status: Limit Price More Aggressive Than Market Impact (0)"
  end
  if value == "1" then
    return "Modify Status: Market Orders Not Allowed (1)"
  end
  if value == "2" then
    return "Modify Status: Restricted Security Not Allowed (2)"
  end
  if value == "3" then
    return "Modify Status: Blocked By Order Rate Metrics (3)"
  end
  if value == "4" then
    return "Modify Status: Average Daily Volume Protection (4)"
  end
  if value == "7" then
    return "Modify Status: Invalid Or Not Permitted Value In Locate Account Field (7)"
  end
  if value == "8" then
    return "Modify Status: Blocked By Drop Copy Acod Event (8)"
  end
  if value == "9" then
    return "Modify Status: Blocked By Drop Copy Acosf Event (9)"
  end
  if value == "@" then
    return "Modify Status: Invalid Order Expiry Time (@)"
  end
  if value == "#" then
    return "Modify Status: Early Trading Session Restriction (#)"
  end
  if value == "$" then
    return "Modify Status: Late Trading Session Restriction ($)"
  end
  if value == "*" then
    return "Modify Status: Downgraded From Older Version (*)"
  end

  return "Modify Status: Unknown("..value..")"
end

-- Dissect: Modify Status
miax_pearlequities_expressorders_meo_v2_7_a.modify_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.modify_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.modify_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_status, range, value, display)

  return offset + length, value
end

-- Modify Order Response
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response = {}

-- Size: Modify Order Response
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.modify_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: Modify Order Response
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Response
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_a.price.dissect(buffer, index, packet, parent)

  -- Modify Status: Alphanumeric
  index, modify_status = miax_pearlequities_expressorders_meo_v2_7_a.modify_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Response
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_order_response, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 19
miax_pearlequities_expressorders_meo_v2_7_a.reserved_19 = {}

-- Size: Reserved 19
miax_pearlequities_expressorders_meo_v2_7_a.reserved_19.size = 19

-- Display: Reserved 19
miax_pearlequities_expressorders_meo_v2_7_a.reserved_19.display = function(value)
  return "Reserved 19: "..value
end

-- Dissect: Reserved 19
miax_pearlequities_expressorders_meo_v2_7_a.reserved_19.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.reserved_19.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.reserved_19.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_19, range, value, display)

  return offset + length, value
end

-- Order Expiry Time
miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time = {}

-- Size: Order Expiry Time
miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.size = 8

-- Display: Order Expiry Time
miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Order Expiry Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Order Expiry Time
miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_expiry_time, range, value, display)

  return offset + length, value
end

-- Time In Force
miax_pearlequities_expressorders_meo_v2_7_a.time_in_force = {}

-- Size: Time In Force
miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.size = 1

-- Display: Time In Force
miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.display = function(value)
  if value == "R" then
    return "Time In Force: Regular Hours Only (R)"
  end
  if value == "I" then
    return "Time In Force: Immediate Or Cancel (I)"
  end
  if value == "D" then
    return "Time In Force: Regular Hours Only (D)"
  end
  if value == "F" then
    return "Time In Force: Fill Or Kill (F)"
  end
  if value == "T" then
    return "Time In Force: Good Until Time (T)"
  end
  if value == "E" then
    return "Time In Force: Good Until Extended Day (E)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Max Floor Qty
miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty = {}

-- Size: Max Floor Qty
miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.size = 4

-- Display: Max Floor Qty
miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.display = function(value)
  return "Max Floor Qty: "..value
end

-- Dissect: Max Floor Qty
miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.max_floor_qty, range, value, display)

  return offset + length, value
end

-- Min Qty
miax_pearlequities_expressorders_meo_v2_7_a.min_qty = {}

-- Size: Min Qty
miax_pearlequities_expressorders_meo_v2_7_a.min_qty.size = 4

-- Display: Min Qty
miax_pearlequities_expressorders_meo_v2_7_a.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
miax_pearlequities_expressorders_meo_v2_7_a.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions = {}

-- Size: Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.size = 1

-- Display: Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.display = function(buffer, packet, parent)
  local display = ""

  -- Is Locate Required flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Locate Required|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.bits = function(buffer, offset, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_5, buffer(offset, 1))

  -- Locate Required: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.locate_required, buffer(offset, 1))

  -- Short Sale Indicator: 2 Bit Enum with 4 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.short_sale_indicator, buffer(offset, 1))
end

-- Dissect: Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_order_instructions, range, display)

  if show.modify_order_instructions then
    miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size
miax_pearlequities_expressorders_meo_v2_7_a.size = {}

-- Size: Size
miax_pearlequities_expressorders_meo_v2_7_a.size.size = 4

-- Display: Size
miax_pearlequities_expressorders_meo_v2_7_a.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearlequities_expressorders_meo_v2_7_a.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.size, range, value, display)

  return offset + length, value
end

-- Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message = {}

-- Size: Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message.size =
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.min_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_19.size

-- Display: Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_a.size.dissect(buffer, index, packet, parent)

  -- Modify Order Instructions: Struct of 3 fields
  index, modify_order_instructions = miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_pearlequities_expressorders_meo_v2_7_a.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor Qty: BinaryU
  index, max_floor_qty = miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_a.locate_account.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Expiry Time: MilliTime
  index, order_expiry_time = miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.dissect(buffer, index, packet, parent)

  -- Reserved 19: BinaryU
  index, reserved_19 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_19.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_order_request_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Status
miax_pearlequities_expressorders_meo_v2_7_a.order_status = {}

-- Size: Order Status
miax_pearlequities_expressorders_meo_v2_7_a.order_status.size = 1

-- Display: Order Status
miax_pearlequities_expressorders_meo_v2_7_a.order_status.display = function(value)
  if value == "“ “" then
    return "Order Status: Successful (“ “)"
  end
  if value == "A" then
    return "Order Status: Duplicate Client Order Id (A)"
  end
  if value == "B" then
    return "Order Status: Not In Live Order Window (B)"
  end
  if value == "C" then
    return "Order Status: Matching Engine Is Not Available (C)"
  end
  if value == "D" then
    return "Order Status: Duplicate Order Check Rejected (D)"
  end
  if value == "E" then
    return "Order Status: Exceeded Test Symbol Throttle (E)"
  end
  if value == "F" then
    return "Order Status: Iso Orders Not Allowed (F)"
  end
  if value == "G" then
    return "Order Status: Invalid Self Trade Protection Group Or Its Use (G)"
  end
  if value == "H" then
    return "Order Status: Blocked By Meo User (H)"
  end
  if value == "I" then
    return "Order Status: Invalid Mpid (I)"
  end
  if value == "J" then
    return "Order Status: Invalid Price (J)"
  end
  if value == "K" then
    return "Order Status: Invalid Size (K)"
  end
  if value == "L" then
    return "Order Status: Blocked By Firm Over Miax Member Firm (L)"
  end
  if value == "M" then
    return "Order Status: Exceeded Max Allowed Size (M)"
  end
  if value == "N" then
    return "Order Status: Exceeded Max Notional Value (N)"
  end
  if value == "O" then
    return "Order Status: Invalid Client Order Id (O)"
  end
  if value == "P" then
    return "Order Status: Request Is Not Permitted For This Session (P)"
  end
  if value == "Q" then
    return "Order Status: Short Sale Orders Not Allowed (Q)"
  end
  if value == "R" then
    return "Order Status: Blocked By Cumulative Risk Metrics (R)"
  end
  if value == "S" then
    return "Order Status: Invalid Symbol Id (S)"
  end
  if value == "T" then
    return "Order Status: Invalid Order Type (T)"
  end
  if value == "U" then
    return "Order Status: Invalid Use Of Locate Required (U)"
  end
  if value == "V" then
    return "Order Status: Invalid Sell Short (V)"
  end
  if value == "W" then
    return "Order Status: Limit Order Price Protection (W)"
  end
  if value == "X" then
    return "Order Status: Mpid Not Permitted (X)"
  end
  if value == "Y" then
    return "Order Status: Iso Attribute Not Compatible With The Order Type (Y)"
  end
  if value == "Z" then
    return "Order Status: Undefined Reason (Z)"
  end
  if value == "a" then
    return "Order Status: Invalid Capacity (a)"
  end
  if value == "b" then
    return "Order Status: Invalid Time In Force (b)"
  end
  if value == "c" then
    return "Order Status: Invalid Routing Instruction Or Use (c)"
  end
  if value == "d" then
    return "Order Status: Invalid Self Trade Protection Level (d)"
  end
  if value == "e" then
    return "Order Status: Invalid Self Trade Protection Instruction Or Use (e)"
  end
  if value == "f" then
    return "Order Status: Invalid Attributable Value Or Use (f)"
  end
  if value == "g" then
    return "Order Status: Invalid Price Sliding And Reprice Frequency Value Or Use (g)"
  end
  if value == "h" then
    return "Order Status: Invalid Use Of Post Only Instruction (h)"
  end
  if value == "i" then
    return "Order Status: Invalid Use Of Display Instruction (i)"
  end
  if value == "j" then
    return "Order Status: Invalid Value Or Use For Available When Locked (j)"
  end
  if value == "k" then
    return "Order Status: Market Order Price Protection (k)"
  end
  if value == "l" then
    return "Order Status: Invalid Routing Strategy Or Its Use (l)"
  end
  if value == "m" then
    return "Order Status: Invalid Value In Account (m)"
  end
  if value == "n" then
    return "Order Status: Invalid Value In Clearing Account (n)"
  end
  if value == "o" then
    return "Order Status: Invalid Use Of Trading Collar Dollar Value (o)"
  end
  if value == "p" then
    return "Order Status: Invalid For Current Symbol Trading Status Or Market State (p)"
  end
  if value == "q" then
    return "Order Status: Primary Exchange Ipo Not Complete Ipo In Progress (q)"
  end
  if value == "r" then
    return "Order Status: Invalid Use Of Min Qty Size Or Min Qty Exec Type Instruction (r)"
  end
  if value == "s" then
    return "Order Status: Invalid Use Of Order Type (s)"
  end
  if value == "t" then
    return "Order Status: Invalid Max Floor Qty (t)"
  end
  if value == "u" then
    return "Order Status: Invalid Display Range Qty (u)"
  end
  if value == "v" then
    return "Order Status: Feature Not Available (v)"
  end
  if value == "w" then
    return "Order Status: Primary Listing Market Routing Not Supported (w)"
  end
  if value == "x" then
    return "Order Status: Too Late For Primary Listing Market Order (x)"
  end
  if value == "y" then
    return "Order Status: Pac Orders Are Not Allowed Routing To Primary (y)"
  end
  if value == "z" then
    return "Order Status: Short Sale Exempt Orders Not Allowed (z)"
  end
  if value == "0" then
    return "Order Status: Limit Price More Aggressive Than Market Impact Collar (0)"
  end
  if value == "1" then
    return "Order Status: Market Orders Not Allowed (1)"
  end
  if value == "2" then
    return "Order Status: Restricted Security Not Allowed (2)"
  end
  if value == "3" then
    return "Order Status: Blocked By Order Rate Metrics (3)"
  end
  if value == "4" then
    return "Order Status: Average Daily Volume Protection (4)"
  end
  if value == "5" then
    return "Order Status: Invalid Offset For Primary Peg Order (5)"
  end
  if value == "6" then
    return "Order Status: Invalid Purge Group Specified (6)"
  end
  if value == "7" then
    return "Order Status: Invalid Or Not Permitted Value In Locate Account (7)"
  end
  if value == "8" then
    return "Order Status: Blocked By Drop Copy Acod Event (8)"
  end
  if value == "9" then
    return "Order Status: Blocked By Drop Copy Acosf Event (9)"
  end
  if value == "!" then
    return "Order Status: Invalid Use Of‘ Cancel Order If Not A Nbbo Setter (!)"
  end
  if value == "@" then
    return "Order Status: Invalid Order Expiry Time (@)"
  end
  if value == "#" then
    return "Order Status: Early Trading Session Restriction (#)"
  end
  if value == "$" then
    return "Order Status: Late Trading Session Restriction ($)"
  end
  if value == "*" then
    return "Order Status: Downgraded From Older Version (*)"
  end

  return "Order Status: Unknown("..value..")"
end

-- Dissect: Order Status
miax_pearlequities_expressorders_meo_v2_7_a.order_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_status, range, value, display)

  return offset + length, value
end

-- New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message = {}

-- Size: New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_19.size

-- Display: New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_a.size.dissect(buffer, index, packet, parent)

  -- Order Status: Alphanumeric
  index, order_status = miax_pearlequities_expressorders_meo_v2_7_a.order_status.dissect(buffer, index, packet, parent)

  -- Reserved 19: BinaryU
  index, reserved_19 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_19.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.new_order_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.new_order_response_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 11
miax_pearlequities_expressorders_meo_v2_7_a.reserved_11 = {}

-- Size: Reserved 11
miax_pearlequities_expressorders_meo_v2_7_a.reserved_11.size = 11

-- Display: Reserved 11
miax_pearlequities_expressorders_meo_v2_7_a.reserved_11.display = function(value)
  return "Reserved 11: "..value
end

-- Dissect: Reserved 11
miax_pearlequities_expressorders_meo_v2_7_a.reserved_11.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.reserved_11.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.reserved_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_11, range, value, display)

  return offset + length, value
end

-- Peg Offset
miax_pearlequities_expressorders_meo_v2_7_a.peg_offset = {}

-- Size: Peg Offset
miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.size = 8

-- Display: Peg Offset
miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.display = function(value)
  return "Peg Offset: "..value
end

-- Translate: Peg Offset
miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Peg Offset
miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Display Range Qty
miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty = {}

-- Size: Display Range Qty
miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty.size = 4

-- Display: Display Range Qty
miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty.display = function(value)
  return "Display Range Qty: "..value
end

-- Dissect: Display Range Qty
miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.display_range_qty, range, value, display)

  return offset + length, value
end

-- Clearing Account
miax_pearlequities_expressorders_meo_v2_7_a.clearing_account = {}

-- Size: Clearing Account
miax_pearlequities_expressorders_meo_v2_7_a.clearing_account.size = 4

-- Display: Clearing Account
miax_pearlequities_expressorders_meo_v2_7_a.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
miax_pearlequities_expressorders_meo_v2_7_a.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.clearing_account.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_a.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Account
miax_pearlequities_expressorders_meo_v2_7_a.account = {}

-- Size: Account
miax_pearlequities_expressorders_meo_v2_7_a.account.size = 16

-- Display: Account
miax_pearlequities_expressorders_meo_v2_7_a.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
miax_pearlequities_expressorders_meo_v2_7_a.account.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.account.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_a.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.account, range, value, display)

  return offset + length, value
end

-- Capacity
miax_pearlequities_expressorders_meo_v2_7_a.capacity = {}

-- Size: Capacity
miax_pearlequities_expressorders_meo_v2_7_a.capacity.size = 1

-- Display: Capacity
miax_pearlequities_expressorders_meo_v2_7_a.capacity.display = function(value)
  if value == "A" then
    return "Capacity: Agency (A)"
  end
  if value == "P" then
    return "Capacity: Principal (P)"
  end
  if value == "R" then
    return "Capacity: Riskless Principal (R)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
miax_pearlequities_expressorders_meo_v2_7_a.capacity.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.capacity, range, value, display)

  return offset + length, value
end

-- Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value = {}

-- Size: Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.size = 8

-- Display: Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.display = function(value)
  return "Trading Collar Dollar Value: "..value
end

-- Translate: Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.trading_collar_dollar_value, range, value, display)

  return offset + length, value
end

-- Routing
miax_pearlequities_expressorders_meo_v2_7_a.routing = {}

-- Size: Routing
miax_pearlequities_expressorders_meo_v2_7_a.routing.size = 1

-- Display: Routing
miax_pearlequities_expressorders_meo_v2_7_a.routing.display = function(buffer, packet, parent)
  local display = ""


  return display:sub(1, -2)
end

-- Dissect Bit Fields: Routing
miax_pearlequities_expressorders_meo_v2_7_a.routing.bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_2, buffer(offset, 1))

  -- Routing Strategy: 3 Bit Enum with 3 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.routing_strategy, buffer(offset, 1))

  -- Routing Instruction: 3 Bit Enum with 3 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.routing_instruction, buffer(offset, 1))
end

-- Dissect: Routing
miax_pearlequities_expressorders_meo_v2_7_a.routing.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.routing.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.routing, range, display)

  if show.routing then
    miax_pearlequities_expressorders_meo_v2_7_a.routing.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Self Trade Protection Group
miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group = {}

-- Size: Self Trade Protection Group
miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group.size = 1

-- Display: Self Trade Protection Group
miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group.display = function(value)
  return "Self Trade Protection Group: "..value
end

-- Dissect: Self Trade Protection Group
miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.self_trade_protection_group, range, value, display)

  return offset + length, value
end

-- Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection = {}

-- Size: Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.size = 1

-- Display: Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.display = function(buffer, packet, parent)
  local display = ""


  return display:sub(1, -2)
end

-- Dissect Bit Fields: Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_2, buffer(offset, 1))

  -- Self Trade Protection Instruction: 3 Bit Enum with 5 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.self_trade_protection_instruction, buffer(offset, 1))

  -- Self Trade Protection Level: 3 Bit Enum with 4 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.self_trade_protection_level, buffer(offset, 1))
end

-- Dissect: Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.self_trade_protection, range, display)

  if show.self_trade_protection then
    miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Price Sliding And Reprice Frequency
miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency = {}

-- Size: Price Sliding And Reprice Frequency
miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency.size = 1

-- Display: Price Sliding And Reprice Frequency
miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency.display = function(value)
  if value == "D" then
    return "Price Sliding And Reprice Frequency: Reprice Once (D)"
  end
  if value == "C" then
    return "Price Sliding And Reprice Frequency: Reprice Once But Cancel If Crossed At Entry (C)"
  end
  if value == "M" then
    return "Price Sliding And Reprice Frequency: Reprice Multiple Times (M)"
  end
  if value == "N" then
    return "Price Sliding And Reprice Frequency: No Price Sliding (N)"
  end
  if value == "Q" then
    return "Price Sliding And Reprice Frequency: Not Applicable (Q)"
  end

  return "Price Sliding And Reprice Frequency: Unknown("..value..")"
end

-- Dissect: Price Sliding And Reprice Frequency
miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.price_sliding_and_reprice_frequency, range, value, display)

  return offset + length, value
end

-- Order Type
miax_pearlequities_expressorders_meo_v2_7_a.order_type = {}

-- Size: Order Type
miax_pearlequities_expressorders_meo_v2_7_a.order_type.size = 1

-- Display: Order Type
miax_pearlequities_expressorders_meo_v2_7_a.order_type.display = function(value)
  if value == "1" then
    return "Order Type: Limit (1)"
  end
  if value == "2" then
    return "Order Type: Market (2)"
  end
  if value == "M" then
    return "Order Type: Midpoint Peg (M)"
  end
  if value == "m" then
    return "Order Type: Midpoint Peg But Do Not Match When Nbbo Is Locked (m)"
  end
  if value == "R" then
    return "Order Type: Primary Peg (R)"
  end
  if value == "r" then
    return "Order Type: Primary Peg But Do Not Match When Nbbo Is Locked (r)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
miax_pearlequities_expressorders_meo_v2_7_a.order_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_type, range, value, display)

  return offset + length, value
end

-- New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions = {}

-- Size: New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.size = 2

-- Display: New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.display = function(buffer, packet, parent)
  local display = ""

  -- Is Cancel Order If Not A Nbbo Setter With Size flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Cancel Order If Not A Nbbo Setter With Size|"
  end
  -- Is Cancel Order If Not A Nbbo Setter flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Cancel Order If Not A Nbbo Setter|"
  end
  -- Is Retail Order flag set?
  if buffer:bitfield(8) > 0 then
    display = display.."Retail Order|"
  end
  -- Is Iso flag set?
  if buffer:bitfield(9) > 0 then
    display = display.."Iso|"
  end
  -- Is Locate Required flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Locate Required|"
  end
  -- Is Post Only flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Post Only|"
  end
  -- Is Displayed flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Displayed|"
  end
  -- Is Side flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Side|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.bits = function(buffer, offset, packet, parent)

  -- Unused 2: 2 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unused_2, buffer(offset, 2))

  -- Cancel Order If Not A Nbbo Setter With Size: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_if_not_a_nbbo_setter_with_size, buffer(offset, 2))

  -- Cancel Order If Not A Nbbo Setter: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_order_if_not_a_nbbo_setter, buffer(offset, 2))

  -- Min Qty Exec Type: 2 Bit Enum with 3 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.min_qty_exec_type, buffer(offset, 2))

  -- Attributable Order: 2 Bit Enum with 3 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.attributable_order, buffer(offset, 2))

  -- Retail Order: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.retail_order, buffer(offset, 2))

  -- Iso: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.iso, buffer(offset, 2))

  -- Locate Required: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.locate_required, buffer(offset, 2))

  -- Post Only: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.post_only, buffer(offset, 2))

  -- Displayed: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.displayed, buffer(offset, 2))

  -- Short Sale Indicator: 2 Bit Enum with 4 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.short_sale_indicator, buffer(offset, 2))

  -- Side: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.side, buffer(offset, 2))
end

-- Dissect: New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.display(range, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.new_order_instructions, range, display)

  if show.new_order_instructions then
    miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message = {}

-- Size: New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message.size =
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_type.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.routing.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.capacity.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.account.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.clearing_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.min_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.purge_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_11.size

-- Display: New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_a.size.dissect(buffer, index, packet, parent)

  -- New Order Instructions: Struct of 12 fields
  index, new_order_instructions = miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_pearlequities_expressorders_meo_v2_7_a.order_type.dissect(buffer, index, packet, parent)

  -- Price Sliding And Reprice Frequency: Alphanumeric
  index, price_sliding_and_reprice_frequency = miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency.dissect(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: Alphanumeric
  index, self_trade_protection_group = miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Routing: Struct of 3 fields
  index, routing = miax_pearlequities_expressorders_meo_v2_7_a.routing.dissect(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price6S
  index, trading_collar_dollar_value = miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = miax_pearlequities_expressorders_meo_v2_7_a.capacity.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_pearlequities_expressorders_meo_v2_7_a.account.dissect(buffer, index, packet, parent)

  -- Clearing Account: String
  index, clearing_account = miax_pearlequities_expressorders_meo_v2_7_a.clearing_account.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_pearlequities_expressorders_meo_v2_7_a.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor Qty: BinaryU
  index, max_floor_qty = miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.dissect(buffer, index, packet, parent)

  -- Display Range Qty: BinaryU
  index, display_range_qty = miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty.dissect(buffer, index, packet, parent)

  -- Peg Offset: Price6S
  index, peg_offset = miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_a.locate_account.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_pearlequities_expressorders_meo_v2_7_a.purge_group.dissect(buffer, index, packet, parent)

  -- Order Expiry Time: MilliTime
  index, order_expiry_time = miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.dissect(buffer, index, packet, parent)

  -- Reserved 11: BinaryU
  index, reserved_11 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_11.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.new_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.new_order_request_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message = {}

-- Calculate runtime size of: Unsequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message.size = function(buffer, offset, unsequenced_message_type)
  -- Size of New Order Request Message
  if unsequenced_message_type == "N1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message.size(buffer, offset)
  end
  -- Size of New Order Response Message
  if unsequenced_message_type == "NR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.size(buffer, offset)
  end
  -- Size of Modify Order Request Message
  if unsequenced_message_type == "M1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message.size(buffer, offset)
  end
  -- Size of Modify Order Response
  if unsequenced_message_type == "MR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.size(buffer, offset)
  end
  -- Size of Cancel Order Request
  if unsequenced_message_type == "CO" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request.size(buffer, offset)
  end
  -- Size of Cancel Order Response
  if unsequenced_message_type == "CR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.size(buffer, offset)
  end
  -- Size of Cancel Order By Exchange Order Id Request
  if unsequenced_message_type == "CX" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request.size(buffer, offset)
  end
  -- Size of Cancel Order By Exchange Order Id Response Message
  if unsequenced_message_type == "CQ" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Request
  if unsequenced_message_type == "XQ" then
    return miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request.size(buffer, offset)
  end
  -- Size of Mass Cancel Response
  if unsequenced_message_type == "XR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response.size(buffer, offset)
  end
  -- Size of Aggressive Side Purge Request
  if unsequenced_message_type == "XS" then
    return miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request.size(buffer, offset)
  end
  -- Size of Aggressive Side Purge Response
  if unsequenced_message_type == "SR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response.size(buffer, offset)
  end
  -- Size of Reserve Order Replenishment Notification
  if unsequenced_message_type == "RA" then
    return miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.size(buffer, offset)
  end
  -- Size of Execution Notification
  if unsequenced_message_type == "E1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.size(buffer, offset)
  end

  return 0
end

-- Display: Unsequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Unsequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message.branches = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect New Order Request Message
  if unsequenced_message_type == "N1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response Message
  if unsequenced_message_type == "NR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Request Message
  if unsequenced_message_type == "M1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if unsequenced_message_type == "MR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Request
  if unsequenced_message_type == "CO" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response
  if unsequenced_message_type == "CR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order By Exchange Order Id Request
  if unsequenced_message_type == "CX" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order By Exchange Order Id Response Message
  if unsequenced_message_type == "CQ" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request
  if unsequenced_message_type == "XQ" then
    return miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Response
  if unsequenced_message_type == "XR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.mass_cancel_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aggressive Side Purge Request
  if unsequenced_message_type == "XS" then
    return miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aggressive Side Purge Response
  if unsequenced_message_type == "SR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.aggressive_side_purge_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reserve Order Replenishment Notification
  if unsequenced_message_type == "RA" then
    return miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Notification
  if unsequenced_message_type == "E1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Unsequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  if not show.unsequenced_message then
    return miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message.size(buffer, offset, unsequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unsequenced_message, range, display)

  return miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message.branches(buffer, offset, packet, parent, unsequenced_message_type)
end

-- Unsequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message_type.size = 2

-- Display: Unsequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message_type.display = function(value)
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
  if value == "XS" then
    return "Unsequenced Message Type: Aggressive Side Purge Request (XS)"
  end
  if value == "SR" then
    return "Unsequenced Message Type: Aggressive Side Purge Response (SR)"
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
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 3
end

-- Display: Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 14 values
  index, unsequenced_message_type = miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 14 branches
  index = miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_unsequenced_data_packet = miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.unsequenced_data_packet then
    local range = buffer(offset, size_of_unsequenced_data_packet)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.unsequenced_data_packet, range, display)
  end

  miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

  return offset + size_of_unsequenced_data_packet
end

-- Nbbo Indicator
miax_pearlequities_expressorders_meo_v2_7_a.nbbo_indicator = {}

-- Size: Nbbo Indicator
miax_pearlequities_expressorders_meo_v2_7_a.nbbo_indicator.size = 1

-- Display: Nbbo Indicator
miax_pearlequities_expressorders_meo_v2_7_a.nbbo_indicator.display = function(value)
  if value == "Y" then
    return "Nbbo Indicator: Nbbo Setter (Y)"
  end
  if value == "F" then
    return "Nbbo Indicator: Nbbo First Joiner (F)"
  end
  if value == "S" then
    return "Nbbo Indicator: Nbbo Setter With Size (S)"
  end
  if value == "J" then
    return "Nbbo Indicator: Nbbo First Joiner With Size (J)"
  end
  if value == "N" then
    return "Nbbo Indicator: Not Applicable (N)"
  end

  return "Nbbo Indicator: Unknown("..value..")"
end

-- Dissect: Nbbo Indicator
miax_pearlequities_expressorders_meo_v2_7_a.nbbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.nbbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.nbbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.nbbo_indicator, range, value, display)

  return offset + length, value
end

-- Working Price
miax_pearlequities_expressorders_meo_v2_7_a.working_price = {}

-- Size: Working Price
miax_pearlequities_expressorders_meo_v2_7_a.working_price.size = 8

-- Display: Working Price
miax_pearlequities_expressorders_meo_v2_7_a.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
miax_pearlequities_expressorders_meo_v2_7_a.working_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Working Price
miax_pearlequities_expressorders_meo_v2_7_a.working_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_expressorders_meo_v2_7_a.working_price.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.working_price, range, value, display)

  return offset + length, value
end

-- Order Price Update Notification
miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification = {}

-- Size: Order Price Update Notification
miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.working_price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.nbbo_indicator.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_9.size

-- Display: Order Price Update Notification
miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Price Update Notification
miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Working Price: Price6U
  index, working_price = miax_pearlequities_expressorders_meo_v2_7_a.working_price.dissect(buffer, index, packet, parent)

  -- Nbbo Indicator: Alphanumeric
  index, nbbo_indicator = miax_pearlequities_expressorders_meo_v2_7_a.nbbo_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 9: BinaryU
  index, reserved_9 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Update Notification
miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification.dissect = function(buffer, offset, packet, parent)
  if show.order_price_update_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.order_price_update_notification, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification.fields(buffer, offset, packet, parent)
  end
end

-- Pending Reject Reason
miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason = {}

-- Size: Pending Reject Reason
miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason.size = 1

-- Display: Pending Reject Reason
miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason.display = function(value)
  if value == " " then
    return "Pending Reject Reason: Not Applicable (<whitespace>)"
  end
  if value == "X" then
    return "Pending Reject Reason: Rejected By Primary Listing Market (X)"
  end
  if value == "X" then
    return "Pending Reject Reason: Rejected By Primary Market (X)"
  end

  return "Pending Reject Reason: Unknown("..value..")"
end

-- Dissect: Pending Reject Reason
miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.pending_reject_reason, range, value, display)

  return offset + length, value
end

-- Pending Cancel Status
miax_pearlequities_expressorders_meo_v2_7_a.pending_cancel_status = {}

-- Size: Pending Cancel Status
miax_pearlequities_expressorders_meo_v2_7_a.pending_cancel_status.size = 1

-- Display: Pending Cancel Status
miax_pearlequities_expressorders_meo_v2_7_a.pending_cancel_status.display = function(value)
  if value == " " then
    return "Pending Cancel Status: Completed Or Not Applicable (<whitespace>)"
  end
  if value == "X" then
    return "Pending Cancel Status: Pending Cancellation Request Is Rejected (X)"
  end
  if value == "P" then
    return "Pending Cancel Status: Cancel Request Was Received But Is Pending (P)"
  end

  return "Pending Cancel Status: Unknown("..value..")"
end

-- Dissect: Pending Cancel Status
miax_pearlequities_expressorders_meo_v2_7_a.pending_cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.pending_cancel_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.pending_cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.pending_cancel_status, range, value, display)

  return offset + length, value
end

-- Cancel Reason
miax_pearlequities_expressorders_meo_v2_7_a.cancel_reason = {}

-- Size: Cancel Reason
miax_pearlequities_expressorders_meo_v2_7_a.cancel_reason.size = 1

-- Display: Cancel Reason
miax_pearlequities_expressorders_meo_v2_7_a.cancel_reason.display = function(value)
  if value == "A" then
    return "Cancel Reason: Cancelled Due To Cumulative Risk Metrics (A)"
  end
  if value == "B" then
    return "Cancel Reason: Reserved For Future Use (B)"
  end
  if value == "C" then
    return "Cancel Reason: Time In Force Cancelled (C)"
  end
  if value == "D" then
    return "Cancel Reason: Auto Cancel On Disconnect Acod (D)"
  end
  if value == "E" then
    return "Cancel Reason: Post Only Order Is Lockingcrossing Miax (E)"
  end
  if value == "F" then
    return "Cancel Reason: Auto Cancel On System Failure Acosf (F)"
  end
  if value == "G" then
    return "Cancel Reason: Cancelled Due To Price Sliding Instruction (G)"
  end
  if value == "H" then
    return "Cancel Reason: Cancelled By Helpdesk Or Over Miax Member (H)"
  end
  if value == "I" then
    return "Cancel Reason: Order Expired (I)"
  end
  if value == "J" then
    return "Cancel Reason: Symbol Trading Status Makes Pac Market (J)"
  end
  if value == "K" then
    return "Cancel Reason: Trading Collar Protection (K)"
  end
  if value == "L" then
    return "Cancel Reason: Sell Short Iso When Short Sale Price Test Is (L)"
  end
  if value == "M" then
    return "Cancel Reason: Symbol Is Not Trading (M)"
  end
  if value == "N" then
    return "Cancel Reason: Limit Order Price Protection (N)"
  end
  if value == "O" then
    return "Cancel Reason: Route To Primary Listing Market Rejected (O)"
  end
  if value == "P" then
    return "Cancel Reason: Cancelled By A Mass Cancel Request Over A Priority Purge Port (P)"
  end
  if value == "Q" then
    return "Cancel Reason: Unexpected Cancel By Primary Listing Market (Q)"
  end
  if value == "R" then
    return "Cancel Reason: Cancelled Due To Failed Price Improvement (R)"
  end
  if value == "S" then
    return "Cancel Reason: Cancelled Due To Primary Auction Route (S)"
  end
  if value == "T" then
    return "Cancel Reason: Cancelled Due To Order Rate Protection (T)"
  end
  if value == "U" then
    return "Cancel Reason: Cancelled By User Through Order Entry Session (U)"
  end
  if value == "V" then
    return "Cancel Reason: Invalid Pegged Order Price (V)"
  end
  if value == "W" then
    return "Cancel Reason: Pac Order Cancelled As Security Is Halted (W)"
  end
  if value == "X" then
    return "Cancel Reason: Not Applicable Used When Pending Cancel (X)"
  end
  if value == "Y" then
    return "Cancel Reason: Primary Auction Order Is Cancelled Due To A (Y)"
  end
  if value == "0" then
    return "Cancel Reason: Cancelled Due To Market Impact Collar (0)"
  end
  if value == "1" then
    return "Cancel Reason: Cancel Newest Instruction (1)"
  end
  if value == "2" then
    return "Cancel Reason: Cancel Oldest Instruction (2)"
  end
  if value == "3" then
    return "Cancel Reason: Cancel Both Instruction (3)"
  end
  if value == "4" then
    return "Cancel Reason: Decrement And Cancel Instruction (4)"
  end
  if value == "5" then
    return "Cancel Reason: Cancelled Due To Drop Copy Acod Event (5)"
  end
  if value == "6" then
    return "Cancel Reason: Cancelled Due To Drop Copy Acosf Event (6)"
  end
  if value == "7" then
    return "Cancel Reason: Cancelled As Order Did Not Set Nbbo (7)"
  end
  if value == "8" then
    return "Cancel Reason: Cancelled By User Through A Session Other (8)"
  end
  if value == "Z" then
    return "Cancel Reason: Undefined Reason (Z)"
  end
  if value == "*" then
    return "Cancel Reason: Downgraded From Older Version (*)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
miax_pearlequities_expressorders_meo_v2_7_a.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reduce Size Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification = {}

-- Size: Cancel Reduce Size Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.cancel_reason.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.last_price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.last_size.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.pending_cancel_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size

-- Display: Cancel Reduce Size Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reduce Size Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alphanumeric
  index, cancel_reason = miax_pearlequities_expressorders_meo_v2_7_a.cancel_reason.dissect(buffer, index, packet, parent)

  -- Last Price: Price6U
  index, last_price = miax_pearlequities_expressorders_meo_v2_7_a.last_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_pearlequities_expressorders_meo_v2_7_a.last_size.dissect(buffer, index, packet, parent)

  -- Pending Cancel Status: Alphanumeric
  index, pending_cancel_status = miax_pearlequities_expressorders_meo_v2_7_a.pending_cancel_status.dissect(buffer, index, packet, parent)

  -- Pending Reject Reason: Alphanumeric
  index, pending_reject_reason = miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reduce Size Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification.dissect = function(buffer, offset, packet, parent)
  if show.cancel_reduce_size_order_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.cancel_reduce_size_order_notification, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 17
miax_pearlequities_expressorders_meo_v2_7_a.reserved_17 = {}

-- Size: Reserved 17
miax_pearlequities_expressorders_meo_v2_7_a.reserved_17.size = 17

-- Display: Reserved 17
miax_pearlequities_expressorders_meo_v2_7_a.reserved_17.display = function(value)
  return "Reserved 17: "..value
end

-- Dissect: Reserved 17
miax_pearlequities_expressorders_meo_v2_7_a.reserved_17.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.reserved_17.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.reserved_17.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_17, range, value, display)

  return offset + length, value
end

-- Pending Modify Status
miax_pearlequities_expressorders_meo_v2_7_a.pending_modify_status = {}

-- Size: Pending Modify Status
miax_pearlequities_expressorders_meo_v2_7_a.pending_modify_status.size = 1

-- Display: Pending Modify Status
miax_pearlequities_expressorders_meo_v2_7_a.pending_modify_status.display = function(value)
  if value == " " then
    return "Pending Modify Status: Pending Modification Is Completed Or (<whitespace>)"
  end
  if value == "P" then
    return "Pending Modify Status: Modification Request Is Sent To Another (P)"
  end
  if value == "X" then
    return "Pending Modify Status: Pending Modification Request Is Rejected (X)"
  end

  return "Pending Modify Status: Unknown("..value..")"
end

-- Dissect: Pending Modify Status
miax_pearlequities_expressorders_meo_v2_7_a.pending_modify_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.pending_modify_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.pending_modify_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.pending_modify_status, range, value, display)

  return offset + length, value
end

-- Modify Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification = {}

-- Size: Modify Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.min_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.pending_modify_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_17.size

-- Display: Modify Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_a.size.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_a.leaves_qty.dissect(buffer, index, packet, parent)

  -- Modify Order Instructions: Struct of 3 fields
  index, modify_order_instructions = miax_pearlequities_expressorders_meo_v2_7_a.modify_order_instructions.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_pearlequities_expressorders_meo_v2_7_a.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor Qty: BinaryU
  index, max_floor_qty = miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.dissect(buffer, index, packet, parent)

  -- Pending Modify Status: Alphanumeric
  index, pending_modify_status = miax_pearlequities_expressorders_meo_v2_7_a.pending_modify_status.dissect(buffer, index, packet, parent)

  -- Pending Reject Reason: Alphanumeric
  index, pending_reject_reason = miax_pearlequities_expressorders_meo_v2_7_a.pending_reject_reason.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_a.locate_account.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Expiry Time: MilliTime
  index, order_expiry_time = miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.dissect(buffer, index, packet, parent)

  -- Reserved 17: Alphanumeric
  index, reserved_17 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_17.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.modify_order_notification, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification.fields(buffer, offset, packet, parent)
  end
end

-- New Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification = {}

-- Size: New Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_type.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.routing.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.capacity.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.account.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.clearing_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.min_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.purge_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.size

-- Display: New Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_a.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_a.order_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_a.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_a.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_a.size.dissect(buffer, index, packet, parent)

  -- New Order Instructions: Struct of 12 fields
  index, new_order_instructions = miax_pearlequities_expressorders_meo_v2_7_a.new_order_instructions.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_pearlequities_expressorders_meo_v2_7_a.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_pearlequities_expressorders_meo_v2_7_a.order_type.dissect(buffer, index, packet, parent)

  -- Price Sliding And Reprice Frequency: Alphanumeric
  index, price_sliding_and_reprice_frequency = miax_pearlequities_expressorders_meo_v2_7_a.price_sliding_and_reprice_frequency.dissect(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: Alphanumeric
  index, self_trade_protection_group = miax_pearlequities_expressorders_meo_v2_7_a.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Routing: Struct of 3 fields
  index, routing = miax_pearlequities_expressorders_meo_v2_7_a.routing.dissect(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price6S
  index, trading_collar_dollar_value = miax_pearlequities_expressorders_meo_v2_7_a.trading_collar_dollar_value.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = miax_pearlequities_expressorders_meo_v2_7_a.capacity.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_pearlequities_expressorders_meo_v2_7_a.account.dissect(buffer, index, packet, parent)

  -- Clearing Account: String
  index, clearing_account = miax_pearlequities_expressorders_meo_v2_7_a.clearing_account.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_pearlequities_expressorders_meo_v2_7_a.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor Qty: BinaryU
  index, max_floor_qty = miax_pearlequities_expressorders_meo_v2_7_a.max_floor_qty.dissect(buffer, index, packet, parent)

  -- Display Range Qty: BinaryU
  index, display_range_qty = miax_pearlequities_expressorders_meo_v2_7_a.display_range_qty.dissect(buffer, index, packet, parent)

  -- Peg Offset: Price6S
  index, peg_offset = miax_pearlequities_expressorders_meo_v2_7_a.peg_offset.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_a.locate_account.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_pearlequities_expressorders_meo_v2_7_a.purge_group.dissect(buffer, index, packet, parent)

  -- Original Order Capacity: Alphanumeric
  index, original_order_capacity = miax_pearlequities_expressorders_meo_v2_7_a.original_order_capacity.dissect(buffer, index, packet, parent)

  -- Order Expiry Time: MilliTime
  index, order_expiry_time = miax_pearlequities_expressorders_meo_v2_7_a.order_expiry_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Notification
miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification.dissect = function(buffer, offset, packet, parent)
  if show.new_order_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.new_order_notification, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification.fields(buffer, offset, packet, parent)
  end
end

-- System Status
miax_pearlequities_expressorders_meo_v2_7_a.system_status = {}

-- Size: System Status
miax_pearlequities_expressorders_meo_v2_7_a.system_status.size = 1

-- Display: System Status
miax_pearlequities_expressorders_meo_v2_7_a.system_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_a.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.system_status, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearlequities_expressorders_meo_v2_7_a.session_id = {}

-- Size: Session Id
miax_pearlequities_expressorders_meo_v2_7_a.session_id.size = 1

-- Display: Session Id
miax_pearlequities_expressorders_meo_v2_7_a.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearlequities_expressorders_meo_v2_7_a.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.session_id, range, value, display)

  return offset + length, value
end

-- Meo Version
miax_pearlequities_expressorders_meo_v2_7_a.meo_version = {}

-- Size: Meo Version
miax_pearlequities_expressorders_meo_v2_7_a.meo_version.size = 8

-- Display: Meo Version
miax_pearlequities_expressorders_meo_v2_7_a.meo_version.display = function(value)
  return "Meo Version: "..value
end

-- Dissect: Meo Version
miax_pearlequities_expressorders_meo_v2_7_a.meo_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.meo_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_a.meo_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.meo_version, range, value, display)

  return offset + length, value
end

-- System State Notification
miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification = {}

-- Size: System State Notification
miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.meo_version.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.session_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.system_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.size

-- Display: System State Notification
miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Notification
miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Meo Version: Alphanumeric
  index, meo_version = miax_pearlequities_expressorders_meo_v2_7_a.meo_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearlequities_expressorders_meo_v2_7_a.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearlequities_expressorders_meo_v2_7_a.system_status.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Notification
miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification.dissect = function(buffer, offset, packet, parent)
  if show.system_state_notification then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.system_state_notification, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification.fields(buffer, offset, packet, parent)
  end
end

-- Primary Market Code
miax_pearlequities_expressorders_meo_v2_7_a.primary_market_code = {}

-- Size: Primary Market Code
miax_pearlequities_expressorders_meo_v2_7_a.primary_market_code.size = 1

-- Display: Primary Market Code
miax_pearlequities_expressorders_meo_v2_7_a.primary_market_code.display = function(value)
  if value == "A" then
    return "Primary Market Code: Nyse American (A)"
  end
  if value == "B" then
    return "Primary Market Code: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Primary Market Code: Nyse National (C)"
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
miax_pearlequities_expressorders_meo_v2_7_a.primary_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.primary_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.primary_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_pearlequities_expressorders_meo_v2_7_a.closing_time = {}

-- Size: Closing Time
miax_pearlequities_expressorders_meo_v2_7_a.closing_time.size = 8

-- Display: Closing Time
miax_pearlequities_expressorders_meo_v2_7_a.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearlequities_expressorders_meo_v2_7_a.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_a.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearlequities_expressorders_meo_v2_7_a.opening_time = {}

-- Size: Opening Time
miax_pearlequities_expressorders_meo_v2_7_a.opening_time.size = 8

-- Display: Opening Time
miax_pearlequities_expressorders_meo_v2_7_a.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearlequities_expressorders_meo_v2_7_a.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_a.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Lot Size
miax_pearlequities_expressorders_meo_v2_7_a.lot_size = {}

-- Size: Lot Size
miax_pearlequities_expressorders_meo_v2_7_a.lot_size.size = 4

-- Display: Lot Size
miax_pearlequities_expressorders_meo_v2_7_a.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
miax_pearlequities_expressorders_meo_v2_7_a.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Future
miax_pearlequities_expressorders_meo_v2_7_a.future = {}

-- Size: Future
miax_pearlequities_expressorders_meo_v2_7_a.future.size = 1

-- Display: Future
miax_pearlequities_expressorders_meo_v2_7_a.future.display = function(value)
  return "Future: "..value
end

-- Dissect: Future
miax_pearlequities_expressorders_meo_v2_7_a.future.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.future.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.future.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.future, range, value, display)

  return offset + length, value
end

-- Test Security Indicator
miax_pearlequities_expressorders_meo_v2_7_a.test_security_indicator = {}

-- Size: Test Security Indicator
miax_pearlequities_expressorders_meo_v2_7_a.test_security_indicator.size = 1

-- Display: Test Security Indicator
miax_pearlequities_expressorders_meo_v2_7_a.test_security_indicator.display = function(value)
  if value == "Y" then
    return "Test Security Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Test Security Indicator: No (N)"
  end

  return "Test Security Indicator: Unknown("..value..")"
end

-- Dissect: Test Security Indicator
miax_pearlequities_expressorders_meo_v2_7_a.test_security_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.test_security_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.test_security_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_pearlequities_expressorders_meo_v2_7_a.reserved_1 = {}

-- Size: Reserved 1
miax_pearlequities_expressorders_meo_v2_7_a.reserved_1.size = 1

-- Display: Reserved 1
miax_pearlequities_expressorders_meo_v2_7_a.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_pearlequities_expressorders_meo_v2_7_a.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Ticker Symbol
miax_pearlequities_expressorders_meo_v2_7_a.ticker_symbol = {}

-- Size: Ticker Symbol
miax_pearlequities_expressorders_meo_v2_7_a.ticker_symbol.size = 11

-- Display: Ticker Symbol
miax_pearlequities_expressorders_meo_v2_7_a.ticker_symbol.display = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
miax_pearlequities_expressorders_meo_v2_7_a.ticker_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.ticker_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_a.ticker_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- Symbol Update
miax_pearlequities_expressorders_meo_v2_7_a.symbol_update = {}

-- Size: Symbol Update
miax_pearlequities_expressorders_meo_v2_7_a.symbol_update.size =
  miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.ticker_symbol.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_1.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.test_security_indicator.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.future.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.lot_size.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.opening_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.closing_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.primary_market_code.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.reserved_12.size

-- Display: Symbol Update
miax_pearlequities_expressorders_meo_v2_7_a.symbol_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Update
miax_pearlequities_expressorders_meo_v2_7_a.symbol_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_a.symbol_id.dissect(buffer, index, packet, parent)

  -- Ticker Symbol: Alphanumeric
  index, ticker_symbol = miax_pearlequities_expressorders_meo_v2_7_a.ticker_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_1.dissect(buffer, index, packet, parent)

  -- Test Security Indicator: Alphanumeric
  index, test_security_indicator = miax_pearlequities_expressorders_meo_v2_7_a.test_security_indicator.dissect(buffer, index, packet, parent)

  -- Future: BinaryU
  index, future = miax_pearlequities_expressorders_meo_v2_7_a.future.dissect(buffer, index, packet, parent)

  -- Lot Size: BinaryU
  index, lot_size = miax_pearlequities_expressorders_meo_v2_7_a.lot_size.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearlequities_expressorders_meo_v2_7_a.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearlequities_expressorders_meo_v2_7_a.closing_time.dissect(buffer, index, packet, parent)

  -- Primary Market Code: Alphanumeric
  index, primary_market_code = miax_pearlequities_expressorders_meo_v2_7_a.primary_market_code.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  index, reserved_12 = miax_pearlequities_expressorders_meo_v2_7_a.reserved_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update
miax_pearlequities_expressorders_meo_v2_7_a.symbol_update.dissect = function(buffer, offset, packet, parent)
  if show.symbol_update then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.symbol_update, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.symbol_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.symbol_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.symbol_update.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message = {}

-- Calculate runtime size of: Sequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message.size = function(buffer, offset, sequenced_message_type)
  -- Size of Symbol Update
  if sequenced_message_type == "SU" then
    return miax_pearlequities_expressorders_meo_v2_7_a.symbol_update.size(buffer, offset)
  end
  -- Size of New Order Response Message
  if sequenced_message_type == "NR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.size(buffer, offset)
  end
  -- Size of Modify Order Response
  if sequenced_message_type == "MR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.size(buffer, offset)
  end
  -- Size of Cancel Order Response
  if sequenced_message_type == "CR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.size(buffer, offset)
  end
  -- Size of Cancel Order By Exchange Order Id Response Message
  if sequenced_message_type == "CQ" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.size(buffer, offset)
  end
  -- Size of System State Notification
  if sequenced_message_type == "SN" then
    return miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification.size(buffer, offset)
  end
  -- Size of New Order Notification
  if sequenced_message_type == "O1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification.size(buffer, offset)
  end
  -- Size of Modify Order Notification
  if sequenced_message_type == "MN" then
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification.size(buffer, offset)
  end
  -- Size of Cancel Reduce Size Order Notification
  if sequenced_message_type == "XN" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification.size(buffer, offset)
  end
  -- Size of Order Price Update Notification
  if sequenced_message_type == "P1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification.size(buffer, offset)
  end
  -- Size of Reserve Order Replenishment Notification
  if sequenced_message_type == "RA" then
    return miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.size(buffer, offset)
  end
  -- Size of Execution Notification
  if sequenced_message_type == "E1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message.branches = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Symbol Update
  if sequenced_message_type == "SU" then
    return miax_pearlequities_expressorders_meo_v2_7_a.symbol_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response Message
  if sequenced_message_type == "NR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if sequenced_message_type == "MR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response
  if sequenced_message_type == "CR" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order By Exchange Order Id Response Message
  if sequenced_message_type == "CQ" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_order_by_exchange_order_id_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Notification
  if sequenced_message_type == "SN" then
    return miax_pearlequities_expressorders_meo_v2_7_a.system_state_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Notification
  if sequenced_message_type == "O1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.new_order_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Notification
  if sequenced_message_type == "MN" then
    return miax_pearlequities_expressorders_meo_v2_7_a.modify_order_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reduce Size Order Notification
  if sequenced_message_type == "XN" then
    return miax_pearlequities_expressorders_meo_v2_7_a.cancel_reduce_size_order_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Price Update Notification
  if sequenced_message_type == "P1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.order_price_update_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reserve Order Replenishment Notification
  if sequenced_message_type == "RA" then
    return miax_pearlequities_expressorders_meo_v2_7_a.reserve_order_replenishment_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Notification
  if sequenced_message_type == "E1" then
    return miax_pearlequities_expressorders_meo_v2_7_a.execution_notification.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Message
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  if not show.sequenced_message then
    return miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message.size(buffer, offset, sequenced_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message.display(buffer, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.sequenced_message, range, display)

  return miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message.branches(buffer, offset, packet, parent, sequenced_message_type)
end

-- Sequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message_type.size = 2

-- Display: Sequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message_type.display = function(value)
  if value == "SU" then
    return "Sequenced Message Type: Symbol Update (SU)"
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
  if value == "P1" then
    return "Sequenced Message Type: Order Price Update Notification (P1)"
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
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_id = {}

-- Size: Matching Engine Id
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.sequence_number = {}

-- Size: Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.sequence_number.size = 8

-- Display: Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearlequities_expressorders_meo_v2_7_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Packet Length
  local packet_length = buffer(offset - 3, 2):le_uint()

  return packet_length - 12
end

-- Display: Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearlequities_expressorders_meo_v2_7_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_pearlequities_expressorders_meo_v2_7_a.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = miax_pearlequities_expressorders_meo_v2_7_a.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_sequenced_data_packet = miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.sequenced_data_packet then
    local range = buffer(offset, size_of_sequenced_data_packet)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet.display(buffer, packet, parent)
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.sequenced_data_packet, range, display)
  end

  miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

  return offset + size_of_sequenced_data_packet
end

-- Payload
miax_pearlequities_expressorders_meo_v2_7_a.payload = {}

-- Calculate runtime size of: Payload
miax_pearlequities_expressorders_meo_v2_7_a.payload.size = function(buffer, offset, packet_type)
  -- Size of Sequenced Data Packet
  if packet_type == "s" then
    return miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet.size(buffer, offset)
  end
  -- Size of Unsequenced Data Packet
  if packet_type == "U" then
    return miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet.size(buffer, offset)
  end
  -- Size of Login Request
  if packet_type == "l" then
    return miax_pearlequities_expressorders_meo_v2_7_a.login_request.size(buffer, offset)
  end
  -- Size of Login Response
  if packet_type == "r" then
    return miax_pearlequities_expressorders_meo_v2_7_a.login_response.size(buffer, offset)
  end
  -- Size of Synchronization Complete
  if packet_type == "c" then
    return miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete.size(buffer, offset)
  end
  -- Size of Retransmission Request
  if packet_type == "a" then
    return miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request.size(buffer, offset)
  end
  -- Size of Logout Request
  if packet_type == "X" then
    return miax_pearlequities_expressorders_meo_v2_7_a.logout_request.size(buffer, offset)
  end
  -- Size of Goodbye Packet
  if packet_type == "G" then
    return miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet.size(buffer, offset)
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
    return miax_pearlequities_expressorders_meo_v2_7_a.test_packet.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
miax_pearlequities_expressorders_meo_v2_7_a.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
miax_pearlequities_expressorders_meo_v2_7_a.payload.branches = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Sequenced Data Packet
  if packet_type == "s" then
    return miax_pearlequities_expressorders_meo_v2_7_a.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if packet_type == "U" then
    return miax_pearlequities_expressorders_meo_v2_7_a.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if packet_type == "l" then
    return miax_pearlequities_expressorders_meo_v2_7_a.login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if packet_type == "r" then
    return miax_pearlequities_expressorders_meo_v2_7_a.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if packet_type == "c" then
    return miax_pearlequities_expressorders_meo_v2_7_a.synchronization_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if packet_type == "a" then
    return miax_pearlequities_expressorders_meo_v2_7_a.retransmission_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if packet_type == "X" then
    return miax_pearlequities_expressorders_meo_v2_7_a.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if packet_type == "G" then
    return miax_pearlequities_expressorders_meo_v2_7_a.goodbye_packet.dissect(buffer, offset, packet, parent)
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
    return miax_pearlequities_expressorders_meo_v2_7_a.test_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
miax_pearlequities_expressorders_meo_v2_7_a.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  if not show.payload then
    return miax_pearlequities_expressorders_meo_v2_7_a.payload.branches(buffer, offset, packet, parent, packet_type)
  end

  -- Calculate size and check that branch is not empty
  local size = miax_pearlequities_expressorders_meo_v2_7_a.payload.size(buffer, offset, packet_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = miax_pearlequities_expressorders_meo_v2_7_a.payload.display(buffer, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.payload, range, display)

  return miax_pearlequities_expressorders_meo_v2_7_a.payload.branches(buffer, offset, packet, parent, packet_type)
end

-- Packet Type
miax_pearlequities_expressorders_meo_v2_7_a.packet_type = {}

-- Size: Packet Type
miax_pearlequities_expressorders_meo_v2_7_a.packet_type.size = 1

-- Display: Packet Type
miax_pearlequities_expressorders_meo_v2_7_a.packet_type.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_a.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Packet Length
miax_pearlequities_expressorders_meo_v2_7_a.packet_length = {}

-- Size: Packet Length
miax_pearlequities_expressorders_meo_v2_7_a.packet_length.size = 2

-- Display: Packet Length
miax_pearlequities_expressorders_meo_v2_7_a.packet_length.display = function(value)
  return "Packet Length: "..value
end

-- Dissect: Packet Length
miax_pearlequities_expressorders_meo_v2_7_a.packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_a.packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_a.packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.packet_length, range, value, display)

  return offset + length, value
end

-- Packet Header
miax_pearlequities_expressorders_meo_v2_7_a.packet_header = {}

-- Size: Packet Header
miax_pearlequities_expressorders_meo_v2_7_a.packet_header.size =
  miax_pearlequities_expressorders_meo_v2_7_a.packet_length.size + 
  miax_pearlequities_expressorders_meo_v2_7_a.packet_type.size

-- Display: Packet Header
miax_pearlequities_expressorders_meo_v2_7_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
miax_pearlequities_expressorders_meo_v2_7_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, packet_length = miax_pearlequities_expressorders_meo_v2_7_a.packet_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Ascii String Enum with 12 values
  index, packet_type = miax_pearlequities_expressorders_meo_v2_7_a.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
miax_pearlequities_expressorders_meo_v2_7_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.packet_header, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Esesm Tcp Packet
miax_pearlequities_expressorders_meo_v2_7_a.esesm_tcp_packet = {}

-- Display: Esesm Tcp Packet
miax_pearlequities_expressorders_meo_v2_7_a.esesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Esesm Tcp Packet
miax_pearlequities_expressorders_meo_v2_7_a.esesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset

  -- Packet Header: Struct of 2 fields
  index, packet_header = miax_pearlequities_expressorders_meo_v2_7_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 12 branches
  index = miax_pearlequities_expressorders_meo_v2_7_a.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Esesm Tcp Packet
miax_pearlequities_expressorders_meo_v2_7_a.esesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset + size_of_esesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.esesm_tcp_packet then
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a.fields.esesm_tcp_packet, buffer(offset, 0))
    local current = miax_pearlequities_expressorders_meo_v2_7_a.esesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
    parent:set_len(size_of_esesm_tcp_packet)
    local display = miax_pearlequities_expressorders_meo_v2_7_a.esesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_expressorders_meo_v2_7_a.esesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Esesm Tcp Packet
local esesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_pearlequities_expressorders_meo_v2_7_a.packet_header.size then
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
miax_pearlequities_expressorders_meo_v2_7_a.packet = {}

-- Dissect Packet
miax_pearlequities_expressorders_meo_v2_7_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Esesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Esesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_esesm_tcp_packet = esesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_pearlequities_expressorders_meo_v2_7_a.esesm_tcp_packet.dissect(buffer, index, packet, parent, size_of_esesm_tcp_packet)
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
function omi_miax_pearlequities_expressorders_meo_v2_7_a.init()
end

-- Dissector for Miax PearlEquities ExpressOrders Meo 2.7.a
function omi_miax_pearlequities_expressorders_meo_v2_7_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_pearlequities_expressorders_meo_v2_7_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_a, buffer(), omi_miax_pearlequities_expressorders_meo_v2_7_a.description, "("..buffer:len().." Bytes)")
  return miax_pearlequities_expressorders_meo_v2_7_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_miax_pearlequities_expressorders_meo_v2_7_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
miax_pearlequities_expressorders_meo_v2_7_a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Miax PearlEquities ExpressOrders Meo 2.7.a
local function omi_miax_pearlequities_expressorders_meo_v2_7_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearlequities_expressorders_meo_v2_7_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearlequities_expressorders_meo_v2_7_a
  omi_miax_pearlequities_expressorders_meo_v2_7_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlEquities ExpressOrders Meo 2.7.a
omi_miax_pearlequities_expressorders_meo_v2_7_a:register_heuristic("tcp", omi_miax_pearlequities_expressorders_meo_v2_7_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.7.a
--   Date: Tuesday, July 15, 2025
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
