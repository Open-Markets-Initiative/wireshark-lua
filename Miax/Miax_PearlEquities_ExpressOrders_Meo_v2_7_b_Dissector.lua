-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Miax PearlEquities ExpressOrders Meo 2.7.b Protocol
local omi_miax_pearlequities_expressorders_meo_v2_7_b = Proto("Omi.Miax.PearlEquities.ExpressOrders.Meo.v2.7.b", "Miax PearlEquities ExpressOrders Meo 2.7.b")

-- Protocol table
local miax_pearlequities_expressorders_meo_v2_7_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Miax PearlEquities ExpressOrders Meo 2.7.b Fields
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.account = ProtoField.new("Account", "miax.pearlequities.expressorders.meo.v2.7.b.account", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.action = ProtoField.new("Action", "miax.pearlequities.expressorders.meo.v2.7.b.action", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.additional_liquidity_indicator = ProtoField.new("Additional Liquidity Indicator", "miax.pearlequities.expressorders.meo.v2.7.b.additionalliquidityindicator", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.application_protocol = ProtoField.new("Application Protocol", "miax.pearlequities.expressorders.meo.v2.7.b.applicationprotocol", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.asp_eligible_orders_cancelled = ProtoField.new("Asp Eligible Orders Cancelled", "miax.pearlequities.expressorders.meo.v2.7.b.aspeligibleorderscancelled", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.asp_side = ProtoField.new("Asp Side", "miax.pearlequities.expressorders.meo.v2.7.b.aspside", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.asp_status = ProtoField.new("Asp Status", "miax.pearlequities.expressorders.meo.v2.7.b.aspstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.attributable_order = ProtoField.new("Attributable Order", "miax.pearlequities.expressorders.meo.v2.7.b.attributableorder", ftypes.UINT16, {[0]="No", [1]="Attributed To Firm Mpid", [2]="Attributed Rtal To This Order"}, base.DEC, 0x0300)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_if_not_a_nbbo_setter = ProtoField.new("Cancel Order If Not A Nbbo Setter", "miax.pearlequities.expressorders.meo.v2.7.b.cancelorderifnotanbbosetter", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_if_not_a_nbbo_setter_with_size = ProtoField.new("Cancel Order If Not A Nbbo Setter With Size", "miax.pearlequities.expressorders.meo.v2.7.b.cancelorderifnotanbbosetterwithsize", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_reason = ProtoField.new("Cancel Reason", "miax.pearlequities.expressorders.meo.v2.7.b.cancelreason", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_status = ProtoField.new("Cancel Status", "miax.pearlequities.expressorders.meo.v2.7.b.cancelstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.capacity = ProtoField.new("Capacity", "miax.pearlequities.expressorders.meo.v2.7.b.capacity", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.clearing_account = ProtoField.new("Clearing Account", "miax.pearlequities.expressorders.meo.v2.7.b.clearingaccount", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.client_order_id = ProtoField.new("Client Order Id", "miax.pearlequities.expressorders.meo.v2.7.b.clientorderid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.closing_time = ProtoField.new("Closing Time", "miax.pearlequities.expressorders.meo.v2.7.b.closingtime", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.computer_id = ProtoField.new("Computer Id", "miax.pearlequities.expressorders.meo.v2.7.b.computerid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.correction_number = ProtoField.new("Correction Number", "miax.pearlequities.expressorders.meo.v2.7.b.correctionnumber", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.display_qty = ProtoField.new("Display Qty", "miax.pearlequities.expressorders.meo.v2.7.b.displayqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.display_range_qty = ProtoField.new("Display Range Qty", "miax.pearlequities.expressorders.meo.v2.7.b.displayrangeqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.displayed = ProtoField.new("Displayed", "miax.pearlequities.expressorders.meo.v2.7.b.displayed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.end_sequence_number = ProtoField.new("End Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.b.endsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_packet_header = ProtoField.new("Esesm Packet Header", "miax.pearlequities.expressorders.meo.v2.7.b.esesmpacketheader", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_packet_length = ProtoField.new("Esesm Packet Length", "miax.pearlequities.expressorders.meo.v2.7.b.esesmpacketlength", ftypes.UINT16)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_packet_type = ProtoField.new("Esesm Packet Type", "miax.pearlequities.expressorders.meo.v2.7.b.esesmpackettype", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_tcp_packet = ProtoField.new("Esesm Tcp Packet", "miax.pearlequities.expressorders.meo.v2.7.b.esesmtcppacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_version = ProtoField.new("Esesm Version", "miax.pearlequities.expressorders.meo.v2.7.b.esesmversion", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.executing_trading_center = ProtoField.new("Executing Trading Center", "miax.pearlequities.expressorders.meo.v2.7.b.executingtradingcenter", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.executing_trading_center_mpid = ProtoField.new("Executing Trading Center Mpid", "miax.pearlequities.expressorders.meo.v2.7.b.executingtradingcentermpid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.execution_id = ProtoField.new("Execution Id", "miax.pearlequities.expressorders.meo.v2.7.b.executionid", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.execution_order_instructions = ProtoField.new("Execution Order Instructions", "miax.pearlequities.expressorders.meo.v2.7.b.executionorderinstructions", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.goodbye_packet = ProtoField.new("Goodbye Packet", "miax.pearlequities.expressorders.meo.v2.7.b.goodbyepacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.highest_sequence_number = ProtoField.new("Highest Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.b.highestsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.iso = ProtoField.new("Iso", "miax.pearlequities.expressorders.meo.v2.7.b.iso", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.last_price = ProtoField.new("Last Price", "miax.pearlequities.expressorders.meo.v2.7.b.lastprice", ftypes.DOUBLE)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.last_size = ProtoField.new("Last Size", "miax.pearlequities.expressorders.meo.v2.7.b.lastsize", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.leaves_qty = ProtoField.new("Leaves Qty", "miax.pearlequities.expressorders.meo.v2.7.b.leavesqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "miax.pearlequities.expressorders.meo.v2.7.b.liquidityindicator", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.locate_account = ProtoField.new("Locate Account", "miax.pearlequities.expressorders.meo.v2.7.b.locateaccount", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.locate_required = ProtoField.new("Locate Required", "miax.pearlequities.expressorders.meo.v2.7.b.locaterequired", ftypes.UINT16, {[0]="Not Applicable", [1]="Yes"}, base.DEC, 0x0020)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.login_request = ProtoField.new("Login Request", "miax.pearlequities.expressorders.meo.v2.7.b.loginrequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.login_response = ProtoField.new("Login Response", "miax.pearlequities.expressorders.meo.v2.7.b.loginresponse", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.login_status = ProtoField.new("Login Status", "miax.pearlequities.expressorders.meo.v2.7.b.loginstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.logout_reason = ProtoField.new("Logout Reason", "miax.pearlequities.expressorders.meo.v2.7.b.logoutreason", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.logout_request = ProtoField.new("Logout Request", "miax.pearlequities.expressorders.meo.v2.7.b.logoutrequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.logout_text = ProtoField.new("Logout Text", "miax.pearlequities.expressorders.meo.v2.7.b.logouttext", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.lot_size = ProtoField.new("Lot Size", "miax.pearlequities.expressorders.meo.v2.7.b.lotsize", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "miax.pearlequities.expressorders.meo.v2.7.b.matchingengineid", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.matching_engine_status = ProtoField.new("Matching Engine Status", "miax.pearlequities.expressorders.meo.v2.7.b.matchingenginestatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.matching_engine_time = ProtoField.new("Matching Engine Time", "miax.pearlequities.expressorders.meo.v2.7.b.matchingenginetime", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.max_floor_qty = ProtoField.new("Max Floor Qty", "miax.pearlequities.expressorders.meo.v2.7.b.maxfloorqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.meo_version = ProtoField.new("Meo Version", "miax.pearlequities.expressorders.meo.v2.7.b.meoversion", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.min_qty = ProtoField.new("Min Qty", "miax.pearlequities.expressorders.meo.v2.7.b.minqty", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.min_qty_exec_type = ProtoField.new("Min Qty Exec Type", "miax.pearlequities.expressorders.meo.v2.7.b.minqtyexectype", ftypes.UINT16, {[0]="Not Applicable", [1]="Single Contra Order", [2]="Multiple Contra Orders"}, base.DEC, 0x0C00)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_order_instructions = ProtoField.new("Modify Order Instructions", "miax.pearlequities.expressorders.meo.v2.7.b.modifyorderinstructions", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_status = ProtoField.new("Modify Status", "miax.pearlequities.expressorders.meo.v2.7.b.modifystatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.mpid = ProtoField.new("Mpid", "miax.pearlequities.expressorders.meo.v2.7.b.mpid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.nbbo_indicator = ProtoField.new("Nbbo Indicator", "miax.pearlequities.expressorders.meo.v2.7.b.nbboindicator", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.nbbo_setter_joiner = ProtoField.new("Nbbo Setter Joiner", "miax.pearlequities.expressorders.meo.v2.7.b.nbbosetterjoiner", ftypes.UINT8, {[0]="Not Applicable", [1]="Nbbo Setter", [2]="Nbbo Joiner", [3]="Nbbo First Joiner", [4]="Nbbo Setter With Size", [5]="Nbbo Joiner With Size", [6]="Nbbo First Joiner With Size"}, base.DEC, 0x07)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.new_order_instructions = ProtoField.new("New Order Instructions", "miax.pearlequities.expressorders.meo.v2.7.b.neworderinstructions", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.notification_time = ProtoField.new("Notification Time", "miax.pearlequities.expressorders.meo.v2.7.b.notificationtime", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.number_of_matching_engines = ProtoField.new("Number Of Matching Engines", "miax.pearlequities.expressorders.meo.v2.7.b.numberofmatchingengines", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.number_of_orders_cancelled = ProtoField.new("Number Of Orders Cancelled", "miax.pearlequities.expressorders.meo.v2.7.b.numberoforderscancelled", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.opening_time = ProtoField.new("Opening Time", "miax.pearlequities.expressorders.meo.v2.7.b.openingtime", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_expiry_time = ProtoField.new("Order Expiry Time", "miax.pearlequities.expressorders.meo.v2.7.b.orderexpirytime", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_id = ProtoField.new("Order Id", "miax.pearlequities.expressorders.meo.v2.7.b.orderid", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_status = ProtoField.new("Order Status", "miax.pearlequities.expressorders.meo.v2.7.b.orderstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_type = ProtoField.new("Order Type", "miax.pearlequities.expressorders.meo.v2.7.b.ordertype", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.original_client_order_id = ProtoField.new("Original Client Order Id", "miax.pearlequities.expressorders.meo.v2.7.b.originalclientorderid", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.original_order_capacity = ProtoField.new("Original Order Capacity", "miax.pearlequities.expressorders.meo.v2.7.b.originalordercapacity", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.packet = ProtoField.new("Packet", "miax.pearlequities.expressorders.meo.v2.7.b.packet", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.peg_offset = ProtoField.new("Peg Offset", "miax.pearlequities.expressorders.meo.v2.7.b.pegoffset", ftypes.DOUBLE)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.pending_cancel_status = ProtoField.new("Pending Cancel Status", "miax.pearlequities.expressorders.meo.v2.7.b.pendingcancelstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.pending_modify_status = ProtoField.new("Pending Modify Status", "miax.pearlequities.expressorders.meo.v2.7.b.pendingmodifystatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.pending_reject_reason = ProtoField.new("Pending Reject Reason", "miax.pearlequities.expressorders.meo.v2.7.b.pendingrejectreason", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.post_only = ProtoField.new("Post Only", "miax.pearlequities.expressorders.meo.v2.7.b.postonly", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.price = ProtoField.new("Price", "miax.pearlequities.expressorders.meo.v2.7.b.price", ftypes.DOUBLE)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.price_sliding_and_reprice_frequency = ProtoField.new("Price Sliding And Reprice Frequency", "miax.pearlequities.expressorders.meo.v2.7.b.priceslidingandrepricefrequency", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.primary_market_code = ProtoField.new("Primary Market Code", "miax.pearlequities.expressorders.meo.v2.7.b.primarymarketcode", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.purge_group = ProtoField.new("Purge Group", "miax.pearlequities.expressorders.meo.v2.7.b.purgegroup", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.requested_sequence_number = ProtoField.new("Requested Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.b.requestedsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.requested_trading_session_id = ProtoField.new("Requested Trading Session Id", "miax.pearlequities.expressorders.meo.v2.7.b.requestedtradingsessionid", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_1 = ProtoField.new("Reserved 1", "miax.pearlequities.expressorders.meo.v2.7.b.reserved1", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_10 = ProtoField.new("Reserved 10", "miax.pearlequities.expressorders.meo.v2.7.b.reserved10", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_11 = ProtoField.new("Reserved 11", "miax.pearlequities.expressorders.meo.v2.7.b.reserved11", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_12 = ProtoField.new("Reserved 12", "miax.pearlequities.expressorders.meo.v2.7.b.reserved12", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_17 = ProtoField.new("Reserved 17", "miax.pearlequities.expressorders.meo.v2.7.b.reserved17", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_19 = ProtoField.new("Reserved 19", "miax.pearlequities.expressorders.meo.v2.7.b.reserved19", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_8 = ProtoField.new("Reserved 8", "miax.pearlequities.expressorders.meo.v2.7.b.reserved8", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_9 = ProtoField.new("Reserved 9", "miax.pearlequities.expressorders.meo.v2.7.b.reserved9", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.retail_order = ProtoField.new("Retail Order", "miax.pearlequities.expressorders.meo.v2.7.b.retailorder", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.retransmission_request = ProtoField.new("Retransmission Request", "miax.pearlequities.expressorders.meo.v2.7.b.retransmissionrequest", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.routing = ProtoField.new("Routing", "miax.pearlequities.expressorders.meo.v2.7.b.routing", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.routing_instruction = ProtoField.new("Routing Instruction", "miax.pearlequities.expressorders.meo.v2.7.b.routinginstruction", ftypes.UINT8, {[0]="Route Once", [1]="Reroutable", [2]="Do Not Route"}, base.DEC, 0x07)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.routing_strategy = ProtoField.new("Routing Strategy", "miax.pearlequities.expressorders.meo.v2.7.b.routingstrategy", ftypes.UINT8, {[0]="Not Applicable", [1]="Order Protection", [2]="Primary Auction"}, base.DEC, 0xF8)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.scope = ProtoField.new("Scope", "miax.pearlequities.expressorders.meo.v2.7.b.scope", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "miax.pearlequities.expressorders.meo.v2.7.b.secondaryorderid", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.self_trade_protection = ProtoField.new("Self Trade Protection", "miax.pearlequities.expressorders.meo.v2.7.b.selftradeprotection", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.self_trade_protection_group = ProtoField.new("Self Trade Protection Group", "miax.pearlequities.expressorders.meo.v2.7.b.selftradeprotectiongroup", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.self_trade_protection_instruction = ProtoField.new("Self Trade Protection Instruction", "miax.pearlequities.expressorders.meo.v2.7.b.selftradeprotectioninstruction", ftypes.UINT8, {[0]="Not Applicable", [1]="Cancel Newest", [2]="Cancel Oldest", [3]="Cancel Both", [4]="Decrement And Cancel"}, base.DEC, 0x38)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.self_trade_protection_level = ProtoField.new("Self Trade Protection Level", "miax.pearlequities.expressorders.meo.v2.7.b.selftradeprotectionlevel", ftypes.UINT8, {[0]="Self Trade Protection Disabled", [1]="Firm", [2]="Mpid", [3]="Parent Group"}, base.DEC, 0x07)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.sequence_number = ProtoField.new("Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.b.sequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.sequenced_data_packet = ProtoField.new("Sequenced Data Packet", "miax.pearlequities.expressorders.meo.v2.7.b.sequenceddatapacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.sequenced_message_type = ProtoField.new("Sequenced Message Type", "miax.pearlequities.expressorders.meo.v2.7.b.sequencedmessagetype", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.session_id = ProtoField.new("Session Id", "miax.pearlequities.expressorders.meo.v2.7.b.sessionid", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.short_sale_indicator = ProtoField.new("Short Sale Indicator", "miax.pearlequities.expressorders.meo.v2.7.b.shortsaleindicator", ftypes.UINT16, {[0]="Not Applicable", [1]="Sell Long", [2]="Sell Short", [3]="Sell Short Exempt"}, base.DEC, 0x0006)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.side = ProtoField.new("Side", "miax.pearlequities.expressorders.meo.v2.7.b.side", ftypes.UINT16, {[0]="Buy", [1]="Sell"}, base.DEC, 0x0001)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.size = ProtoField.new("Size", "miax.pearlequities.expressorders.meo.v2.7.b.size", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.start_sequence_number = ProtoField.new("Start Sequence Number", "miax.pearlequities.expressorders.meo.v2.7.b.startsequencenumber", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.symbol_id = ProtoField.new("Symbol Id", "miax.pearlequities.expressorders.meo.v2.7.b.symbolid", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.symbold_id = ProtoField.new("Symbold Id", "miax.pearlequities.expressorders.meo.v2.7.b.symboldid", ftypes.UINT32)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.synchronization_complete = ProtoField.new("Synchronization Complete", "miax.pearlequities.expressorders.meo.v2.7.b.synchronizationcomplete", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.system_status = ProtoField.new("System Status", "miax.pearlequities.expressorders.meo.v2.7.b.systemstatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.test_packet = ProtoField.new("Test Packet", "miax.pearlequities.expressorders.meo.v2.7.b.testpacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.test_security_indicator = ProtoField.new("Test Security Indicator", "miax.pearlequities.expressorders.meo.v2.7.b.testsecurityindicator", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.test_text = ProtoField.new("Test Text", "miax.pearlequities.expressorders.meo.v2.7.b.testtext", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.ticker_symbol = ProtoField.new("Ticker Symbol", "miax.pearlequities.expressorders.meo.v2.7.b.tickersymbol", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.time_in_force = ProtoField.new("Time In Force", "miax.pearlequities.expressorders.meo.v2.7.b.timeinforce", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.trade_id = ProtoField.new("Trade Id", "miax.pearlequities.expressorders.meo.v2.7.b.tradeid", ftypes.UINT64)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.trade_status = ProtoField.new("Trade Status", "miax.pearlequities.expressorders.meo.v2.7.b.tradestatus", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.trading_collar_dollar_value = ProtoField.new("Trading Collar Dollar Value", "miax.pearlequities.expressorders.meo.v2.7.b.tradingcollardollarvalue", ftypes.DOUBLE)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.trading_session_id = ProtoField.new("Trading Session Id", "miax.pearlequities.expressorders.meo.v2.7.b.tradingsessionid", ftypes.UINT8)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unsequenced_data_packet = ProtoField.new("Unsequenced Data Packet", "miax.pearlequities.expressorders.meo.v2.7.b.unsequenceddatapacket", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unsequenced_message_type = ProtoField.new("Unsequenced Message Type", "miax.pearlequities.expressorders.meo.v2.7.b.unsequencedmessagetype", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_15 = ProtoField.new("Unused 15", "miax.pearlequities.expressorders.meo.v2.7.b.unused15", ftypes.UINT16, nil, base.DEC, 0xFFFE)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_2 = ProtoField.new("Unused 2", "miax.pearlequities.expressorders.meo.v2.7.b.unused2", ftypes.UINT16, nil, base.DEC, 0xC000)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_5 = ProtoField.new("Unused 5", "miax.pearlequities.expressorders.meo.v2.7.b.unused5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_7 = ProtoField.new("Unused 7", "miax.pearlequities.expressorders.meo.v2.7.b.unused7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.username = ProtoField.new("Username", "miax.pearlequities.expressorders.meo.v2.7.b.username", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.working_price = ProtoField.new("Working Price", "miax.pearlequities.expressorders.meo.v2.7.b.workingprice", ftypes.DOUBLE)

-- Miax PearlEquities Meo ExpressOrders 2.7.b Application Messages
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.aggressive_side_purge_request_message = ProtoField.new("Aggressive Side Purge Request Message", "miax.pearlequities.expressorders.meo.v2.7.b.aggressivesidepurgerequestmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.aggressive_side_purge_response_message = ProtoField.new("Aggressive Side Purge Response Message", "miax.pearlequities.expressorders.meo.v2.7.b.aggressivesidepurgeresponsemessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_by_exchange_order_id_request_message = ProtoField.new("Cancel Order By Exchange Order Id Request Message", "miax.pearlequities.expressorders.meo.v2.7.b.cancelorderbyexchangeorderidrequestmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_by_exchange_order_id_response_message = ProtoField.new("Cancel Order By Exchange Order Id Response Message", "miax.pearlequities.expressorders.meo.v2.7.b.cancelorderbyexchangeorderidresponsemessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_request_message = ProtoField.new("Cancel Order Request Message", "miax.pearlequities.expressorders.meo.v2.7.b.cancelorderrequestmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_response_message = ProtoField.new("Cancel Order Response Message", "miax.pearlequities.expressorders.meo.v2.7.b.cancelorderresponsemessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_reduce_size_order_notification_message = ProtoField.new("Cancel Reduce Size Order Notification Message", "miax.pearlequities.expressorders.meo.v2.7.b.cancelreducesizeordernotificationmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.execution_notification_message = ProtoField.new("Execution Notification Message", "miax.pearlequities.expressorders.meo.v2.7.b.executionnotificationmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.mass_cancel_request_message = ProtoField.new("Mass Cancel Request Message", "miax.pearlequities.expressorders.meo.v2.7.b.masscancelrequestmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.mass_cancel_response_message = ProtoField.new("Mass Cancel Response Message", "miax.pearlequities.expressorders.meo.v2.7.b.masscancelresponsemessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_order_notification_message = ProtoField.new("Modify Order Notification Message", "miax.pearlequities.expressorders.meo.v2.7.b.modifyordernotificationmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_order_request_message = ProtoField.new("Modify Order Request Message", "miax.pearlequities.expressorders.meo.v2.7.b.modifyorderrequestmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_order_response_message = ProtoField.new("Modify Order Response Message", "miax.pearlequities.expressorders.meo.v2.7.b.modifyorderresponsemessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.new_order_notification_message = ProtoField.new("New Order Notification Message", "miax.pearlequities.expressorders.meo.v2.7.b.newordernotificationmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.new_order_request_message = ProtoField.new("New Order Request Message", "miax.pearlequities.expressorders.meo.v2.7.b.neworderrequestmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.new_order_response_message = ProtoField.new("New Order Response Message", "miax.pearlequities.expressorders.meo.v2.7.b.neworderresponsemessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_price_update_notification_message = ProtoField.new("Order Price Update Notification Message", "miax.pearlequities.expressorders.meo.v2.7.b.orderpriceupdatenotificationmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserve_order_replenishment_notification_message = ProtoField.new("Reserve Order Replenishment Notification Message", "miax.pearlequities.expressorders.meo.v2.7.b.reserveorderreplenishmentnotificationmessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.symbol_update_message = ProtoField.new("Symbol Update Message", "miax.pearlequities.expressorders.meo.v2.7.b.symbolupdatemessage", ftypes.STRING)
omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.system_state_notification_message = ProtoField.new("System State Notification Message", "miax.pearlequities.expressorders.meo.v2.7.b.systemstatenotificationmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Miax PearlEquities ExpressOrders Meo 2.7.b Element Dissection Options
show.additional_liquidity_indicator = true
show.application_messages = true
show.asp_side = true
show.esesm_packet_header = true
show.esesm_tcp_packet = true
show.execution_order_instructions = true
show.goodbye_packet = true
show.login_request = true
show.login_response = true
show.logout_request = true
show.modify_order_instructions = true
show.new_order_instructions = true
show.packet = true
show.retransmission_request = true
show.routing = true
show.self_trade_protection = true
show.sequenced_data_packet = true
show.synchronization_complete = true
show.test_packet = true
show.unsequenced_data_packet = true

-- Register Miax PearlEquities ExpressOrders Meo 2.7.b Show Options
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_additional_liquidity_indicator = Pref.bool("Show Additional Liquidity Indicator", show.additional_liquidity_indicator, "Parse and add Additional Liquidity Indicator to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_asp_side = Pref.bool("Show Asp Side", show.asp_side, "Parse and add Asp Side to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_esesm_packet_header = Pref.bool("Show Esesm Packet Header", show.esesm_packet_header, "Parse and add Esesm Packet Header to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_esesm_tcp_packet = Pref.bool("Show Esesm Tcp Packet", show.esesm_tcp_packet, "Parse and add Esesm Tcp Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_execution_order_instructions = Pref.bool("Show Execution Order Instructions", show.execution_order_instructions, "Parse and add Execution Order Instructions to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_goodbye_packet = Pref.bool("Show Goodbye Packet", show.goodbye_packet, "Parse and add Goodbye Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_login_request = Pref.bool("Show Login Request", show.login_request, "Parse and add Login Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_login_response = Pref.bool("Show Login Response", show.login_response, "Parse and add Login Response to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_modify_order_instructions = Pref.bool("Show Modify Order Instructions", show.modify_order_instructions, "Parse and add Modify Order Instructions to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_new_order_instructions = Pref.bool("Show New Order Instructions", show.new_order_instructions, "Parse and add New Order Instructions to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_retransmission_request = Pref.bool("Show Retransmission Request", show.retransmission_request, "Parse and add Retransmission Request to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_routing = Pref.bool("Show Routing", show.routing, "Parse and add Routing to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_self_trade_protection = Pref.bool("Show Self Trade Protection", show.self_trade_protection, "Parse and add Self Trade Protection to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_sequenced_data_packet = Pref.bool("Show Sequenced Data Packet", show.sequenced_data_packet, "Parse and add Sequenced Data Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_synchronization_complete = Pref.bool("Show Synchronization Complete", show.synchronization_complete, "Parse and add Synchronization Complete to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_test_packet = Pref.bool("Show Test Packet", show.test_packet, "Parse and add Test Packet to protocol tree")
omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_unsequenced_data_packet = Pref.bool("Show Unsequenced Data Packet", show.unsequenced_data_packet, "Parse and add Unsequenced Data Packet to protocol tree")


-- Handle changed preferences
function omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs_changed()

  -- Check if preferences have changed
  if show.additional_liquidity_indicator ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_additional_liquidity_indicator then
    show.additional_liquidity_indicator = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_additional_liquidity_indicator
  end
  if show.application_messages ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_application_messages then
    show.application_messages = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_application_messages
  end
  if show.asp_side ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_asp_side then
    show.asp_side = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_asp_side
  end
  if show.esesm_packet_header ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_esesm_packet_header then
    show.esesm_packet_header = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_esesm_packet_header
  end
  if show.esesm_tcp_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_esesm_tcp_packet then
    show.esesm_tcp_packet = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_esesm_tcp_packet
  end
  if show.execution_order_instructions ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_execution_order_instructions then
    show.execution_order_instructions = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_execution_order_instructions
  end
  if show.goodbye_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_goodbye_packet then
    show.goodbye_packet = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_goodbye_packet
  end
  if show.login_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_login_request then
    show.login_request = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_login_request
  end
  if show.login_response ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_login_response then
    show.login_response = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_login_response
  end
  if show.logout_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_logout_request then
    show.logout_request = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_logout_request
  end
  if show.modify_order_instructions ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_modify_order_instructions then
    show.modify_order_instructions = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_modify_order_instructions
  end
  if show.new_order_instructions ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_new_order_instructions then
    show.new_order_instructions = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_new_order_instructions
  end
  if show.packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_packet then
    show.packet = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_packet
  end
  if show.retransmission_request ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_retransmission_request then
    show.retransmission_request = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_retransmission_request
  end
  if show.routing ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_routing then
    show.routing = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_routing
  end
  if show.self_trade_protection ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_self_trade_protection then
    show.self_trade_protection = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_self_trade_protection
  end
  if show.sequenced_data_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_sequenced_data_packet then
    show.sequenced_data_packet = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_sequenced_data_packet
  end
  if show.synchronization_complete ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_synchronization_complete then
    show.synchronization_complete = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_synchronization_complete
  end
  if show.test_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_test_packet then
    show.test_packet = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_test_packet
  end
  if show.unsequenced_data_packet ~= omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_unsequenced_data_packet then
    show.unsequenced_data_packet = omi_miax_pearlequities_expressorders_meo_v2_7_b.prefs.show_unsequenced_data_packet
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
-- Miax PearlEquities ExpressOrders Meo 2.7.b Fields
-----------------------------------------------------------------------

-- Account
miax_pearlequities_expressorders_meo_v2_7_b.account = {}

-- Size: Account
miax_pearlequities_expressorders_meo_v2_7_b.account.size = 16

-- Display: Account
miax_pearlequities_expressorders_meo_v2_7_b.account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account: No Value"
  end

  return "Account: "..value
end

-- Dissect: Account
miax_pearlequities_expressorders_meo_v2_7_b.account.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.account.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_b.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.account, range, value, display)

  return offset + length, value
end

-- Action
miax_pearlequities_expressorders_meo_v2_7_b.action = {}

-- Size: Action
miax_pearlequities_expressorders_meo_v2_7_b.action.size = 1

-- Display: Action
miax_pearlequities_expressorders_meo_v2_7_b.action.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.action.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.action.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.action, range, value, display)

  return offset + length, value
end

-- Application Protocol
miax_pearlequities_expressorders_meo_v2_7_b.application_protocol = {}

-- Size: Application Protocol
miax_pearlequities_expressorders_meo_v2_7_b.application_protocol.size = 8

-- Display: Application Protocol
miax_pearlequities_expressorders_meo_v2_7_b.application_protocol.display = function(value)
  return "Application Protocol: "..value
end

-- Dissect: Application Protocol
miax_pearlequities_expressorders_meo_v2_7_b.application_protocol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.application_protocol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_b.application_protocol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.application_protocol, range, value, display)

  return offset + length, value
end

-- Asp Eligible Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_b.asp_eligible_orders_cancelled = {}

-- Size: Asp Eligible Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_b.asp_eligible_orders_cancelled.size = 1

-- Display: Asp Eligible Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_b.asp_eligible_orders_cancelled.display = function(value)
  return "Asp Eligible Orders Cancelled: "..value
end

-- Dissect: Asp Eligible Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_b.asp_eligible_orders_cancelled.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.asp_eligible_orders_cancelled.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.asp_eligible_orders_cancelled.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.asp_eligible_orders_cancelled, range, value, display)

  return offset + length, value
end

-- Asp Status
miax_pearlequities_expressorders_meo_v2_7_b.asp_status = {}

-- Size: Asp Status
miax_pearlequities_expressorders_meo_v2_7_b.asp_status.size = 1

-- Display: Asp Status
miax_pearlequities_expressorders_meo_v2_7_b.asp_status.display = function(value)
  if value == " " then
    return "Asp Status: Successful (<whitespace>)"
  end
  if value == "C" then
    return "Asp Status: Matching Engine Is Not Available (C)"
  end
  if value == "E" then
    return "Asp Status: Exceeded Test Symbol Throttle (E)"
  end
  if value == "I" then
    return "Asp Status: Invalid Mpid (I)"
  end
  if value == "J" then
    return "Asp Status: Invalid Price (J)"
  end
  if value == "O" then
    return "Asp Status: Invalid Client Order Id (O)"
  end
  if value == "P" then
    return "Asp Status: Request Is Not Permitted For This Session (P)"
  end
  if value == "S" then
    return "Asp Status: Invalid Symbol Id (S)"
  end
  if value == "X" then
    return "Asp Status: Mpid Not Permitted (X)"
  end
  if value == "Z" then
    return "Asp Status: Undefined Reason (Z)"
  end
  if value == "*" then
    return "Asp Status: Downgraded From Older Version (*)"
  end

  return "Asp Status: Unknown("..value..")"
end

-- Dissect: Asp Status
miax_pearlequities_expressorders_meo_v2_7_b.asp_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.asp_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.asp_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.asp_status, range, value, display)

  return offset + length, value
end

-- Cancel Reason
miax_pearlequities_expressorders_meo_v2_7_b.cancel_reason = {}

-- Size: Cancel Reason
miax_pearlequities_expressorders_meo_v2_7_b.cancel_reason.size = 1

-- Display: Cancel Reason
miax_pearlequities_expressorders_meo_v2_7_b.cancel_reason.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Status
miax_pearlequities_expressorders_meo_v2_7_b.cancel_status = {}

-- Size: Cancel Status
miax_pearlequities_expressorders_meo_v2_7_b.cancel_status.size = 1

-- Display: Cancel Status
miax_pearlequities_expressorders_meo_v2_7_b.cancel_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.cancel_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_status, range, value, display)

  return offset + length, value
end

-- Capacity
miax_pearlequities_expressorders_meo_v2_7_b.capacity = {}

-- Size: Capacity
miax_pearlequities_expressorders_meo_v2_7_b.capacity.size = 1

-- Display: Capacity
miax_pearlequities_expressorders_meo_v2_7_b.capacity.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.capacity.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.capacity, range, value, display)

  return offset + length, value
end

-- Clearing Account
miax_pearlequities_expressorders_meo_v2_7_b.clearing_account = {}

-- Size: Clearing Account
miax_pearlequities_expressorders_meo_v2_7_b.clearing_account.size = 4

-- Display: Clearing Account
miax_pearlequities_expressorders_meo_v2_7_b.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
miax_pearlequities_expressorders_meo_v2_7_b.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.clearing_account.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_b.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Client Order Id
miax_pearlequities_expressorders_meo_v2_7_b.client_order_id = {}

-- Size: Client Order Id
miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size = 20

-- Display: Client Order Id
miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Order Id: No Value"
  end

  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Closing Time
miax_pearlequities_expressorders_meo_v2_7_b.closing_time = {}

-- Size: Closing Time
miax_pearlequities_expressorders_meo_v2_7_b.closing_time.size = 8

-- Display: Closing Time
miax_pearlequities_expressorders_meo_v2_7_b.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
miax_pearlequities_expressorders_meo_v2_7_b.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.closing_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_b.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Computer Id
miax_pearlequities_expressorders_meo_v2_7_b.computer_id = {}

-- Size: Computer Id
miax_pearlequities_expressorders_meo_v2_7_b.computer_id.size = 8

-- Display: Computer Id
miax_pearlequities_expressorders_meo_v2_7_b.computer_id.display = function(value)
  return "Computer Id: "..value
end

-- Dissect: Computer Id
miax_pearlequities_expressorders_meo_v2_7_b.computer_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.computer_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_b.computer_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.computer_id, range, value, display)

  return offset + length, value
end

-- Correction Number
miax_pearlequities_expressorders_meo_v2_7_b.correction_number = {}

-- Size: Correction Number
miax_pearlequities_expressorders_meo_v2_7_b.correction_number.size = 1

-- Display: Correction Number
miax_pearlequities_expressorders_meo_v2_7_b.correction_number.display = function(value)
  return "Correction Number: "..value
end

-- Dissect: Correction Number
miax_pearlequities_expressorders_meo_v2_7_b.correction_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.correction_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.correction_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.correction_number, range, value, display)

  return offset + length, value
end

-- Display Qty
miax_pearlequities_expressorders_meo_v2_7_b.display_qty = {}

-- Size: Display Qty
miax_pearlequities_expressorders_meo_v2_7_b.display_qty.size = 4

-- Display: Display Qty
miax_pearlequities_expressorders_meo_v2_7_b.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
miax_pearlequities_expressorders_meo_v2_7_b.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Display Range Qty
miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty = {}

-- Size: Display Range Qty
miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty.size = 4

-- Display: Display Range Qty
miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty.display = function(value)
  return "Display Range Qty: "..value
end

-- Dissect: Display Range Qty
miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.display_range_qty, range, value, display)

  return offset + length, value
end

-- End Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.end_sequence_number = {}

-- Size: End Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.end_sequence_number.size = 8

-- Display: End Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.end_sequence_number.display = function(value)
  return "End Sequence Number: "..value
end

-- Dissect: End Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.end_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.end_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.end_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.end_sequence_number, range, value, display)

  return offset + length, value
end

-- Esesm Packet Length
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_length = {}

-- Size: Esesm Packet Length
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_length.size = 2

-- Display: Esesm Packet Length
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_length.display = function(value)
  return "Esesm Packet Length: "..value
end

-- Dissect: Esesm Packet Length
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_length.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_packet_length, range, value, display)

  return offset + length, value
end

-- Esesm Packet Type
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_type = {}

-- Size: Esesm Packet Type
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_type.size = 1

-- Display: Esesm Packet Type
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_type.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_packet_type, range, value, display)

  return offset + length, value
end

-- Esesm Version
miax_pearlequities_expressorders_meo_v2_7_b.esesm_version = {}

-- Size: Esesm Version
miax_pearlequities_expressorders_meo_v2_7_b.esesm_version.size = 5

-- Display: Esesm Version
miax_pearlequities_expressorders_meo_v2_7_b.esesm_version.display = function(value)
  return "Esesm Version: "..value
end

-- Dissect: Esesm Version
miax_pearlequities_expressorders_meo_v2_7_b.esesm_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.esesm_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.esesm_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_version, range, value, display)

  return offset + length, value
end

-- Executing Trading Center
miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center = {}

-- Size: Executing Trading Center
miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center.size = 1

-- Display: Executing Trading Center
miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center.display = function(value)
  if value == "A" then
    return "Executing Trading Center: Nyse American (A)"
  end
  if value == "B" then
    return "Executing Trading Center: Nasdaq Texas (B)"
  end
  if value == "C" then
    return "Executing Trading Center: Nyse National (C)"
  end
  if value == "F" then
    return "Executing Trading Center: Texas Stock Exchange (F)"
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
miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.executing_trading_center, range, value, display)

  return offset + length, value
end

-- Executing Trading Center Mpid
miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center_mpid = {}

-- Size: Executing Trading Center Mpid
miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center_mpid.size = 4

-- Display: Executing Trading Center Mpid
miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center_mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Executing Trading Center Mpid: No Value"
  end

  return "Executing Trading Center Mpid: "..value
end

-- Dissect: Executing Trading Center Mpid
miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center_mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center_mpid.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.executing_trading_center_mpid, range, value, display)

  return offset + length, value
end

-- Execution Id
miax_pearlequities_expressorders_meo_v2_7_b.execution_id = {}

-- Size: Execution Id
miax_pearlequities_expressorders_meo_v2_7_b.execution_id.size = 8

-- Display: Execution Id
miax_pearlequities_expressorders_meo_v2_7_b.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
miax_pearlequities_expressorders_meo_v2_7_b.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Highest Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.highest_sequence_number = {}

-- Size: Highest Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.highest_sequence_number.size = 8

-- Display: Highest Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.highest_sequence_number.display = function(value)
  return "Highest Sequence Number: "..value
end

-- Dissect: Highest Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.highest_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.highest_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.highest_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.highest_sequence_number, range, value, display)

  return offset + length, value
end

-- Last Price
miax_pearlequities_expressorders_meo_v2_7_b.last_price = {}

-- Size: Last Price
miax_pearlequities_expressorders_meo_v2_7_b.last_price.size = 8

-- Display: Last Price
miax_pearlequities_expressorders_meo_v2_7_b.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
miax_pearlequities_expressorders_meo_v2_7_b.last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price
miax_pearlequities_expressorders_meo_v2_7_b.last_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_expressorders_meo_v2_7_b.last_price.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_b.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Size
miax_pearlequities_expressorders_meo_v2_7_b.last_size = {}

-- Size: Last Size
miax_pearlequities_expressorders_meo_v2_7_b.last_size.size = 4

-- Display: Last Size
miax_pearlequities_expressorders_meo_v2_7_b.last_size.display = function(value)
  return "Last Size: "..value
end

-- Dissect: Last Size
miax_pearlequities_expressorders_meo_v2_7_b.last_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.last_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.last_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.last_size, range, value, display)

  return offset + length, value
end

-- Leaves Qty
miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty = {}

-- Size: Leaves Qty
miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.size = 4

-- Display: Leaves Qty
miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_b.liquidity_indicator = {}

-- Size: Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_b.liquidity_indicator.size = 3

-- Display: Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_b.liquidity_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Liquidity Indicator: No Value"
  end

  return "Liquidity Indicator: "..value
end

-- Dissect: Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_b.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.liquidity_indicator.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_b.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Locate Account
miax_pearlequities_expressorders_meo_v2_7_b.locate_account = {}

-- Size: Locate Account
miax_pearlequities_expressorders_meo_v2_7_b.locate_account.size = 4

-- Display: Locate Account
miax_pearlequities_expressorders_meo_v2_7_b.locate_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Locate Account: No Value"
  end

  return "Locate Account: "..value
end

-- Dissect: Locate Account
miax_pearlequities_expressorders_meo_v2_7_b.locate_account.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.locate_account.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_b.locate_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.locate_account, range, value, display)

  return offset + length, value
end

-- Login Status
miax_pearlequities_expressorders_meo_v2_7_b.login_status = {}

-- Size: Login Status
miax_pearlequities_expressorders_meo_v2_7_b.login_status.size = 1

-- Display: Login Status
miax_pearlequities_expressorders_meo_v2_7_b.login_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.login_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.login_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.login_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.login_status, range, value, display)

  return offset + length, value
end

-- Logout Reason
miax_pearlequities_expressorders_meo_v2_7_b.logout_reason = {}

-- Size: Logout Reason
miax_pearlequities_expressorders_meo_v2_7_b.logout_reason.size = 1

-- Display: Logout Reason
miax_pearlequities_expressorders_meo_v2_7_b.logout_reason.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Text
miax_pearlequities_expressorders_meo_v2_7_b.logout_text = {}

-- Display: Logout Text
miax_pearlequities_expressorders_meo_v2_7_b.logout_text.display = function(value)
  return "Logout Text: "..value
end

-- Dissect runtime sized field: Logout Text
miax_pearlequities_expressorders_meo_v2_7_b.logout_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.logout_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.logout_text, range, value, display)

  return offset + size, value
end

-- Lot Size
miax_pearlequities_expressorders_meo_v2_7_b.lot_size = {}

-- Size: Lot Size
miax_pearlequities_expressorders_meo_v2_7_b.lot_size.size = 4

-- Display: Lot Size
miax_pearlequities_expressorders_meo_v2_7_b.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
miax_pearlequities_expressorders_meo_v2_7_b.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_id = {}

-- Size: Matching Engine Id
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_id.size = 1

-- Display: Matching Engine Id
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Matching Engine Status
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_status = {}

-- Size: Matching Engine Status
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_status.size = 24

-- Display: Matching Engine Status
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_status.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.matching_engine_status, range, value, display)

  return offset + length, value
end

-- Matching Engine Time
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time = {}

-- Size: Matching Engine Time
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size = 8

-- Display: Matching Engine Time
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Matching Engine Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Matching Engine Time
miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.matching_engine_time, range, value, display)

  return offset + length, value
end

-- Max Floor Qty
miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty = {}

-- Size: Max Floor Qty
miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.size = 4

-- Display: Max Floor Qty
miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.display = function(value)
  return "Max Floor Qty: "..value
end

-- Dissect: Max Floor Qty
miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.max_floor_qty, range, value, display)

  return offset + length, value
end

-- Meo Version
miax_pearlequities_expressorders_meo_v2_7_b.meo_version = {}

-- Size: Meo Version
miax_pearlequities_expressorders_meo_v2_7_b.meo_version.size = 8

-- Display: Meo Version
miax_pearlequities_expressorders_meo_v2_7_b.meo_version.display = function(value)
  return "Meo Version: "..value
end

-- Dissect: Meo Version
miax_pearlequities_expressorders_meo_v2_7_b.meo_version.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.meo_version.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_b.meo_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.meo_version, range, value, display)

  return offset + length, value
end

-- Min Qty
miax_pearlequities_expressorders_meo_v2_7_b.min_qty = {}

-- Size: Min Qty
miax_pearlequities_expressorders_meo_v2_7_b.min_qty.size = 4

-- Display: Min Qty
miax_pearlequities_expressorders_meo_v2_7_b.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
miax_pearlequities_expressorders_meo_v2_7_b.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Status
miax_pearlequities_expressorders_meo_v2_7_b.modify_status = {}

-- Size: Modify Status
miax_pearlequities_expressorders_meo_v2_7_b.modify_status.size = 1

-- Display: Modify Status
miax_pearlequities_expressorders_meo_v2_7_b.modify_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.modify_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.modify_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.modify_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_status, range, value, display)

  return offset + length, value
end

-- Mpid
miax_pearlequities_expressorders_meo_v2_7_b.mpid = {}

-- Size: Mpid
miax_pearlequities_expressorders_meo_v2_7_b.mpid.size = 4

-- Display: Mpid
miax_pearlequities_expressorders_meo_v2_7_b.mpid.display = function(value)
  return "Mpid: "..value
end

-- Dissect: Mpid
miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_b.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.mpid, range, value, display)

  return offset + length, value
end

-- Nbbo Indicator
miax_pearlequities_expressorders_meo_v2_7_b.nbbo_indicator = {}

-- Size: Nbbo Indicator
miax_pearlequities_expressorders_meo_v2_7_b.nbbo_indicator.size = 1

-- Display: Nbbo Indicator
miax_pearlequities_expressorders_meo_v2_7_b.nbbo_indicator.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.nbbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.nbbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.nbbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.nbbo_indicator, range, value, display)

  return offset + length, value
end

-- Notification Time
miax_pearlequities_expressorders_meo_v2_7_b.notification_time = {}

-- Size: Notification Time
miax_pearlequities_expressorders_meo_v2_7_b.notification_time.size = 8

-- Display: Notification Time
miax_pearlequities_expressorders_meo_v2_7_b.notification_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Notification Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification Time
miax_pearlequities_expressorders_meo_v2_7_b.notification_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.notification_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.notification_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.notification_time, range, value, display)

  return offset + length, value
end

-- Number Of Matching Engines
miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines = {}

-- Size: Number Of Matching Engines
miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.size = 1

-- Display: Number Of Matching Engines
miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.display = function(value)
  return "Number Of Matching Engines: "..value
end

-- Dissect: Number Of Matching Engines
miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.number_of_matching_engines, range, value, display)

  return offset + length, value
end

-- Number Of Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_b.number_of_orders_cancelled = {}

-- Size: Number Of Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_b.number_of_orders_cancelled.size = 1

-- Display: Number Of Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_b.number_of_orders_cancelled.display = function(value)
  return "Number Of Orders Cancelled: "..value
end

-- Dissect: Number Of Orders Cancelled
miax_pearlequities_expressorders_meo_v2_7_b.number_of_orders_cancelled.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.number_of_orders_cancelled.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.number_of_orders_cancelled.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.number_of_orders_cancelled, range, value, display)

  return offset + length, value
end

-- Opening Time
miax_pearlequities_expressorders_meo_v2_7_b.opening_time = {}

-- Size: Opening Time
miax_pearlequities_expressorders_meo_v2_7_b.opening_time.size = 8

-- Display: Opening Time
miax_pearlequities_expressorders_meo_v2_7_b.opening_time.display = function(value)
  return "Opening Time: "..value
end

-- Dissect: Opening Time
miax_pearlequities_expressorders_meo_v2_7_b.opening_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.opening_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_b.opening_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.opening_time, range, value, display)

  return offset + length, value
end

-- Order Expiry Time
miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time = {}

-- Size: Order Expiry Time
miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.size = 8

-- Display: Order Expiry Time
miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.display = function(value)
  -- Parse unix millisecond timestamp
  local seconds = (value / UInt64(1000)):tonumber()
  local milliseconds = (value % UInt64(1000)):tonumber()

  return "Order Expiry Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%03d", milliseconds)
end

-- Dissect: Order Expiry Time
miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_expiry_time, range, value, display)

  return offset + length, value
end

-- Order Id
miax_pearlequities_expressorders_meo_v2_7_b.order_id = {}

-- Size: Order Id
miax_pearlequities_expressorders_meo_v2_7_b.order_id.size = 8

-- Display: Order Id
miax_pearlequities_expressorders_meo_v2_7_b.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Status
miax_pearlequities_expressorders_meo_v2_7_b.order_status = {}

-- Size: Order Status
miax_pearlequities_expressorders_meo_v2_7_b.order_status.size = 1

-- Display: Order Status
miax_pearlequities_expressorders_meo_v2_7_b.order_status.display = function(value)
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
    return "Order Status: Invalid Use Of Cancel Order If Not A Nbbo Setter (!)"
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
miax_pearlequities_expressorders_meo_v2_7_b.order_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.order_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.order_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_status, range, value, display)

  return offset + length, value
end

-- Order Type
miax_pearlequities_expressorders_meo_v2_7_b.order_type = {}

-- Size: Order Type
miax_pearlequities_expressorders_meo_v2_7_b.order_type.size = 1

-- Display: Order Type
miax_pearlequities_expressorders_meo_v2_7_b.order_type.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.order_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_type, range, value, display)

  return offset + length, value
end

-- Original Client Order Id
miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id = {}

-- Size: Original Client Order Id
miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.size = 20

-- Display: Original Client Order Id
miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Client Order Id: No Value"
  end

  return "Original Client Order Id: "..value
end

-- Dissect: Original Client Order Id
miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.size
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

  local display = miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.original_client_order_id, range, value, display)

  return offset + length, value
end

-- Original Order Capacity
miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity = {}

-- Size: Original Order Capacity
miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity.size = 1

-- Display: Original Order Capacity
miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.original_order_capacity, range, value, display)

  return offset + length, value
end

-- Peg Offset
miax_pearlequities_expressorders_meo_v2_7_b.peg_offset = {}

-- Size: Peg Offset
miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.size = 8

-- Display: Peg Offset
miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.display = function(value)
  return "Peg Offset: "..value
end

-- Translate: Peg Offset
miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Peg Offset
miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Pending Cancel Status
miax_pearlequities_expressorders_meo_v2_7_b.pending_cancel_status = {}

-- Size: Pending Cancel Status
miax_pearlequities_expressorders_meo_v2_7_b.pending_cancel_status.size = 1

-- Display: Pending Cancel Status
miax_pearlequities_expressorders_meo_v2_7_b.pending_cancel_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.pending_cancel_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.pending_cancel_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.pending_cancel_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.pending_cancel_status, range, value, display)

  return offset + length, value
end

-- Pending Modify Status
miax_pearlequities_expressorders_meo_v2_7_b.pending_modify_status = {}

-- Size: Pending Modify Status
miax_pearlequities_expressorders_meo_v2_7_b.pending_modify_status.size = 1

-- Display: Pending Modify Status
miax_pearlequities_expressorders_meo_v2_7_b.pending_modify_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.pending_modify_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.pending_modify_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.pending_modify_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.pending_modify_status, range, value, display)

  return offset + length, value
end

-- Pending Reject Reason
miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason = {}

-- Size: Pending Reject Reason
miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason.size = 1

-- Display: Pending Reject Reason
miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.pending_reject_reason, range, value, display)

  return offset + length, value
end

-- Price
miax_pearlequities_expressorders_meo_v2_7_b.price = {}

-- Size: Price
miax_pearlequities_expressorders_meo_v2_7_b.price.size = 8

-- Display: Price
miax_pearlequities_expressorders_meo_v2_7_b.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
miax_pearlequities_expressorders_meo_v2_7_b.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
miax_pearlequities_expressorders_meo_v2_7_b.price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_expressorders_meo_v2_7_b.price.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_b.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.price, range, value, display)

  return offset + length, value
end

-- Price Sliding And Reprice Frequency
miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency = {}

-- Size: Price Sliding And Reprice Frequency
miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency.size = 1

-- Display: Price Sliding And Reprice Frequency
miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.price_sliding_and_reprice_frequency, range, value, display)

  return offset + length, value
end

-- Primary Market Code
miax_pearlequities_expressorders_meo_v2_7_b.primary_market_code = {}

-- Size: Primary Market Code
miax_pearlequities_expressorders_meo_v2_7_b.primary_market_code.size = 1

-- Display: Primary Market Code
miax_pearlequities_expressorders_meo_v2_7_b.primary_market_code.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.primary_market_code.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.primary_market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.primary_market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.primary_market_code, range, value, display)

  return offset + length, value
end

-- Purge Group
miax_pearlequities_expressorders_meo_v2_7_b.purge_group = {}

-- Size: Purge Group
miax_pearlequities_expressorders_meo_v2_7_b.purge_group.size = 1

-- Display: Purge Group
miax_pearlequities_expressorders_meo_v2_7_b.purge_group.display = function(value)
  return "Purge Group: "..value
end

-- Dissect: Purge Group
miax_pearlequities_expressorders_meo_v2_7_b.purge_group.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.purge_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.purge_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.purge_group, range, value, display)

  return offset + length, value
end

-- Requested Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.requested_sequence_number = {}

-- Size: Requested Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.requested_sequence_number.size = 8

-- Display: Requested Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.requested_sequence_number.display = function(value)
  return "Requested Sequence Number: "..value
end

-- Dissect: Requested Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.requested_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.requested_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.requested_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.requested_sequence_number, range, value, display)

  return offset + length, value
end

-- Requested Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_b.requested_trading_session_id = {}

-- Size: Requested Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_b.requested_trading_session_id.size = 1

-- Display: Requested Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_b.requested_trading_session_id.display = function(value)
  return "Requested Trading Session Id: "..value
end

-- Dissect: Requested Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_b.requested_trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.requested_trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.requested_trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.requested_trading_session_id, range, value, display)

  return offset + length, value
end

-- Reserved 1
miax_pearlequities_expressorders_meo_v2_7_b.reserved_1 = {}

-- Size: Reserved 1
miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.size = 1

-- Display: Reserved 1
miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 10
miax_pearlequities_expressorders_meo_v2_7_b.reserved_10 = {}

-- Size: Reserved 10
miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size = 10

-- Display: Reserved 10
miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved 11
miax_pearlequities_expressorders_meo_v2_7_b.reserved_11 = {}

-- Size: Reserved 11
miax_pearlequities_expressorders_meo_v2_7_b.reserved_11.size = 11

-- Display: Reserved 11
miax_pearlequities_expressorders_meo_v2_7_b.reserved_11.display = function(value)
  return "Reserved 11: "..value
end

-- Dissect: Reserved 11
miax_pearlequities_expressorders_meo_v2_7_b.reserved_11.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.reserved_11.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.reserved_11.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_11, range, value, display)

  return offset + length, value
end

-- Reserved 12
miax_pearlequities_expressorders_meo_v2_7_b.reserved_12 = {}

-- Size: Reserved 12
miax_pearlequities_expressorders_meo_v2_7_b.reserved_12.size = 12

-- Display: Reserved 12
miax_pearlequities_expressorders_meo_v2_7_b.reserved_12.display = function(value)
  return "Reserved 12: "..value
end

-- Dissect: Reserved 12
miax_pearlequities_expressorders_meo_v2_7_b.reserved_12.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.reserved_12.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.reserved_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_12, range, value, display)

  return offset + length, value
end

-- Reserved 17
miax_pearlequities_expressorders_meo_v2_7_b.reserved_17 = {}

-- Size: Reserved 17
miax_pearlequities_expressorders_meo_v2_7_b.reserved_17.size = 17

-- Display: Reserved 17
miax_pearlequities_expressorders_meo_v2_7_b.reserved_17.display = function(value)
  return "Reserved 17: "..value
end

-- Dissect: Reserved 17
miax_pearlequities_expressorders_meo_v2_7_b.reserved_17.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.reserved_17.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.reserved_17.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_17, range, value, display)

  return offset + length, value
end

-- Reserved 19
miax_pearlequities_expressorders_meo_v2_7_b.reserved_19 = {}

-- Size: Reserved 19
miax_pearlequities_expressorders_meo_v2_7_b.reserved_19.size = 19

-- Display: Reserved 19
miax_pearlequities_expressorders_meo_v2_7_b.reserved_19.display = function(value)
  return "Reserved 19: "..value
end

-- Dissect: Reserved 19
miax_pearlequities_expressorders_meo_v2_7_b.reserved_19.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.reserved_19.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.reserved_19.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_19, range, value, display)

  return offset + length, value
end

-- Reserved 8
miax_pearlequities_expressorders_meo_v2_7_b.reserved_8 = {}

-- Size: Reserved 8
miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size = 8

-- Display: Reserved 8
miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Reserved 9
miax_pearlequities_expressorders_meo_v2_7_b.reserved_9 = {}

-- Size: Reserved 9
miax_pearlequities_expressorders_meo_v2_7_b.reserved_9.size = 9

-- Display: Reserved 9
miax_pearlequities_expressorders_meo_v2_7_b.reserved_9.display = function(value)
  return "Reserved 9: "..value
end

-- Dissect: Reserved 9
miax_pearlequities_expressorders_meo_v2_7_b.reserved_9.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.reserved_9.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.reserved_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserved_9, range, value, display)

  return offset + length, value
end

-- Scope
miax_pearlequities_expressorders_meo_v2_7_b.scope = {}

-- Size: Scope
miax_pearlequities_expressorders_meo_v2_7_b.scope.size = 1

-- Display: Scope
miax_pearlequities_expressorders_meo_v2_7_b.scope.display = function(value)
  if value == "M" then
    return "Scope: Purge All Orders For Specified Mpid (M)"
  end

  return "Scope: Unknown("..value..")"
end

-- Dissect: Scope
miax_pearlequities_expressorders_meo_v2_7_b.scope.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.scope, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id = {}

-- Size: Secondary Order Id
miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id.size = 8

-- Display: Secondary Order Id
miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Self Trade Protection Group
miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group = {}

-- Size: Self Trade Protection Group
miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group.size = 1

-- Display: Self Trade Protection Group
miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group.display = function(value)
  return "Self Trade Protection Group: "..value
end

-- Dissect: Self Trade Protection Group
miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.self_trade_protection_group, range, value, display)

  return offset + length, value
end

-- Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.sequence_number = {}

-- Size: Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.sequence_number.size = 8

-- Display: Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Sequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message_type = {}

-- Size: Sequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message_type.size = 2

-- Display: Sequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message_type.display = function(value)
  if value == "SU" then
    return "Sequenced Message Type: Symbol Update Message (SU)"
  end
  if value == "NR" then
    return "Sequenced Message Type: New Order Response Message (NR)"
  end
  if value == "MR" then
    return "Sequenced Message Type: Modify Order Response Message (MR)"
  end
  if value == "CR" then
    return "Sequenced Message Type: Cancel Order Response Message (CR)"
  end
  if value == "CQ" then
    return "Sequenced Message Type: Cancel Order By Exchange Order Id Response Message (CQ)"
  end
  if value == "SN" then
    return "Sequenced Message Type: System State Notification Message (SN)"
  end
  if value == "O1" then
    return "Sequenced Message Type: New Order Notification Message (O1)"
  end
  if value == "MN" then
    return "Sequenced Message Type: Modify Order Notification Message (MN)"
  end
  if value == "XN" then
    return "Sequenced Message Type: Cancel Reduce Size Order Notification Message (XN)"
  end
  if value == "P1" then
    return "Sequenced Message Type: Order Price Update Notification Message (P1)"
  end
  if value == "RA" then
    return "Sequenced Message Type: Reserve Order Replenishment Notification Message (RA)"
  end
  if value == "E1" then
    return "Sequenced Message Type: Execution Notification Message (E1)"
  end

  return "Sequenced Message Type: Unknown("..value..")"
end

-- Dissect: Sequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.sequenced_message_type, range, value, display)

  return offset + length, value
end

-- Session Id
miax_pearlequities_expressorders_meo_v2_7_b.session_id = {}

-- Size: Session Id
miax_pearlequities_expressorders_meo_v2_7_b.session_id.size = 1

-- Display: Session Id
miax_pearlequities_expressorders_meo_v2_7_b.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
miax_pearlequities_expressorders_meo_v2_7_b.session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size
miax_pearlequities_expressorders_meo_v2_7_b.size = {}

-- Size: Size
miax_pearlequities_expressorders_meo_v2_7_b.size.size = 4

-- Display: Size
miax_pearlequities_expressorders_meo_v2_7_b.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
miax_pearlequities_expressorders_meo_v2_7_b.size.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.size, range, value, display)

  return offset + length, value
end

-- Start Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.start_sequence_number = {}

-- Size: Start Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.start_sequence_number.size = 8

-- Display: Start Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.start_sequence_number.display = function(value)
  return "Start Sequence Number: "..value
end

-- Dissect: Start Sequence Number
miax_pearlequities_expressorders_meo_v2_7_b.start_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.start_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.start_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.start_sequence_number, range, value, display)

  return offset + length, value
end

-- Symbol Id
miax_pearlequities_expressorders_meo_v2_7_b.symbol_id = {}

-- Size: Symbol Id
miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size = 4

-- Display: Symbol Id
miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Symbold Id
miax_pearlequities_expressorders_meo_v2_7_b.symbold_id = {}

-- Size: Symbold Id
miax_pearlequities_expressorders_meo_v2_7_b.symbold_id.size = 4

-- Display: Symbold Id
miax_pearlequities_expressorders_meo_v2_7_b.symbold_id.display = function(value)
  return "Symbold Id: "..value
end

-- Dissect: Symbold Id
miax_pearlequities_expressorders_meo_v2_7_b.symbold_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.symbold_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.symbold_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.symbold_id, range, value, display)

  return offset + length, value
end

-- System Status
miax_pearlequities_expressorders_meo_v2_7_b.system_status = {}

-- Size: System Status
miax_pearlequities_expressorders_meo_v2_7_b.system_status.size = 1

-- Display: System Status
miax_pearlequities_expressorders_meo_v2_7_b.system_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.system_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.system_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.system_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.system_status, range, value, display)

  return offset + length, value
end

-- Test Security Indicator
miax_pearlequities_expressorders_meo_v2_7_b.test_security_indicator = {}

-- Size: Test Security Indicator
miax_pearlequities_expressorders_meo_v2_7_b.test_security_indicator.size = 1

-- Display: Test Security Indicator
miax_pearlequities_expressorders_meo_v2_7_b.test_security_indicator.display = function(value)
  if value == "Y" then
    return "Test Security Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Test Security Indicator: No (N)"
  end

  return "Test Security Indicator: Unknown("..value..")"
end

-- Dissect: Test Security Indicator
miax_pearlequities_expressorders_meo_v2_7_b.test_security_indicator.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.test_security_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.test_security_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.test_security_indicator, range, value, display)

  return offset + length, value
end

-- Test Text
miax_pearlequities_expressorders_meo_v2_7_b.test_text = {}

-- Display: Test Text
miax_pearlequities_expressorders_meo_v2_7_b.test_text.display = function(value)
  return "Test Text: "..value
end

-- Dissect runtime sized field: Test Text
miax_pearlequities_expressorders_meo_v2_7_b.test_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.test_text.display(value, packet, parent, size)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.test_text, range, value, display)

  return offset + size, value
end

-- Ticker Symbol
miax_pearlequities_expressorders_meo_v2_7_b.ticker_symbol = {}

-- Size: Ticker Symbol
miax_pearlequities_expressorders_meo_v2_7_b.ticker_symbol.size = 11

-- Display: Ticker Symbol
miax_pearlequities_expressorders_meo_v2_7_b.ticker_symbol.display = function(value)
  return "Ticker Symbol: "..value
end

-- Dissect: Ticker Symbol
miax_pearlequities_expressorders_meo_v2_7_b.ticker_symbol.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.ticker_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_b.ticker_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.ticker_symbol, range, value, display)

  return offset + length, value
end

-- Time In Force
miax_pearlequities_expressorders_meo_v2_7_b.time_in_force = {}

-- Size: Time In Force
miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.size = 1

-- Display: Time In Force
miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trade Id
miax_pearlequities_expressorders_meo_v2_7_b.trade_id = {}

-- Size: Trade Id
miax_pearlequities_expressorders_meo_v2_7_b.trade_id.size = 8

-- Display: Trade Id
miax_pearlequities_expressorders_meo_v2_7_b.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
miax_pearlequities_expressorders_meo_v2_7_b.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Status
miax_pearlequities_expressorders_meo_v2_7_b.trade_status = {}

-- Size: Trade Status
miax_pearlequities_expressorders_meo_v2_7_b.trade_status.size = 1

-- Display: Trade Status
miax_pearlequities_expressorders_meo_v2_7_b.trade_status.display = function(value)
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
miax_pearlequities_expressorders_meo_v2_7_b.trade_status.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.trade_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.trade_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.trade_status, range, value, display)

  return offset + length, value
end

-- Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value = {}

-- Size: Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.size = 8

-- Display: Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.display = function(value)
  return "Trading Collar Dollar Value: "..value
end

-- Translate: Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trading Collar Dollar Value
miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.trading_collar_dollar_value, range, value, display)

  return offset + length, value
end

-- Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_b.trading_session_id = {}

-- Size: Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_b.trading_session_id.size = 1

-- Display: Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_b.trading_session_id.display = function(value)
  return "Trading Session Id: "..value
end

-- Dissect: Trading Session Id
miax_pearlequities_expressorders_meo_v2_7_b.trading_session_id.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.trading_session_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.trading_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Unsequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message_type = {}

-- Size: Unsequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message_type.size = 2

-- Display: Unsequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message_type.display = function(value)
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
    return "Unsequenced Message Type: Modify Order Response Message (MR)"
  end
  if value == "CO" then
    return "Unsequenced Message Type: Cancel Order Request Message (CO)"
  end
  if value == "CR" then
    return "Unsequenced Message Type: Cancel Order Response Message (CR)"
  end
  if value == "CX" then
    return "Unsequenced Message Type: Cancel Order By Exchange Order Id Request Message (CX)"
  end
  if value == "CQ" then
    return "Unsequenced Message Type: Cancel Order By Exchange Order Id Response Message (CQ)"
  end
  if value == "XQ" then
    return "Unsequenced Message Type: Mass Cancel Request Message (XQ)"
  end
  if value == "XR" then
    return "Unsequenced Message Type: Mass Cancel Response Message (XR)"
  end
  if value == "XS" then
    return "Unsequenced Message Type: Aggressive Side Purge Request Message (XS)"
  end
  if value == "SR" then
    return "Unsequenced Message Type: Aggressive Side Purge Response Message (SR)"
  end
  if value == "RA" then
    return "Unsequenced Message Type: Reserve Order Replenishment Notification Message (RA)"
  end
  if value == "E1" then
    return "Unsequenced Message Type: Execution Notification Message (E1)"
  end

  return "Unsequenced Message Type: Unknown("..value..")"
end

-- Dissect: Unsequenced Message Type
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message_type.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unsequenced_message_type, range, value, display)

  return offset + length, value
end

-- Username
miax_pearlequities_expressorders_meo_v2_7_b.username = {}

-- Size: Username
miax_pearlequities_expressorders_meo_v2_7_b.username.size = 5

-- Display: Username
miax_pearlequities_expressorders_meo_v2_7_b.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
miax_pearlequities_expressorders_meo_v2_7_b.username.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.username.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = miax_pearlequities_expressorders_meo_v2_7_b.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.username, range, value, display)

  return offset + length, value
end

-- Working Price
miax_pearlequities_expressorders_meo_v2_7_b.working_price = {}

-- Size: Working Price
miax_pearlequities_expressorders_meo_v2_7_b.working_price.size = 8

-- Display: Working Price
miax_pearlequities_expressorders_meo_v2_7_b.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
miax_pearlequities_expressorders_meo_v2_7_b.working_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Working Price
miax_pearlequities_expressorders_meo_v2_7_b.working_price.dissect = function(buffer, offset, packet, parent)
  local length = miax_pearlequities_expressorders_meo_v2_7_b.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = miax_pearlequities_expressorders_meo_v2_7_b.working_price.translate(raw)
  local display = miax_pearlequities_expressorders_meo_v2_7_b.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Miax PearlEquities ExpressOrders Meo 2.7.b
-----------------------------------------------------------------------

-- Test Packet
miax_pearlequities_expressorders_meo_v2_7_b.test_packet = {}

-- Calculate size of: Test Packet
miax_pearlequities_expressorders_meo_v2_7_b.test_packet.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Test Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Test Packet
miax_pearlequities_expressorders_meo_v2_7_b.test_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Packet
miax_pearlequities_expressorders_meo_v2_7_b.test_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Test Text
  local size_of_test_text = esesm_packet_length - 1

  -- Test Text: 0 Byte Ascii String
  index, test_text = miax_pearlequities_expressorders_meo_v2_7_b.test_text.dissect(buffer, index, packet, parent, size_of_test_text)

  return index
end

-- Dissect: Test Packet
miax_pearlequities_expressorders_meo_v2_7_b.test_packet.dissect = function(buffer, offset, packet, parent)
  if show.test_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.test_packet, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.test_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.test_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.test_packet.fields(buffer, offset, packet, parent)
  end
end

-- Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_b.goodbye_packet = {}

-- Calculate size of: Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_b.goodbye_packet.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_expressorders_meo_v2_7_b.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_b.goodbye_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_b.goodbye_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_expressorders_meo_v2_7_b.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = esesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearlequities_expressorders_meo_v2_7_b.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Goodbye Packet
miax_pearlequities_expressorders_meo_v2_7_b.goodbye_packet.dissect = function(buffer, offset, packet, parent)
  if show.goodbye_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.goodbye_packet, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.goodbye_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.goodbye_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.goodbye_packet.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
miax_pearlequities_expressorders_meo_v2_7_b.logout_request = {}

-- Calculate size of: Logout Request
miax_pearlequities_expressorders_meo_v2_7_b.logout_request.size = function(buffer, offset)
  local index = 0

  index = index + miax_pearlequities_expressorders_meo_v2_7_b.logout_reason.size

  -- Parse runtime size of: Logout Text
  index = index + buffer(offset + index - 4, 2):le_uint()

  return index
end

-- Display: Logout Request
miax_pearlequities_expressorders_meo_v2_7_b.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
miax_pearlequities_expressorders_meo_v2_7_b.logout_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 4 values
  index, logout_reason = miax_pearlequities_expressorders_meo_v2_7_b.logout_reason.dissect(buffer, index, packet, parent)

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Logout Text
  local size_of_logout_text = esesm_packet_length - 2

  -- Logout Text: 0 Byte Ascii String
  index, logout_text = miax_pearlequities_expressorders_meo_v2_7_b.logout_text.dissect(buffer, index, packet, parent, size_of_logout_text)

  return index
end

-- Dissect: Logout Request
miax_pearlequities_expressorders_meo_v2_7_b.logout_request.dissect = function(buffer, offset, packet, parent)
  if show.logout_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.logout_request, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.logout_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.logout_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.logout_request.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_b.retransmission_request = {}

-- Size: Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_b.retransmission_request.size =
  miax_pearlequities_expressorders_meo_v2_7_b.start_sequence_number.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.end_sequence_number.size

-- Display: Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_b.retransmission_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_b.retransmission_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, start_sequence_number = miax_pearlequities_expressorders_meo_v2_7_b.start_sequence_number.dissect(buffer, index, packet, parent)

  -- End Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, end_sequence_number = miax_pearlequities_expressorders_meo_v2_7_b.end_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request
miax_pearlequities_expressorders_meo_v2_7_b.retransmission_request.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.retransmission_request, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.retransmission_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.retransmission_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.retransmission_request.fields(buffer, offset, packet, parent)
  end
end

-- Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_b.synchronization_complete = {}

-- Size: Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_b.synchronization_complete.size =
  miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.size

-- Display: Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_b.synchronization_complete.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_b.synchronization_complete.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: BinaryU
  index, number_of_matching_engines = miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Complete
miax_pearlequities_expressorders_meo_v2_7_b.synchronization_complete.dissect = function(buffer, offset, packet, parent)
  if show.synchronization_complete then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.synchronization_complete, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.synchronization_complete.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.synchronization_complete.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.synchronization_complete.fields(buffer, offset, packet, parent)
  end
end

-- Login Response
miax_pearlequities_expressorders_meo_v2_7_b.login_response = {}

-- Size: Login Response
miax_pearlequities_expressorders_meo_v2_7_b.login_response.size =
  miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.login_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.trading_session_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.highest_sequence_number.size

-- Display: Login Response
miax_pearlequities_expressorders_meo_v2_7_b.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
miax_pearlequities_expressorders_meo_v2_7_b.login_response.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Matching Engines: BinaryU
  index, number_of_matching_engines = miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Login Status: 1 Byte Ascii String Enum with 9 values
  index, login_status = miax_pearlequities_expressorders_meo_v2_7_b.login_status.dissect(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, trading_session_id = miax_pearlequities_expressorders_meo_v2_7_b.trading_session_id.dissect(buffer, index, packet, parent)

  -- Highest Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, highest_sequence_number = miax_pearlequities_expressorders_meo_v2_7_b.highest_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
miax_pearlequities_expressorders_meo_v2_7_b.login_response.dissect = function(buffer, offset, packet, parent)
  if show.login_response then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.login_response, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.login_response.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.login_response.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.login_response.fields(buffer, offset, packet, parent)
  end
end

-- Login Request
miax_pearlequities_expressorders_meo_v2_7_b.login_request = {}

-- Size: Login Request
miax_pearlequities_expressorders_meo_v2_7_b.login_request.size =
  miax_pearlequities_expressorders_meo_v2_7_b.esesm_version.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.username.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.computer_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.application_protocol.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.requested_trading_session_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.requested_sequence_number.size

-- Display: Login Request
miax_pearlequities_expressorders_meo_v2_7_b.login_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request
miax_pearlequities_expressorders_meo_v2_7_b.login_request.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Esesm Version: 5 Byte Ascii String
  index, esesm_version = miax_pearlequities_expressorders_meo_v2_7_b.esesm_version.dissect(buffer, index, packet, parent)

  -- Username: 5 Byte Ascii String
  index, username = miax_pearlequities_expressorders_meo_v2_7_b.username.dissect(buffer, index, packet, parent)

  -- Computer Id: 8 Byte Ascii String
  index, computer_id = miax_pearlequities_expressorders_meo_v2_7_b.computer_id.dissect(buffer, index, packet, parent)

  -- Application Protocol: 8 Byte Ascii String
  index, application_protocol = miax_pearlequities_expressorders_meo_v2_7_b.application_protocol.dissect(buffer, index, packet, parent)

  -- Requested Trading Session Id: 1 Byte Unsigned Fixed Width Integer
  index, requested_trading_session_id = miax_pearlequities_expressorders_meo_v2_7_b.requested_trading_session_id.dissect(buffer, index, packet, parent)

  -- Requested Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, requested_sequence_number = miax_pearlequities_expressorders_meo_v2_7_b.requested_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Request
miax_pearlequities_expressorders_meo_v2_7_b.login_request.dissect = function(buffer, offset, packet, parent)
  if show.login_request then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.login_request, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.login_request.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.login_request.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.login_request.fields(buffer, offset, packet, parent)
  end
end

-- Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator = {}

-- Size: Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator.size = 1

-- Display: Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator.bits = function(range, value, packet, parent)

  -- Nbbo Setter Joiner: 3 Bit Enum with 7 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.nbbo_setter_joiner, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_5, range, value)
end

-- Dissect: Additional Liquidity Indicator
miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.additional_liquidity_indicator, range, display)

  if show.additional_liquidity_indicator then
    miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions = {}

-- Size: Execution Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions.size = 2

-- Display: Execution Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Side flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Side"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Execution Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions.bits = function(range, value, packet, parent)

  -- Side: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.side, range, value)

  -- Unused 15: 15 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_15, range, value)
end

-- Dissect: Execution Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.execution_order_instructions, range, display)

  if show.execution_order_instructions then
    miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message = {}

-- Size: Execution Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.trade_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.execution_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.correction_number.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.trade_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.last_price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.last_size.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.liquidity_indicator.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center_mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_12.size

-- Display: Execution Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Execution Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Trade Id: BinaryU
  index, trade_id = miax_pearlequities_expressorders_meo_v2_7_b.trade_id.dissect(buffer, index, packet, parent)

  -- Execution Id: BinaryU
  index, execution_id = miax_pearlequities_expressorders_meo_v2_7_b.execution_id.dissect(buffer, index, packet, parent)

  -- Correction Number: BinaryU
  index, correction_number = miax_pearlequities_expressorders_meo_v2_7_b.correction_number.dissect(buffer, index, packet, parent)

  -- Trade Status: Alphanumeric
  index, trade_status = miax_pearlequities_expressorders_meo_v2_7_b.trade_status.dissect(buffer, index, packet, parent)

  -- Last Price: Price6U
  index, last_price = miax_pearlequities_expressorders_meo_v2_7_b.last_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_pearlequities_expressorders_meo_v2_7_b.last_size.dissect(buffer, index, packet, parent)

  -- Execution Order Instructions: Struct of 2 fields
  index, execution_order_instructions = miax_pearlequities_expressorders_meo_v2_7_b.execution_order_instructions.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.dissect(buffer, index, packet, parent)

  -- Executing Trading Center: Alphanumeric
  index, executing_trading_center = miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: BinaryU
  index, secondary_order_id = miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: String
  index, liquidity_indicator = miax_pearlequities_expressorders_meo_v2_7_b.liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_b.locate_account.dissect(buffer, index, packet, parent)

  -- Original Order Capacity: Alphanumeric
  index, original_order_capacity = miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity.dissect(buffer, index, packet, parent)

  -- Additional Liquidity Indicator: Struct of 2 fields
  index, additional_liquidity_indicator = miax_pearlequities_expressorders_meo_v2_7_b.additional_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Executing Trading Center Mpid: String
  index, executing_trading_center_mpid = miax_pearlequities_expressorders_meo_v2_7_b.executing_trading_center_mpid.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  index, reserved_12 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.execution_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserve Order Replenishment Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message = {}

-- Size: Reserve Order Replenishment Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.display_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: Reserve Order Replenishment Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reserve Order Replenishment Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: BinaryU
  index, secondary_order_id = miax_pearlequities_expressorders_meo_v2_7_b.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Display Qty: BinaryU
  index, display_qty = miax_pearlequities_expressorders_meo_v2_7_b.display_qty.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reserve Order Replenishment Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.reserve_order_replenishment_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Aggressive Side Purge Response Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_response_message = {}

-- Size: Aggressive Side Purge Response Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_response_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbold_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.asp_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.number_of_orders_cancelled.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.asp_eligible_orders_cancelled.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: Aggressive Side Purge Response Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aggressive Side Purge Response Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbold Id: BinaryU
  index, symbold_id = miax_pearlequities_expressorders_meo_v2_7_b.symbold_id.dissect(buffer, index, packet, parent)

  -- Asp Status: Alphanumeric
  index, asp_status = miax_pearlequities_expressorders_meo_v2_7_b.asp_status.dissect(buffer, index, packet, parent)

  -- Number Of Orders Cancelled: BinaryU
  index, number_of_orders_cancelled = miax_pearlequities_expressorders_meo_v2_7_b.number_of_orders_cancelled.dissect(buffer, index, packet, parent)

  -- Asp Eligible Orders Cancelled: Alphanumeric
  index, asp_eligible_orders_cancelled = miax_pearlequities_expressorders_meo_v2_7_b.asp_eligible_orders_cancelled.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aggressive Side Purge Response Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.aggressive_side_purge_response_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Asp Side
miax_pearlequities_expressorders_meo_v2_7_b.asp_side = {}

-- Size: Asp Side
miax_pearlequities_expressorders_meo_v2_7_b.asp_side.size = 1

-- Display: Asp Side
miax_pearlequities_expressorders_meo_v2_7_b.asp_side.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Side flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Side"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Asp Side
miax_pearlequities_expressorders_meo_v2_7_b.asp_side.bits = function(range, value, packet, parent)

  -- Side: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.side, range, value)

  -- Unused 7: 7 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_7, range, value)
end

-- Dissect: Asp Side
miax_pearlequities_expressorders_meo_v2_7_b.asp_side.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_expressorders_meo_v2_7_b.asp_side.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.asp_side.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.asp_side, range, display)

  if show.asp_side then
    miax_pearlequities_expressorders_meo_v2_7_b.asp_side.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Aggressive Side Purge Request Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_request_message = {}

-- Size: Aggressive Side Purge Request Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_request_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.asp_side.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: Aggressive Side Purge Request Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Aggressive Side Purge Request Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Asp Side: Struct of 2 fields
  index, asp_side = miax_pearlequities_expressorders_meo_v2_7_b.asp_side.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_b.price.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Aggressive Side Purge Request Message
miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.aggressive_side_purge_request_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Response Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_response_message = {}

-- Size: Mass Cancel Response Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_response_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.notification_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: Mass Cancel Response Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Response Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Notification Time: NanoTime
  index, notification_time = miax_pearlequities_expressorders_meo_v2_7_b.notification_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Number Of Matching Engines: BinaryU
  index, number_of_matching_engines = miax_pearlequities_expressorders_meo_v2_7_b.number_of_matching_engines.dissect(buffer, index, packet, parent)

  -- Matching Engine Status: Alphanumeric
  index, matching_engine_status = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Response Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.mass_cancel_response_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Request Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_request_message = {}

-- Size: Mass Cancel Request Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_request_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.scope.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.action.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.purge_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_9.size

-- Display: Mass Cancel Request Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Request Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Scope: Alphanumeric
  index, scope = miax_pearlequities_expressorders_meo_v2_7_b.scope.dissect(buffer, index, packet, parent)

  -- Action: Alphanumeric
  index, action = miax_pearlequities_expressorders_meo_v2_7_b.action.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_pearlequities_expressorders_meo_v2_7_b.purge_group.dissect(buffer, index, packet, parent)

  -- Reserved 9: BinaryU
  index, reserved_9 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Request Message
miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.mass_cancel_request_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message = {}

-- Size: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.cancel_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cancel Status: Alphanumeric
  index, cancel_status = miax_pearlequities_expressorders_meo_v2_7_b.cancel_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order By Exchange Order Id Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_by_exchange_order_id_response_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order By Exchange Order Id Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_request_message = {}

-- Size: Cancel Order By Exchange Order Id Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_request_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: Cancel Order By Exchange Order Id Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order By Exchange Order Id Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order By Exchange Order Id Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_by_exchange_order_id_request_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message = {}

-- Size: Cancel Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.cancel_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: Cancel Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cancel Status: Alphanumeric
  index, cancel_status = miax_pearlequities_expressorders_meo_v2_7_b.cancel_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_response_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_request_message = {}

-- Size: Cancel Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_request_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: Cancel Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_request_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message = {}

-- Size: Modify Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.modify_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: Modify Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_b.price.dissect(buffer, index, packet, parent)

  -- Modify Status: Alphanumeric
  index, modify_status = miax_pearlequities_expressorders_meo_v2_7_b.modify_status.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_order_response_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions = {}

-- Size: Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.size = 1

-- Display: Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Locate Required flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Locate Required"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.bits = function(range, value, packet, parent)

  -- Short Sale Indicator: 2 Bit Enum with 4 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.short_sale_indicator, range, value)

  -- Locate Required: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.locate_required, range, value)

  -- Unused 5: 5 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_5, range, value)
end

-- Dissect: Modify Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_order_instructions, range, display)

  if show.modify_order_instructions then
    miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_request_message = {}

-- Size: Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_request_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.min_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_19.size

-- Display: Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_b.size.dissect(buffer, index, packet, parent)

  -- Modify Order Instructions: Struct of 3 fields
  index, modify_order_instructions = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_pearlequities_expressorders_meo_v2_7_b.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor Qty: BinaryU
  index, max_floor_qty = miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_b.locate_account.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Expiry Time: MilliTime
  index, order_expiry_time = miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.dissect(buffer, index, packet, parent)

  -- Reserved 19: BinaryU
  index, reserved_19 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_19.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_order_request_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.modify_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message = {}

-- Size: New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_19.size

-- Display: New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_b.size.dissect(buffer, index, packet, parent)

  -- Order Status: Alphanumeric
  index, order_status = miax_pearlequities_expressorders_meo_v2_7_b.order_status.dissect(buffer, index, packet, parent)

  -- Reserved 19: BinaryU
  index, reserved_19 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_19.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.new_order_response_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Routing
miax_pearlequities_expressorders_meo_v2_7_b.routing = {}

-- Size: Routing
miax_pearlequities_expressorders_meo_v2_7_b.routing.size = 1

-- Display: Routing
miax_pearlequities_expressorders_meo_v2_7_b.routing.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Routing
miax_pearlequities_expressorders_meo_v2_7_b.routing.bits = function(range, value, packet, parent)

  -- Routing Instruction: 3 Bit Enum with 3 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.routing_instruction, range, value)

  -- Routing Strategy: 5 Bit Enum with 3 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.routing_strategy, range, value)
end

-- Dissect: Routing
miax_pearlequities_expressorders_meo_v2_7_b.routing.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_expressorders_meo_v2_7_b.routing.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.routing.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.routing, range, display)

  if show.routing then
    miax_pearlequities_expressorders_meo_v2_7_b.routing.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection = {}

-- Size: Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.size = 1

-- Display: Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.display = function(range, value, packet, parent)
  local flags = {}


  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.bits = function(range, value, packet, parent)

  -- Self Trade Protection Level: 3 Bit Enum with 4 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.self_trade_protection_level, range, value)

  -- Self Trade Protection Instruction: 3 Bit Enum with 5 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.self_trade_protection_instruction, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_2, range, value)
end

-- Dissect: Self Trade Protection
miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.self_trade_protection, range, display)

  if show.self_trade_protection then
    miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions = {}

-- Size: New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.size = 2

-- Display: New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Side flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Side"
  end
  -- Is Displayed flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Displayed"
  end
  -- Is Post Only flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Post Only"
  end
  -- Is Locate Required flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Locate Required"
  end
  -- Is Iso flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Iso"
  end
  -- Is Retail Order flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Retail Order"
  end
  -- Is Cancel Order If Not A Nbbo Setter flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Cancel Order If Not A Nbbo Setter"
  end
  -- Is Cancel Order If Not A Nbbo Setter With Size flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Cancel Order If Not A Nbbo Setter With Size"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.bits = function(range, value, packet, parent)

  -- Side: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.side, range, value)

  -- Short Sale Indicator: 2 Bit Enum with 4 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.short_sale_indicator, range, value)

  -- Displayed: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.displayed, range, value)

  -- Post Only: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.post_only, range, value)

  -- Locate Required: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.locate_required, range, value)

  -- Iso: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.iso, range, value)

  -- Retail Order: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.retail_order, range, value)

  -- Attributable Order: 2 Bit Enum with 3 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.attributable_order, range, value)

  -- Min Qty Exec Type: 2 Bit Enum with 3 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.min_qty_exec_type, range, value)

  -- Cancel Order If Not A Nbbo Setter: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_if_not_a_nbbo_setter, range, value)

  -- Cancel Order If Not A Nbbo Setter With Size: 1 Bit Enum with 2 values
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_order_if_not_a_nbbo_setter_with_size, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unused_2, range, value)
end

