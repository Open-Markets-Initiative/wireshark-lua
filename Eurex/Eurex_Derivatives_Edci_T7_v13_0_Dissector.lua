-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Derivatives Edci T7 13.0 Protocol
local omi_eurex_derivatives_edci_t7_v13_0 = Proto("Eurex.Derivatives.Edci.T7.v13.0.Lua", "Eurex Derivatives Edci T7 13.0")

-- Protocol table
local eurex_derivatives_edci_t7_v13_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex Derivatives Edci T7 13.0 Fields
omi_eurex_derivatives_edci_t7_v13_0.fields.affected_cl_ord_id = ProtoField.new("Affected Cl Ord Id", "eurex.derivatives.edci.t7.v13.0.affectedclordid", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.affected_fix_cl_ord_id = ProtoField.new("Affected Fix Cl Ord Id", "eurex.derivatives.edci.t7.v13.0.affectedfixclordid", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.affected_fix_orig_cl_ord_id = ProtoField.new("Affected Fix Orig Cl Ord Id", "eurex.derivatives.edci.t7.v13.0.affectedfixorigclordid", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.affected_ord_grp_comp = ProtoField.new("Affected Ord Grp Comp", "eurex.derivatives.edci.t7.v13.0.affectedordgrpcomp", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.affected_order_id = ProtoField.new("Affected Order Id", "eurex.derivatives.edci.t7.v13.0.affectedorderid", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.affected_orig_cl_ord_id = ProtoField.new("Affected Orig Cl Ord Id", "eurex.derivatives.edci.t7.v13.0.affectedorigclordid", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.alignment_padding = ProtoField.new("Alignment Padding", "eurex.derivatives.edci.t7.v13.0.alignmentpadding", ftypes.BYTES)
omi_eurex_derivatives_edci_t7_v13_0.fields.appl_id = ProtoField.new("Appl Id", "eurex.derivatives.edci.t7.v13.0.applid", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.appl_seq_indicator = ProtoField.new("Appl Seq Indicator", "eurex.derivatives.edci.t7.v13.0.applseqindicator", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.body_len = ProtoField.new("Body Len", "eurex.derivatives.edci.t7.v13.0.bodylen", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "eurex.derivatives.edci.t7.v13.0.clordid", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.crossed_indicator = ProtoField.new("Crossed Indicator", "eurex.derivatives.edci.t7.v13.0.crossedindicator", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.cum_qty = ProtoField.new("Cum Qty", "eurex.derivatives.edci.t7.v13.0.cumqty", ftypes.DOUBLE)
omi_eurex_derivatives_edci_t7_v13_0.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "eurex.derivatives.edci.t7.v13.0.custorderhandlinginst", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.cxl_qty = ProtoField.new("Cxl Qty", "eurex.derivatives.edci.t7.v13.0.cxlqty", ftypes.DOUBLE)
omi_eurex_derivatives_edci_t7_v13_0.fields.default_cstm_appl_ver_id = ProtoField.new("Default Cstm Appl Ver Id", "eurex.derivatives.edci.t7.v13.0.defaultcstmapplverid", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.default_cstm_appl_ver_sub_id = ProtoField.new("Default Cstm Appl Ver Sub Id", "eurex.derivatives.edci.t7.v13.0.defaultcstmapplversubid", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.exec_id = ProtoField.new("Exec Id", "eurex.derivatives.edci.t7.v13.0.execid", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.exec_inst = ProtoField.new("Exec Inst", "eurex.derivatives.edci.t7.v13.0.execinst", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.exec_type = ProtoField.new("Exec Type", "eurex.derivatives.edci.t7.v13.0.exectype", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.executing_trader = ProtoField.new("Executing Trader", "eurex.derivatives.edci.t7.v13.0.executingtrader", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.executing_trader_qualifier = ProtoField.new("Executing Trader Qualifier", "eurex.derivatives.edci.t7.v13.0.executingtraderqualifier", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.expire_date = ProtoField.new("Expire Date", "eurex.derivatives.edci.t7.v13.0.expiredate", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "eurex.derivatives.edci.t7.v13.0.fillexecid", ftypes.INT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.fill_match_id = ProtoField.new("Fill Match Id", "eurex.derivatives.edci.t7.v13.0.fillmatchid", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.fill_px = ProtoField.new("Fill Px", "eurex.derivatives.edci.t7.v13.0.fillpx", ftypes.DOUBLE)
omi_eurex_derivatives_edci_t7_v13_0.fields.fill_qty = ProtoField.new("Fill Qty", "eurex.derivatives.edci.t7.v13.0.fillqty", ftypes.DOUBLE)
omi_eurex_derivatives_edci_t7_v13_0.fields.fills_grp_comp = ProtoField.new("Fills Grp Comp", "eurex.derivatives.edci.t7.v13.0.fillsgrpcomp", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.fix_cl_ord_id = ProtoField.new("Fix Cl Ord Id", "eurex.derivatives.edci.t7.v13.0.fixclordid", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.fix_orig_cl_ord_id = ProtoField.new("Fix Orig Cl Ord Id", "eurex.derivatives.edci.t7.v13.0.fixorigclordid", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.free_text_1 = ProtoField.new("Free Text 1", "eurex.derivatives.edci.t7.v13.0.freetext1", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.free_text_2 = ProtoField.new("Free Text 2", "eurex.derivatives.edci.t7.v13.0.freetext2", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.free_text_3 = ProtoField.new("Free Text 3", "eurex.derivatives.edci.t7.v13.0.freetext3", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "eurex.derivatives.edci.t7.v13.0.heartbtint", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.derivatives.edci.t7.v13.0.lastfragment", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.leaves_qty = ProtoField.new("Leaves Qty", "eurex.derivatives.edci.t7.v13.0.leavesqty", ftypes.DOUBLE)
omi_eurex_derivatives_edci_t7_v13_0.fields.market_id = ProtoField.new("Market Id", "eurex.derivatives.edci.t7.v13.0.marketid", ftypes.UINT16)
omi_eurex_derivatives_edci_t7_v13_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.derivatives.edci.t7.v13.0.marketsegmentid", ftypes.INT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.match_type = ProtoField.new("Match Type", "eurex.derivatives.edci.t7.v13.0.matchtype", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.message = ProtoField.new("Message", "eurex.derivatives.edci.t7.v13.0.message", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.message_header = ProtoField.new("Message Header", "eurex.derivatives.edci.t7.v13.0.messageheader", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.derivatives.edci.t7.v13.0.msgseqnum", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.no_affected_orders = ProtoField.new("No Affected Orders", "eurex.derivatives.edci.t7.v13.0.noaffectedorders", ftypes.UINT16)
omi_eurex_derivatives_edci_t7_v13_0.fields.no_fills = ProtoField.new("No Fills", "eurex.derivatives.edci.t7.v13.0.nofills", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.no_partitions = ProtoField.new("No Partitions", "eurex.derivatives.edci.t7.v13.0.nopartitions", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.no_sessions = ProtoField.new("No Sessions", "eurex.derivatives.edci.t7.v13.0.nosessions", ftypes.UINT16)
omi_eurex_derivatives_edci_t7_v13_0.fields.notif_header_comp = ProtoField.new("Notif Header Comp", "eurex.derivatives.edci.t7.v13.0.notifheadercomp", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.ord_status = ProtoField.new("Ord Status", "eurex.derivatives.edci.t7.v13.0.ordstatus", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.ord_type = ProtoField.new("Ord Type", "eurex.derivatives.edci.t7.v13.0.ordtype", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.order_id = ProtoField.new("Order Id", "eurex.derivatives.edci.t7.v13.0.orderid", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.order_qty = ProtoField.new("Order Qty", "eurex.derivatives.edci.t7.v13.0.orderqty", ftypes.DOUBLE)
omi_eurex_derivatives_edci_t7_v13_0.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "eurex.derivatives.edci.t7.v13.0.origclordid", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.packet = ProtoField.new("Packet", "eurex.derivatives.edci.t7.v13.0.packet", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.pad_2 = ProtoField.new("Pad 2", "eurex.derivatives.edci.t7.v13.0.pad2", ftypes.BYTES)
omi_eurex_derivatives_edci_t7_v13_0.fields.pad_3 = ProtoField.new("Pad 3", "eurex.derivatives.edci.t7.v13.0.pad3", ftypes.BYTES)
omi_eurex_derivatives_edci_t7_v13_0.fields.pad_4 = ProtoField.new("Pad 4", "eurex.derivatives.edci.t7.v13.0.pad4", ftypes.BYTES)
omi_eurex_derivatives_edci_t7_v13_0.fields.pad_6 = ProtoField.new("Pad 6", "eurex.derivatives.edci.t7.v13.0.pad6", ftypes.BYTES)
omi_eurex_derivatives_edci_t7_v13_0.fields.pad_7 = ProtoField.new("Pad 7", "eurex.derivatives.edci.t7.v13.0.pad7", ftypes.BYTES)
omi_eurex_derivatives_edci_t7_v13_0.fields.partition_grp_comp = ProtoField.new("Partition Grp Comp", "eurex.derivatives.edci.t7.v13.0.partitiongrpcomp", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.partition_id = ProtoField.new("Partition Id", "eurex.derivatives.edci.t7.v13.0.partitionid", ftypes.UINT16)
omi_eurex_derivatives_edci_t7_v13_0.fields.party_end_client_identification = ProtoField.new("Party End Client Identification", "eurex.derivatives.edci.t7.v13.0.partyendclientidentification", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.party_executing_firm = ProtoField.new("Party Executing Firm", "eurex.derivatives.edci.t7.v13.0.partyexecutingfirm", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_client_id = ProtoField.new("Party Id Client Id", "eurex.derivatives.edci.t7.v13.0.partyidclientid", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_executing_trader = ProtoField.new("Party Id Executing Trader", "eurex.derivatives.edci.t7.v13.0.partyidexecutingtrader", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_executing_unit = ProtoField.new("Party Id Executing Unit", "eurex.derivatives.edci.t7.v13.0.partyidexecutingunit", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_investment_decision_maker = ProtoField.new("Party Id Investment Decision Maker", "eurex.derivatives.edci.t7.v13.0.partyidinvestmentdecisionmaker", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_investment_decision_maker_qualifier = ProtoField.new("Party Id Investment Decision Maker Qualifier", "eurex.derivatives.edci.t7.v13.0.partyidinvestmentdecisionmakerqualifier", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_session_id = ProtoField.new("Party Id Session Id", "eurex.derivatives.edci.t7.v13.0.partyidsessionid", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.password = ProtoField.new("Password", "eurex.derivatives.edci.t7.v13.0.password", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.payload = ProtoField.new("Payload", "eurex.derivatives.edci.t7.v13.0.payload", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.price = ProtoField.new("Price", "eurex.derivatives.edci.t7.v13.0.price", ftypes.DOUBLE)
omi_eurex_derivatives_edci_t7_v13_0.fields.product_complex = ProtoField.new("Product Complex", "eurex.derivatives.edci.t7.v13.0.productcomplex", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.rbc_header_comp = ProtoField.new("Rbc Header Comp", "eurex.derivatives.edci.t7.v13.0.rbcheadercomp", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.request_header_comp = ProtoField.new("Request Header Comp", "eurex.derivatives.edci.t7.v13.0.requestheadercomp", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.request_time = ProtoField.new("Request Time", "eurex.derivatives.edci.t7.v13.0.requesttime", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.response_header_comp = ProtoField.new("Response Header Comp", "eurex.derivatives.edci.t7.v13.0.responseheadercomp", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.security_id = ProtoField.new("Security Id", "eurex.derivatives.edci.t7.v13.0.securityid", ftypes.INT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.sending_time = ProtoField.new("Sending Time", "eurex.derivatives.edci.t7.v13.0.sendingtime", ftypes.UINT64)
omi_eurex_derivatives_edci_t7_v13_0.fields.session_instance_id = ProtoField.new("Session Instance Id", "eurex.derivatives.edci.t7.v13.0.sessioninstanceid", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.session_mode = ProtoField.new("Session Mode", "eurex.derivatives.edci.t7.v13.0.sessionmode", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "eurex.derivatives.edci.t7.v13.0.sessionrejectreason", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.session_status = ProtoField.new("Session Status", "eurex.derivatives.edci.t7.v13.0.sessionstatus", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.sessions_grp_comp = ProtoField.new("Sessions Grp Comp", "eurex.derivatives.edci.t7.v13.0.sessionsgrpcomp", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.side = ProtoField.new("Side", "eurex.derivatives.edci.t7.v13.0.side", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.stop_px = ProtoField.new("Stop Px", "eurex.derivatives.edci.t7.v13.0.stoppx", ftypes.DOUBLE)
omi_eurex_derivatives_edci_t7_v13_0.fields.template_id = ProtoField.new("Template Id", "eurex.derivatives.edci.t7.v13.0.templateid", ftypes.UINT16)
omi_eurex_derivatives_edci_t7_v13_0.fields.time_in_force = ProtoField.new("Time In Force", "eurex.derivatives.edci.t7.v13.0.timeinforce", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "eurex.derivatives.edci.t7.v13.0.tradsesevent", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.trad_ses_mode = ProtoField.new("Trad Ses Mode", "eurex.derivatives.edci.t7.v13.0.tradsesmode", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.trade_date = ProtoField.new("Trade Date", "eurex.derivatives.edci.t7.v13.0.tradedate", ftypes.UINT32)
omi_eurex_derivatives_edci_t7_v13_0.fields.trading_capacity = ProtoField.new("Trading Capacity", "eurex.derivatives.edci.t7.v13.0.tradingcapacity", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.derivatives.edci.t7.v13.0.tradingsessionsubid", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.triggered = ProtoField.new("Triggered", "eurex.derivatives.edci.t7.v13.0.triggered", ftypes.UINT8)
omi_eurex_derivatives_edci_t7_v13_0.fields.var_text = ProtoField.new("Var Text", "eurex.derivatives.edci.t7.v13.0.vartext", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.var_text_len = ProtoField.new("Var Text Len", "eurex.derivatives.edci.t7.v13.0.vartextlen", ftypes.UINT16)

-- Eurex Derivatives Edci T7 13.0 messages
omi_eurex_derivatives_edci_t7_v13_0.fields.delete_order_broadcast = ProtoField.new("Delete Order Broadcast", "eurex.derivatives.edci.t7.v13.0.deleteorderbroadcast", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.forced_logout_notification = ProtoField.new("Forced Logout Notification", "eurex.derivatives.edci.t7.v13.0.forcedlogoutnotification", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.derivatives.edci.t7.v13.0.heartbeat", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.heartbeat_notification = ProtoField.new("Heartbeat Notification", "eurex.derivatives.edci.t7.v13.0.heartbeatnotification", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.logon_request = ProtoField.new("Logon Request", "eurex.derivatives.edci.t7.v13.0.logonrequest", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.logon_response = ProtoField.new("Logon Response", "eurex.derivatives.edci.t7.v13.0.logonresponse", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.logout_request = ProtoField.new("Logout Request", "eurex.derivatives.edci.t7.v13.0.logoutrequest", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.logout_response = ProtoField.new("Logout Response", "eurex.derivatives.edci.t7.v13.0.logoutresponse", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.order_exec_report_broadcast = ProtoField.new("Order Exec Report Broadcast", "eurex.derivatives.edci.t7.v13.0.orderexecreportbroadcast", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.partition_list_notification = ProtoField.new("Partition List Notification", "eurex.derivatives.edci.t7.v13.0.partitionlistnotification", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.reject = ProtoField.new("Reject", "eurex.derivatives.edci.t7.v13.0.reject", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.session_list_notification = ProtoField.new("Session List Notification", "eurex.derivatives.edci.t7.v13.0.sessionlistnotification", ftypes.STRING)
omi_eurex_derivatives_edci_t7_v13_0.fields.session_status_broadcast = ProtoField.new("Session Status Broadcast", "eurex.derivatives.edci.t7.v13.0.sessionstatusbroadcast", ftypes.STRING)

-- Eurex Derivatives Edci T7 13.0 generated fields
omi_eurex_derivatives_edci_t7_v13_0.fields.affected_ord_grp_comp_index = ProtoField.new("Affected Ord Grp Comp Index", "eurex.derivatives.edci.t7.v13.0.affectedordgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_edci_t7_v13_0.fields.fills_grp_comp_index = ProtoField.new("Fills Grp Comp Index", "eurex.derivatives.edci.t7.v13.0.fillsgrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_edci_t7_v13_0.fields.partition_grp_comp_index = ProtoField.new("Partition Grp Comp Index", "eurex.derivatives.edci.t7.v13.0.partitiongrpcompindex", ftypes.UINT16)
omi_eurex_derivatives_edci_t7_v13_0.fields.sessions_grp_comp_index = ProtoField.new("Sessions Grp Comp Index", "eurex.derivatives.edci.t7.v13.0.sessionsgrpcompindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Eurex Derivatives Edci T7 13.0 Element Dissection Options
show.affected_ord_grp_comp = true
show.delete_order_broadcast = true
show.fills_grp_comp = true
show.forced_logout_notification = true
show.heartbeat = true
show.heartbeat_notification = true
show.logon_request = true
show.logon_response = true
show.logout_request = true
show.logout_response = true
show.message = true
show.message_header = true
show.notif_header_comp = true
show.order_exec_report_broadcast = true
show.packet = true
show.partition_grp_comp = true
show.partition_list_notification = true
show.rbc_header_comp = true
show.reject = true
show.request_header_comp = true
show.response_header_comp = true
show.session_list_notification = true
show.session_status_broadcast = true
show.sessions_grp_comp = true
show.payload = false

-- Register Eurex Derivatives Edci T7 13.0 Show Options
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_affected_ord_grp_comp = Pref.bool("Show Affected Ord Grp Comp", show.affected_ord_grp_comp, "Parse and add Affected Ord Grp Comp to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_delete_order_broadcast = Pref.bool("Show Delete Order Broadcast", show.delete_order_broadcast, "Parse and add Delete Order Broadcast to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_fills_grp_comp = Pref.bool("Show Fills Grp Comp", show.fills_grp_comp, "Parse and add Fills Grp Comp to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_forced_logout_notification = Pref.bool("Show Forced Logout Notification", show.forced_logout_notification, "Parse and add Forced Logout Notification to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_heartbeat_notification = Pref.bool("Show Heartbeat Notification", show.heartbeat_notification, "Parse and add Heartbeat Notification to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logon_request = Pref.bool("Show Logon Request", show.logon_request, "Parse and add Logon Request to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logon_response = Pref.bool("Show Logon Response", show.logon_response, "Parse and add Logon Response to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logout_response = Pref.bool("Show Logout Response", show.logout_response, "Parse and add Logout Response to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_notif_header_comp = Pref.bool("Show Notif Header Comp", show.notif_header_comp, "Parse and add Notif Header Comp to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_order_exec_report_broadcast = Pref.bool("Show Order Exec Report Broadcast", show.order_exec_report_broadcast, "Parse and add Order Exec Report Broadcast to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_partition_grp_comp = Pref.bool("Show Partition Grp Comp", show.partition_grp_comp, "Parse and add Partition Grp Comp to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_partition_list_notification = Pref.bool("Show Partition List Notification", show.partition_list_notification, "Parse and add Partition List Notification to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_rbc_header_comp = Pref.bool("Show Rbc Header Comp", show.rbc_header_comp, "Parse and add Rbc Header Comp to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_reject = Pref.bool("Show Reject", show.reject, "Parse and add Reject to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_request_header_comp = Pref.bool("Show Request Header Comp", show.request_header_comp, "Parse and add Request Header Comp to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_response_header_comp = Pref.bool("Show Response Header Comp", show.response_header_comp, "Parse and add Response Header Comp to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_session_list_notification = Pref.bool("Show Session List Notification", show.session_list_notification, "Parse and add Session List Notification to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_session_status_broadcast = Pref.bool("Show Session Status Broadcast", show.session_status_broadcast, "Parse and add Session Status Broadcast to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_sessions_grp_comp = Pref.bool("Show Sessions Grp Comp", show.sessions_grp_comp, "Parse and add Sessions Grp Comp to protocol tree")
omi_eurex_derivatives_edci_t7_v13_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_eurex_derivatives_edci_t7_v13_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.affected_ord_grp_comp ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_affected_ord_grp_comp then
    show.affected_ord_grp_comp = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_affected_ord_grp_comp
    changed = true
  end
  if show.delete_order_broadcast ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_delete_order_broadcast then
    show.delete_order_broadcast = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_delete_order_broadcast
    changed = true
  end
  if show.fills_grp_comp ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_fills_grp_comp then
    show.fills_grp_comp = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_fills_grp_comp
    changed = true
  end
  if show.forced_logout_notification ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_forced_logout_notification then
    show.forced_logout_notification = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_forced_logout_notification
    changed = true
  end
  if show.heartbeat ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_heartbeat then
    show.heartbeat = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_heartbeat
    changed = true
  end
  if show.heartbeat_notification ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_heartbeat_notification then
    show.heartbeat_notification = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_heartbeat_notification
    changed = true
  end
  if show.logon_request ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logon_request then
    show.logon_request = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logon_request
    changed = true
  end
  if show.logon_response ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logon_response then
    show.logon_response = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logon_response
    changed = true
  end
  if show.logout_request ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logout_request then
    show.logout_request = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logout_request
    changed = true
  end
  if show.logout_response ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logout_response then
    show.logout_response = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_logout_response
    changed = true
  end
  if show.message ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_message then
    show.message = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_message_header then
    show.message_header = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_message_header
    changed = true
  end
  if show.notif_header_comp ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_notif_header_comp then
    show.notif_header_comp = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_notif_header_comp
    changed = true
  end
  if show.order_exec_report_broadcast ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_order_exec_report_broadcast then
    show.order_exec_report_broadcast = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_order_exec_report_broadcast
    changed = true
  end
  if show.packet ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_packet then
    show.packet = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_packet
    changed = true
  end
  if show.partition_grp_comp ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_partition_grp_comp then
    show.partition_grp_comp = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_partition_grp_comp
    changed = true
  end
  if show.partition_list_notification ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_partition_list_notification then
    show.partition_list_notification = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_partition_list_notification
    changed = true
  end
  if show.rbc_header_comp ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_rbc_header_comp then
    show.rbc_header_comp = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_rbc_header_comp
    changed = true
  end
  if show.reject ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_reject then
    show.reject = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_reject
    changed = true
  end
  if show.request_header_comp ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_request_header_comp then
    show.request_header_comp = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_request_header_comp
    changed = true
  end
  if show.response_header_comp ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_response_header_comp then
    show.response_header_comp = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_response_header_comp
    changed = true
  end
  if show.session_list_notification ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_session_list_notification then
    show.session_list_notification = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_session_list_notification
    changed = true
  end
  if show.session_status_broadcast ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_session_status_broadcast then
    show.session_status_broadcast = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_session_status_broadcast
    changed = true
  end
  if show.sessions_grp_comp ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_sessions_grp_comp then
    show.sessions_grp_comp = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_sessions_grp_comp
    changed = true
  end
  if show.payload ~= omi_eurex_derivatives_edci_t7_v13_0.prefs.show_payload then
    show.payload = omi_eurex_derivatives_edci_t7_v13_0.prefs.show_payload
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
-- Dissect Eurex Derivatives Edci T7 13.0
-----------------------------------------------------------------------

-- Pad 7
eurex_derivatives_edci_t7_v13_0.pad_7 = {}

-- Size: Pad 7
eurex_derivatives_edci_t7_v13_0.pad_7.size = 7

-- Display: Pad 7
eurex_derivatives_edci_t7_v13_0.pad_7.display = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
eurex_derivatives_edci_t7_v13_0.pad_7.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.pad_7.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_0.pad_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Trad Ses Event
eurex_derivatives_edci_t7_v13_0.trad_ses_event = {}

-- Size: Trad Ses Event
eurex_derivatives_edci_t7_v13_0.trad_ses_event.size = 1

-- Display: Trad Ses Event
eurex_derivatives_edci_t7_v13_0.trad_ses_event.display = function(value)
  if value == 103 then
    return "Trad Ses Event: Endof Restatement (103)"
  end
  if value == 104 then
    return "Trad Ses Event: Endof Day Service (104)"
  end
  if value == 107 then
    return "Trad Ses Event: Endof Orderbooksynch (107)"
  end
  if value == 108 then
    return "Trad Ses Event: Startof Orderbooksynch (108)"
  end
  if value == 109 then
    return "Trad Ses Event: Orderbookreset (109)"
  end
  if value == 0xFF then
    return "Trad Ses Event: No Value"
  end

  return "Trad Ses Event: Unknown("..value..")"
end

-- Dissect: Trad Ses Event
eurex_derivatives_edci_t7_v13_0.trad_ses_event.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.trad_ses_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.trad_ses_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Market Segment Id
eurex_derivatives_edci_t7_v13_0.market_segment_id = {}

-- Size: Market Segment Id
eurex_derivatives_edci_t7_v13_0.market_segment_id.size = 4

-- Display: Market Segment Id
eurex_derivatives_edci_t7_v13_0.market_segment_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Market Segment Id: No Value"
  end

  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
eurex_derivatives_edci_t7_v13_0.market_segment_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.market_segment_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_edci_t7_v13_0.market_segment_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Trade Date
eurex_derivatives_edci_t7_v13_0.trade_date = {}

-- Size: Trade Date
eurex_derivatives_edci_t7_v13_0.trade_date.size = 4

-- Display: Trade Date
eurex_derivatives_edci_t7_v13_0.trade_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
eurex_derivatives_edci_t7_v13_0.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Last Fragment
eurex_derivatives_edci_t7_v13_0.last_fragment = {}

-- Size: Last Fragment
eurex_derivatives_edci_t7_v13_0.last_fragment.size = 1

-- Display: Last Fragment
eurex_derivatives_edci_t7_v13_0.last_fragment.display = function(value)
  if value == 0 then
    return "Last Fragment: Not Last Message (0)"
  end
  if value == 1 then
    return "Last Fragment: Last Message (1)"
  end
  if value == 0xFF then
    return "Last Fragment: No Value"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
eurex_derivatives_edci_t7_v13_0.last_fragment.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.last_fragment.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.last_fragment.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Appl Id
eurex_derivatives_edci_t7_v13_0.appl_id = {}

-- Size: Appl Id
eurex_derivatives_edci_t7_v13_0.appl_id.size = 1

-- Display: Appl Id
eurex_derivatives_edci_t7_v13_0.appl_id.display = function(value)
  if value == 12 then
    return "Appl Id: Order Drop Copy (12)"
  end
  if value == 0xFF then
    return "Appl Id: No Value"
  end

  return "Appl Id: Unknown("..value..")"
end

-- Dissect: Appl Id
eurex_derivatives_edci_t7_v13_0.appl_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.appl_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.appl_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Partition Id
eurex_derivatives_edci_t7_v13_0.partition_id = {}

-- Size: Partition Id
eurex_derivatives_edci_t7_v13_0.partition_id.size = 2

-- Display: Partition Id
eurex_derivatives_edci_t7_v13_0.partition_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Partition Id: No Value"
  end

  return "Partition Id: "..value
end

-- Dissect: Partition Id
eurex_derivatives_edci_t7_v13_0.partition_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Party Id Executing Unit
eurex_derivatives_edci_t7_v13_0.party_id_executing_unit = {}

-- Size: Party Id Executing Unit
eurex_derivatives_edci_t7_v13_0.party_id_executing_unit.size = 4

-- Display: Party Id Executing Unit
eurex_derivatives_edci_t7_v13_0.party_id_executing_unit.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Executing Unit: No Value"
  end

  return "Party Id Executing Unit: "..value
end

-- Dissect: Party Id Executing Unit
eurex_derivatives_edci_t7_v13_0.party_id_executing_unit.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.party_id_executing_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.party_id_executing_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Sending Time
eurex_derivatives_edci_t7_v13_0.sending_time = {}

-- Size: Sending Time
eurex_derivatives_edci_t7_v13_0.sending_time.size = 8

-- Display: Sending Time
eurex_derivatives_edci_t7_v13_0.sending_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Sending Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
eurex_derivatives_edci_t7_v13_0.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Rbc Header Comp
eurex_derivatives_edci_t7_v13_0.rbc_header_comp = {}

-- Calculate size of: Rbc Header Comp
eurex_derivatives_edci_t7_v13_0.rbc_header_comp.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_0.sending_time.size

  index = index + eurex_derivatives_edci_t7_v13_0.party_id_executing_unit.size

  index = index + eurex_derivatives_edci_t7_v13_0.partition_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.appl_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.last_fragment.size

  return index
end

-- Display: Rbc Header Comp
eurex_derivatives_edci_t7_v13_0.rbc_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rbc Header Comp
eurex_derivatives_edci_t7_v13_0.rbc_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_edci_t7_v13_0.sending_time.dissect(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_unit = eurex_derivatives_edci_t7_v13_0.party_id_executing_unit.dissect(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_edci_t7_v13_0.partition_id.dissect(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_id = eurex_derivatives_edci_t7_v13_0.appl_id.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_edci_t7_v13_0.last_fragment.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Comp
eurex_derivatives_edci_t7_v13_0.rbc_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.rbc_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.rbc_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_0.rbc_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_0.rbc_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_0.rbc_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Pad 2
eurex_derivatives_edci_t7_v13_0.pad_2 = {}

-- Size: Pad 2
eurex_derivatives_edci_t7_v13_0.pad_2.size = 2

-- Display: Pad 2
eurex_derivatives_edci_t7_v13_0.pad_2.display = function(value)
  return "Pad 2: "..value
end

-- Dissect: Pad 2
eurex_derivatives_edci_t7_v13_0.pad_2.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.pad_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_0.pad_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.pad_2, range, value, display)

  return offset + length, value
end

-- Session Status Broadcast
eurex_derivatives_edci_t7_v13_0.session_status_broadcast = {}

-- Read runtime size of: Session Status Broadcast
eurex_derivatives_edci_t7_v13_0.session_status_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Session Status Broadcast
eurex_derivatives_edci_t7_v13_0.session_status_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Status Broadcast
eurex_derivatives_edci_t7_v13_0.session_status_broadcast.fields = function(buffer, offset, packet, parent, size_of_session_status_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 5 fields
  index, rbc_header_comp = eurex_derivatives_edci_t7_v13_0.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = eurex_derivatives_edci_t7_v13_0.trade_date.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_edci_t7_v13_0.market_segment_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trad_ses_event = eurex_derivatives_edci_t7_v13_0.trad_ses_event.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_edci_t7_v13_0.pad_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Status Broadcast
eurex_derivatives_edci_t7_v13_0.session_status_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_session_status_broadcast = eurex_derivatives_edci_t7_v13_0.session_status_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.session_status_broadcast then
    local range = buffer(offset, size_of_session_status_broadcast)
    local display = eurex_derivatives_edci_t7_v13_0.session_status_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.session_status_broadcast, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.session_status_broadcast.fields(buffer, offset, packet, parent, size_of_session_status_broadcast)

  return offset + size_of_session_status_broadcast
end

-- Pad 6
eurex_derivatives_edci_t7_v13_0.pad_6 = {}

-- Size: Pad 6
eurex_derivatives_edci_t7_v13_0.pad_6.size = 6

-- Display: Pad 6
eurex_derivatives_edci_t7_v13_0.pad_6.display = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
eurex_derivatives_edci_t7_v13_0.pad_6.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.pad_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_0.pad_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Party Executing Firm
eurex_derivatives_edci_t7_v13_0.party_executing_firm = {}

-- Size: Party Executing Firm
eurex_derivatives_edci_t7_v13_0.party_executing_firm.size = 5

-- Display: Party Executing Firm
eurex_derivatives_edci_t7_v13_0.party_executing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Executing Firm: No Value"
  end

  return "Party Executing Firm: "..value
end

-- Dissect: Party Executing Firm
eurex_derivatives_edci_t7_v13_0.party_executing_firm.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.party_executing_firm.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.party_executing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.party_executing_firm, range, value, display)

  return offset + length, value
end

-- Session Mode
eurex_derivatives_edci_t7_v13_0.session_mode = {}

-- Size: Session Mode
eurex_derivatives_edci_t7_v13_0.session_mode.size = 1

-- Display: Session Mode
eurex_derivatives_edci_t7_v13_0.session_mode.display = function(value)
  if value == 1 then
    return "Session Mode: Etihf (1)"
  end
  if value == 2 then
    return "Session Mode: Etilf (2)"
  end
  if value == 3 then
    return "Session Mode: Gui (3)"
  end
  if value == 4 then
    return "Session Mode: Fixlf (4)"
  end
  if value == 0xFF then
    return "Session Mode: No Value"
  end

  return "Session Mode: Unknown("..value..")"
end

-- Dissect: Session Mode
eurex_derivatives_edci_t7_v13_0.session_mode.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.session_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.session_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.session_mode, range, value, display)

  return offset + length, value
end

-- Party Id Session Id
eurex_derivatives_edci_t7_v13_0.party_id_session_id = {}

-- Size: Party Id Session Id
eurex_derivatives_edci_t7_v13_0.party_id_session_id.size = 4

-- Display: Party Id Session Id
eurex_derivatives_edci_t7_v13_0.party_id_session_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Session Id: No Value"
  end

  return "Party Id Session Id: "..value
end

-- Dissect: Party Id Session Id
eurex_derivatives_edci_t7_v13_0.party_id_session_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.party_id_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.party_id_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_session_id, range, value, display)

  return offset + length, value
end

-- Sessions Grp Comp
eurex_derivatives_edci_t7_v13_0.sessions_grp_comp = {}

-- Calculate size of: Sessions Grp Comp
eurex_derivatives_edci_t7_v13_0.sessions_grp_comp.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_0.party_id_session_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.session_mode.size

  index = index + eurex_derivatives_edci_t7_v13_0.party_executing_firm.size

  index = index + eurex_derivatives_edci_t7_v13_0.pad_6.size

  return index
end

-- Display: Sessions Grp Comp
eurex_derivatives_edci_t7_v13_0.sessions_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sessions Grp Comp
eurex_derivatives_edci_t7_v13_0.sessions_grp_comp.fields = function(buffer, offset, packet, parent, sessions_grp_comp_index)
  local index = offset

  -- Implicit Sessions Grp Comp Index
  if sessions_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.sessions_grp_comp_index, sessions_grp_comp_index)
    iteration:set_generated()
  end

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_edci_t7_v13_0.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, session_mode = eurex_derivatives_edci_t7_v13_0.session_mode.dissect(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String Nullable
  index, party_executing_firm = eurex_derivatives_edci_t7_v13_0.party_executing_firm.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_edci_t7_v13_0.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sessions Grp Comp
eurex_derivatives_edci_t7_v13_0.sessions_grp_comp.dissect = function(buffer, offset, packet, parent, sessions_grp_comp_index)
  if show.sessions_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.sessions_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_0.sessions_grp_comp.fields(buffer, offset, packet, parent, sessions_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_0.sessions_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_0.sessions_grp_comp.fields(buffer, offset, packet, parent, sessions_grp_comp_index)
  end
end

-- No Sessions
eurex_derivatives_edci_t7_v13_0.no_sessions = {}

-- Size: No Sessions
eurex_derivatives_edci_t7_v13_0.no_sessions.size = 2

-- Display: No Sessions
eurex_derivatives_edci_t7_v13_0.no_sessions.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Sessions: No Value"
  end

  return "No Sessions: "..value
end

-- Dissect: No Sessions
eurex_derivatives_edci_t7_v13_0.no_sessions.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.no_sessions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.no_sessions.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.no_sessions, range, value, display)

  return offset + length, value
end

-- Notif Header Comp
eurex_derivatives_edci_t7_v13_0.notif_header_comp = {}

-- Calculate size of: Notif Header Comp
eurex_derivatives_edci_t7_v13_0.notif_header_comp.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_0.sending_time.size

  return index
end

-- Display: Notif Header Comp
eurex_derivatives_edci_t7_v13_0.notif_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Notif Header Comp
eurex_derivatives_edci_t7_v13_0.notif_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_edci_t7_v13_0.sending_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Notif Header Comp
eurex_derivatives_edci_t7_v13_0.notif_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.notif_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.notif_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_0.notif_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_0.notif_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_0.notif_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Session List Notification
eurex_derivatives_edci_t7_v13_0.session_list_notification = {}

-- Read runtime size of: Session List Notification
eurex_derivatives_edci_t7_v13_0.session_list_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Session List Notification
eurex_derivatives_edci_t7_v13_0.session_list_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session List Notification
eurex_derivatives_edci_t7_v13_0.session_list_notification.fields = function(buffer, offset, packet, parent, size_of_session_list_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_edci_t7_v13_0.notif_header_comp.dissect(buffer, index, packet, parent)

  -- No Sessions: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_sessions = eurex_derivatives_edci_t7_v13_0.no_sessions.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_edci_t7_v13_0.pad_6.dissect(buffer, index, packet, parent)

  -- Repeating: Sessions Grp Comp
  for sessions_grp_comp_index = 1, no_sessions do
    index, sessions_grp_comp = eurex_derivatives_edci_t7_v13_0.sessions_grp_comp.dissect(buffer, index, packet, parent, sessions_grp_comp_index)
  end

  return index
end

-- Dissect: Session List Notification
eurex_derivatives_edci_t7_v13_0.session_list_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_session_list_notification = eurex_derivatives_edci_t7_v13_0.session_list_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.session_list_notification then
    local range = buffer(offset, size_of_session_list_notification)
    local display = eurex_derivatives_edci_t7_v13_0.session_list_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.session_list_notification, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.session_list_notification.fields(buffer, offset, packet, parent, size_of_session_list_notification)

  return offset + size_of_session_list_notification
end

-- Alignment Padding
eurex_derivatives_edci_t7_v13_0.alignment_padding = {}

-- Display: Alignment Padding
eurex_derivatives_edci_t7_v13_0.alignment_padding.display = function(value)
  return "Alignment Padding: "..value
end

-- Dissect runtime sized field: Alignment Padding
eurex_derivatives_edci_t7_v13_0.alignment_padding.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_0.alignment_padding.display(value, packet, parent, size)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.alignment_padding, range, value, display)

  return offset + size, value
end

-- Var Text
eurex_derivatives_edci_t7_v13_0.var_text = {}

-- Display: Var Text
eurex_derivatives_edci_t7_v13_0.var_text.display = function(value)
  return "Var Text: "..value
end

-- Dissect runtime sized field: Var Text
eurex_derivatives_edci_t7_v13_0.var_text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = eurex_derivatives_edci_t7_v13_0.var_text.display(value, packet, parent, size)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.var_text, range, value, display)

  return offset + size, value
end

-- Session Status
eurex_derivatives_edci_t7_v13_0.session_status = {}

-- Size: Session Status
eurex_derivatives_edci_t7_v13_0.session_status.size = 1

-- Display: Session Status
eurex_derivatives_edci_t7_v13_0.session_status.display = function(value)
  if value == 0 then
    return "Session Status: Active (0)"
  end
  if value == 4 then
    return "Session Status: Logout (4)"
  end
  if value == 0xFF then
    return "Session Status: No Value"
  end

  return "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
eurex_derivatives_edci_t7_v13_0.session_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.session_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.session_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.session_status, range, value, display)

  return offset + length, value
end

-- Var Text Len
eurex_derivatives_edci_t7_v13_0.var_text_len = {}

-- Size: Var Text Len
eurex_derivatives_edci_t7_v13_0.var_text_len.size = 2

-- Display: Var Text Len
eurex_derivatives_edci_t7_v13_0.var_text_len.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Var Text Len: No Value"
  end

  return "Var Text Len: "..value
end

-- Dissect: Var Text Len
eurex_derivatives_edci_t7_v13_0.var_text_len.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.var_text_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.var_text_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.var_text_len, range, value, display)

  return offset + length, value
end

-- Session Reject Reason
eurex_derivatives_edci_t7_v13_0.session_reject_reason = {}

-- Size: Session Reject Reason
eurex_derivatives_edci_t7_v13_0.session_reject_reason.size = 4

-- Display: Session Reject Reason
eurex_derivatives_edci_t7_v13_0.session_reject_reason.display = function(value)
  if value == 1 then
    return "Session Reject Reason: Required Tag Missing (1)"
  end
  if value == 5 then
    return "Session Reject Reason: Valueisincorrect (5)"
  end
  if value == 7 then
    return "Session Reject Reason: Decryptionproblem (7)"
  end
  if value == 11 then
    return "Session Reject Reason: Invalid Msg Id (11)"
  end
  if value == 16 then
    return "Session Reject Reason: Incorrect Num In Groupcount (16)"
  end
  if value == 99 then
    return "Session Reject Reason: Other (99)"
  end
  if value == 101 then
    return "Session Reject Reason: Exposure Limit Exceeded (101)"
  end
  if value == 103 then
    return "Session Reject Reason: Service Not Available (103)"
  end
  if value == 105 then
    return "Session Reject Reason: Outboundconversionerror (105)"
  end
  if value == 152 then
    return "Session Reject Reason: Heartbeat Violation (152)"
  end
  if value == 200 then
    return "Session Reject Reason: Internaltechnicalerror (200)"
  end
  if value == 210 then
    return "Session Reject Reason: Validation Error (210)"
  end
  if value == 217 then
    return "Session Reject Reason: Session Login Limit Reached (217)"
  end
  if value == 226 then
    return "Session Reject Reason: Outstanding Logins Bu Limit Reached (226)"
  end
  if value == 227 then
    return "Session Reject Reason: Outstanding Logins Session Limit Reached (227)"
  end
  if value == 0xFFFFFFFF then
    return "Session Reject Reason: No Value"
  end

  return "Session Reject Reason: Unknown("..value..")"
end

-- Dissect: Session Reject Reason
eurex_derivatives_edci_t7_v13_0.session_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.session_reject_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.session_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Pad 3
eurex_derivatives_edci_t7_v13_0.pad_3 = {}

-- Size: Pad 3
eurex_derivatives_edci_t7_v13_0.pad_3.size = 3

-- Display: Pad 3
eurex_derivatives_edci_t7_v13_0.pad_3.display = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
eurex_derivatives_edci_t7_v13_0.pad_3.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.pad_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_0.pad_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
eurex_derivatives_edci_t7_v13_0.msg_seq_num = {}

-- Size: Msg Seq Num
eurex_derivatives_edci_t7_v13_0.msg_seq_num.size = 4

-- Display: Msg Seq Num
eurex_derivatives_edci_t7_v13_0.msg_seq_num.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Msg Seq Num: No Value"
  end

  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
eurex_derivatives_edci_t7_v13_0.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Request Time
eurex_derivatives_edci_t7_v13_0.request_time = {}

-- Size: Request Time
eurex_derivatives_edci_t7_v13_0.request_time.size = 8

-- Display: Request Time
eurex_derivatives_edci_t7_v13_0.request_time.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Request Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Request Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Time
eurex_derivatives_edci_t7_v13_0.request_time.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.request_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.request_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.request_time, range, value, display)

  return offset + length, value
end

-- Response Header Comp
eurex_derivatives_edci_t7_v13_0.response_header_comp = {}

-- Calculate size of: Response Header Comp
eurex_derivatives_edci_t7_v13_0.response_header_comp.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_0.request_time.size

  index = index + eurex_derivatives_edci_t7_v13_0.sending_time.size

  index = index + eurex_derivatives_edci_t7_v13_0.msg_seq_num.size

  index = index + eurex_derivatives_edci_t7_v13_0.last_fragment.size

  index = index + eurex_derivatives_edci_t7_v13_0.pad_3.size

  return index
end

-- Display: Response Header Comp
eurex_derivatives_edci_t7_v13_0.response_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Header Comp
eurex_derivatives_edci_t7_v13_0.response_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_edci_t7_v13_0.request_time.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_edci_t7_v13_0.sending_time.dissect(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_edci_t7_v13_0.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_edci_t7_v13_0.last_fragment.dissect(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_edci_t7_v13_0.pad_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Comp
eurex_derivatives_edci_t7_v13_0.response_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.response_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.response_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_0.response_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_0.response_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_0.response_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Reject
eurex_derivatives_edci_t7_v13_0.reject = {}

-- Read runtime size of: Reject
eurex_derivatives_edci_t7_v13_0.reject.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Reject
eurex_derivatives_edci_t7_v13_0.reject.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject
eurex_derivatives_edci_t7_v13_0.reject.fields = function(buffer, offset, packet, parent, size_of_reject)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 5 fields
  index, response_header_comp = eurex_derivatives_edci_t7_v13_0.response_header_comp.dissect(buffer, index, packet, parent)

  -- Session Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, session_reject_reason = eurex_derivatives_edci_t7_v13_0.session_reject_reason.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = eurex_derivatives_edci_t7_v13_0.var_text_len.dissect(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_status = eurex_derivatives_edci_t7_v13_0.session_status.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = eurex_derivatives_edci_t7_v13_0.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field exists: Alignment Padding
  local alignment_padding_exists = body_len ~= index

  -- Runtime optional field: Alignment Padding
  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = eurex_derivatives_edci_t7_v13_0.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Reject
eurex_derivatives_edci_t7_v13_0.reject.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_reject = eurex_derivatives_edci_t7_v13_0.reject.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.reject then
    local range = buffer(offset, size_of_reject)
    local display = eurex_derivatives_edci_t7_v13_0.reject.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.reject, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.reject.fields(buffer, offset, packet, parent, size_of_reject)

  return offset + size_of_reject
end

-- Partition Grp Comp
eurex_derivatives_edci_t7_v13_0.partition_grp_comp = {}

-- Calculate size of: Partition Grp Comp
eurex_derivatives_edci_t7_v13_0.partition_grp_comp.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_0.partition_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.pad_6.size

  return index
end

-- Display: Partition Grp Comp
eurex_derivatives_edci_t7_v13_0.partition_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partition Grp Comp
eurex_derivatives_edci_t7_v13_0.partition_grp_comp.fields = function(buffer, offset, packet, parent, partition_grp_comp_index)
  local index = offset

  -- Implicit Partition Grp Comp Index
  if partition_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.partition_grp_comp_index, partition_grp_comp_index)
    iteration:set_generated()
  end

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_edci_t7_v13_0.partition_id.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_edci_t7_v13_0.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partition Grp Comp
eurex_derivatives_edci_t7_v13_0.partition_grp_comp.dissect = function(buffer, offset, packet, parent, partition_grp_comp_index)
  if show.partition_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.partition_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_0.partition_grp_comp.fields(buffer, offset, packet, parent, partition_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_0.partition_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_0.partition_grp_comp.fields(buffer, offset, packet, parent, partition_grp_comp_index)
  end
end

-- No Partitions
eurex_derivatives_edci_t7_v13_0.no_partitions = {}

-- Size: No Partitions
eurex_derivatives_edci_t7_v13_0.no_partitions.size = 1

-- Display: No Partitions
eurex_derivatives_edci_t7_v13_0.no_partitions.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Partitions: No Value"
  end

  return "No Partitions: "..value
end

-- Dissect: No Partitions
eurex_derivatives_edci_t7_v13_0.no_partitions.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.no_partitions.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.no_partitions.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.no_partitions, range, value, display)

  return offset + length, value
end

-- Partition List Notification
eurex_derivatives_edci_t7_v13_0.partition_list_notification = {}

-- Read runtime size of: Partition List Notification
eurex_derivatives_edci_t7_v13_0.partition_list_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Partition List Notification
eurex_derivatives_edci_t7_v13_0.partition_list_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partition List Notification
eurex_derivatives_edci_t7_v13_0.partition_list_notification.fields = function(buffer, offset, packet, parent, size_of_partition_list_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_edci_t7_v13_0.notif_header_comp.dissect(buffer, index, packet, parent)

  -- No Partitions: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_partitions = eurex_derivatives_edci_t7_v13_0.no_partitions.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_edci_t7_v13_0.pad_7.dissect(buffer, index, packet, parent)

  -- Repeating: Partition Grp Comp
  for partition_grp_comp_index = 1, no_partitions do
    index, partition_grp_comp = eurex_derivatives_edci_t7_v13_0.partition_grp_comp.dissect(buffer, index, packet, parent, partition_grp_comp_index)
  end

  return index
end

-- Dissect: Partition List Notification
eurex_derivatives_edci_t7_v13_0.partition_list_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_partition_list_notification = eurex_derivatives_edci_t7_v13_0.partition_list_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.partition_list_notification then
    local range = buffer(offset, size_of_partition_list_notification)
    local display = eurex_derivatives_edci_t7_v13_0.partition_list_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.partition_list_notification, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.partition_list_notification.fields(buffer, offset, packet, parent, size_of_partition_list_notification)

  return offset + size_of_partition_list_notification
end

-- Fill Exec Id
eurex_derivatives_edci_t7_v13_0.fill_exec_id = {}

-- Size: Fill Exec Id
eurex_derivatives_edci_t7_v13_0.fill_exec_id.size = 4

-- Display: Fill Exec Id
eurex_derivatives_edci_t7_v13_0.fill_exec_id.display = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Fill Exec Id: No Value"
  end

  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
eurex_derivatives_edci_t7_v13_0.fill_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.fill_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_edci_t7_v13_0.fill_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.fill_exec_id, range, value, display)

  return offset + length, value
end

-- Fill Match Id
eurex_derivatives_edci_t7_v13_0.fill_match_id = {}

-- Size: Fill Match Id
eurex_derivatives_edci_t7_v13_0.fill_match_id.size = 4

-- Display: Fill Match Id
eurex_derivatives_edci_t7_v13_0.fill_match_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Fill Match Id: No Value"
  end

  return "Fill Match Id: "..value
end

-- Dissect: Fill Match Id
eurex_derivatives_edci_t7_v13_0.fill_match_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.fill_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.fill_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.fill_match_id, range, value, display)

  return offset + length, value
end

-- Fill Qty
eurex_derivatives_edci_t7_v13_0.fill_qty = {}

-- Size: Fill Qty
eurex_derivatives_edci_t7_v13_0.fill_qty.size = 8

-- Display: Fill Qty
eurex_derivatives_edci_t7_v13_0.fill_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Fill Qty: No Value"
  end

  return "Fill Qty: "..value
end

-- Translate: Fill Qty
eurex_derivatives_edci_t7_v13_0.fill_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Fill Qty
eurex_derivatives_edci_t7_v13_0.fill_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.fill_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_edci_t7_v13_0.fill_qty.translate(raw)
  local display = eurex_derivatives_edci_t7_v13_0.fill_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Fill Px
eurex_derivatives_edci_t7_v13_0.fill_px = {}

-- Size: Fill Px
eurex_derivatives_edci_t7_v13_0.fill_px.size = 8

-- Display: Fill Px
eurex_derivatives_edci_t7_v13_0.fill_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Fill Px: No Value"
  end

  return "Fill Px: "..value
end

-- Translate: Fill Px
eurex_derivatives_edci_t7_v13_0.fill_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Fill Px
eurex_derivatives_edci_t7_v13_0.fill_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.fill_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_edci_t7_v13_0.fill_px.translate(raw)
  local display = eurex_derivatives_edci_t7_v13_0.fill_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Fills Grp Comp
eurex_derivatives_edci_t7_v13_0.fills_grp_comp = {}

-- Calculate size of: Fills Grp Comp
eurex_derivatives_edci_t7_v13_0.fills_grp_comp.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_0.fill_px.size

  index = index + eurex_derivatives_edci_t7_v13_0.fill_qty.size

  index = index + eurex_derivatives_edci_t7_v13_0.fill_match_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.fill_exec_id.size

  return index
end

-- Display: Fills Grp Comp
eurex_derivatives_edci_t7_v13_0.fills_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fills Grp Comp
eurex_derivatives_edci_t7_v13_0.fills_grp_comp.fields = function(buffer, offset, packet, parent, fills_grp_comp_index)
  local index = offset

  -- Implicit Fills Grp Comp Index
  if fills_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.fills_grp_comp_index, fills_grp_comp_index)
    iteration:set_generated()
  end

  -- Fill Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, fill_px = eurex_derivatives_edci_t7_v13_0.fill_px.dissect(buffer, index, packet, parent)

  -- Fill Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, fill_qty = eurex_derivatives_edci_t7_v13_0.fill_qty.dissect(buffer, index, packet, parent)

  -- Fill Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, fill_match_id = eurex_derivatives_edci_t7_v13_0.fill_match_id.dissect(buffer, index, packet, parent)

  -- Fill Exec Id: 4 Byte Signed Fixed Width Integer Nullable
  index, fill_exec_id = eurex_derivatives_edci_t7_v13_0.fill_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Grp Comp
eurex_derivatives_edci_t7_v13_0.fills_grp_comp.dissect = function(buffer, offset, packet, parent, fills_grp_comp_index)
  if show.fills_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.fills_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_0.fills_grp_comp.fields(buffer, offset, packet, parent, fills_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_0.fills_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_0.fills_grp_comp.fields(buffer, offset, packet, parent, fills_grp_comp_index)
  end
end

-- Party End Client Identification
eurex_derivatives_edci_t7_v13_0.party_end_client_identification = {}

-- Size: Party End Client Identification
eurex_derivatives_edci_t7_v13_0.party_end_client_identification.size = 20

-- Display: Party End Client Identification
eurex_derivatives_edci_t7_v13_0.party_end_client_identification.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party End Client Identification: No Value"
  end

  return "Party End Client Identification: "..value
end

-- Dissect: Party End Client Identification
eurex_derivatives_edci_t7_v13_0.party_end_client_identification.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.party_end_client_identification.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.party_end_client_identification.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.party_end_client_identification, range, value, display)

  return offset + length, value
end

-- Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.fix_orig_cl_ord_id = {}

-- Size: Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.fix_orig_cl_ord_id.size = 20

-- Display: Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.fix_orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Orig Cl Ord Id: No Value"
  end

  return "Fix Orig Cl Ord Id: "..value
end

-- Dissect: Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.fix_orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.fix_orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.fix_orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.fix_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_0.fix_cl_ord_id = {}

-- Size: Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_0.fix_cl_ord_id.size = 20

-- Display: Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_0.fix_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Cl Ord Id: No Value"
  end

  return "Fix Cl Ord Id: "..value
end

-- Dissect: Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_0.fix_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.fix_cl_ord_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.fix_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.fix_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Free Text 3
eurex_derivatives_edci_t7_v13_0.free_text_3 = {}

-- Size: Free Text 3
eurex_derivatives_edci_t7_v13_0.free_text_3.size = 12

-- Display: Free Text 3
eurex_derivatives_edci_t7_v13_0.free_text_3.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 3: No Value"
  end

  return "Free Text 3: "..value
end

-- Dissect: Free Text 3
eurex_derivatives_edci_t7_v13_0.free_text_3.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.free_text_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.free_text_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.free_text_3, range, value, display)

  return offset + length, value
end

-- Free Text 2
eurex_derivatives_edci_t7_v13_0.free_text_2 = {}

-- Size: Free Text 2
eurex_derivatives_edci_t7_v13_0.free_text_2.size = 12

-- Display: Free Text 2
eurex_derivatives_edci_t7_v13_0.free_text_2.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 2: No Value"
  end

  return "Free Text 2: "..value
end

-- Dissect: Free Text 2
eurex_derivatives_edci_t7_v13_0.free_text_2.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.free_text_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.free_text_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.free_text_2, range, value, display)

  return offset + length, value
end

-- Free Text 1
eurex_derivatives_edci_t7_v13_0.free_text_1 = {}

-- Size: Free Text 1
eurex_derivatives_edci_t7_v13_0.free_text_1.size = 12

-- Display: Free Text 1
eurex_derivatives_edci_t7_v13_0.free_text_1.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 1: No Value"
  end

  return "Free Text 1: "..value
end

-- Dissect: Free Text 1
eurex_derivatives_edci_t7_v13_0.free_text_1.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.free_text_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.free_text_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.free_text_1, range, value, display)

  return offset + length, value
end

-- Cust Order Handling Inst
eurex_derivatives_edci_t7_v13_0.cust_order_handling_inst = {}

-- Size: Cust Order Handling Inst
eurex_derivatives_edci_t7_v13_0.cust_order_handling_inst.size = 1

-- Display: Cust Order Handling Inst
eurex_derivatives_edci_t7_v13_0.cust_order_handling_inst.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cust Order Handling Inst: No Value"
  end

  if value == "W" then
    return "Cust Order Handling Inst: W (W)"
  end
  if value == "Y" then
    return "Cust Order Handling Inst: Y (Y)"
  end
  if value == "C" then
    return "Cust Order Handling Inst: C (C)"
  end
  if value == "G" then
    return "Cust Order Handling Inst: G (G)"
  end
  if value == "H" then
    return "Cust Order Handling Inst: H (H)"
  end
  if value == "D" then
    return "Cust Order Handling Inst: D (D)"
  end

  return "Cust Order Handling Inst: Unknown("..value..")"
end

-- Dissect: Cust Order Handling Inst
eurex_derivatives_edci_t7_v13_0.cust_order_handling_inst.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.cust_order_handling_inst.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_edci_t7_v13_0.cust_order_handling_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Crossed Indicator
eurex_derivatives_edci_t7_v13_0.crossed_indicator = {}

-- Size: Crossed Indicator
eurex_derivatives_edci_t7_v13_0.crossed_indicator.size = 1

-- Display: Crossed Indicator
eurex_derivatives_edci_t7_v13_0.crossed_indicator.display = function(value)
  if value == 0 then
    return "Crossed Indicator: Nocrossing (0)"
  end
  if value == 1 then
    return "Crossed Indicator: Crossrejected (1)"
  end
  if value == 0xFF then
    return "Crossed Indicator: No Value"
  end

  return "Crossed Indicator: Unknown("..value..")"
end

-- Dissect: Crossed Indicator
eurex_derivatives_edci_t7_v13_0.crossed_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.crossed_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.crossed_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.crossed_indicator, range, value, display)

  return offset + length, value
end

-- No Fills
eurex_derivatives_edci_t7_v13_0.no_fills = {}

-- Size: No Fills
eurex_derivatives_edci_t7_v13_0.no_fills.size = 1

-- Display: No Fills
eurex_derivatives_edci_t7_v13_0.no_fills.display = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Fills: No Value"
  end

  return "No Fills: "..value
end

-- Dissect: No Fills
eurex_derivatives_edci_t7_v13_0.no_fills.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.no_fills.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.no_fills.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.no_fills, range, value, display)

  return offset + length, value
end

-- Executing Trader Qualifier
eurex_derivatives_edci_t7_v13_0.executing_trader_qualifier = {}

-- Size: Executing Trader Qualifier
eurex_derivatives_edci_t7_v13_0.executing_trader_qualifier.size = 1

-- Display: Executing Trader Qualifier
eurex_derivatives_edci_t7_v13_0.executing_trader_qualifier.display = function(value)
  if value == 22 then
    return "Executing Trader Qualifier: Algo (22)"
  end
  if value == 24 then
    return "Executing Trader Qualifier: Human (24)"
  end
  if value == 0xFF then
    return "Executing Trader Qualifier: No Value"
  end

  return "Executing Trader Qualifier: Unknown("..value..")"
end

-- Dissect: Executing Trader Qualifier
eurex_derivatives_edci_t7_v13_0.executing_trader_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.executing_trader_qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.executing_trader_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.executing_trader_qualifier, range, value, display)

  return offset + length, value
end

-- Party Id Investment Decision Maker Qualifier
eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker_qualifier = {}

-- Size: Party Id Investment Decision Maker Qualifier
eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker_qualifier.size = 1

-- Display: Party Id Investment Decision Maker Qualifier
eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker_qualifier.display = function(value)
  if value == 22 then
    return "Party Id Investment Decision Maker Qualifier: Algo (22)"
  end
  if value == 24 then
    return "Party Id Investment Decision Maker Qualifier: Human (24)"
  end
  if value == 0xFF then
    return "Party Id Investment Decision Maker Qualifier: No Value"
  end

  return "Party Id Investment Decision Maker Qualifier: Unknown("..value..")"
end

-- Dissect: Party Id Investment Decision Maker Qualifier
eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker_qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_investment_decision_maker_qualifier, range, value, display)

  return offset + length, value
end

-- Appl Seq Indicator
eurex_derivatives_edci_t7_v13_0.appl_seq_indicator = {}

-- Size: Appl Seq Indicator
eurex_derivatives_edci_t7_v13_0.appl_seq_indicator.size = 1

-- Display: Appl Seq Indicator
eurex_derivatives_edci_t7_v13_0.appl_seq_indicator.display = function(value)
  if value == 0 then
    return "Appl Seq Indicator: No Recovery Required (0)"
  end
  if value == 1 then
    return "Appl Seq Indicator: Recovery Required (1)"
  end
  if value == 0xFF then
    return "Appl Seq Indicator: No Value"
  end

  return "Appl Seq Indicator: Unknown("..value..")"
end

-- Dissect: Appl Seq Indicator
eurex_derivatives_edci_t7_v13_0.appl_seq_indicator.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.appl_seq_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.appl_seq_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.appl_seq_indicator, range, value, display)

  return offset + length, value
end

-- Trading Session Sub Id
eurex_derivatives_edci_t7_v13_0.trading_session_sub_id = {}

-- Size: Trading Session Sub Id
eurex_derivatives_edci_t7_v13_0.trading_session_sub_id.size = 1

-- Display: Trading Session Sub Id
eurex_derivatives_edci_t7_v13_0.trading_session_sub_id.display = function(value)
  if value == 2 then
    return "Trading Session Sub Id: Openingauction (2)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Closingauction (4)"
  end
  if value == 8 then
    return "Trading Session Sub Id: Any Auction (8)"
  end
  if value == 0xFF then
    return "Trading Session Sub Id: No Value"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
eurex_derivatives_edci_t7_v13_0.trading_session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.trading_session_sub_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.trading_session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Triggered
eurex_derivatives_edci_t7_v13_0.triggered = {}

-- Size: Triggered
eurex_derivatives_edci_t7_v13_0.triggered.size = 1

-- Display: Triggered
eurex_derivatives_edci_t7_v13_0.triggered.display = function(value)
  if value == 0 then
    return "Triggered: Nottriggered (0)"
  end
  if value == 1 then
    return "Triggered: Triggered Stop (1)"
  end
  if value == 2 then
    return "Triggered: Triggered Oco (2)"
  end
  if value == 0xFF then
    return "Triggered: No Value"
  end

  return "Triggered: Unknown("..value..")"
end

-- Dissect: Triggered
eurex_derivatives_edci_t7_v13_0.triggered.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.triggered.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.triggered.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.triggered, range, value, display)

  return offset + length, value
end

-- Exec Inst
eurex_derivatives_edci_t7_v13_0.exec_inst = {}

-- Size: Exec Inst
eurex_derivatives_edci_t7_v13_0.exec_inst.size = 1

-- Display: Exec Inst
eurex_derivatives_edci_t7_v13_0.exec_inst.display = function(value)
  if value == 1 then
    return "Exec Inst: H (1)"
  end
  if value == 2 then
    return "Exec Inst: Q (2)"
  end
  if value == 3 then
    return "Exec Inst: Hq (3)"
  end
  if value == 5 then
    return "Exec Inst: H 6 (5)"
  end
  if value == 6 then
    return "Exec Inst: Q 6 (6)"
  end
  if value == 0xFF then
    return "Exec Inst: No Value"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
eurex_derivatives_edci_t7_v13_0.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.exec_inst.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Time In Force
eurex_derivatives_edci_t7_v13_0.time_in_force = {}

-- Size: Time In Force
eurex_derivatives_edci_t7_v13_0.time_in_force.size = 1

-- Display: Time In Force
eurex_derivatives_edci_t7_v13_0.time_in_force.display = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 1 then
    return "Time In Force: Gtc (1)"
  end
  if value == 3 then
    return "Time In Force: Ioc (3)"
  end
  if value == 4 then
    return "Time In Force: Fok (4)"
  end
  if value == 6 then
    return "Time In Force: Gtd (6)"
  end
  if value == 0xFF then
    return "Time In Force: No Value"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
eurex_derivatives_edci_t7_v13_0.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Trading Capacity
eurex_derivatives_edci_t7_v13_0.trading_capacity = {}

-- Size: Trading Capacity
eurex_derivatives_edci_t7_v13_0.trading_capacity.size = 1

-- Display: Trading Capacity
eurex_derivatives_edci_t7_v13_0.trading_capacity.display = function(value)
  if value == 1 then
    return "Trading Capacity: Customer (1)"
  end
  if value == 5 then
    return "Trading Capacity: Principal (5)"
  end
  if value == 6 then
    return "Trading Capacity: Market Maker (6)"
  end
  if value == 0xFF then
    return "Trading Capacity: No Value"
  end

  return "Trading Capacity: Unknown("..value..")"
end

-- Dissect: Trading Capacity
eurex_derivatives_edci_t7_v13_0.trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.trading_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Match Type
eurex_derivatives_edci_t7_v13_0.match_type = {}

-- Size: Match Type
eurex_derivatives_edci_t7_v13_0.match_type.size = 1

-- Display: Match Type
eurex_derivatives_edci_t7_v13_0.match_type.display = function(value)
  if value == 4 then
    return "Match Type: Automatchincoming (4)"
  end
  if value == 5 then
    return "Match Type: Cross Auction (5)"
  end
  if value == 7 then
    return "Match Type: Call Auction (7)"
  end
  if value == 11 then
    return "Match Type: Automatchresting (11)"
  end
  if value == 13 then
    return "Match Type: Liquidity Improvement Cross (13)"
  end
  if value == 0xFF then
    return "Match Type: No Value"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
eurex_derivatives_edci_t7_v13_0.match_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.match_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.match_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.match_type, range, value, display)

  return offset + length, value
end

-- Ord Type
eurex_derivatives_edci_t7_v13_0.ord_type = {}

-- Size: Ord Type
eurex_derivatives_edci_t7_v13_0.ord_type.size = 1

-- Display: Ord Type
eurex_derivatives_edci_t7_v13_0.ord_type.display = function(value)
  if value == 1 then
    return "Ord Type: Market (1)"
  end
  if value == 2 then
    return "Ord Type: Limit (2)"
  end
  if value == 3 then
    return "Ord Type: Stop (3)"
  end
  if value == 4 then
    return "Ord Type: Stop Limit (4)"
  end
  if value == 0xFF then
    return "Ord Type: No Value"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
eurex_derivatives_edci_t7_v13_0.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.ord_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Side
eurex_derivatives_edci_t7_v13_0.side = {}

-- Size: Side
eurex_derivatives_edci_t7_v13_0.side.size = 1

-- Display: Side
eurex_derivatives_edci_t7_v13_0.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 0xFF then
    return "Side: No Value"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
eurex_derivatives_edci_t7_v13_0.side.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.side, range, value, display)

  return offset + length, value
end

-- Exec Type
eurex_derivatives_edci_t7_v13_0.exec_type = {}

-- Size: Exec Type
eurex_derivatives_edci_t7_v13_0.exec_type.size = 1

-- Display: Exec Type
eurex_derivatives_edci_t7_v13_0.exec_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exec Type: No Value"
  end

  if value == "0" then
    return "Exec Type: New (0)"
  end
  if value == "4" then
    return "Exec Type: Canceled (4)"
  end
  if value == "5" then
    return "Exec Type: Replaced (5)"
  end
  if value == "6" then
    return "Exec Type: Pending Cancele (6)"
  end
  if value == "9" then
    return "Exec Type: Suspended (9)"
  end
  if value == "D" then
    return "Exec Type: Restated (D)"
  end
  if value == "L" then
    return "Exec Type: Triggered (L)"
  end
  if value == "F" then
    return "Exec Type: Trade (F)"
  end

  return "Exec Type: Unknown("..value..")"
end

-- Dissect: Exec Type
eurex_derivatives_edci_t7_v13_0.exec_type.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.exec_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_edci_t7_v13_0.exec_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Ord Status
eurex_derivatives_edci_t7_v13_0.ord_status = {}

-- Size: Ord Status
eurex_derivatives_edci_t7_v13_0.ord_status.size = 1

-- Display: Ord Status
eurex_derivatives_edci_t7_v13_0.ord_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ord Status: No Value"
  end

  if value == "0" then
    return "Ord Status: New (0)"
  end
  if value == "1" then
    return "Ord Status: Partiallyfilled (1)"
  end
  if value == "2" then
    return "Ord Status: Filled (2)"
  end
  if value == "4" then
    return "Ord Status: Canceled (4)"
  end
  if value == "6" then
    return "Ord Status: Pending Cancel (6)"
  end
  if value == "9" then
    return "Ord Status: Suspended (9)"
  end

  return "Ord Status: Unknown("..value..")"
end

-- Dissect: Ord Status
eurex_derivatives_edci_t7_v13_0.ord_status.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.ord_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_edci_t7_v13_0.ord_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Product Complex
eurex_derivatives_edci_t7_v13_0.product_complex = {}

-- Size: Product Complex
eurex_derivatives_edci_t7_v13_0.product_complex.size = 1

-- Display: Product Complex
eurex_derivatives_edci_t7_v13_0.product_complex.display = function(value)
  if value == 1 then
    return "Product Complex: Simpleinstrument (1)"
  end
  if value == 2 then
    return "Product Complex: Standardoptionstrategy (2)"
  end
  if value == 3 then
    return "Product Complex: Nonstandardoptionstrategy (3)"
  end
  if value == 4 then
    return "Product Complex: Volatilitystrategy (4)"
  end
  if value == 5 then
    return "Product Complex: Futures Spread (5)"
  end
  if value == 6 then
    return "Product Complex: Interproductspread (6)"
  end
  if value == 7 then
    return "Product Complex: Standardfuturestrategy (7)"
  end
  if value == 8 then
    return "Product Complex: Packandbundle (8)"
  end
  if value == 9 then
    return "Product Complex: Strip (9)"
  end
  if value == 13 then
    return "Product Complex: Nonstandardvolatilitystrategy (13)"
  end
  if value == 0xFF then
    return "Product Complex: No Value"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
eurex_derivatives_edci_t7_v13_0.product_complex.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.product_complex.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.product_complex.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Party Id Executing Trader
eurex_derivatives_edci_t7_v13_0.party_id_executing_trader = {}

-- Size: Party Id Executing Trader
eurex_derivatives_edci_t7_v13_0.party_id_executing_trader.size = 4

-- Display: Party Id Executing Trader
eurex_derivatives_edci_t7_v13_0.party_id_executing_trader.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Executing Trader: No Value"
  end

  return "Party Id Executing Trader: "..value
end

-- Dissect: Party Id Executing Trader
eurex_derivatives_edci_t7_v13_0.party_id_executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.party_id_executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.party_id_executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Expire Date
eurex_derivatives_edci_t7_v13_0.expire_date = {}

-- Size: Expire Date
eurex_derivatives_edci_t7_v13_0.expire_date.size = 4

-- Display: Expire Date
eurex_derivatives_edci_t7_v13_0.expire_date.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Expire Date: No Value"
  end

  return "Expire Date: "..value
end

-- Dissect: Expire Date
eurex_derivatives_edci_t7_v13_0.expire_date.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.expire_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.expire_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Executing Trader
eurex_derivatives_edci_t7_v13_0.executing_trader = {}

-- Size: Executing Trader
eurex_derivatives_edci_t7_v13_0.executing_trader.size = 8

-- Display: Executing Trader
eurex_derivatives_edci_t7_v13_0.executing_trader.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Executing Trader: No Value"
  end

  return "Executing Trader: "..value
end

-- Dissect: Executing Trader
eurex_derivatives_edci_t7_v13_0.executing_trader.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.executing_trader.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.executing_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.executing_trader, range, value, display)

  return offset + length, value
end

-- Party Id Investment Decision Maker
eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker = {}

-- Size: Party Id Investment Decision Maker
eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker.size = 8

-- Display: Party Id Investment Decision Maker
eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Party Id Investment Decision Maker: No Value"
  end

  return "Party Id Investment Decision Maker: "..value
end

-- Dissect: Party Id Investment Decision Maker
eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Party Id Client Id
eurex_derivatives_edci_t7_v13_0.party_id_client_id = {}

-- Size: Party Id Client Id
eurex_derivatives_edci_t7_v13_0.party_id_client_id.size = 8

-- Display: Party Id Client Id
eurex_derivatives_edci_t7_v13_0.party_id_client_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Party Id Client Id: No Value"
  end

  return "Party Id Client Id: "..value
end

-- Dissect: Party Id Client Id
eurex_derivatives_edci_t7_v13_0.party_id_client_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.party_id_client_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.party_id_client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.party_id_client_id, range, value, display)

  return offset + length, value
end

-- Order Qty
eurex_derivatives_edci_t7_v13_0.order_qty = {}

-- Size: Order Qty
eurex_derivatives_edci_t7_v13_0.order_qty.size = 8

-- Display: Order Qty
eurex_derivatives_edci_t7_v13_0.order_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Translate: Order Qty
eurex_derivatives_edci_t7_v13_0.order_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Order Qty
eurex_derivatives_edci_t7_v13_0.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.order_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_edci_t7_v13_0.order_qty.translate(raw)
  local display = eurex_derivatives_edci_t7_v13_0.order_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Cxl Qty
eurex_derivatives_edci_t7_v13_0.cxl_qty = {}

-- Size: Cxl Qty
eurex_derivatives_edci_t7_v13_0.cxl_qty.size = 8

-- Display: Cxl Qty
eurex_derivatives_edci_t7_v13_0.cxl_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Cxl Qty: No Value"
  end

  return "Cxl Qty: "..value
end

-- Translate: Cxl Qty
eurex_derivatives_edci_t7_v13_0.cxl_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Cxl Qty
eurex_derivatives_edci_t7_v13_0.cxl_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.cxl_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_edci_t7_v13_0.cxl_qty.translate(raw)
  local display = eurex_derivatives_edci_t7_v13_0.cxl_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.cxl_qty, range, value, display)

  return offset + length, value
end

-- Cum Qty
eurex_derivatives_edci_t7_v13_0.cum_qty = {}

-- Size: Cum Qty
eurex_derivatives_edci_t7_v13_0.cum_qty.size = 8

-- Display: Cum Qty
eurex_derivatives_edci_t7_v13_0.cum_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Cum Qty: No Value"
  end

  return "Cum Qty: "..value
end

-- Translate: Cum Qty
eurex_derivatives_edci_t7_v13_0.cum_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Cum Qty
eurex_derivatives_edci_t7_v13_0.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.cum_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_edci_t7_v13_0.cum_qty.translate(raw)
  local display = eurex_derivatives_edci_t7_v13_0.cum_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Leaves Qty
eurex_derivatives_edci_t7_v13_0.leaves_qty = {}

-- Size: Leaves Qty
eurex_derivatives_edci_t7_v13_0.leaves_qty.size = 8

-- Display: Leaves Qty
eurex_derivatives_edci_t7_v13_0.leaves_qty.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Leaves Qty: No Value"
  end

  return "Leaves Qty: "..value
end

-- Translate: Leaves Qty
eurex_derivatives_edci_t7_v13_0.leaves_qty.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Leaves Qty
eurex_derivatives_edci_t7_v13_0.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.leaves_qty.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_edci_t7_v13_0.leaves_qty.translate(raw)
  local display = eurex_derivatives_edci_t7_v13_0.leaves_qty.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Stop Px
eurex_derivatives_edci_t7_v13_0.stop_px = {}

-- Size: Stop Px
eurex_derivatives_edci_t7_v13_0.stop_px.size = 8

-- Display: Stop Px
eurex_derivatives_edci_t7_v13_0.stop_px.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Translate: Stop Px
eurex_derivatives_edci_t7_v13_0.stop_px.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
eurex_derivatives_edci_t7_v13_0.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_edci_t7_v13_0.stop_px.translate(raw)
  local display = eurex_derivatives_edci_t7_v13_0.stop_px.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Price
eurex_derivatives_edci_t7_v13_0.price = {}

-- Size: Price
eurex_derivatives_edci_t7_v13_0.price.size = 8

-- Display: Price
eurex_derivatives_edci_t7_v13_0.price.display = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
eurex_derivatives_edci_t7_v13_0.price.translate = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price
eurex_derivatives_edci_t7_v13_0.price.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = eurex_derivatives_edci_t7_v13_0.price.translate(raw)
  local display = eurex_derivatives_edci_t7_v13_0.price.display(raw, value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.price, range, value, display)

  return offset + length, value
end

-- Exec Id
eurex_derivatives_edci_t7_v13_0.exec_id = {}

-- Size: Exec Id
eurex_derivatives_edci_t7_v13_0.exec_id.size = 8

-- Display: Exec Id
eurex_derivatives_edci_t7_v13_0.exec_id.display = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Exec Id: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Exec Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Exec Id
eurex_derivatives_edci_t7_v13_0.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Security Id
eurex_derivatives_edci_t7_v13_0.security_id = {}

-- Size: Security Id
eurex_derivatives_edci_t7_v13_0.security_id.size = 8

-- Display: Security Id
eurex_derivatives_edci_t7_v13_0.security_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
eurex_derivatives_edci_t7_v13_0.security_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.security_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_edci_t7_v13_0.security_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
eurex_derivatives_edci_t7_v13_0.cl_ord_id = {}

-- Size: Cl Ord Id
eurex_derivatives_edci_t7_v13_0.cl_ord_id.size = 8

-- Display: Cl Ord Id
eurex_derivatives_edci_t7_v13_0.cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
eurex_derivatives_edci_t7_v13_0.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Order Id
eurex_derivatives_edci_t7_v13_0.order_id = {}

-- Size: Order Id
eurex_derivatives_edci_t7_v13_0.order_id.size = 8

-- Display: Order Id
eurex_derivatives_edci_t7_v13_0.order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
eurex_derivatives_edci_t7_v13_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Exec Report Broadcast
eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast = {}

-- Read runtime size of: Order Exec Report Broadcast
eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Order Exec Report Broadcast
eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Exec Report Broadcast
eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast.fields = function(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 5 fields
  index, rbc_header_comp = eurex_derivatives_edci_t7_v13_0.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_edci_t7_v13_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_edci_t7_v13_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_edci_t7_v13_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_edci_t7_v13_0.security_id.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_edci_t7_v13_0.exec_id.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_edci_t7_v13_0.price.dissect(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, stop_px = eurex_derivatives_edci_t7_v13_0.stop_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leaves_qty = eurex_derivatives_edci_t7_v13_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_edci_t7_v13_0.cum_qty.dissect(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_edci_t7_v13_0.cxl_qty.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_edci_t7_v13_0.order_qty.dissect(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_client_id = eurex_derivatives_edci_t7_v13_0.party_id_client_id.dissect(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_investment_decision_maker = eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker.dissect(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer Nullable
  index, executing_trader = eurex_derivatives_edci_t7_v13_0.executing_trader.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_edci_t7_v13_0.market_segment_id.dissect(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = eurex_derivatives_edci_t7_v13_0.expire_date.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_edci_t7_v13_0.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_trader = eurex_derivatives_edci_t7_v13_0.party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, product_complex = eurex_derivatives_edci_t7_v13_0.product_complex.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_edci_t7_v13_0.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_edci_t7_v13_0.exec_type.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_edci_t7_v13_0.side.dissect(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, ord_type = eurex_derivatives_edci_t7_v13_0.ord_type.dissect(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, match_type = eurex_derivatives_edci_t7_v13_0.match_type.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_edci_t7_v13_0.trading_capacity.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = eurex_derivatives_edci_t7_v13_0.time_in_force.dissect(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_edci_t7_v13_0.exec_inst.dissect(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, triggered = eurex_derivatives_edci_t7_v13_0.triggered.dissect(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_session_sub_id = eurex_derivatives_edci_t7_v13_0.trading_session_sub_id.dissect(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = eurex_derivatives_edci_t7_v13_0.appl_seq_indicator.dissect(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_investment_decision_maker_qualifier = eurex_derivatives_edci_t7_v13_0.party_id_investment_decision_maker_qualifier.dissect(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, executing_trader_qualifier = eurex_derivatives_edci_t7_v13_0.executing_trader_qualifier.dissect(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills = eurex_derivatives_edci_t7_v13_0.no_fills.dissect(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, crossed_indicator = eurex_derivatives_edci_t7_v13_0.crossed_indicator.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String Enum with 6 values
  index, cust_order_handling_inst = eurex_derivatives_edci_t7_v13_0.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String Nullable
  index, free_text_1 = eurex_derivatives_edci_t7_v13_0.free_text_1.dissect(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String Nullable
  index, free_text_2 = eurex_derivatives_edci_t7_v13_0.free_text_2.dissect(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = eurex_derivatives_edci_t7_v13_0.free_text_3.dissect(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String Nullable
  index, fix_cl_ord_id = eurex_derivatives_edci_t7_v13_0.fix_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Fix Orig Cl Ord Id: 20 Byte Ascii String Nullable
  index, fix_orig_cl_ord_id = eurex_derivatives_edci_t7_v13_0.fix_orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Party End Client Identification: 20 Byte Ascii String Nullable
  index, party_end_client_identification = eurex_derivatives_edci_t7_v13_0.party_end_client_identification.dissect(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_edci_t7_v13_0.pad_7.dissect(buffer, index, packet, parent)

  -- Repeating: Fills Grp Comp
  for fills_grp_comp_index = 1, no_fills do
    index, fills_grp_comp = eurex_derivatives_edci_t7_v13_0.fills_grp_comp.dissect(buffer, index, packet, parent, fills_grp_comp_index)
  end

  return index
end

-- Dissect: Order Exec Report Broadcast
eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_exec_report_broadcast = eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_exec_report_broadcast then
    local range = buffer(offset, size_of_order_exec_report_broadcast)
    local display = eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.order_exec_report_broadcast, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast.fields(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)

  return offset + size_of_order_exec_report_broadcast
end

-- Logout Response
eurex_derivatives_edci_t7_v13_0.logout_response = {}

-- Read runtime size of: Logout Response
eurex_derivatives_edci_t7_v13_0.logout_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logout Response
eurex_derivatives_edci_t7_v13_0.logout_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response
eurex_derivatives_edci_t7_v13_0.logout_response.fields = function(buffer, offset, packet, parent, size_of_logout_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 5 fields
  index, response_header_comp = eurex_derivatives_edci_t7_v13_0.response_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response
eurex_derivatives_edci_t7_v13_0.logout_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logout_response = eurex_derivatives_edci_t7_v13_0.logout_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logout_response then
    local range = buffer(offset, size_of_logout_response)
    local display = eurex_derivatives_edci_t7_v13_0.logout_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.logout_response, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.logout_response.fields(buffer, offset, packet, parent, size_of_logout_response)

  return offset + size_of_logout_response
end

-- Pad 4
eurex_derivatives_edci_t7_v13_0.pad_4 = {}

-- Size: Pad 4
eurex_derivatives_edci_t7_v13_0.pad_4.size = 4

-- Display: Pad 4
eurex_derivatives_edci_t7_v13_0.pad_4.display = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
eurex_derivatives_edci_t7_v13_0.pad_4.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.pad_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_0.pad_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Request Header Comp
eurex_derivatives_edci_t7_v13_0.request_header_comp = {}

-- Calculate size of: Request Header Comp
eurex_derivatives_edci_t7_v13_0.request_header_comp.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_0.msg_seq_num.size

  index = index + eurex_derivatives_edci_t7_v13_0.pad_4.size

  return index
end

-- Display: Request Header Comp
eurex_derivatives_edci_t7_v13_0.request_header_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Header Comp
eurex_derivatives_edci_t7_v13_0.request_header_comp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_edci_t7_v13_0.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_edci_t7_v13_0.pad_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Header Comp
eurex_derivatives_edci_t7_v13_0.request_header_comp.dissect = function(buffer, offset, packet, parent)
  if show.request_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.request_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_0.request_header_comp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_0.request_header_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_0.request_header_comp.fields(buffer, offset, packet, parent)
  end
end

-- Logout Request
eurex_derivatives_edci_t7_v13_0.logout_request = {}

-- Read runtime size of: Logout Request
eurex_derivatives_edci_t7_v13_0.logout_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logout Request
eurex_derivatives_edci_t7_v13_0.logout_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
eurex_derivatives_edci_t7_v13_0.logout_request.fields = function(buffer, offset, packet, parent, size_of_logout_request)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_edci_t7_v13_0.request_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Request
eurex_derivatives_edci_t7_v13_0.logout_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logout_request = eurex_derivatives_edci_t7_v13_0.logout_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logout_request then
    local range = buffer(offset, size_of_logout_request)
    local display = eurex_derivatives_edci_t7_v13_0.logout_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.logout_request, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.logout_request.fields(buffer, offset, packet, parent, size_of_logout_request)

  return offset + size_of_logout_request
end

-- Default Cstm Appl Ver Sub Id
eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_sub_id = {}

-- Size: Default Cstm Appl Ver Sub Id
eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_sub_id.size = 5

-- Display: Default Cstm Appl Ver Sub Id
eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_sub_id.display = function(value)
  if value == "D0001" then
    return "Default Cstm Appl Ver Sub Id: Derivatives (D0001)"
  end

  return "Default Cstm Appl Ver Sub Id: Unknown("..value..")"
end

-- Dissect: Default Cstm Appl Ver Sub Id
eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_sub_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.default_cstm_appl_ver_sub_id, range, value, display)

  return offset + length, value
end

-- Default Cstm Appl Ver Id
eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_id = {}

-- Size: Default Cstm Appl Ver Id
eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_id.size = 30

-- Display: Default Cstm Appl Ver Id
eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Cstm Appl Ver Id: No Value"
  end

  return "Default Cstm Appl Ver Id: "..value
end

-- Dissect: Default Cstm Appl Ver Id
eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_id.size
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

  local display = eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.default_cstm_appl_ver_id, range, value, display)

  return offset + length, value
end

-- Trad Ses Mode
eurex_derivatives_edci_t7_v13_0.trad_ses_mode = {}

-- Size: Trad Ses Mode
eurex_derivatives_edci_t7_v13_0.trad_ses_mode.size = 1

-- Display: Trad Ses Mode
eurex_derivatives_edci_t7_v13_0.trad_ses_mode.display = function(value)
  if value == 1 then
    return "Trad Ses Mode: Testing (1)"
  end
  if value == 2 then
    return "Trad Ses Mode: Simulated (2)"
  end
  if value == 3 then
    return "Trad Ses Mode: Production (3)"
  end
  if value == 4 then
    return "Trad Ses Mode: Acceptance (4)"
  end
  if value == 5 then
    return "Trad Ses Mode: Disaster Recovery (5)"
  end
  if value == 0xFF then
    return "Trad Ses Mode: No Value"
  end

  return "Trad Ses Mode: Unknown("..value..")"
end

-- Dissect: Trad Ses Mode
eurex_derivatives_edci_t7_v13_0.trad_ses_mode.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.trad_ses_mode.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.trad_ses_mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.trad_ses_mode, range, value, display)

  return offset + length, value
end

-- Market Id
eurex_derivatives_edci_t7_v13_0.market_id = {}

-- Size: Market Id
eurex_derivatives_edci_t7_v13_0.market_id.size = 2

-- Display: Market Id
eurex_derivatives_edci_t7_v13_0.market_id.display = function(value)
  if value == 1 then
    return "Market Id: Xeur (1)"
  end
  if value == 2 then
    return "Market Id: Xeee (2)"
  end
  if value == 0xFFFF then
    return "Market Id: No Value"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
eurex_derivatives_edci_t7_v13_0.market_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.market_id, range, value, display)

  return offset + length, value
end

-- Session Instance Id
eurex_derivatives_edci_t7_v13_0.session_instance_id = {}

-- Size: Session Instance Id
eurex_derivatives_edci_t7_v13_0.session_instance_id.size = 4

-- Display: Session Instance Id
eurex_derivatives_edci_t7_v13_0.session_instance_id.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Session Instance Id: No Value"
  end

  return "Session Instance Id: "..value
end

-- Dissect: Session Instance Id
eurex_derivatives_edci_t7_v13_0.session_instance_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.session_instance_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.session_instance_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.session_instance_id, range, value, display)

  return offset + length, value
end

-- Heart Bt Int
eurex_derivatives_edci_t7_v13_0.heart_bt_int = {}

-- Size: Heart Bt Int
eurex_derivatives_edci_t7_v13_0.heart_bt_int.size = 4

-- Display: Heart Bt Int
eurex_derivatives_edci_t7_v13_0.heart_bt_int.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Heart Bt Int: No Value"
  end

  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
eurex_derivatives_edci_t7_v13_0.heart_bt_int.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.heart_bt_int.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.heart_bt_int.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Logon Response
eurex_derivatives_edci_t7_v13_0.logon_response = {}

-- Read runtime size of: Logon Response
eurex_derivatives_edci_t7_v13_0.logon_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logon Response
eurex_derivatives_edci_t7_v13_0.logon_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response
eurex_derivatives_edci_t7_v13_0.logon_response.fields = function(buffer, offset, packet, parent, size_of_logon_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 5 fields
  index, response_header_comp = eurex_derivatives_edci_t7_v13_0.response_header_comp.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer Nullable
  index, heart_bt_int = eurex_derivatives_edci_t7_v13_0.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Session Instance Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, session_instance_id = eurex_derivatives_edci_t7_v13_0.session_instance_id.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = eurex_derivatives_edci_t7_v13_0.market_id.dissect(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trad_ses_mode = eurex_derivatives_edci_t7_v13_0.trad_ses_mode.dissect(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_id.dissect(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Sub Id: 5 Byte Ascii String Enum with 1 values
  index, default_cstm_appl_ver_sub_id = eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_sub_id.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response
eurex_derivatives_edci_t7_v13_0.logon_response.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logon_response = eurex_derivatives_edci_t7_v13_0.logon_response.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logon_response then
    local range = buffer(offset, size_of_logon_response)
    local display = eurex_derivatives_edci_t7_v13_0.logon_response.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.logon_response, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.logon_response.fields(buffer, offset, packet, parent, size_of_logon_response)

  return offset + size_of_logon_response
end

-- Password
eurex_derivatives_edci_t7_v13_0.password = {}

-- Size: Password
eurex_derivatives_edci_t7_v13_0.password.size = 32

-- Display: Password
eurex_derivatives_edci_t7_v13_0.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
eurex_derivatives_edci_t7_v13_0.password.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.password.size
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

  local display = eurex_derivatives_edci_t7_v13_0.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.password, range, value, display)

  return offset + length, value
end

-- Logon Request
eurex_derivatives_edci_t7_v13_0.logon_request = {}

-- Read runtime size of: Logon Request
eurex_derivatives_edci_t7_v13_0.logon_request.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logon Request
eurex_derivatives_edci_t7_v13_0.logon_request.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request
eurex_derivatives_edci_t7_v13_0.logon_request.fields = function(buffer, offset, packet, parent, size_of_logon_request)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_edci_t7_v13_0.request_header_comp.dissect(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer Nullable
  index, heart_bt_int = eurex_derivatives_edci_t7_v13_0.heart_bt_int.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_edci_t7_v13_0.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = eurex_derivatives_edci_t7_v13_0.default_cstm_appl_ver_id.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = eurex_derivatives_edci_t7_v13_0.password.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request
eurex_derivatives_edci_t7_v13_0.logon_request.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logon_request = eurex_derivatives_edci_t7_v13_0.logon_request.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logon_request then
    local range = buffer(offset, size_of_logon_request)
    local display = eurex_derivatives_edci_t7_v13_0.logon_request.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.logon_request, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.logon_request.fields(buffer, offset, packet, parent, size_of_logon_request)

  return offset + size_of_logon_request
end

-- Heartbeat Notification
eurex_derivatives_edci_t7_v13_0.heartbeat_notification = {}

-- Read runtime size of: Heartbeat Notification
eurex_derivatives_edci_t7_v13_0.heartbeat_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Heartbeat Notification
eurex_derivatives_edci_t7_v13_0.heartbeat_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Notification
eurex_derivatives_edci_t7_v13_0.heartbeat_notification.fields = function(buffer, offset, packet, parent, size_of_heartbeat_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_edci_t7_v13_0.notif_header_comp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Notification
eurex_derivatives_edci_t7_v13_0.heartbeat_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat_notification = eurex_derivatives_edci_t7_v13_0.heartbeat_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat_notification then
    local range = buffer(offset, size_of_heartbeat_notification)
    local display = eurex_derivatives_edci_t7_v13_0.heartbeat_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.heartbeat_notification, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.heartbeat_notification.fields(buffer, offset, packet, parent, size_of_heartbeat_notification)

  return offset + size_of_heartbeat_notification
end

-- Heartbeat
eurex_derivatives_edci_t7_v13_0.heartbeat = {}

-- Read runtime size of: Heartbeat
eurex_derivatives_edci_t7_v13_0.heartbeat.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Heartbeat
eurex_derivatives_edci_t7_v13_0.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
eurex_derivatives_edci_t7_v13_0.heartbeat.fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
eurex_derivatives_edci_t7_v13_0.heartbeat.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat = eurex_derivatives_edci_t7_v13_0.heartbeat.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, size_of_heartbeat)
    local display = eurex_derivatives_edci_t7_v13_0.heartbeat.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.heartbeat, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)

  return offset + size_of_heartbeat
end

-- Forced Logout Notification
eurex_derivatives_edci_t7_v13_0.forced_logout_notification = {}

-- Read runtime size of: Forced Logout Notification
eurex_derivatives_edci_t7_v13_0.forced_logout_notification.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Forced Logout Notification
eurex_derivatives_edci_t7_v13_0.forced_logout_notification.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Forced Logout Notification
eurex_derivatives_edci_t7_v13_0.forced_logout_notification.fields = function(buffer, offset, packet, parent, size_of_forced_logout_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_edci_t7_v13_0.notif_header_comp.dissect(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = eurex_derivatives_edci_t7_v13_0.var_text_len.dissect(buffer, index, packet, parent)

  -- Runtime Size Of: Var Text
  index, var_text = eurex_derivatives_edci_t7_v13_0.var_text.dissect(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field exists: Alignment Padding
  local alignment_padding_exists = body_len ~= index

  -- Runtime optional field: Alignment Padding
  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index, alignment_padding = eurex_derivatives_edci_t7_v13_0.alignment_padding.dissect(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Forced Logout Notification
eurex_derivatives_edci_t7_v13_0.forced_logout_notification.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_forced_logout_notification = eurex_derivatives_edci_t7_v13_0.forced_logout_notification.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.forced_logout_notification then
    local range = buffer(offset, size_of_forced_logout_notification)
    local display = eurex_derivatives_edci_t7_v13_0.forced_logout_notification.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.forced_logout_notification, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.forced_logout_notification.fields(buffer, offset, packet, parent, size_of_forced_logout_notification)

  return offset + size_of_forced_logout_notification
end

-- Affected Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_fix_orig_cl_ord_id = {}

-- Size: Affected Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_fix_orig_cl_ord_id.size = 20

-- Display: Affected Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_fix_orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Affected Fix Orig Cl Ord Id: No Value"
  end

  return "Affected Fix Orig Cl Ord Id: "..value
end

-- Dissect: Affected Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_fix_orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.affected_fix_orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.affected_fix_orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.affected_fix_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Affected Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_fix_cl_ord_id = {}

-- Size: Affected Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_fix_cl_ord_id.size = 20

-- Display: Affected Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_fix_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Affected Fix Cl Ord Id: No Value"
  end

  return "Affected Fix Cl Ord Id: "..value
end

-- Dissect: Affected Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_fix_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.affected_fix_cl_ord_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_0.affected_fix_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.affected_fix_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Affected Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_orig_cl_ord_id = {}

-- Size: Affected Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_orig_cl_ord_id.size = 8

-- Display: Affected Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_orig_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Affected Orig Cl Ord Id: No Value"
  end

  return "Affected Orig Cl Ord Id: "..value
end

-- Dissect: Affected Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.affected_orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.affected_orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.affected_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Affected Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_cl_ord_id = {}

-- Size: Affected Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_cl_ord_id.size = 8

-- Display: Affected Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_cl_ord_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Affected Cl Ord Id: No Value"
  end

  return "Affected Cl Ord Id: "..value
end

-- Dissect: Affected Cl Ord Id
eurex_derivatives_edci_t7_v13_0.affected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.affected_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.affected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.affected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Affected Order Id
eurex_derivatives_edci_t7_v13_0.affected_order_id = {}

-- Size: Affected Order Id
eurex_derivatives_edci_t7_v13_0.affected_order_id.size = 8

-- Display: Affected Order Id
eurex_derivatives_edci_t7_v13_0.affected_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Affected Order Id: No Value"
  end

  return "Affected Order Id: "..value
end

-- Dissect: Affected Order Id
eurex_derivatives_edci_t7_v13_0.affected_order_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.affected_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_0.affected_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.affected_order_id, range, value, display)

  return offset + length, value
end

-- Affected Ord Grp Comp
eurex_derivatives_edci_t7_v13_0.affected_ord_grp_comp = {}

-- Calculate size of: Affected Ord Grp Comp
eurex_derivatives_edci_t7_v13_0.affected_ord_grp_comp.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_0.affected_order_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.affected_cl_ord_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.affected_orig_cl_ord_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.security_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.party_id_session_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.party_id_executing_trader.size

  index = index + eurex_derivatives_edci_t7_v13_0.ord_status.size

  index = index + eurex_derivatives_edci_t7_v13_0.exec_type.size

  index = index + eurex_derivatives_edci_t7_v13_0.affected_fix_cl_ord_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.affected_fix_orig_cl_ord_id.size

  index = index + eurex_derivatives_edci_t7_v13_0.pad_6.size

  return index
end

-- Display: Affected Ord Grp Comp
eurex_derivatives_edci_t7_v13_0.affected_ord_grp_comp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Affected Ord Grp Comp
eurex_derivatives_edci_t7_v13_0.affected_ord_grp_comp.fields = function(buffer, offset, packet, parent, affected_ord_grp_comp_index)
  local index = offset

  -- Implicit Affected Ord Grp Comp Index
  if affected_ord_grp_comp_index ~= nil then
    local iteration = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.affected_ord_grp_comp_index, affected_ord_grp_comp_index)
    iteration:set_generated()
  end

  -- Affected Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, affected_order_id = eurex_derivatives_edci_t7_v13_0.affected_order_id.dissect(buffer, index, packet, parent)

  -- Affected Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, affected_cl_ord_id = eurex_derivatives_edci_t7_v13_0.affected_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Affected Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, affected_orig_cl_ord_id = eurex_derivatives_edci_t7_v13_0.affected_orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_edci_t7_v13_0.security_id.dissect(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_edci_t7_v13_0.party_id_session_id.dissect(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_trader = eurex_derivatives_edci_t7_v13_0.party_id_executing_trader.dissect(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_edci_t7_v13_0.ord_status.dissect(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_edci_t7_v13_0.exec_type.dissect(buffer, index, packet, parent)

  -- Affected Fix Cl Ord Id: 20 Byte Ascii String Nullable
  index, affected_fix_cl_ord_id = eurex_derivatives_edci_t7_v13_0.affected_fix_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Affected Fix Orig Cl Ord Id: 20 Byte Ascii String Nullable
  index, affected_fix_orig_cl_ord_id = eurex_derivatives_edci_t7_v13_0.affected_fix_orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_edci_t7_v13_0.pad_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Affected Ord Grp Comp
eurex_derivatives_edci_t7_v13_0.affected_ord_grp_comp.dissect = function(buffer, offset, packet, parent, affected_ord_grp_comp_index)
  if show.affected_ord_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.affected_ord_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_0.affected_ord_grp_comp.fields(buffer, offset, packet, parent, affected_ord_grp_comp_index)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_0.affected_ord_grp_comp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_0.affected_ord_grp_comp.fields(buffer, offset, packet, parent, affected_ord_grp_comp_index)
  end
end

-- No Affected Orders
eurex_derivatives_edci_t7_v13_0.no_affected_orders = {}

-- Size: No Affected Orders
eurex_derivatives_edci_t7_v13_0.no_affected_orders.size = 2

-- Display: No Affected Orders
eurex_derivatives_edci_t7_v13_0.no_affected_orders.display = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Affected Orders: No Value"
  end

  return "No Affected Orders: "..value
end

-- Dissect: No Affected Orders
eurex_derivatives_edci_t7_v13_0.no_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.no_affected_orders.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.no_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.no_affected_orders, range, value, display)

  return offset + length, value
end

-- Delete Order Broadcast
eurex_derivatives_edci_t7_v13_0.delete_order_broadcast = {}

-- Read runtime size of: Delete Order Broadcast
eurex_derivatives_edci_t7_v13_0.delete_order_broadcast.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Broadcast
eurex_derivatives_edci_t7_v13_0.delete_order_broadcast.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Broadcast
eurex_derivatives_edci_t7_v13_0.delete_order_broadcast.fields = function(buffer, offset, packet, parent, size_of_delete_order_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 5 fields
  index, rbc_header_comp = eurex_derivatives_edci_t7_v13_0.rbc_header_comp.dissect(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_edci_t7_v13_0.exec_id.dissect(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_edci_t7_v13_0.market_segment_id.dissect(buffer, index, packet, parent)

  -- No Affected Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_affected_orders = eurex_derivatives_edci_t7_v13_0.no_affected_orders.dissect(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_0.pad_2.dissect(buffer, index, packet, parent)

  -- Repeating: Affected Ord Grp Comp
  for affected_ord_grp_comp_index = 1, no_affected_orders do
    index, affected_ord_grp_comp = eurex_derivatives_edci_t7_v13_0.affected_ord_grp_comp.dissect(buffer, index, packet, parent, affected_ord_grp_comp_index)
  end

  return index
end

-- Dissect: Delete Order Broadcast
eurex_derivatives_edci_t7_v13_0.delete_order_broadcast.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_order_broadcast = eurex_derivatives_edci_t7_v13_0.delete_order_broadcast.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_order_broadcast then
    local range = buffer(offset, size_of_delete_order_broadcast)
    local display = eurex_derivatives_edci_t7_v13_0.delete_order_broadcast.display(buffer, packet, parent)
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.delete_order_broadcast, range, display)
  end

  eurex_derivatives_edci_t7_v13_0.delete_order_broadcast.fields(buffer, offset, packet, parent, size_of_delete_order_broadcast)

  return offset + size_of_delete_order_broadcast
end

-- Payload
eurex_derivatives_edci_t7_v13_0.payload = {}

-- Calculate runtime size of: Payload
eurex_derivatives_edci_t7_v13_0.payload.size = function(buffer, offset, template_id)
  -- Size of Delete Order Broadcast
  if template_id == 10902 then
    return eurex_derivatives_edci_t7_v13_0.delete_order_broadcast.size(buffer, offset)
  end
  -- Size of Forced Logout Notification
  if template_id == 10012 then
    return eurex_derivatives_edci_t7_v13_0.forced_logout_notification.size(buffer, offset)
  end
  -- Size of Heartbeat
  if template_id == 10011 then
    return eurex_derivatives_edci_t7_v13_0.heartbeat.size(buffer, offset)
  end
  -- Size of Heartbeat Notification
  if template_id == 10023 then
    return eurex_derivatives_edci_t7_v13_0.heartbeat_notification.size(buffer, offset)
  end
  -- Size of Logon Request
  if template_id == 10000 then
    return eurex_derivatives_edci_t7_v13_0.logon_request.size(buffer, offset)
  end
  -- Size of Logon Response
  if template_id == 10001 then
    return eurex_derivatives_edci_t7_v13_0.logon_response.size(buffer, offset)
  end
  -- Size of Logout Request
  if template_id == 10002 then
    return eurex_derivatives_edci_t7_v13_0.logout_request.size(buffer, offset)
  end
  -- Size of Logout Response
  if template_id == 10003 then
    return eurex_derivatives_edci_t7_v13_0.logout_response.size(buffer, offset)
  end
  -- Size of Order Exec Report Broadcast
  if template_id == 10901 then
    return eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast.size(buffer, offset)
  end
  -- Size of Partition List Notification
  if template_id == 10037 then
    return eurex_derivatives_edci_t7_v13_0.partition_list_notification.size(buffer, offset)
  end
  -- Size of Reject
  if template_id == 10010 then
    return eurex_derivatives_edci_t7_v13_0.reject.size(buffer, offset)
  end
  -- Size of Session List Notification
  if template_id == 10036 then
    return eurex_derivatives_edci_t7_v13_0.session_list_notification.size(buffer, offset)
  end
  -- Size of Session Status Broadcast
  if template_id == 10903 then
    return eurex_derivatives_edci_t7_v13_0.session_status_broadcast.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
eurex_derivatives_edci_t7_v13_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
eurex_derivatives_edci_t7_v13_0.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Delete Order Broadcast
  if template_id == 10902 then
    return eurex_derivatives_edci_t7_v13_0.delete_order_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Forced Logout Notification
  if template_id == 10012 then
    return eurex_derivatives_edci_t7_v13_0.forced_logout_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if template_id == 10011 then
    return eurex_derivatives_edci_t7_v13_0.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Notification
  if template_id == 10023 then
    return eurex_derivatives_edci_t7_v13_0.heartbeat_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Request
  if template_id == 10000 then
    return eurex_derivatives_edci_t7_v13_0.logon_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response
  if template_id == 10001 then
    return eurex_derivatives_edci_t7_v13_0.logon_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if template_id == 10002 then
    return eurex_derivatives_edci_t7_v13_0.logout_request.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response
  if template_id == 10003 then
    return eurex_derivatives_edci_t7_v13_0.logout_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Report Broadcast
  if template_id == 10901 then
    return eurex_derivatives_edci_t7_v13_0.order_exec_report_broadcast.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Partition List Notification
  if template_id == 10037 then
    return eurex_derivatives_edci_t7_v13_0.partition_list_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject
  if template_id == 10010 then
    return eurex_derivatives_edci_t7_v13_0.reject.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session List Notification
  if template_id == 10036 then
    return eurex_derivatives_edci_t7_v13_0.session_list_notification.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Session Status Broadcast
  if template_id == 10903 then
    return eurex_derivatives_edci_t7_v13_0.session_status_broadcast.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
eurex_derivatives_edci_t7_v13_0.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return eurex_derivatives_edci_t7_v13_0.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = eurex_derivatives_edci_t7_v13_0.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = eurex_derivatives_edci_t7_v13_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.payload, range, display)

  return eurex_derivatives_edci_t7_v13_0.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Template Id
eurex_derivatives_edci_t7_v13_0.template_id = {}

-- Size: Template Id
eurex_derivatives_edci_t7_v13_0.template_id.size = 2

-- Display: Template Id
eurex_derivatives_edci_t7_v13_0.template_id.display = function(value)
  if value == 0xFFFF then
    return "Template Id: No Value"
  end
  if value == 10902 then
    return "Template Id: Delete Order Broadcast (10902)"
  end
  if value == 10012 then
    return "Template Id: Forced Logout Notification (10012)"
  end
  if value == 10011 then
    return "Template Id: Heartbeat (10011)"
  end
  if value == 10023 then
    return "Template Id: Heartbeat Notification (10023)"
  end
  if value == 10000 then
    return "Template Id: Logon Request (10000)"
  end
  if value == 10001 then
    return "Template Id: Logon Response (10001)"
  end
  if value == 10002 then
    return "Template Id: Logout Request (10002)"
  end
  if value == 10003 then
    return "Template Id: Logout Response (10003)"
  end
  if value == 10901 then
    return "Template Id: Order Exec Report Broadcast (10901)"
  end
  if value == 10037 then
    return "Template Id: Partition List Notification (10037)"
  end
  if value == 10010 then
    return "Template Id: Reject (10010)"
  end
  if value == 10036 then
    return "Template Id: Session List Notification (10036)"
  end
  if value == 10903 then
    return "Template Id: Session Status Broadcast (10903)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
eurex_derivatives_edci_t7_v13_0.template_id.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Body Len
eurex_derivatives_edci_t7_v13_0.body_len = {}

-- Size: Body Len
eurex_derivatives_edci_t7_v13_0.body_len.size = 4

-- Display: Body Len
eurex_derivatives_edci_t7_v13_0.body_len.display = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Body Len: No Value"
  end

  return "Body Len: "..value
end

-- Dissect: Body Len
eurex_derivatives_edci_t7_v13_0.body_len.dissect = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_0.body_len.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_0.body_len.display(value, buffer, offset, packet, parent)

  parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.body_len, range, value, display)

  return offset + length, value
end

-- Message Header
eurex_derivatives_edci_t7_v13_0.message_header = {}

-- Calculate size of: Message Header
eurex_derivatives_edci_t7_v13_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_0.body_len.size

  index = index + eurex_derivatives_edci_t7_v13_0.template_id.size

  return index
end

-- Display: Message Header
eurex_derivatives_edci_t7_v13_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
eurex_derivatives_edci_t7_v13_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer Nullable
  index, body_len = eurex_derivatives_edci_t7_v13_0.body_len.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, template_id = eurex_derivatives_edci_t7_v13_0.template_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
eurex_derivatives_edci_t7_v13_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.message_header, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
eurex_derivatives_edci_t7_v13_0.message = {}

-- Display: Message
eurex_derivatives_edci_t7_v13_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
eurex_derivatives_edci_t7_v13_0.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = eurex_derivatives_edci_t7_v13_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = eurex_derivatives_edci_t7_v13_0.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
eurex_derivatives_edci_t7_v13_0.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_eurex_derivatives_edci_t7_v13_0.fields.message, buffer(offset, 0))
    local current = eurex_derivatives_edci_t7_v13_0.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = eurex_derivatives_edci_t7_v13_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    eurex_derivatives_edci_t7_v13_0.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < eurex_derivatives_edci_t7_v13_0.message_header.size(buffer, index) then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 4):le_uint()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
eurex_derivatives_edci_t7_v13_0.packet = {}

-- Dissect Packet
eurex_derivatives_edci_t7_v13_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = eurex_derivatives_edci_t7_v13_0.message.dissect(buffer, index, packet, parent, size_of_message)
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
function omi_eurex_derivatives_edci_t7_v13_0.init()
end

-- Dissector for Eurex Derivatives Edci T7 13.0
function omi_eurex_derivatives_edci_t7_v13_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_eurex_derivatives_edci_t7_v13_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_eurex_derivatives_edci_t7_v13_0, buffer(), omi_eurex_derivatives_edci_t7_v13_0.description, "("..buffer:len().." Bytes)")
  return eurex_derivatives_edci_t7_v13_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_eurex_derivatives_edci_t7_v13_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
eurex_derivatives_edci_t7_v13_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Eurex Derivatives Edci T7 13.0
local function omi_eurex_derivatives_edci_t7_v13_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not eurex_derivatives_edci_t7_v13_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_eurex_derivatives_edci_t7_v13_0
  omi_eurex_derivatives_edci_t7_v13_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Derivatives Edci T7 13.0
omi_eurex_derivatives_edci_t7_v13_0:register_heuristic("tcp", omi_eurex_derivatives_edci_t7_v13_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 13.0
--   Date: Thursday, October 10, 2024
--   Specification: T7_R.13.0_Enhanced_Drop_Copy_Interface_-_Derivatives_Message_Reference_Version_1.pdf
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