-- Dissect: New Order Instructions
miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.dissect = function(buffer, offset, packet, parent)
  local size = miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.display(range, value, packet, parent)
  local element = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.new_order_instructions, range, display)

  if show.new_order_instructions then
    miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_request_message = {}

-- Size: New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_request_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_type.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.routing.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.capacity.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.account.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.clearing_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.min_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.purge_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_11.size

-- Display: New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_b.size.dissect(buffer, index, packet, parent)

  -- New Order Instructions: Struct of 12 fields
  index, new_order_instructions = miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_pearlequities_expressorders_meo_v2_7_b.order_type.dissect(buffer, index, packet, parent)

  -- Price Sliding And Reprice Frequency: Alphanumeric
  index, price_sliding_and_reprice_frequency = miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency.dissect(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: Alphanumeric
  index, self_trade_protection_group = miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Routing: Struct of 2 fields
  index, routing = miax_pearlequities_expressorders_meo_v2_7_b.routing.dissect(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price6S
  index, trading_collar_dollar_value = miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = miax_pearlequities_expressorders_meo_v2_7_b.capacity.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_pearlequities_expressorders_meo_v2_7_b.account.dissect(buffer, index, packet, parent)

  -- Clearing Account: String
  index, clearing_account = miax_pearlequities_expressorders_meo_v2_7_b.clearing_account.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_pearlequities_expressorders_meo_v2_7_b.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor Qty: BinaryU
  index, max_floor_qty = miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.dissect(buffer, index, packet, parent)

  -- Display Range Qty: BinaryU
  index, display_range_qty = miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty.dissect(buffer, index, packet, parent)

  -- Peg Offset: Price6S
  index, peg_offset = miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_b.locate_account.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_pearlequities_expressorders_meo_v2_7_b.purge_group.dissect(buffer, index, packet, parent)

  -- Order Expiry Time: MilliTime
  index, order_expiry_time = miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.dissect(buffer, index, packet, parent)

  -- Reserved 11: BinaryU
  index, reserved_11 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_11.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Request Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.new_order_request_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.new_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.new_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.new_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message = {}

-- Dissect: Unsequenced Message
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message.dissect = function(buffer, offset, packet, parent, unsequenced_message_type)
  -- Dissect New Order Request Message
  if unsequenced_message_type == "N1" then
    return miax_pearlequities_expressorders_meo_v2_7_b.new_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response Message
  if unsequenced_message_type == "NR" then
    return miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Request Message
  if unsequenced_message_type == "M1" then
    return miax_pearlequities_expressorders_meo_v2_7_b.modify_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response Message
  if unsequenced_message_type == "MR" then
    return miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Request Message
  if unsequenced_message_type == "CO" then
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response Message
  if unsequenced_message_type == "CR" then
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order By Exchange Order Id Request Message
  if unsequenced_message_type == "CX" then
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order By Exchange Order Id Response Message
  if unsequenced_message_type == "CQ" then
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Request Message
  if unsequenced_message_type == "XQ" then
    return miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Response Message
  if unsequenced_message_type == "XR" then
    return miax_pearlequities_expressorders_meo_v2_7_b.mass_cancel_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aggressive Side Purge Request Message
  if unsequenced_message_type == "XS" then
    return miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aggressive Side Purge Response Message
  if unsequenced_message_type == "SR" then
    return miax_pearlequities_expressorders_meo_v2_7_b.aggressive_side_purge_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reserve Order Replenishment Notification Message
  if unsequenced_message_type == "RA" then
    return miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Notification Message
  if unsequenced_message_type == "E1" then
    return miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet = {}

-- Read runtime size of: Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  return esesm_packet_length - 3
end

-- Display: Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local index = offset

  -- Unsequenced Message Type: 2 Byte Ascii String Enum with 14 values
  index, unsequenced_message_type = miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 14 branches
  index = miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_message.dissect(buffer, index, packet, parent, unsequenced_message_type)

  return index
end

-- Dissect: Unsequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
  local size_of_unsequenced_data_packet = miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_unsequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.unsequenced_data_packet then
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.unsequenced_data_packet, buffer(offset, 0))
    local current = miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)
    parent:set_len(size_of_unsequenced_data_packet)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet.fields(buffer, offset, packet, parent, size_of_unsequenced_data_packet)

    return index
  end
end

-- Order Price Update Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.order_price_update_notification_message = {}

-- Size: Order Price Update Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.order_price_update_notification_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.working_price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.nbbo_indicator.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_9.size

-- Display: Order Price Update Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.order_price_update_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Price Update Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.order_price_update_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Working Price: Price6U
  index, working_price = miax_pearlequities_expressorders_meo_v2_7_b.working_price.dissect(buffer, index, packet, parent)

  -- Nbbo Indicator: Alphanumeric
  index, nbbo_indicator = miax_pearlequities_expressorders_meo_v2_7_b.nbbo_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 9: BinaryU
  index, reserved_9 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_9.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Price Update Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.order_price_update_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.order_price_update_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.order_price_update_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.order_price_update_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.order_price_update_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reduce Size Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_reduce_size_order_notification_message = {}

-- Size: Cancel Reduce Size Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_reduce_size_order_notification_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.cancel_reason.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.last_price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.last_size.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.pending_cancel_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size

-- Display: Cancel Reduce Size Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_reduce_size_order_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Reduce Size Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_reduce_size_order_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Alphanumeric
  index, cancel_reason = miax_pearlequities_expressorders_meo_v2_7_b.cancel_reason.dissect(buffer, index, packet, parent)

  -- Last Price: Price6U
  index, last_price = miax_pearlequities_expressorders_meo_v2_7_b.last_price.dissect(buffer, index, packet, parent)

  -- Last Size: BinaryU
  index, last_size = miax_pearlequities_expressorders_meo_v2_7_b.last_size.dissect(buffer, index, packet, parent)

  -- Pending Cancel Status: Alphanumeric
  index, pending_cancel_status = miax_pearlequities_expressorders_meo_v2_7_b.pending_cancel_status.dissect(buffer, index, packet, parent)

  -- Pending Reject Reason: Alphanumeric
  index, pending_reject_reason = miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Reduce Size Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.cancel_reduce_size_order_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.cancel_reduce_size_order_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.cancel_reduce_size_order_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.cancel_reduce_size_order_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_reduce_size_order_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_notification_message = {}

-- Size: Modify Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_notification_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.min_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.pending_modify_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_17.size

-- Display: Modify Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Original Client Order Id: String
  index, original_client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.original_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_b.size.dissect(buffer, index, packet, parent)

  -- Leaves Qty: BinaryU
  index, leaves_qty = miax_pearlequities_expressorders_meo_v2_7_b.leaves_qty.dissect(buffer, index, packet, parent)

  -- Modify Order Instructions: Struct of 3 fields
  index, modify_order_instructions = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_instructions.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_pearlequities_expressorders_meo_v2_7_b.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor Qty: BinaryU
  index, max_floor_qty = miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.dissect(buffer, index, packet, parent)

  -- Pending Modify Status: Alphanumeric
  index, pending_modify_status = miax_pearlequities_expressorders_meo_v2_7_b.pending_modify_status.dissect(buffer, index, packet, parent)

  -- Pending Reject Reason: Alphanumeric
  index, pending_reject_reason = miax_pearlequities_expressorders_meo_v2_7_b.pending_reject_reason.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_b.locate_account.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Expiry Time: MilliTime
  index, order_expiry_time = miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.dissect(buffer, index, packet, parent)

  -- Reserved 17: Alphanumeric
  index, reserved_17 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_17.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.modify_order_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.modify_order_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.modify_order_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.modify_order_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_notification_message = {}

-- Size: New Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_notification_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.mpid.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.price.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.size.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_type.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.routing.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.capacity.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.account.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.clearing_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.min_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.locate_account.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.purge_group.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.size

-- Display: New Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Mpid: Alphanumeric
  index, mpid = miax_pearlequities_expressorders_meo_v2_7_b.mpid.dissect(buffer, index, packet, parent)

  -- Order Id: BinaryU
  index, order_id = miax_pearlequities_expressorders_meo_v2_7_b.order_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: String
  index, client_order_id = miax_pearlequities_expressorders_meo_v2_7_b.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price6U
  index, price = miax_pearlequities_expressorders_meo_v2_7_b.price.dissect(buffer, index, packet, parent)

  -- Size: BinaryU
  index, size = miax_pearlequities_expressorders_meo_v2_7_b.size.dissect(buffer, index, packet, parent)

  -- New Order Instructions: Struct of 12 fields
  index, new_order_instructions = miax_pearlequities_expressorders_meo_v2_7_b.new_order_instructions.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = miax_pearlequities_expressorders_meo_v2_7_b.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Type: Alphanumeric
  index, order_type = miax_pearlequities_expressorders_meo_v2_7_b.order_type.dissect(buffer, index, packet, parent)

  -- Price Sliding And Reprice Frequency: Alphanumeric
  index, price_sliding_and_reprice_frequency = miax_pearlequities_expressorders_meo_v2_7_b.price_sliding_and_reprice_frequency.dissect(buffer, index, packet, parent)

  -- Self Trade Protection: Struct of 3 fields
  index, self_trade_protection = miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection.dissect(buffer, index, packet, parent)

  -- Self Trade Protection Group: Alphanumeric
  index, self_trade_protection_group = miax_pearlequities_expressorders_meo_v2_7_b.self_trade_protection_group.dissect(buffer, index, packet, parent)

  -- Routing: Struct of 2 fields
  index, routing = miax_pearlequities_expressorders_meo_v2_7_b.routing.dissect(buffer, index, packet, parent)

  -- Trading Collar Dollar Value: Price6S
  index, trading_collar_dollar_value = miax_pearlequities_expressorders_meo_v2_7_b.trading_collar_dollar_value.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = miax_pearlequities_expressorders_meo_v2_7_b.capacity.dissect(buffer, index, packet, parent)

  -- Account: String
  index, account = miax_pearlequities_expressorders_meo_v2_7_b.account.dissect(buffer, index, packet, parent)

  -- Clearing Account: String
  index, clearing_account = miax_pearlequities_expressorders_meo_v2_7_b.clearing_account.dissect(buffer, index, packet, parent)

  -- Min Qty: BinaryU
  index, min_qty = miax_pearlequities_expressorders_meo_v2_7_b.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor Qty: BinaryU
  index, max_floor_qty = miax_pearlequities_expressorders_meo_v2_7_b.max_floor_qty.dissect(buffer, index, packet, parent)

  -- Display Range Qty: BinaryU
  index, display_range_qty = miax_pearlequities_expressorders_meo_v2_7_b.display_range_qty.dissect(buffer, index, packet, parent)

  -- Peg Offset: Price6S
  index, peg_offset = miax_pearlequities_expressorders_meo_v2_7_b.peg_offset.dissect(buffer, index, packet, parent)

  -- Locate Account: String
  index, locate_account = miax_pearlequities_expressorders_meo_v2_7_b.locate_account.dissect(buffer, index, packet, parent)

  -- Purge Group: Alphanumeric
  index, purge_group = miax_pearlequities_expressorders_meo_v2_7_b.purge_group.dissect(buffer, index, packet, parent)

  -- Original Order Capacity: Alphanumeric
  index, original_order_capacity = miax_pearlequities_expressorders_meo_v2_7_b.original_order_capacity.dissect(buffer, index, packet, parent)

  -- Order Expiry Time: MilliTime
  index, order_expiry_time = miax_pearlequities_expressorders_meo_v2_7_b.order_expiry_time.dissect(buffer, index, packet, parent)

  -- Reserved 10: BinaryU
  index, reserved_10 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.new_order_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.new_order_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.new_order_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.new_order_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.new_order_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- System State Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.system_state_notification_message = {}

-- Size: System State Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.system_state_notification_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.meo_version.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.session_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.system_status.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.size

-- Display: System State Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.system_state_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System State Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.system_state_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Meo Version: Alphanumeric
  index, meo_version = miax_pearlequities_expressorders_meo_v2_7_b.meo_version.dissect(buffer, index, packet, parent)

  -- Session Id: BinaryU
  index, session_id = miax_pearlequities_expressorders_meo_v2_7_b.session_id.dissect(buffer, index, packet, parent)

  -- System Status: Alphanumeric
  index, system_status = miax_pearlequities_expressorders_meo_v2_7_b.system_status.dissect(buffer, index, packet, parent)

  -- Reserved 8: BinaryU
  index, reserved_8 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System State Notification Message
miax_pearlequities_expressorders_meo_v2_7_b.system_state_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.system_state_notification_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.system_state_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.system_state_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.system_state_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Update Message
miax_pearlequities_expressorders_meo_v2_7_b.symbol_update_message = {}

-- Size: Symbol Update Message
miax_pearlequities_expressorders_meo_v2_7_b.symbol_update_message.size =
  miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.ticker_symbol.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.test_security_indicator.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.lot_size.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.opening_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.closing_time.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.primary_market_code.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.reserved_12.size

-- Display: Symbol Update Message
miax_pearlequities_expressorders_meo_v2_7_b.symbol_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Update Message
miax_pearlequities_expressorders_meo_v2_7_b.symbol_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Matching Engine Time: NanoTime
  index, matching_engine_time = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: BinaryU
  index, symbol_id = miax_pearlequities_expressorders_meo_v2_7_b.symbol_id.dissect(buffer, index, packet, parent)

  -- Ticker Symbol: Alphanumeric
  index, ticker_symbol = miax_pearlequities_expressorders_meo_v2_7_b.ticker_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.dissect(buffer, index, packet, parent)

  -- Test Security Indicator: Alphanumeric
  index, test_security_indicator = miax_pearlequities_expressorders_meo_v2_7_b.test_security_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: BinaryU
  index, reserved_1 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_1.dissect(buffer, index, packet, parent)

  -- Lot Size: BinaryU
  index, lot_size = miax_pearlequities_expressorders_meo_v2_7_b.lot_size.dissect(buffer, index, packet, parent)

  -- Opening Time: Alphanumeric
  index, opening_time = miax_pearlequities_expressorders_meo_v2_7_b.opening_time.dissect(buffer, index, packet, parent)

  -- Closing Time: Alphanumeric
  index, closing_time = miax_pearlequities_expressorders_meo_v2_7_b.closing_time.dissect(buffer, index, packet, parent)

  -- Primary Market Code: Alphanumeric
  index, primary_market_code = miax_pearlequities_expressorders_meo_v2_7_b.primary_market_code.dissect(buffer, index, packet, parent)

  -- Reserved 12: BinaryU
  index, reserved_12 = miax_pearlequities_expressorders_meo_v2_7_b.reserved_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Update Message
miax_pearlequities_expressorders_meo_v2_7_b.symbol_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.symbol_update_message, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.symbol_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.symbol_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.symbol_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message = {}

-- Dissect: Sequenced Message
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message.dissect = function(buffer, offset, packet, parent, sequenced_message_type)
  -- Dissect Symbol Update Message
  if sequenced_message_type == "SU" then
    return miax_pearlequities_expressorders_meo_v2_7_b.symbol_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response Message
  if sequenced_message_type == "NR" then
    return miax_pearlequities_expressorders_meo_v2_7_b.new_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response Message
  if sequenced_message_type == "MR" then
    return miax_pearlequities_expressorders_meo_v2_7_b.modify_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Response Message
  if sequenced_message_type == "CR" then
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order By Exchange Order Id Response Message
  if sequenced_message_type == "CQ" then
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_order_by_exchange_order_id_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System State Notification Message
  if sequenced_message_type == "SN" then
    return miax_pearlequities_expressorders_meo_v2_7_b.system_state_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Notification Message
  if sequenced_message_type == "O1" then
    return miax_pearlequities_expressorders_meo_v2_7_b.new_order_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Notification Message
  if sequenced_message_type == "MN" then
    return miax_pearlequities_expressorders_meo_v2_7_b.modify_order_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Reduce Size Order Notification Message
  if sequenced_message_type == "XN" then
    return miax_pearlequities_expressorders_meo_v2_7_b.cancel_reduce_size_order_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Price Update Notification Message
  if sequenced_message_type == "P1" then
    return miax_pearlequities_expressorders_meo_v2_7_b.order_price_update_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reserve Order Replenishment Notification Message
  if sequenced_message_type == "RA" then
    return miax_pearlequities_expressorders_meo_v2_7_b.reserve_order_replenishment_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Execution Notification Message
  if sequenced_message_type == "E1" then
    return miax_pearlequities_expressorders_meo_v2_7_b.execution_notification_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet = {}

-- Read runtime size of: Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Esesm Packet Length
  local esesm_packet_length = buffer(offset - 3, 2):le_uint()

  return esesm_packet_length - 12
end

-- Display: Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet.fields = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local index = offset

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = miax_pearlequities_expressorders_meo_v2_7_b.sequence_number.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: 1 Byte Unsigned Fixed Width Integer
  index, matching_engine_id = miax_pearlequities_expressorders_meo_v2_7_b.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Sequenced Message Type: 2 Byte Ascii String Enum with 12 values
  index, sequenced_message_type = miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 12 branches
  index = miax_pearlequities_expressorders_meo_v2_7_b.sequenced_message.dissect(buffer, index, packet, parent, sequenced_message_type)

  return index
end

-- Dissect: Sequenced Data Packet
miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet.dissect = function(buffer, offset, packet, parent, size_of_sequenced_data_packet)
  local size_of_sequenced_data_packet = miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet.size(buffer, offset)
  local index = offset + size_of_sequenced_data_packet

  -- Optionally add group/struct element to protocol tree
  if show.sequenced_data_packet then
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.sequenced_data_packet, buffer(offset, 0))
    local current = miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)
    parent:set_len(size_of_sequenced_data_packet)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet.fields(buffer, offset, packet, parent, size_of_sequenced_data_packet)

    return index
  end
end

-- Esesm Payload
miax_pearlequities_expressorders_meo_v2_7_b.esesm_payload = {}

-- Dissect: Esesm Payload
miax_pearlequities_expressorders_meo_v2_7_b.esesm_payload.dissect = function(buffer, offset, packet, parent, esesm_packet_type)
  -- Dissect Sequenced Data Packet
  if esesm_packet_type == "s" then
    return miax_pearlequities_expressorders_meo_v2_7_b.sequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Unsequenced Data Packet
  if esesm_packet_type == "U" then
    return miax_pearlequities_expressorders_meo_v2_7_b.unsequenced_data_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Request
  if esesm_packet_type == "l" then
    return miax_pearlequities_expressorders_meo_v2_7_b.login_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if esesm_packet_type == "r" then
    return miax_pearlequities_expressorders_meo_v2_7_b.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Complete
  if esesm_packet_type == "c" then
    return miax_pearlequities_expressorders_meo_v2_7_b.synchronization_complete.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request
  if esesm_packet_type == "a" then
    return miax_pearlequities_expressorders_meo_v2_7_b.retransmission_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if esesm_packet_type == "X" then
    return miax_pearlequities_expressorders_meo_v2_7_b.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Goodbye Packet
  if esesm_packet_type == "G" then
    return miax_pearlequities_expressorders_meo_v2_7_b.goodbye_packet.dissect(buffer, offset, packet, parent)
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
    return miax_pearlequities_expressorders_meo_v2_7_b.test_packet.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Esesm Packet Header
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header = {}

-- Size: Esesm Packet Header
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.size =
  miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_length.size + 
  miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_type.size

-- Display: Esesm Packet Header
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Esesm Packet Header
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Esesm Packet Length: 2 Byte Unsigned Fixed Width Integer
  index, esesm_packet_length = miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_length.dissect(buffer, index, packet, parent)

  -- Esesm Packet Type: 1 Byte Ascii String Enum with 12 values
  index, esesm_packet_type = miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Esesm Packet Header
miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.dissect = function(buffer, offset, packet, parent)
  if show.esesm_packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_packet_header, buffer(offset, 0))
    local index = miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Esesm Tcp Packet
miax_pearlequities_expressorders_meo_v2_7_b.esesm_tcp_packet = {}

-- Display: Esesm Tcp Packet
miax_pearlequities_expressorders_meo_v2_7_b.esesm_tcp_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Esesm Tcp Packet
miax_pearlequities_expressorders_meo_v2_7_b.esesm_tcp_packet.fields = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset

  -- Esesm Packet Header: Struct of 2 fields
  index, esesm_packet_header = miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Esesm Packet Type
  local esesm_packet_type = buffer(index - 1, 1):string()

  -- Esesm Payload: Runtime Type with 12 branches
  index = miax_pearlequities_expressorders_meo_v2_7_b.esesm_payload.dissect(buffer, index, packet, parent, esesm_packet_type)

  return index
end

-- Dissect: Esesm Tcp Packet
miax_pearlequities_expressorders_meo_v2_7_b.esesm_tcp_packet.dissect = function(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
  local index = offset + size_of_esesm_tcp_packet

  -- Optionally add group/struct element to protocol tree
  if show.esesm_tcp_packet then
    parent = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b.fields.esesm_tcp_packet, buffer(offset, 0))
    local current = miax_pearlequities_expressorders_meo_v2_7_b.esesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)
    parent:set_len(size_of_esesm_tcp_packet)
    local display = miax_pearlequities_expressorders_meo_v2_7_b.esesm_tcp_packet.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    miax_pearlequities_expressorders_meo_v2_7_b.esesm_tcp_packet.fields(buffer, offset, packet, parent, size_of_esesm_tcp_packet)

    return index
  end
end

-- Remaining Bytes For: Esesm Tcp Packet
local esesm_tcp_packet_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.size then
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
miax_pearlequities_expressorders_meo_v2_7_b.packet = {}

-- Verify required size of Tcp packet
miax_pearlequities_expressorders_meo_v2_7_b.packet.requiredsize = function(buffer)
  return buffer:len() >= miax_pearlequities_expressorders_meo_v2_7_b.esesm_packet_header.size
end

-- Dissect Packet
miax_pearlequities_expressorders_meo_v2_7_b.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Esesm Tcp Packet
  local end_of_payload = buffer:len()

  -- Esesm Tcp Packet: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_esesm_tcp_packet = esesm_tcp_packet_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = miax_pearlequities_expressorders_meo_v2_7_b.esesm_tcp_packet.dissect(buffer, index, packet, parent, size_of_esesm_tcp_packet)
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
function omi_miax_pearlequities_expressorders_meo_v2_7_b.init()
end

-- Dissector for Miax PearlEquities ExpressOrders Meo 2.7.b
function omi_miax_pearlequities_expressorders_meo_v2_7_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_miax_pearlequities_expressorders_meo_v2_7_b.name

  -- Dissect protocol
  local protocol = parent:add(omi_miax_pearlequities_expressorders_meo_v2_7_b, buffer(), omi_miax_pearlequities_expressorders_meo_v2_7_b.description, "("..buffer:len().." Bytes)")
  return miax_pearlequities_expressorders_meo_v2_7_b.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Miax PearlEquities ExpressOrders Meo 2.7.b (Tcp)
local function omi_miax_pearlequities_expressorders_meo_v2_7_b_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not miax_pearlequities_expressorders_meo_v2_7_b.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_miax_pearlequities_expressorders_meo_v2_7_b
  omi_miax_pearlequities_expressorders_meo_v2_7_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Miax PearlEquities ExpressOrders Meo 2.7.b
omi_miax_pearlequities_expressorders_meo_v2_7_b:register_heuristic("tcp", omi_miax_pearlequities_expressorders_meo_v2_7_b_tcp_heuristic)

-- Register Miax PearlEquities ExpressOrders Meo 2.7.b for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_miax_pearlequities_expressorders_meo_v2_7_b)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Miami International Holdings
--   Version: 2.7.b
--   Date: Wednesday, February 4, 2026
--   Specification: miax_express_orders_meo_v2.7.b.pdf
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
