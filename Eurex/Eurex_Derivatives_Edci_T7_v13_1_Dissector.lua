-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Derivatives Edci T7 13.1 Protocol
local eurex_derivatives_edci_t7_v13_1 = Proto("Eurex.Derivatives.Edci.T7.v13.1.Lua", "Eurex Derivatives Edci T7 13.1")

-- Component Tables
local show = {}
local format = {}
local eurex_derivatives_edci_t7_v13_1_display = {}
local eurex_derivatives_edci_t7_v13_1_dissect = {}
local eurex_derivatives_edci_t7_v13_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex Derivatives Edci T7 13.1 Fields
eurex_derivatives_edci_t7_v13_1.fields.affected_cl_ord_id = ProtoField.new("Affected Cl Ord Id", "eurex.derivatives.edci.t7.v13.1.affectedclordid", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.affected_fix_cl_ord_id = ProtoField.new("Affected Fix Cl Ord Id", "eurex.derivatives.edci.t7.v13.1.affectedfixclordid", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.affected_fix_orig_cl_ord_id = ProtoField.new("Affected Fix Orig Cl Ord Id", "eurex.derivatives.edci.t7.v13.1.affectedfixorigclordid", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.affected_ord_grp_comp = ProtoField.new("Affected Ord Grp Comp", "eurex.derivatives.edci.t7.v13.1.affectedordgrpcomp", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.affected_order_id = ProtoField.new("Affected Order Id", "eurex.derivatives.edci.t7.v13.1.affectedorderid", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.affected_orig_cl_ord_id = ProtoField.new("Affected Orig Cl Ord Id", "eurex.derivatives.edci.t7.v13.1.affectedorigclordid", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.alignment_padding = ProtoField.new("Alignment Padding", "eurex.derivatives.edci.t7.v13.1.alignmentpadding", ftypes.BYTES)
eurex_derivatives_edci_t7_v13_1.fields.appl_id = ProtoField.new("Appl Id", "eurex.derivatives.edci.t7.v13.1.applid", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.appl_seq_indicator = ProtoField.new("Appl Seq Indicator", "eurex.derivatives.edci.t7.v13.1.applseqindicator", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.body_len = ProtoField.new("Body Len", "eurex.derivatives.edci.t7.v13.1.bodylen", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "eurex.derivatives.edci.t7.v13.1.clordid", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.crossed_indicator = ProtoField.new("Crossed Indicator", "eurex.derivatives.edci.t7.v13.1.crossedindicator", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.cum_qty = ProtoField.new("Cum Qty", "eurex.derivatives.edci.t7.v13.1.cumqty", ftypes.DOUBLE)
eurex_derivatives_edci_t7_v13_1.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "eurex.derivatives.edci.t7.v13.1.custorderhandlinginst", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.cxl_qty = ProtoField.new("Cxl Qty", "eurex.derivatives.edci.t7.v13.1.cxlqty", ftypes.DOUBLE)
eurex_derivatives_edci_t7_v13_1.fields.default_cstm_appl_ver_id = ProtoField.new("Default Cstm Appl Ver Id", "eurex.derivatives.edci.t7.v13.1.defaultcstmapplverid", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.default_cstm_appl_ver_sub_id = ProtoField.new("Default Cstm Appl Ver Sub Id", "eurex.derivatives.edci.t7.v13.1.defaultcstmapplversubid", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.exec_id = ProtoField.new("Exec Id", "eurex.derivatives.edci.t7.v13.1.execid", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.exec_inst = ProtoField.new("Exec Inst", "eurex.derivatives.edci.t7.v13.1.execinst", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.exec_type = ProtoField.new("Exec Type", "eurex.derivatives.edci.t7.v13.1.exectype", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.executing_trader = ProtoField.new("Executing Trader", "eurex.derivatives.edci.t7.v13.1.executingtrader", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.executing_trader_qualifier = ProtoField.new("Executing Trader Qualifier", "eurex.derivatives.edci.t7.v13.1.executingtraderqualifier", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.expire_date = ProtoField.new("Expire Date", "eurex.derivatives.edci.t7.v13.1.expiredate", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "eurex.derivatives.edci.t7.v13.1.fillexecid", ftypes.INT32)
eurex_derivatives_edci_t7_v13_1.fields.fill_match_id = ProtoField.new("Fill Match Id", "eurex.derivatives.edci.t7.v13.1.fillmatchid", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.fill_px = ProtoField.new("Fill Px", "eurex.derivatives.edci.t7.v13.1.fillpx", ftypes.DOUBLE)
eurex_derivatives_edci_t7_v13_1.fields.fill_qty = ProtoField.new("Fill Qty", "eurex.derivatives.edci.t7.v13.1.fillqty", ftypes.DOUBLE)
eurex_derivatives_edci_t7_v13_1.fields.fills_grp_comp = ProtoField.new("Fills Grp Comp", "eurex.derivatives.edci.t7.v13.1.fillsgrpcomp", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.fix_cl_ord_id = ProtoField.new("Fix Cl Ord Id", "eurex.derivatives.edci.t7.v13.1.fixclordid", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.fix_orig_cl_ord_id = ProtoField.new("Fix Orig Cl Ord Id", "eurex.derivatives.edci.t7.v13.1.fixorigclordid", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.free_text_1 = ProtoField.new("Free Text 1", "eurex.derivatives.edci.t7.v13.1.freetext1", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.free_text_2 = ProtoField.new("Free Text 2", "eurex.derivatives.edci.t7.v13.1.freetext2", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.free_text_3 = ProtoField.new("Free Text 3", "eurex.derivatives.edci.t7.v13.1.freetext3", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "eurex.derivatives.edci.t7.v13.1.heartbtint", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.derivatives.edci.t7.v13.1.lastfragment", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.leaves_qty = ProtoField.new("Leaves Qty", "eurex.derivatives.edci.t7.v13.1.leavesqty", ftypes.DOUBLE)
eurex_derivatives_edci_t7_v13_1.fields.market_id = ProtoField.new("Market Id", "eurex.derivatives.edci.t7.v13.1.marketid", ftypes.UINT16)
eurex_derivatives_edci_t7_v13_1.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.derivatives.edci.t7.v13.1.marketsegmentid", ftypes.INT32)
eurex_derivatives_edci_t7_v13_1.fields.match_type = ProtoField.new("Match Type", "eurex.derivatives.edci.t7.v13.1.matchtype", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.message = ProtoField.new("Message", "eurex.derivatives.edci.t7.v13.1.message", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.message_header = ProtoField.new("Message Header", "eurex.derivatives.edci.t7.v13.1.messageheader", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.derivatives.edci.t7.v13.1.msgseqnum", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.no_affected_orders = ProtoField.new("No Affected Orders", "eurex.derivatives.edci.t7.v13.1.noaffectedorders", ftypes.UINT16)
eurex_derivatives_edci_t7_v13_1.fields.no_fills = ProtoField.new("No Fills", "eurex.derivatives.edci.t7.v13.1.nofills", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.no_partitions = ProtoField.new("No Partitions", "eurex.derivatives.edci.t7.v13.1.nopartitions", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.no_sessions = ProtoField.new("No Sessions", "eurex.derivatives.edci.t7.v13.1.nosessions", ftypes.UINT16)
eurex_derivatives_edci_t7_v13_1.fields.notif_header_comp = ProtoField.new("Notif Header Comp", "eurex.derivatives.edci.t7.v13.1.notifheadercomp", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.ord_status = ProtoField.new("Ord Status", "eurex.derivatives.edci.t7.v13.1.ordstatus", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.ord_type = ProtoField.new("Ord Type", "eurex.derivatives.edci.t7.v13.1.ordtype", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.order_id = ProtoField.new("Order Id", "eurex.derivatives.edci.t7.v13.1.orderid", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.order_qty = ProtoField.new("Order Qty", "eurex.derivatives.edci.t7.v13.1.orderqty", ftypes.DOUBLE)
eurex_derivatives_edci_t7_v13_1.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "eurex.derivatives.edci.t7.v13.1.origclordid", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.packet = ProtoField.new("Packet", "eurex.derivatives.edci.t7.v13.1.packet", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.pad_2 = ProtoField.new("Pad 2", "eurex.derivatives.edci.t7.v13.1.pad2", ftypes.BYTES)
eurex_derivatives_edci_t7_v13_1.fields.pad_3 = ProtoField.new("Pad 3", "eurex.derivatives.edci.t7.v13.1.pad3", ftypes.BYTES)
eurex_derivatives_edci_t7_v13_1.fields.pad_4 = ProtoField.new("Pad 4", "eurex.derivatives.edci.t7.v13.1.pad4", ftypes.BYTES)
eurex_derivatives_edci_t7_v13_1.fields.pad_6 = ProtoField.new("Pad 6", "eurex.derivatives.edci.t7.v13.1.pad6", ftypes.BYTES)
eurex_derivatives_edci_t7_v13_1.fields.pad_7 = ProtoField.new("Pad 7", "eurex.derivatives.edci.t7.v13.1.pad7", ftypes.BYTES)
eurex_derivatives_edci_t7_v13_1.fields.partition_grp_comp = ProtoField.new("Partition Grp Comp", "eurex.derivatives.edci.t7.v13.1.partitiongrpcomp", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.partition_id = ProtoField.new("Partition Id", "eurex.derivatives.edci.t7.v13.1.partitionid", ftypes.UINT16)
eurex_derivatives_edci_t7_v13_1.fields.party_end_client_identification = ProtoField.new("Party End Client Identification", "eurex.derivatives.edci.t7.v13.1.partyendclientidentification", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.party_executing_firm = ProtoField.new("Party Executing Firm", "eurex.derivatives.edci.t7.v13.1.partyexecutingfirm", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.party_id_client_id = ProtoField.new("Party Id Client Id", "eurex.derivatives.edci.t7.v13.1.partyidclientid", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.party_id_executing_trader = ProtoField.new("Party Id Executing Trader", "eurex.derivatives.edci.t7.v13.1.partyidexecutingtrader", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.party_id_executing_unit = ProtoField.new("Party Id Executing Unit", "eurex.derivatives.edci.t7.v13.1.partyidexecutingunit", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.party_id_investment_decision_maker = ProtoField.new("Party Id Investment Decision Maker", "eurex.derivatives.edci.t7.v13.1.partyidinvestmentdecisionmaker", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.party_id_investment_decision_maker_qualifier = ProtoField.new("Party Id Investment Decision Maker Qualifier", "eurex.derivatives.edci.t7.v13.1.partyidinvestmentdecisionmakerqualifier", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.party_id_session_id = ProtoField.new("Party Id Session Id", "eurex.derivatives.edci.t7.v13.1.partyidsessionid", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.password = ProtoField.new("Password", "eurex.derivatives.edci.t7.v13.1.password", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.payload = ProtoField.new("Payload", "eurex.derivatives.edci.t7.v13.1.payload", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.price = ProtoField.new("Price", "eurex.derivatives.edci.t7.v13.1.price", ftypes.DOUBLE)
eurex_derivatives_edci_t7_v13_1.fields.product_complex = ProtoField.new("Product Complex", "eurex.derivatives.edci.t7.v13.1.productcomplex", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.rbc_header_comp = ProtoField.new("Rbc Header Comp", "eurex.derivatives.edci.t7.v13.1.rbcheadercomp", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.request_header_comp = ProtoField.new("Request Header Comp", "eurex.derivatives.edci.t7.v13.1.requestheadercomp", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.request_time = ProtoField.new("Request Time", "eurex.derivatives.edci.t7.v13.1.requesttime", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.response_header_comp = ProtoField.new("Response Header Comp", "eurex.derivatives.edci.t7.v13.1.responseheadercomp", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.security_id = ProtoField.new("Security Id", "eurex.derivatives.edci.t7.v13.1.securityid", ftypes.INT64)
eurex_derivatives_edci_t7_v13_1.fields.sending_time = ProtoField.new("Sending Time", "eurex.derivatives.edci.t7.v13.1.sendingtime", ftypes.UINT64)
eurex_derivatives_edci_t7_v13_1.fields.session_instance_id = ProtoField.new("Session Instance Id", "eurex.derivatives.edci.t7.v13.1.sessioninstanceid", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.session_mode = ProtoField.new("Session Mode", "eurex.derivatives.edci.t7.v13.1.sessionmode", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "eurex.derivatives.edci.t7.v13.1.sessionrejectreason", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.session_status = ProtoField.new("Session Status", "eurex.derivatives.edci.t7.v13.1.sessionstatus", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.sessions_grp_comp = ProtoField.new("Sessions Grp Comp", "eurex.derivatives.edci.t7.v13.1.sessionsgrpcomp", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.side = ProtoField.new("Side", "eurex.derivatives.edci.t7.v13.1.side", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.stop_px = ProtoField.new("Stop Px", "eurex.derivatives.edci.t7.v13.1.stoppx", ftypes.DOUBLE)
eurex_derivatives_edci_t7_v13_1.fields.template_id = ProtoField.new("Template Id", "eurex.derivatives.edci.t7.v13.1.templateid", ftypes.UINT16)
eurex_derivatives_edci_t7_v13_1.fields.time_in_force = ProtoField.new("Time In Force", "eurex.derivatives.edci.t7.v13.1.timeinforce", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "eurex.derivatives.edci.t7.v13.1.tradsesevent", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.trad_ses_mode = ProtoField.new("Trad Ses Mode", "eurex.derivatives.edci.t7.v13.1.tradsesmode", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.trade_date = ProtoField.new("Trade Date", "eurex.derivatives.edci.t7.v13.1.tradedate", ftypes.UINT32)
eurex_derivatives_edci_t7_v13_1.fields.trading_capacity = ProtoField.new("Trading Capacity", "eurex.derivatives.edci.t7.v13.1.tradingcapacity", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.derivatives.edci.t7.v13.1.tradingsessionsubid", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.triggered = ProtoField.new("Triggered", "eurex.derivatives.edci.t7.v13.1.triggered", ftypes.UINT8)
eurex_derivatives_edci_t7_v13_1.fields.var_text = ProtoField.new("Var Text", "eurex.derivatives.edci.t7.v13.1.vartext", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.var_text_len = ProtoField.new("Var Text Len", "eurex.derivatives.edci.t7.v13.1.vartextlen", ftypes.UINT16)

-- Eurex Derivatives Edci T7 13.1 messages
eurex_derivatives_edci_t7_v13_1.fields.delete_order_broadcast = ProtoField.new("Delete Order Broadcast", "eurex.derivatives.edci.t7.v13.1.deleteorderbroadcast", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.forced_logout_notification = ProtoField.new("Forced Logout Notification", "eurex.derivatives.edci.t7.v13.1.forcedlogoutnotification", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.derivatives.edci.t7.v13.1.heartbeat", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.heartbeat_notification = ProtoField.new("Heartbeat Notification", "eurex.derivatives.edci.t7.v13.1.heartbeatnotification", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.logon_request = ProtoField.new("Logon Request", "eurex.derivatives.edci.t7.v13.1.logonrequest", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.logon_response = ProtoField.new("Logon Response", "eurex.derivatives.edci.t7.v13.1.logonresponse", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.logout_request = ProtoField.new("Logout Request", "eurex.derivatives.edci.t7.v13.1.logoutrequest", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.logout_response = ProtoField.new("Logout Response", "eurex.derivatives.edci.t7.v13.1.logoutresponse", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.order_exec_report_broadcast = ProtoField.new("Order Exec Report Broadcast", "eurex.derivatives.edci.t7.v13.1.orderexecreportbroadcast", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.partition_list_notification = ProtoField.new("Partition List Notification", "eurex.derivatives.edci.t7.v13.1.partitionlistnotification", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.reject = ProtoField.new("Reject", "eurex.derivatives.edci.t7.v13.1.reject", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.session_list_notification = ProtoField.new("Session List Notification", "eurex.derivatives.edci.t7.v13.1.sessionlistnotification", ftypes.STRING)
eurex_derivatives_edci_t7_v13_1.fields.session_status_broadcast = ProtoField.new("Session Status Broadcast", "eurex.derivatives.edci.t7.v13.1.sessionstatusbroadcast", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Eurex Derivatives Edci T7 13.1 Element Dissection Options
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

-- Register Eurex Derivatives Edci T7 13.1 Show Options
eurex_derivatives_edci_t7_v13_1.prefs.show_affected_ord_grp_comp = Pref.bool("Show Affected Ord Grp Comp", show.affected_ord_grp_comp, "Parse and add Affected Ord Grp Comp to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_delete_order_broadcast = Pref.bool("Show Delete Order Broadcast", show.delete_order_broadcast, "Parse and add Delete Order Broadcast to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_fills_grp_comp = Pref.bool("Show Fills Grp Comp", show.fills_grp_comp, "Parse and add Fills Grp Comp to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_forced_logout_notification = Pref.bool("Show Forced Logout Notification", show.forced_logout_notification, "Parse and add Forced Logout Notification to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_heartbeat_notification = Pref.bool("Show Heartbeat Notification", show.heartbeat_notification, "Parse and add Heartbeat Notification to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_logon_request = Pref.bool("Show Logon Request", show.logon_request, "Parse and add Logon Request to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_logon_response = Pref.bool("Show Logon Response", show.logon_response, "Parse and add Logon Response to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_logout_response = Pref.bool("Show Logout Response", show.logout_response, "Parse and add Logout Response to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_notif_header_comp = Pref.bool("Show Notif Header Comp", show.notif_header_comp, "Parse and add Notif Header Comp to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_order_exec_report_broadcast = Pref.bool("Show Order Exec Report Broadcast", show.order_exec_report_broadcast, "Parse and add Order Exec Report Broadcast to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_partition_grp_comp = Pref.bool("Show Partition Grp Comp", show.partition_grp_comp, "Parse and add Partition Grp Comp to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_partition_list_notification = Pref.bool("Show Partition List Notification", show.partition_list_notification, "Parse and add Partition List Notification to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_rbc_header_comp = Pref.bool("Show Rbc Header Comp", show.rbc_header_comp, "Parse and add Rbc Header Comp to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_reject = Pref.bool("Show Reject", show.reject, "Parse and add Reject to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_request_header_comp = Pref.bool("Show Request Header Comp", show.request_header_comp, "Parse and add Request Header Comp to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_response_header_comp = Pref.bool("Show Response Header Comp", show.response_header_comp, "Parse and add Response Header Comp to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_session_list_notification = Pref.bool("Show Session List Notification", show.session_list_notification, "Parse and add Session List Notification to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_session_status_broadcast = Pref.bool("Show Session Status Broadcast", show.session_status_broadcast, "Parse and add Session Status Broadcast to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_sessions_grp_comp = Pref.bool("Show Sessions Grp Comp", show.sessions_grp_comp, "Parse and add Sessions Grp Comp to protocol tree")
eurex_derivatives_edci_t7_v13_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function eurex_derivatives_edci_t7_v13_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.affected_ord_grp_comp ~= eurex_derivatives_edci_t7_v13_1.prefs.show_affected_ord_grp_comp then
    show.affected_ord_grp_comp = eurex_derivatives_edci_t7_v13_1.prefs.show_affected_ord_grp_comp
    changed = true
  end
  if show.delete_order_broadcast ~= eurex_derivatives_edci_t7_v13_1.prefs.show_delete_order_broadcast then
    show.delete_order_broadcast = eurex_derivatives_edci_t7_v13_1.prefs.show_delete_order_broadcast
    changed = true
  end
  if show.fills_grp_comp ~= eurex_derivatives_edci_t7_v13_1.prefs.show_fills_grp_comp then
    show.fills_grp_comp = eurex_derivatives_edci_t7_v13_1.prefs.show_fills_grp_comp
    changed = true
  end
  if show.forced_logout_notification ~= eurex_derivatives_edci_t7_v13_1.prefs.show_forced_logout_notification then
    show.forced_logout_notification = eurex_derivatives_edci_t7_v13_1.prefs.show_forced_logout_notification
    changed = true
  end
  if show.heartbeat ~= eurex_derivatives_edci_t7_v13_1.prefs.show_heartbeat then
    show.heartbeat = eurex_derivatives_edci_t7_v13_1.prefs.show_heartbeat
    changed = true
  end
  if show.heartbeat_notification ~= eurex_derivatives_edci_t7_v13_1.prefs.show_heartbeat_notification then
    show.heartbeat_notification = eurex_derivatives_edci_t7_v13_1.prefs.show_heartbeat_notification
    changed = true
  end
  if show.logon_request ~= eurex_derivatives_edci_t7_v13_1.prefs.show_logon_request then
    show.logon_request = eurex_derivatives_edci_t7_v13_1.prefs.show_logon_request
    changed = true
  end
  if show.logon_response ~= eurex_derivatives_edci_t7_v13_1.prefs.show_logon_response then
    show.logon_response = eurex_derivatives_edci_t7_v13_1.prefs.show_logon_response
    changed = true
  end
  if show.logout_request ~= eurex_derivatives_edci_t7_v13_1.prefs.show_logout_request then
    show.logout_request = eurex_derivatives_edci_t7_v13_1.prefs.show_logout_request
    changed = true
  end
  if show.logout_response ~= eurex_derivatives_edci_t7_v13_1.prefs.show_logout_response then
    show.logout_response = eurex_derivatives_edci_t7_v13_1.prefs.show_logout_response
    changed = true
  end
  if show.message ~= eurex_derivatives_edci_t7_v13_1.prefs.show_message then
    show.message = eurex_derivatives_edci_t7_v13_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= eurex_derivatives_edci_t7_v13_1.prefs.show_message_header then
    show.message_header = eurex_derivatives_edci_t7_v13_1.prefs.show_message_header
    changed = true
  end
  if show.notif_header_comp ~= eurex_derivatives_edci_t7_v13_1.prefs.show_notif_header_comp then
    show.notif_header_comp = eurex_derivatives_edci_t7_v13_1.prefs.show_notif_header_comp
    changed = true
  end
  if show.order_exec_report_broadcast ~= eurex_derivatives_edci_t7_v13_1.prefs.show_order_exec_report_broadcast then
    show.order_exec_report_broadcast = eurex_derivatives_edci_t7_v13_1.prefs.show_order_exec_report_broadcast
    changed = true
  end
  if show.packet ~= eurex_derivatives_edci_t7_v13_1.prefs.show_packet then
    show.packet = eurex_derivatives_edci_t7_v13_1.prefs.show_packet
    changed = true
  end
  if show.partition_grp_comp ~= eurex_derivatives_edci_t7_v13_1.prefs.show_partition_grp_comp then
    show.partition_grp_comp = eurex_derivatives_edci_t7_v13_1.prefs.show_partition_grp_comp
    changed = true
  end
  if show.partition_list_notification ~= eurex_derivatives_edci_t7_v13_1.prefs.show_partition_list_notification then
    show.partition_list_notification = eurex_derivatives_edci_t7_v13_1.prefs.show_partition_list_notification
    changed = true
  end
  if show.rbc_header_comp ~= eurex_derivatives_edci_t7_v13_1.prefs.show_rbc_header_comp then
    show.rbc_header_comp = eurex_derivatives_edci_t7_v13_1.prefs.show_rbc_header_comp
    changed = true
  end
  if show.reject ~= eurex_derivatives_edci_t7_v13_1.prefs.show_reject then
    show.reject = eurex_derivatives_edci_t7_v13_1.prefs.show_reject
    changed = true
  end
  if show.request_header_comp ~= eurex_derivatives_edci_t7_v13_1.prefs.show_request_header_comp then
    show.request_header_comp = eurex_derivatives_edci_t7_v13_1.prefs.show_request_header_comp
    changed = true
  end
  if show.response_header_comp ~= eurex_derivatives_edci_t7_v13_1.prefs.show_response_header_comp then
    show.response_header_comp = eurex_derivatives_edci_t7_v13_1.prefs.show_response_header_comp
    changed = true
  end
  if show.session_list_notification ~= eurex_derivatives_edci_t7_v13_1.prefs.show_session_list_notification then
    show.session_list_notification = eurex_derivatives_edci_t7_v13_1.prefs.show_session_list_notification
    changed = true
  end
  if show.session_status_broadcast ~= eurex_derivatives_edci_t7_v13_1.prefs.show_session_status_broadcast then
    show.session_status_broadcast = eurex_derivatives_edci_t7_v13_1.prefs.show_session_status_broadcast
    changed = true
  end
  if show.sessions_grp_comp ~= eurex_derivatives_edci_t7_v13_1.prefs.show_sessions_grp_comp then
    show.sessions_grp_comp = eurex_derivatives_edci_t7_v13_1.prefs.show_sessions_grp_comp
    changed = true
  end
  if show.payload ~= eurex_derivatives_edci_t7_v13_1.prefs.show_payload then
    show.payload = eurex_derivatives_edci_t7_v13_1.prefs.show_payload
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
-- Dissect Eurex Derivatives Edci T7 13.1
-----------------------------------------------------------------------

-- Size: Pad 7
eurex_derivatives_edci_t7_v13_1_size_of.pad_7 = 7

-- Display: Pad 7
eurex_derivatives_edci_t7_v13_1_display.pad_7 = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
eurex_derivatives_edci_t7_v13_1_dissect.pad_7 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.pad_7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_1_display.pad_7(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Size: Trad Ses Event
eurex_derivatives_edci_t7_v13_1_size_of.trad_ses_event = 1

-- Display: Trad Ses Event
eurex_derivatives_edci_t7_v13_1_display.trad_ses_event = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.trad_ses_event = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.trad_ses_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.trad_ses_event(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Id
eurex_derivatives_edci_t7_v13_1_size_of.market_segment_id = 4

-- Display: Market Segment Id
eurex_derivatives_edci_t7_v13_1_display.market_segment_id = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Market Segment Id: No Value"
  end

  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
eurex_derivatives_edci_t7_v13_1_dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.market_segment_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_edci_t7_v13_1_display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
eurex_derivatives_edci_t7_v13_1_size_of.trade_date = 4

-- Display: Trade Date
eurex_derivatives_edci_t7_v13_1_display.trade_date = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trade Date: No Value"
  end

  return "Trade Date: "..value
end

-- Dissect: Trade Date
eurex_derivatives_edci_t7_v13_1_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Last Fragment
eurex_derivatives_edci_t7_v13_1_size_of.last_fragment = 1

-- Display: Last Fragment
eurex_derivatives_edci_t7_v13_1_display.last_fragment = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.last_fragment = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.last_fragment
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.last_fragment(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Size: Appl Id
eurex_derivatives_edci_t7_v13_1_size_of.appl_id = 1

-- Display: Appl Id
eurex_derivatives_edci_t7_v13_1_display.appl_id = function(value)
  if value == 12 then
    return "Appl Id: Order Drop Copy (12)"
  end
  if value == 0xFF then
    return "Appl Id: No Value"
  end

  return "Appl Id: Unknown("..value..")"
end

-- Dissect: Appl Id
eurex_derivatives_edci_t7_v13_1_dissect.appl_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.appl_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.appl_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Size: Partition Id
eurex_derivatives_edci_t7_v13_1_size_of.partition_id = 2

-- Display: Partition Id
eurex_derivatives_edci_t7_v13_1_display.partition_id = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Partition Id: No Value"
  end

  return "Partition Id: "..value
end

-- Dissect: Partition Id
eurex_derivatives_edci_t7_v13_1_dissect.partition_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.partition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.partition_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Size: Party Id Executing Unit
eurex_derivatives_edci_t7_v13_1_size_of.party_id_executing_unit = 4

-- Display: Party Id Executing Unit
eurex_derivatives_edci_t7_v13_1_display.party_id_executing_unit = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Executing Unit: No Value"
  end

  return "Party Id Executing Unit: "..value
end

-- Dissect: Party Id Executing Unit
eurex_derivatives_edci_t7_v13_1_dissect.party_id_executing_unit = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.party_id_executing_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.party_id_executing_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
eurex_derivatives_edci_t7_v13_1_size_of.sending_time = 8

-- Display: Sending Time
eurex_derivatives_edci_t7_v13_1_display.sending_time = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rbc Header Comp
eurex_derivatives_edci_t7_v13_1_size_of.rbc_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.sending_time

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.party_id_executing_unit

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.partition_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.appl_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.last_fragment

  return index
end

-- Display: Rbc Header Comp
eurex_derivatives_edci_t7_v13_1_display.rbc_header_comp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rbc Header Comp
eurex_derivatives_edci_t7_v13_1_dissect.rbc_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_edci_t7_v13_1_dissect.sending_time(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_unit = eurex_derivatives_edci_t7_v13_1_dissect.party_id_executing_unit(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_edci_t7_v13_1_dissect.partition_id(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_id = eurex_derivatives_edci_t7_v13_1_dissect.appl_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_edci_t7_v13_1_dissect.last_fragment(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Comp
eurex_derivatives_edci_t7_v13_1_dissect.rbc_header_comp = function(buffer, offset, packet, parent)
  if show.rbc_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.rbc_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_1_dissect.rbc_header_comp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_1_display.rbc_header_comp(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_1_dissect.rbc_header_comp_fields(buffer, offset, packet, parent)
  end
end

-- Size: Pad 2
eurex_derivatives_edci_t7_v13_1_size_of.pad_2 = 2

-- Display: Pad 2
eurex_derivatives_edci_t7_v13_1_display.pad_2 = function(value)
  return "Pad 2: "..value
end

-- Dissect: Pad 2
eurex_derivatives_edci_t7_v13_1_dissect.pad_2 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.pad_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_1_display.pad_2(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.pad_2, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Session Status Broadcast
eurex_derivatives_edci_t7_v13_1_size_of.session_status_broadcast = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Session Status Broadcast
eurex_derivatives_edci_t7_v13_1_display.session_status_broadcast = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session Status Broadcast
eurex_derivatives_edci_t7_v13_1_dissect.session_status_broadcast_fields = function(buffer, offset, packet, parent, size_of_session_status_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 5 fields
  index, rbc_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trade_date = eurex_derivatives_edci_t7_v13_1_dissect.trade_date(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_edci_t7_v13_1_dissect.market_segment_id(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trad_ses_event = eurex_derivatives_edci_t7_v13_1_dissect.trad_ses_event(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_edci_t7_v13_1_dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Session Status Broadcast
eurex_derivatives_edci_t7_v13_1_dissect.session_status_broadcast = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_session_status_broadcast = eurex_derivatives_edci_t7_v13_1_size_of.session_status_broadcast(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.session_status_broadcast then
    local range = buffer(offset, size_of_session_status_broadcast)
    local display = eurex_derivatives_edci_t7_v13_1_display.session_status_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.session_status_broadcast, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.session_status_broadcast_fields(buffer, offset, packet, parent, size_of_session_status_broadcast)

  return offset + size_of_session_status_broadcast
end

-- Size: Pad 6
eurex_derivatives_edci_t7_v13_1_size_of.pad_6 = 6

-- Display: Pad 6
eurex_derivatives_edci_t7_v13_1_display.pad_6 = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
eurex_derivatives_edci_t7_v13_1_dissect.pad_6 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.pad_6
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_1_display.pad_6(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Size: Party Executing Firm
eurex_derivatives_edci_t7_v13_1_size_of.party_executing_firm = 5

-- Display: Party Executing Firm
eurex_derivatives_edci_t7_v13_1_display.party_executing_firm = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party Executing Firm: No Value"
  end

  return "Party Executing Firm: "..value
end

-- Dissect: Party Executing Firm
eurex_derivatives_edci_t7_v13_1_dissect.party_executing_firm = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.party_executing_firm
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.party_executing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.party_executing_firm, range, value, display)

  return offset + length, value
end

-- Size: Session Mode
eurex_derivatives_edci_t7_v13_1_size_of.session_mode = 1

-- Display: Session Mode
eurex_derivatives_edci_t7_v13_1_display.session_mode = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.session_mode = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.session_mode
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.session_mode(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.session_mode, range, value, display)

  return offset + length, value
end

-- Size: Party Id Session Id
eurex_derivatives_edci_t7_v13_1_size_of.party_id_session_id = 4

-- Display: Party Id Session Id
eurex_derivatives_edci_t7_v13_1_display.party_id_session_id = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Session Id: No Value"
  end

  return "Party Id Session Id: "..value
end

-- Dissect: Party Id Session Id
eurex_derivatives_edci_t7_v13_1_dissect.party_id_session_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.party_id_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.party_id_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.party_id_session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sessions Grp Comp
eurex_derivatives_edci_t7_v13_1_size_of.sessions_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.party_id_session_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.session_mode

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.party_executing_firm

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.pad_6

  return index
end

-- Display: Sessions Grp Comp
eurex_derivatives_edci_t7_v13_1_display.sessions_grp_comp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sessions Grp Comp
eurex_derivatives_edci_t7_v13_1_dissect.sessions_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_edci_t7_v13_1_dissect.party_id_session_id(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, session_mode = eurex_derivatives_edci_t7_v13_1_dissect.session_mode(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String Nullable
  index, party_executing_firm = eurex_derivatives_edci_t7_v13_1_dissect.party_executing_firm(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_edci_t7_v13_1_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Sessions Grp Comp
eurex_derivatives_edci_t7_v13_1_dissect.sessions_grp_comp = function(buffer, offset, packet, parent)
  if show.sessions_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.sessions_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_1_dissect.sessions_grp_comp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_1_display.sessions_grp_comp(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_1_dissect.sessions_grp_comp_fields(buffer, offset, packet, parent)
  end
end

-- Size: No Sessions
eurex_derivatives_edci_t7_v13_1_size_of.no_sessions = 2

-- Display: No Sessions
eurex_derivatives_edci_t7_v13_1_display.no_sessions = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Sessions: No Value"
  end

  return "No Sessions: "..value
end

-- Dissect: No Sessions
eurex_derivatives_edci_t7_v13_1_dissect.no_sessions = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.no_sessions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.no_sessions(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.no_sessions, range, value, display)

  return offset + length, value
end

-- Calculate size of: Notif Header Comp
eurex_derivatives_edci_t7_v13_1_size_of.notif_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.sending_time

  return index
end

-- Display: Notif Header Comp
eurex_derivatives_edci_t7_v13_1_display.notif_header_comp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Notif Header Comp
eurex_derivatives_edci_t7_v13_1_dissect.notif_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_edci_t7_v13_1_dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Notif Header Comp
eurex_derivatives_edci_t7_v13_1_dissect.notif_header_comp = function(buffer, offset, packet, parent)
  if show.notif_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.notif_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_1_dissect.notif_header_comp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_1_display.notif_header_comp(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_1_dissect.notif_header_comp_fields(buffer, offset, packet, parent)
  end
end

-- Read runtime size of: Session List Notification
eurex_derivatives_edci_t7_v13_1_size_of.session_list_notification = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Session List Notification
eurex_derivatives_edci_t7_v13_1_display.session_list_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Session List Notification
eurex_derivatives_edci_t7_v13_1_dissect.session_list_notification_fields = function(buffer, offset, packet, parent, size_of_session_list_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.notif_header_comp(buffer, index, packet, parent)

  -- No Sessions: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_sessions = eurex_derivatives_edci_t7_v13_1_dissect.no_sessions(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_edci_t7_v13_1_dissect.pad_6(buffer, index, packet, parent)

  -- Sessions Grp Comp: Struct of 4 fields
  for i = 1, no_sessions do
    index = eurex_derivatives_edci_t7_v13_1_dissect.sessions_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Session List Notification
eurex_derivatives_edci_t7_v13_1_dissect.session_list_notification = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_session_list_notification = eurex_derivatives_edci_t7_v13_1_size_of.session_list_notification(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.session_list_notification then
    local range = buffer(offset, size_of_session_list_notification)
    local display = eurex_derivatives_edci_t7_v13_1_display.session_list_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.session_list_notification, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.session_list_notification_fields(buffer, offset, packet, parent, size_of_session_list_notification)

  return offset + size_of_session_list_notification
end

-- Display: Alignment Padding
eurex_derivatives_edci_t7_v13_1_display.alignment_padding = function(value)
  return "Alignment Padding: "..value
end

-- Dissect runtime sized field: Alignment Padding
eurex_derivatives_edci_t7_v13_1_dissect.alignment_padding = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_1_display.alignment_padding(value, buffer, offset, packet, parent, size)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.alignment_padding, range, value, display)

  return offset + size
end

-- Display: Var Text
eurex_derivatives_edci_t7_v13_1_display.var_text = function(value)
  return "Var Text: "..value
end

-- Dissect runtime sized field: Var Text
eurex_derivatives_edci_t7_v13_1_dissect.var_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = eurex_derivatives_edci_t7_v13_1_display.var_text(value, buffer, offset, packet, parent, size)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.var_text, range, value, display)

  return offset + size
end

-- Size: Session Status
eurex_derivatives_edci_t7_v13_1_size_of.session_status = 1

-- Display: Session Status
eurex_derivatives_edci_t7_v13_1_display.session_status = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.session_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.session_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.session_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.session_status, range, value, display)

  return offset + length, value
end

-- Size: Var Text Len
eurex_derivatives_edci_t7_v13_1_size_of.var_text_len = 2

-- Display: Var Text Len
eurex_derivatives_edci_t7_v13_1_display.var_text_len = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Var Text Len: No Value"
  end

  return "Var Text Len: "..value
end

-- Dissect: Var Text Len
eurex_derivatives_edci_t7_v13_1_dissect.var_text_len = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.var_text_len
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.var_text_len(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.var_text_len, range, value, display)

  return offset + length, value
end

-- Size: Session Reject Reason
eurex_derivatives_edci_t7_v13_1_size_of.session_reject_reason = 4

-- Display: Session Reject Reason
eurex_derivatives_edci_t7_v13_1_display.session_reject_reason = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.session_reject_reason = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.session_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.session_reject_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Pad 3
eurex_derivatives_edci_t7_v13_1_size_of.pad_3 = 3

-- Display: Pad 3
eurex_derivatives_edci_t7_v13_1_display.pad_3 = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
eurex_derivatives_edci_t7_v13_1_dissect.pad_3 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.pad_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_1_display.pad_3(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Size: Msg Seq Num
eurex_derivatives_edci_t7_v13_1_size_of.msg_seq_num = 4

-- Display: Msg Seq Num
eurex_derivatives_edci_t7_v13_1_display.msg_seq_num = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Msg Seq Num: No Value"
  end

  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
eurex_derivatives_edci_t7_v13_1_dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Request Time
eurex_derivatives_edci_t7_v13_1_size_of.request_time = 8

-- Display: Request Time
eurex_derivatives_edci_t7_v13_1_display.request_time = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.request_time = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.request_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.request_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.request_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Response Header Comp
eurex_derivatives_edci_t7_v13_1_size_of.response_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.request_time

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.sending_time

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.msg_seq_num

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.last_fragment

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.pad_3

  return index
end

-- Display: Response Header Comp
eurex_derivatives_edci_t7_v13_1_display.response_header_comp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Response Header Comp
eurex_derivatives_edci_t7_v13_1_dissect.response_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_edci_t7_v13_1_dissect.request_time(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = eurex_derivatives_edci_t7_v13_1_dissect.sending_time(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_edci_t7_v13_1_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_edci_t7_v13_1_dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_edci_t7_v13_1_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Comp
eurex_derivatives_edci_t7_v13_1_dissect.response_header_comp = function(buffer, offset, packet, parent)
  if show.response_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.response_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_1_dissect.response_header_comp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_1_display.response_header_comp(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_1_dissect.response_header_comp_fields(buffer, offset, packet, parent)
  end
end

-- Read runtime size of: Reject
eurex_derivatives_edci_t7_v13_1_size_of.reject = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Reject
eurex_derivatives_edci_t7_v13_1_display.reject = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject
eurex_derivatives_edci_t7_v13_1_dissect.reject_fields = function(buffer, offset, packet, parent, size_of_reject)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 5 fields
  index, response_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.response_header_comp(buffer, index, packet, parent)

  -- Session Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, session_reject_reason = eurex_derivatives_edci_t7_v13_1_dissect.session_reject_reason(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = eurex_derivatives_edci_t7_v13_1_dissect.var_text_len(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_status = eurex_derivatives_edci_t7_v13_1_dissect.session_status(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String Nullable
  index = eurex_derivatives_edci_t7_v13_1_dissect.var_text(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field exists: Alignment Padding
  local alignment_padding_exists = body_len ~= index

  -- Runtime optional field: Alignment Padding
  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index = eurex_derivatives_edci_t7_v13_1_dissect.alignment_padding(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Reject
eurex_derivatives_edci_t7_v13_1_dissect.reject = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_reject = eurex_derivatives_edci_t7_v13_1_size_of.reject(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.reject then
    local range = buffer(offset, size_of_reject)
    local display = eurex_derivatives_edci_t7_v13_1_display.reject(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.reject, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.reject_fields(buffer, offset, packet, parent, size_of_reject)

  return offset + size_of_reject
end

-- Calculate size of: Partition Grp Comp
eurex_derivatives_edci_t7_v13_1_size_of.partition_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.partition_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.pad_6

  return index
end

-- Display: Partition Grp Comp
eurex_derivatives_edci_t7_v13_1_display.partition_grp_comp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partition Grp Comp
eurex_derivatives_edci_t7_v13_1_dissect.partition_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_edci_t7_v13_1_dissect.partition_id(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_edci_t7_v13_1_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Partition Grp Comp
eurex_derivatives_edci_t7_v13_1_dissect.partition_grp_comp = function(buffer, offset, packet, parent)
  if show.partition_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.partition_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_1_dissect.partition_grp_comp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_1_display.partition_grp_comp(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_1_dissect.partition_grp_comp_fields(buffer, offset, packet, parent)
  end
end

-- Size: No Partitions
eurex_derivatives_edci_t7_v13_1_size_of.no_partitions = 1

-- Display: No Partitions
eurex_derivatives_edci_t7_v13_1_display.no_partitions = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Partitions: No Value"
  end

  return "No Partitions: "..value
end

-- Dissect: No Partitions
eurex_derivatives_edci_t7_v13_1_dissect.no_partitions = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.no_partitions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.no_partitions(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.no_partitions, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Partition List Notification
eurex_derivatives_edci_t7_v13_1_size_of.partition_list_notification = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Partition List Notification
eurex_derivatives_edci_t7_v13_1_display.partition_list_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partition List Notification
eurex_derivatives_edci_t7_v13_1_dissect.partition_list_notification_fields = function(buffer, offset, packet, parent, size_of_partition_list_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.notif_header_comp(buffer, index, packet, parent)

  -- No Partitions: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_partitions = eurex_derivatives_edci_t7_v13_1_dissect.no_partitions(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_edci_t7_v13_1_dissect.pad_7(buffer, index, packet, parent)

  -- Partition Grp Comp: Struct of 2 fields
  for i = 1, no_partitions do
    index = eurex_derivatives_edci_t7_v13_1_dissect.partition_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Partition List Notification
eurex_derivatives_edci_t7_v13_1_dissect.partition_list_notification = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_partition_list_notification = eurex_derivatives_edci_t7_v13_1_size_of.partition_list_notification(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.partition_list_notification then
    local range = buffer(offset, size_of_partition_list_notification)
    local display = eurex_derivatives_edci_t7_v13_1_display.partition_list_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.partition_list_notification, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.partition_list_notification_fields(buffer, offset, packet, parent, size_of_partition_list_notification)

  return offset + size_of_partition_list_notification
end

-- Size: Fill Exec Id
eurex_derivatives_edci_t7_v13_1_size_of.fill_exec_id = 4

-- Display: Fill Exec Id
eurex_derivatives_edci_t7_v13_1_display.fill_exec_id = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Fill Exec Id: No Value"
  end

  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
eurex_derivatives_edci_t7_v13_1_dissect.fill_exec_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.fill_exec_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_edci_t7_v13_1_display.fill_exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.fill_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Fill Match Id
eurex_derivatives_edci_t7_v13_1_size_of.fill_match_id = 4

-- Display: Fill Match Id
eurex_derivatives_edci_t7_v13_1_display.fill_match_id = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Fill Match Id: No Value"
  end

  return "Fill Match Id: "..value
end

-- Dissect: Fill Match Id
eurex_derivatives_edci_t7_v13_1_dissect.fill_match_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.fill_match_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.fill_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.fill_match_id, range, value, display)

  return offset + length, value
end

-- Size: Fill Qty
eurex_derivatives_edci_t7_v13_1_size_of.fill_qty = 8

-- Display: Fill Qty
eurex_derivatives_edci_t7_v13_1_display.fill_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Fill Qty: No Value"
  end

  return "Fill Qty: "..value
end

-- Translate: Fill Qty
translate.fill_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Fill Qty
eurex_derivatives_edci_t7_v13_1_dissect.fill_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.fill_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.fill_qty(raw)
  local display = eurex_derivatives_edci_t7_v13_1_display.fill_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Size: Fill Px
eurex_derivatives_edci_t7_v13_1_size_of.fill_px = 8

-- Display: Fill Px
eurex_derivatives_edci_t7_v13_1_display.fill_px = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Fill Px: No Value"
  end

  return "Fill Px: "..value
end

-- Translate: Fill Px
translate.fill_px = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Fill Px
eurex_derivatives_edci_t7_v13_1_dissect.fill_px = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.fill_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.fill_px(raw)
  local display = eurex_derivatives_edci_t7_v13_1_display.fill_px(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fills Grp Comp
eurex_derivatives_edci_t7_v13_1_size_of.fills_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.fill_px

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.fill_qty

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.fill_match_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.fill_exec_id

  return index
end

-- Display: Fills Grp Comp
eurex_derivatives_edci_t7_v13_1_display.fills_grp_comp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fills Grp Comp
eurex_derivatives_edci_t7_v13_1_dissect.fills_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Fill Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, fill_px = eurex_derivatives_edci_t7_v13_1_dissect.fill_px(buffer, index, packet, parent)

  -- Fill Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, fill_qty = eurex_derivatives_edci_t7_v13_1_dissect.fill_qty(buffer, index, packet, parent)

  -- Fill Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, fill_match_id = eurex_derivatives_edci_t7_v13_1_dissect.fill_match_id(buffer, index, packet, parent)

  -- Fill Exec Id: 4 Byte Signed Fixed Width Integer Nullable
  index, fill_exec_id = eurex_derivatives_edci_t7_v13_1_dissect.fill_exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Grp Comp
eurex_derivatives_edci_t7_v13_1_dissect.fills_grp_comp = function(buffer, offset, packet, parent)
  if show.fills_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.fills_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_1_dissect.fills_grp_comp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_1_display.fills_grp_comp(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_1_dissect.fills_grp_comp_fields(buffer, offset, packet, parent)
  end
end

-- Size: Party End Client Identification
eurex_derivatives_edci_t7_v13_1_size_of.party_end_client_identification = 20

-- Display: Party End Client Identification
eurex_derivatives_edci_t7_v13_1_display.party_end_client_identification = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Party End Client Identification: No Value"
  end

  return "Party End Client Identification: "..value
end

-- Dissect: Party End Client Identification
eurex_derivatives_edci_t7_v13_1_dissect.party_end_client_identification = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.party_end_client_identification
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.party_end_client_identification(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.party_end_client_identification, range, value, display)

  return offset + length, value
end

-- Size: Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_size_of.fix_orig_cl_ord_id = 20

-- Display: Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_display.fix_orig_cl_ord_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Orig Cl Ord Id: No Value"
  end

  return "Fix Orig Cl Ord Id: "..value
end

-- Dissect: Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_dissect.fix_orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.fix_orig_cl_ord_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.fix_orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.fix_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_1_size_of.fix_cl_ord_id = 20

-- Display: Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_1_display.fix_cl_ord_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Fix Cl Ord Id: No Value"
  end

  return "Fix Cl Ord Id: "..value
end

-- Dissect: Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_1_dissect.fix_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.fix_cl_ord_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.fix_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.fix_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Free Text 3
eurex_derivatives_edci_t7_v13_1_size_of.free_text_3 = 12

-- Display: Free Text 3
eurex_derivatives_edci_t7_v13_1_display.free_text_3 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 3: No Value"
  end

  return "Free Text 3: "..value
end

-- Dissect: Free Text 3
eurex_derivatives_edci_t7_v13_1_dissect.free_text_3 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.free_text_3
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.free_text_3(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.free_text_3, range, value, display)

  return offset + length, value
end

-- Size: Free Text 2
eurex_derivatives_edci_t7_v13_1_size_of.free_text_2 = 12

-- Display: Free Text 2
eurex_derivatives_edci_t7_v13_1_display.free_text_2 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 2: No Value"
  end

  return "Free Text 2: "..value
end

-- Dissect: Free Text 2
eurex_derivatives_edci_t7_v13_1_dissect.free_text_2 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.free_text_2
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.free_text_2(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.free_text_2, range, value, display)

  return offset + length, value
end

-- Size: Free Text 1
eurex_derivatives_edci_t7_v13_1_size_of.free_text_1 = 12

-- Display: Free Text 1
eurex_derivatives_edci_t7_v13_1_display.free_text_1 = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text 1: No Value"
  end

  return "Free Text 1: "..value
end

-- Dissect: Free Text 1
eurex_derivatives_edci_t7_v13_1_dissect.free_text_1 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.free_text_1
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.free_text_1(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.free_text_1, range, value, display)

  return offset + length, value
end

-- Size: Cust Order Handling Inst
eurex_derivatives_edci_t7_v13_1_size_of.cust_order_handling_inst = 1

-- Display: Cust Order Handling Inst
eurex_derivatives_edci_t7_v13_1_display.cust_order_handling_inst = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.cust_order_handling_inst = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.cust_order_handling_inst
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_edci_t7_v13_1_display.cust_order_handling_inst(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Size: Crossed Indicator
eurex_derivatives_edci_t7_v13_1_size_of.crossed_indicator = 1

-- Display: Crossed Indicator
eurex_derivatives_edci_t7_v13_1_display.crossed_indicator = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.crossed_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.crossed_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.crossed_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.crossed_indicator, range, value, display)

  return offset + length, value
end

-- Size: No Fills
eurex_derivatives_edci_t7_v13_1_size_of.no_fills = 1

-- Display: No Fills
eurex_derivatives_edci_t7_v13_1_display.no_fills = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Fills: No Value"
  end

  return "No Fills: "..value
end

-- Dissect: No Fills
eurex_derivatives_edci_t7_v13_1_dissect.no_fills = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.no_fills
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.no_fills(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.no_fills, range, value, display)

  return offset + length, value
end

-- Size: Executing Trader Qualifier
eurex_derivatives_edci_t7_v13_1_size_of.executing_trader_qualifier = 1

-- Display: Executing Trader Qualifier
eurex_derivatives_edci_t7_v13_1_display.executing_trader_qualifier = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.executing_trader_qualifier = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.executing_trader_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.executing_trader_qualifier(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.executing_trader_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Party Id Investment Decision Maker Qualifier
eurex_derivatives_edci_t7_v13_1_size_of.party_id_investment_decision_maker_qualifier = 1

-- Display: Party Id Investment Decision Maker Qualifier
eurex_derivatives_edci_t7_v13_1_display.party_id_investment_decision_maker_qualifier = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.party_id_investment_decision_maker_qualifier = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.party_id_investment_decision_maker_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.party_id_investment_decision_maker_qualifier(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.party_id_investment_decision_maker_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Indicator
eurex_derivatives_edci_t7_v13_1_size_of.appl_seq_indicator = 1

-- Display: Appl Seq Indicator
eurex_derivatives_edci_t7_v13_1_display.appl_seq_indicator = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.appl_seq_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.appl_seq_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.appl_seq_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.appl_seq_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Sub Id
eurex_derivatives_edci_t7_v13_1_size_of.trading_session_sub_id = 1

-- Display: Trading Session Sub Id
eurex_derivatives_edci_t7_v13_1_display.trading_session_sub_id = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.trading_session_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.trading_session_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.trading_session_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Triggered
eurex_derivatives_edci_t7_v13_1_size_of.triggered = 1

-- Display: Triggered
eurex_derivatives_edci_t7_v13_1_display.triggered = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.triggered = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.triggered
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.triggered(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.triggered, range, value, display)

  return offset + length, value
end

-- Size: Exec Inst
eurex_derivatives_edci_t7_v13_1_size_of.exec_inst = 1

-- Display: Exec Inst
eurex_derivatives_edci_t7_v13_1_display.exec_inst = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.exec_inst = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.exec_inst
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.exec_inst(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
eurex_derivatives_edci_t7_v13_1_size_of.time_in_force = 1

-- Display: Time In Force
eurex_derivatives_edci_t7_v13_1_display.time_in_force = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Trading Capacity
eurex_derivatives_edci_t7_v13_1_size_of.trading_capacity = 1

-- Display: Trading Capacity
eurex_derivatives_edci_t7_v13_1_display.trading_capacity = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.trading_capacity = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.trading_capacity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.trading_capacity(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Size: Match Type
eurex_derivatives_edci_t7_v13_1_size_of.match_type = 1

-- Display: Match Type
eurex_derivatives_edci_t7_v13_1_display.match_type = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.match_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.match_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.match_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.match_type, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
eurex_derivatives_edci_t7_v13_1_size_of.ord_type = 1

-- Display: Ord Type
eurex_derivatives_edci_t7_v13_1_display.ord_type = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.ord_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.ord_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.ord_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Size: Side
eurex_derivatives_edci_t7_v13_1_size_of.side = 1

-- Display: Side
eurex_derivatives_edci_t7_v13_1_display.side = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.side = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.side(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Exec Type
eurex_derivatives_edci_t7_v13_1_size_of.exec_type = 1

-- Display: Exec Type
eurex_derivatives_edci_t7_v13_1_display.exec_type = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.exec_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.exec_type
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_edci_t7_v13_1_display.exec_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Size: Ord Status
eurex_derivatives_edci_t7_v13_1_size_of.ord_status = 1

-- Display: Ord Status
eurex_derivatives_edci_t7_v13_1_display.ord_status = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.ord_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.ord_status
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = eurex_derivatives_edci_t7_v13_1_display.ord_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Size: Product Complex
eurex_derivatives_edci_t7_v13_1_size_of.product_complex = 1

-- Display: Product Complex
eurex_derivatives_edci_t7_v13_1_display.product_complex = function(value)
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
  if value == 14 then
    return "Product Complex: Totalreturnfuturestrategy (14)"
  end
  if value == 0xFF then
    return "Product Complex: No Value"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
eurex_derivatives_edci_t7_v13_1_dissect.product_complex = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.product_complex
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.product_complex(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Size: Party Id Executing Trader
eurex_derivatives_edci_t7_v13_1_size_of.party_id_executing_trader = 4

-- Display: Party Id Executing Trader
eurex_derivatives_edci_t7_v13_1_display.party_id_executing_trader = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Party Id Executing Trader: No Value"
  end

  return "Party Id Executing Trader: "..value
end

-- Dissect: Party Id Executing Trader
eurex_derivatives_edci_t7_v13_1_dissect.party_id_executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.party_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.party_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Expire Date
eurex_derivatives_edci_t7_v13_1_size_of.expire_date = 4

-- Display: Expire Date
eurex_derivatives_edci_t7_v13_1_display.expire_date = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Expire Date: No Value"
  end

  return "Expire Date: "..value
end

-- Dissect: Expire Date
eurex_derivatives_edci_t7_v13_1_dissect.expire_date = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.expire_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.expire_date(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Size: Executing Trader
eurex_derivatives_edci_t7_v13_1_size_of.executing_trader = 8

-- Display: Executing Trader
eurex_derivatives_edci_t7_v13_1_display.executing_trader = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Executing Trader: No Value"
  end

  return "Executing Trader: "..value
end

-- Dissect: Executing Trader
eurex_derivatives_edci_t7_v13_1_dissect.executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Id Investment Decision Maker
eurex_derivatives_edci_t7_v13_1_size_of.party_id_investment_decision_maker = 8

-- Display: Party Id Investment Decision Maker
eurex_derivatives_edci_t7_v13_1_display.party_id_investment_decision_maker = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Party Id Investment Decision Maker: No Value"
  end

  return "Party Id Investment Decision Maker: "..value
end

-- Dissect: Party Id Investment Decision Maker
eurex_derivatives_edci_t7_v13_1_dissect.party_id_investment_decision_maker = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.party_id_investment_decision_maker
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.party_id_investment_decision_maker(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.party_id_investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Size: Party Id Client Id
eurex_derivatives_edci_t7_v13_1_size_of.party_id_client_id = 8

-- Display: Party Id Client Id
eurex_derivatives_edci_t7_v13_1_display.party_id_client_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Party Id Client Id: No Value"
  end

  return "Party Id Client Id: "..value
end

-- Dissect: Party Id Client Id
eurex_derivatives_edci_t7_v13_1_dissect.party_id_client_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.party_id_client_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.party_id_client_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.party_id_client_id, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
eurex_derivatives_edci_t7_v13_1_size_of.order_qty = 8

-- Display: Order Qty
eurex_derivatives_edci_t7_v13_1_display.order_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Order Qty: No Value"
  end

  return "Order Qty: "..value
end

-- Translate: Order Qty
translate.order_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Order Qty
eurex_derivatives_edci_t7_v13_1_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.order_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.order_qty(raw)
  local display = eurex_derivatives_edci_t7_v13_1_display.order_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Cxl Qty
eurex_derivatives_edci_t7_v13_1_size_of.cxl_qty = 8

-- Display: Cxl Qty
eurex_derivatives_edci_t7_v13_1_display.cxl_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Cxl Qty: No Value"
  end

  return "Cxl Qty: "..value
end

-- Translate: Cxl Qty
translate.cxl_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Cxl Qty
eurex_derivatives_edci_t7_v13_1_dissect.cxl_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.cxl_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.cxl_qty(raw)
  local display = eurex_derivatives_edci_t7_v13_1_display.cxl_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.cxl_qty, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
eurex_derivatives_edci_t7_v13_1_size_of.cum_qty = 8

-- Display: Cum Qty
eurex_derivatives_edci_t7_v13_1_display.cum_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Cum Qty: No Value"
  end

  return "Cum Qty: "..value
end

-- Translate: Cum Qty
translate.cum_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Cum Qty
eurex_derivatives_edci_t7_v13_1_dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.cum_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.cum_qty(raw)
  local display = eurex_derivatives_edci_t7_v13_1_display.cum_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
eurex_derivatives_edci_t7_v13_1_size_of.leaves_qty = 8

-- Display: Leaves Qty
eurex_derivatives_edci_t7_v13_1_display.leaves_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Leaves Qty: No Value"
  end

  return "Leaves Qty: "..value
end

-- Translate: Leaves Qty
translate.leaves_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Leaves Qty
eurex_derivatives_edci_t7_v13_1_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.leaves_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.leaves_qty(raw)
  local display = eurex_derivatives_edci_t7_v13_1_display.leaves_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
eurex_derivatives_edci_t7_v13_1_size_of.stop_px = 8

-- Display: Stop Px
eurex_derivatives_edci_t7_v13_1_display.stop_px = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Translate: Stop Px
translate.stop_px = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
eurex_derivatives_edci_t7_v13_1_dissect.stop_px = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.stop_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.stop_px(raw)
  local display = eurex_derivatives_edci_t7_v13_1_display.stop_px(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Size: Price
eurex_derivatives_edci_t7_v13_1_size_of.price = 8

-- Display: Price
eurex_derivatives_edci_t7_v13_1_display.price = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price
eurex_derivatives_edci_t7_v13_1_dissect.price = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = eurex_derivatives_edci_t7_v13_1_display.price(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
eurex_derivatives_edci_t7_v13_1_size_of.exec_id = 8

-- Display: Exec Id
eurex_derivatives_edci_t7_v13_1_display.exec_id = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.exec_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Security Id
eurex_derivatives_edci_t7_v13_1_size_of.security_id = 8

-- Display: Security Id
eurex_derivatives_edci_t7_v13_1_display.security_id = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
eurex_derivatives_edci_t7_v13_1_dissect.security_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_edci_t7_v13_1_display.security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_size_of.orig_cl_ord_id = 8

-- Display: Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_display.orig_cl_ord_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Orig Cl Ord Id: No Value"
  end

  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_dissect.orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Cl Ord Id
eurex_derivatives_edci_t7_v13_1_size_of.cl_ord_id = 8

-- Display: Cl Ord Id
eurex_derivatives_edci_t7_v13_1_display.cl_ord_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Cl Ord Id: No Value"
  end

  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
eurex_derivatives_edci_t7_v13_1_dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
eurex_derivatives_edci_t7_v13_1_size_of.order_id = 8

-- Display: Order Id
eurex_derivatives_edci_t7_v13_1_display.order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id: No Value"
  end

  return "Order Id: "..value
end

-- Dissect: Order Id
eurex_derivatives_edci_t7_v13_1_dissect.order_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.order_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Order Exec Report Broadcast
eurex_derivatives_edci_t7_v13_1_size_of.order_exec_report_broadcast = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Order Exec Report Broadcast
eurex_derivatives_edci_t7_v13_1_display.order_exec_report_broadcast = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Exec Report Broadcast
eurex_derivatives_edci_t7_v13_1_dissect.order_exec_report_broadcast_fields = function(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 5 fields
  index, rbc_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = eurex_derivatives_edci_t7_v13_1_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cl_ord_id = eurex_derivatives_edci_t7_v13_1_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, orig_cl_ord_id = eurex_derivatives_edci_t7_v13_1_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_edci_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_edci_t7_v13_1_dissect.exec_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_edci_t7_v13_1_dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, stop_px = eurex_derivatives_edci_t7_v13_1_dissect.stop_px(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leaves_qty = eurex_derivatives_edci_t7_v13_1_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cum_qty = eurex_derivatives_edci_t7_v13_1_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, cxl_qty = eurex_derivatives_edci_t7_v13_1_dissect.cxl_qty(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty = eurex_derivatives_edci_t7_v13_1_dissect.order_qty(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_client_id = eurex_derivatives_edci_t7_v13_1_dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_investment_decision_maker = eurex_derivatives_edci_t7_v13_1_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer Nullable
  index, executing_trader = eurex_derivatives_edci_t7_v13_1_dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_edci_t7_v13_1_dissect.market_segment_id(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, expire_date = eurex_derivatives_edci_t7_v13_1_dissect.expire_date(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_edci_t7_v13_1_dissect.party_id_session_id(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_trader = eurex_derivatives_edci_t7_v13_1_dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, product_complex = eurex_derivatives_edci_t7_v13_1_dissect.product_complex(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_edci_t7_v13_1_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_edci_t7_v13_1_dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_edci_t7_v13_1_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, ord_type = eurex_derivatives_edci_t7_v13_1_dissect.ord_type(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, match_type = eurex_derivatives_edci_t7_v13_1_dissect.match_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = eurex_derivatives_edci_t7_v13_1_dissect.trading_capacity(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = eurex_derivatives_edci_t7_v13_1_dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, exec_inst = eurex_derivatives_edci_t7_v13_1_dissect.exec_inst(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, triggered = eurex_derivatives_edci_t7_v13_1_dissect.triggered(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_session_sub_id = eurex_derivatives_edci_t7_v13_1_dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_indicator = eurex_derivatives_edci_t7_v13_1_dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_id_investment_decision_maker_qualifier = eurex_derivatives_edci_t7_v13_1_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, executing_trader_qualifier = eurex_derivatives_edci_t7_v13_1_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_fills = eurex_derivatives_edci_t7_v13_1_dissect.no_fills(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, crossed_indicator = eurex_derivatives_edci_t7_v13_1_dissect.crossed_indicator(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String Enum with 6 values
  index, cust_order_handling_inst = eurex_derivatives_edci_t7_v13_1_dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String Nullable
  index, free_text_1 = eurex_derivatives_edci_t7_v13_1_dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String Nullable
  index, free_text_2 = eurex_derivatives_edci_t7_v13_1_dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 3: 12 Byte Ascii String Nullable
  index, free_text_3 = eurex_derivatives_edci_t7_v13_1_dissect.free_text_3(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String Nullable
  index, fix_cl_ord_id = eurex_derivatives_edci_t7_v13_1_dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Fix Orig Cl Ord Id: 20 Byte Ascii String Nullable
  index, fix_orig_cl_ord_id = eurex_derivatives_edci_t7_v13_1_dissect.fix_orig_cl_ord_id(buffer, index, packet, parent)

  -- Party End Client Identification: 20 Byte Ascii String Nullable
  index, party_end_client_identification = eurex_derivatives_edci_t7_v13_1_dissect.party_end_client_identification(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_edci_t7_v13_1_dissect.pad_7(buffer, index, packet, parent)

  -- Fills Grp Comp: Struct of 4 fields
  for i = 1, no_fills do
    index = eurex_derivatives_edci_t7_v13_1_dissect.fills_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Exec Report Broadcast
eurex_derivatives_edci_t7_v13_1_dissect.order_exec_report_broadcast = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_order_exec_report_broadcast = eurex_derivatives_edci_t7_v13_1_size_of.order_exec_report_broadcast(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.order_exec_report_broadcast then
    local range = buffer(offset, size_of_order_exec_report_broadcast)
    local display = eurex_derivatives_edci_t7_v13_1_display.order_exec_report_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.order_exec_report_broadcast, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.order_exec_report_broadcast_fields(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)

  return offset + size_of_order_exec_report_broadcast
end

-- Read runtime size of: Logout Response
eurex_derivatives_edci_t7_v13_1_size_of.logout_response = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logout Response
eurex_derivatives_edci_t7_v13_1_display.logout_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response
eurex_derivatives_edci_t7_v13_1_dissect.logout_response_fields = function(buffer, offset, packet, parent, size_of_logout_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 5 fields
  index, response_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.response_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response
eurex_derivatives_edci_t7_v13_1_dissect.logout_response = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logout_response = eurex_derivatives_edci_t7_v13_1_size_of.logout_response(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logout_response then
    local range = buffer(offset, size_of_logout_response)
    local display = eurex_derivatives_edci_t7_v13_1_display.logout_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.logout_response, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.logout_response_fields(buffer, offset, packet, parent, size_of_logout_response)

  return offset + size_of_logout_response
end

-- Size: Pad 4
eurex_derivatives_edci_t7_v13_1_size_of.pad_4 = 4

-- Display: Pad 4
eurex_derivatives_edci_t7_v13_1_display.pad_4 = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
eurex_derivatives_edci_t7_v13_1_dissect.pad_4 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.pad_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_edci_t7_v13_1_display.pad_4(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Header Comp
eurex_derivatives_edci_t7_v13_1_size_of.request_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.msg_seq_num

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.pad_4

  return index
end

-- Display: Request Header Comp
eurex_derivatives_edci_t7_v13_1_display.request_header_comp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Header Comp
eurex_derivatives_edci_t7_v13_1_dissect.request_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_edci_t7_v13_1_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_edci_t7_v13_1_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Header Comp
eurex_derivatives_edci_t7_v13_1_dissect.request_header_comp = function(buffer, offset, packet, parent)
  if show.request_header_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.request_header_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_1_dissect.request_header_comp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_1_display.request_header_comp(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_1_dissect.request_header_comp_fields(buffer, offset, packet, parent)
  end
end

-- Read runtime size of: Logout Request
eurex_derivatives_edci_t7_v13_1_size_of.logout_request = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logout Request
eurex_derivatives_edci_t7_v13_1_display.logout_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Request
eurex_derivatives_edci_t7_v13_1_dissect.logout_request_fields = function(buffer, offset, packet, parent, size_of_logout_request)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.request_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Request
eurex_derivatives_edci_t7_v13_1_dissect.logout_request = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logout_request = eurex_derivatives_edci_t7_v13_1_size_of.logout_request(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logout_request then
    local range = buffer(offset, size_of_logout_request)
    local display = eurex_derivatives_edci_t7_v13_1_display.logout_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.logout_request, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.logout_request_fields(buffer, offset, packet, parent, size_of_logout_request)

  return offset + size_of_logout_request
end

-- Size: Default Cstm Appl Ver Sub Id
eurex_derivatives_edci_t7_v13_1_size_of.default_cstm_appl_ver_sub_id = 5

-- Display: Default Cstm Appl Ver Sub Id
eurex_derivatives_edci_t7_v13_1_display.default_cstm_appl_ver_sub_id = function(value)
  if value == "D0001" then
    return "Default Cstm Appl Ver Sub Id: Derivatives (D0001)"
  end

  return "Default Cstm Appl Ver Sub Id: Unknown("..value..")"
end

-- Dissect: Default Cstm Appl Ver Sub Id
eurex_derivatives_edci_t7_v13_1_dissect.default_cstm_appl_ver_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.default_cstm_appl_ver_sub_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.default_cstm_appl_ver_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.default_cstm_appl_ver_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Default Cstm Appl Ver Id
eurex_derivatives_edci_t7_v13_1_size_of.default_cstm_appl_ver_id = 30

-- Display: Default Cstm Appl Ver Id
eurex_derivatives_edci_t7_v13_1_display.default_cstm_appl_ver_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Default Cstm Appl Ver Id: No Value"
  end

  return "Default Cstm Appl Ver Id: "..value
end

-- Dissect: Default Cstm Appl Ver Id
eurex_derivatives_edci_t7_v13_1_dissect.default_cstm_appl_ver_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.default_cstm_appl_ver_id
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

  local display = eurex_derivatives_edci_t7_v13_1_display.default_cstm_appl_ver_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.default_cstm_appl_ver_id, range, value, display)

  return offset + length, value
end

-- Size: Trad Ses Mode
eurex_derivatives_edci_t7_v13_1_size_of.trad_ses_mode = 1

-- Display: Trad Ses Mode
eurex_derivatives_edci_t7_v13_1_display.trad_ses_mode = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.trad_ses_mode = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.trad_ses_mode
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.trad_ses_mode(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.trad_ses_mode, range, value, display)

  return offset + length, value
end

-- Size: Market Id
eurex_derivatives_edci_t7_v13_1_size_of.market_id = 2

-- Display: Market Id
eurex_derivatives_edci_t7_v13_1_display.market_id = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.market_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.market_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Session Instance Id
eurex_derivatives_edci_t7_v13_1_size_of.session_instance_id = 4

-- Display: Session Instance Id
eurex_derivatives_edci_t7_v13_1_display.session_instance_id = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Session Instance Id: No Value"
  end

  return "Session Instance Id: "..value
end

-- Dissect: Session Instance Id
eurex_derivatives_edci_t7_v13_1_dissect.session_instance_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.session_instance_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.session_instance_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.session_instance_id, range, value, display)

  return offset + length, value
end

-- Size: Heart Bt Int
eurex_derivatives_edci_t7_v13_1_size_of.heart_bt_int = 4

-- Display: Heart Bt Int
eurex_derivatives_edci_t7_v13_1_display.heart_bt_int = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Heart Bt Int: No Value"
  end

  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
eurex_derivatives_edci_t7_v13_1_dissect.heart_bt_int = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.heart_bt_int
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.heart_bt_int(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Logon Response
eurex_derivatives_edci_t7_v13_1_size_of.logon_response = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logon Response
eurex_derivatives_edci_t7_v13_1_display.logon_response = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response
eurex_derivatives_edci_t7_v13_1_dissect.logon_response_fields = function(buffer, offset, packet, parent, size_of_logon_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 5 fields
  index, response_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.response_header_comp(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer Nullable
  index, heart_bt_int = eurex_derivatives_edci_t7_v13_1_dissect.heart_bt_int(buffer, index, packet, parent)

  -- Session Instance Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, session_instance_id = eurex_derivatives_edci_t7_v13_1_dissect.session_instance_id(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = eurex_derivatives_edci_t7_v13_1_dissect.market_id(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trad_ses_mode = eurex_derivatives_edci_t7_v13_1_dissect.trad_ses_mode(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = eurex_derivatives_edci_t7_v13_1_dissect.default_cstm_appl_ver_id(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Sub Id: 5 Byte Ascii String Enum with 1 values
  index, default_cstm_appl_ver_sub_id = eurex_derivatives_edci_t7_v13_1_dissect.default_cstm_appl_ver_sub_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response
eurex_derivatives_edci_t7_v13_1_dissect.logon_response = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logon_response = eurex_derivatives_edci_t7_v13_1_size_of.logon_response(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logon_response then
    local range = buffer(offset, size_of_logon_response)
    local display = eurex_derivatives_edci_t7_v13_1_display.logon_response(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.logon_response, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.logon_response_fields(buffer, offset, packet, parent, size_of_logon_response)

  return offset + size_of_logon_response
end

-- Size: Password
eurex_derivatives_edci_t7_v13_1_size_of.password = 32

-- Display: Password
eurex_derivatives_edci_t7_v13_1_display.password = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
eurex_derivatives_edci_t7_v13_1_dissect.password = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.password
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

  local display = eurex_derivatives_edci_t7_v13_1_display.password(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.password, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Logon Request
eurex_derivatives_edci_t7_v13_1_size_of.logon_request = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Logon Request
eurex_derivatives_edci_t7_v13_1_display.logon_request = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request
eurex_derivatives_edci_t7_v13_1_dissect.logon_request_fields = function(buffer, offset, packet, parent, size_of_logon_request)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.request_header_comp(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer Nullable
  index, heart_bt_int = eurex_derivatives_edci_t7_v13_1_dissect.heart_bt_int(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_edci_t7_v13_1_dissect.party_id_session_id(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String Nullable
  index, default_cstm_appl_ver_id = eurex_derivatives_edci_t7_v13_1_dissect.default_cstm_appl_ver_id(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String Nullable
  index, password = eurex_derivatives_edci_t7_v13_1_dissect.password(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request
eurex_derivatives_edci_t7_v13_1_dissect.logon_request = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_logon_request = eurex_derivatives_edci_t7_v13_1_size_of.logon_request(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.logon_request then
    local range = buffer(offset, size_of_logon_request)
    local display = eurex_derivatives_edci_t7_v13_1_display.logon_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.logon_request, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.logon_request_fields(buffer, offset, packet, parent, size_of_logon_request)

  return offset + size_of_logon_request
end

-- Read runtime size of: Heartbeat Notification
eurex_derivatives_edci_t7_v13_1_size_of.heartbeat_notification = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Heartbeat Notification
eurex_derivatives_edci_t7_v13_1_display.heartbeat_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Notification
eurex_derivatives_edci_t7_v13_1_dissect.heartbeat_notification_fields = function(buffer, offset, packet, parent, size_of_heartbeat_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.notif_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Notification
eurex_derivatives_edci_t7_v13_1_dissect.heartbeat_notification = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat_notification = eurex_derivatives_edci_t7_v13_1_size_of.heartbeat_notification(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat_notification then
    local range = buffer(offset, size_of_heartbeat_notification)
    local display = eurex_derivatives_edci_t7_v13_1_display.heartbeat_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.heartbeat_notification, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.heartbeat_notification_fields(buffer, offset, packet, parent, size_of_heartbeat_notification)

  return offset + size_of_heartbeat_notification
end

-- Read runtime size of: Heartbeat
eurex_derivatives_edci_t7_v13_1_size_of.heartbeat = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Heartbeat
eurex_derivatives_edci_t7_v13_1_display.heartbeat = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
eurex_derivatives_edci_t7_v13_1_dissect.heartbeat_fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
eurex_derivatives_edci_t7_v13_1_dissect.heartbeat = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_heartbeat = eurex_derivatives_edci_t7_v13_1_size_of.heartbeat(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, size_of_heartbeat)
    local display = eurex_derivatives_edci_t7_v13_1_display.heartbeat(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.heartbeat, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.heartbeat_fields(buffer, offset, packet, parent, size_of_heartbeat)

  return offset + size_of_heartbeat
end

-- Read runtime size of: Forced Logout Notification
eurex_derivatives_edci_t7_v13_1_size_of.forced_logout_notification = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Forced Logout Notification
eurex_derivatives_edci_t7_v13_1_display.forced_logout_notification = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Forced Logout Notification
eurex_derivatives_edci_t7_v13_1_dissect.forced_logout_notification_fields = function(buffer, offset, packet, parent, size_of_forced_logout_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.notif_header_comp(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, var_text_len = eurex_derivatives_edci_t7_v13_1_dissect.var_text_len(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String Nullable
  index = eurex_derivatives_edci_t7_v13_1_dissect.var_text(buffer, index, packet, parent, var_text_len)

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Runtime optional field exists: Alignment Padding
  local alignment_padding_exists = body_len ~= index

  -- Runtime optional field: Alignment Padding
  if alignment_padding_exists then

    -- Runtime Size Of: Alignment Padding
    local size_of_alignment_padding = body_len - index

    -- Alignment Padding: 0 Byte
    index = eurex_derivatives_edci_t7_v13_1_dissect.alignment_padding(buffer, index, packet, parent, size_of_alignment_padding)
  end

  return index
end

-- Dissect: Forced Logout Notification
eurex_derivatives_edci_t7_v13_1_dissect.forced_logout_notification = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_forced_logout_notification = eurex_derivatives_edci_t7_v13_1_size_of.forced_logout_notification(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.forced_logout_notification then
    local range = buffer(offset, size_of_forced_logout_notification)
    local display = eurex_derivatives_edci_t7_v13_1_display.forced_logout_notification(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.forced_logout_notification, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.forced_logout_notification_fields(buffer, offset, packet, parent, size_of_forced_logout_notification)

  return offset + size_of_forced_logout_notification
end

-- Size: Affected Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_size_of.affected_fix_orig_cl_ord_id = 20

-- Display: Affected Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_display.affected_fix_orig_cl_ord_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Affected Fix Orig Cl Ord Id: No Value"
  end

  return "Affected Fix Orig Cl Ord Id: "..value
end

-- Dissect: Affected Fix Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_dissect.affected_fix_orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.affected_fix_orig_cl_ord_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.affected_fix_orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.affected_fix_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Affected Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_1_size_of.affected_fix_cl_ord_id = 20

-- Display: Affected Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_1_display.affected_fix_cl_ord_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Affected Fix Cl Ord Id: No Value"
  end

  return "Affected Fix Cl Ord Id: "..value
end

-- Dissect: Affected Fix Cl Ord Id
eurex_derivatives_edci_t7_v13_1_dissect.affected_fix_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.affected_fix_cl_ord_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_edci_t7_v13_1_display.affected_fix_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.affected_fix_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Affected Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_size_of.affected_orig_cl_ord_id = 8

-- Display: Affected Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_display.affected_orig_cl_ord_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Affected Orig Cl Ord Id: No Value"
  end

  return "Affected Orig Cl Ord Id: "..value
end

-- Dissect: Affected Orig Cl Ord Id
eurex_derivatives_edci_t7_v13_1_dissect.affected_orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.affected_orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.affected_orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.affected_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Affected Cl Ord Id
eurex_derivatives_edci_t7_v13_1_size_of.affected_cl_ord_id = 8

-- Display: Affected Cl Ord Id
eurex_derivatives_edci_t7_v13_1_display.affected_cl_ord_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Affected Cl Ord Id: No Value"
  end

  return "Affected Cl Ord Id: "..value
end

-- Dissect: Affected Cl Ord Id
eurex_derivatives_edci_t7_v13_1_dissect.affected_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.affected_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.affected_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.affected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Affected Order Id
eurex_derivatives_edci_t7_v13_1_size_of.affected_order_id = 8

-- Display: Affected Order Id
eurex_derivatives_edci_t7_v13_1_display.affected_order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Affected Order Id: No Value"
  end

  return "Affected Order Id: "..value
end

-- Dissect: Affected Order Id
eurex_derivatives_edci_t7_v13_1_dissect.affected_order_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.affected_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_edci_t7_v13_1_display.affected_order_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.affected_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Affected Ord Grp Comp
eurex_derivatives_edci_t7_v13_1_size_of.affected_ord_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.affected_order_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.affected_cl_ord_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.affected_orig_cl_ord_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.party_id_session_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.party_id_executing_trader

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.ord_status

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.exec_type

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.affected_fix_cl_ord_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.affected_fix_orig_cl_ord_id

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.pad_6

  return index
end

-- Display: Affected Ord Grp Comp
eurex_derivatives_edci_t7_v13_1_display.affected_ord_grp_comp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Affected Ord Grp Comp
eurex_derivatives_edci_t7_v13_1_dissect.affected_ord_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Affected Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, affected_order_id = eurex_derivatives_edci_t7_v13_1_dissect.affected_order_id(buffer, index, packet, parent)

  -- Affected Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, affected_cl_ord_id = eurex_derivatives_edci_t7_v13_1_dissect.affected_cl_ord_id(buffer, index, packet, parent)

  -- Affected Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, affected_orig_cl_ord_id = eurex_derivatives_edci_t7_v13_1_dissect.affected_orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_edci_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_session_id = eurex_derivatives_edci_t7_v13_1_dissect.party_id_session_id(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer Nullable
  index, party_id_executing_trader = eurex_derivatives_edci_t7_v13_1_dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_derivatives_edci_t7_v13_1_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_derivatives_edci_t7_v13_1_dissect.exec_type(buffer, index, packet, parent)

  -- Affected Fix Cl Ord Id: 20 Byte Ascii String Nullable
  index, affected_fix_cl_ord_id = eurex_derivatives_edci_t7_v13_1_dissect.affected_fix_cl_ord_id(buffer, index, packet, parent)

  -- Affected Fix Orig Cl Ord Id: 20 Byte Ascii String Nullable
  index, affected_fix_orig_cl_ord_id = eurex_derivatives_edci_t7_v13_1_dissect.affected_fix_orig_cl_ord_id(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_edci_t7_v13_1_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Affected Ord Grp Comp
eurex_derivatives_edci_t7_v13_1_dissect.affected_ord_grp_comp = function(buffer, offset, packet, parent)
  if show.affected_ord_grp_comp then
    -- Optionally add element to protocol tree
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.affected_ord_grp_comp, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_1_dissect.affected_ord_grp_comp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_1_display.affected_ord_grp_comp(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_1_dissect.affected_ord_grp_comp_fields(buffer, offset, packet, parent)
  end
end

-- Size: No Affected Orders
eurex_derivatives_edci_t7_v13_1_size_of.no_affected_orders = 2

-- Display: No Affected Orders
eurex_derivatives_edci_t7_v13_1_display.no_affected_orders = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "No Affected Orders: No Value"
  end

  return "No Affected Orders: "..value
end

-- Dissect: No Affected Orders
eurex_derivatives_edci_t7_v13_1_dissect.no_affected_orders = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.no_affected_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.no_affected_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.no_affected_orders, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Delete Order Broadcast
eurex_derivatives_edci_t7_v13_1_size_of.delete_order_broadcast = function(buffer, offset)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  return body_len - 6
end

-- Display: Delete Order Broadcast
eurex_derivatives_edci_t7_v13_1_display.delete_order_broadcast = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Broadcast
eurex_derivatives_edci_t7_v13_1_dissect.delete_order_broadcast_fields = function(buffer, offset, packet, parent, size_of_delete_order_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 5 fields
  index, rbc_header_comp = eurex_derivatives_edci_t7_v13_1_dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_edci_t7_v13_1_dissect.exec_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_edci_t7_v13_1_dissect.market_segment_id(buffer, index, packet, parent)

  -- No Affected Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, no_affected_orders = eurex_derivatives_edci_t7_v13_1_dissect.no_affected_orders(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_edci_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Affected Ord Grp Comp: Struct of 11 fields
  for i = 1, no_affected_orders do
    index = eurex_derivatives_edci_t7_v13_1_dissect.affected_ord_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delete Order Broadcast
eurex_derivatives_edci_t7_v13_1_dissect.delete_order_broadcast = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_delete_order_broadcast = eurex_derivatives_edci_t7_v13_1_size_of.delete_order_broadcast(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.delete_order_broadcast then
    local range = buffer(offset, size_of_delete_order_broadcast)
    local display = eurex_derivatives_edci_t7_v13_1_display.delete_order_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.delete_order_broadcast, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.delete_order_broadcast_fields(buffer, offset, packet, parent, size_of_delete_order_broadcast)

  return offset + size_of_delete_order_broadcast
end

-- Calculate runtime size of: Payload
eurex_derivatives_edci_t7_v13_1_size_of.payload = function(buffer, offset, template_id)
  -- Size of Delete Order Broadcast
  if template_id == 10902 then
    return eurex_derivatives_edci_t7_v13_1_size_of.delete_order_broadcast(buffer, offset)
  end
  -- Size of Forced Logout Notification
  if template_id == 10012 then
    return eurex_derivatives_edci_t7_v13_1_size_of.forced_logout_notification(buffer, offset)
  end
  -- Size of Heartbeat
  if template_id == 10011 then
    return eurex_derivatives_edci_t7_v13_1_size_of.heartbeat(buffer, offset)
  end
  -- Size of Heartbeat Notification
  if template_id == 10023 then
    return eurex_derivatives_edci_t7_v13_1_size_of.heartbeat_notification(buffer, offset)
  end
  -- Size of Logon Request
  if template_id == 10000 then
    return eurex_derivatives_edci_t7_v13_1_size_of.logon_request(buffer, offset)
  end
  -- Size of Logon Response
  if template_id == 10001 then
    return eurex_derivatives_edci_t7_v13_1_size_of.logon_response(buffer, offset)
  end
  -- Size of Logout Request
  if template_id == 10002 then
    return eurex_derivatives_edci_t7_v13_1_size_of.logout_request(buffer, offset)
  end
  -- Size of Logout Response
  if template_id == 10003 then
    return eurex_derivatives_edci_t7_v13_1_size_of.logout_response(buffer, offset)
  end
  -- Size of Order Exec Report Broadcast
  if template_id == 10901 then
    return eurex_derivatives_edci_t7_v13_1_size_of.order_exec_report_broadcast(buffer, offset)
  end
  -- Size of Partition List Notification
  if template_id == 10037 then
    return eurex_derivatives_edci_t7_v13_1_size_of.partition_list_notification(buffer, offset)
  end
  -- Size of Reject
  if template_id == 10010 then
    return eurex_derivatives_edci_t7_v13_1_size_of.reject(buffer, offset)
  end
  -- Size of Session List Notification
  if template_id == 10036 then
    return eurex_derivatives_edci_t7_v13_1_size_of.session_list_notification(buffer, offset)
  end
  -- Size of Session Status Broadcast
  if template_id == 10903 then
    return eurex_derivatives_edci_t7_v13_1_size_of.session_status_broadcast(buffer, offset)
  end

  return 0
end

-- Display: Payload
eurex_derivatives_edci_t7_v13_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
eurex_derivatives_edci_t7_v13_1_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Delete Order Broadcast
  if template_id == 10902 then
    return eurex_derivatives_edci_t7_v13_1_dissect.delete_order_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Forced Logout Notification
  if template_id == 10012 then
    return eurex_derivatives_edci_t7_v13_1_dissect.forced_logout_notification(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if template_id == 10011 then
    return eurex_derivatives_edci_t7_v13_1_dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Notification
  if template_id == 10023 then
    return eurex_derivatives_edci_t7_v13_1_dissect.heartbeat_notification(buffer, offset, packet, parent)
  end
  -- Dissect Logon Request
  if template_id == 10000 then
    return eurex_derivatives_edci_t7_v13_1_dissect.logon_request(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response
  if template_id == 10001 then
    return eurex_derivatives_edci_t7_v13_1_dissect.logon_response(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if template_id == 10002 then
    return eurex_derivatives_edci_t7_v13_1_dissect.logout_request(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response
  if template_id == 10003 then
    return eurex_derivatives_edci_t7_v13_1_dissect.logout_response(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Report Broadcast
  if template_id == 10901 then
    return eurex_derivatives_edci_t7_v13_1_dissect.order_exec_report_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Partition List Notification
  if template_id == 10037 then
    return eurex_derivatives_edci_t7_v13_1_dissect.partition_list_notification(buffer, offset, packet, parent)
  end
  -- Dissect Reject
  if template_id == 10010 then
    return eurex_derivatives_edci_t7_v13_1_dissect.reject(buffer, offset, packet, parent)
  end
  -- Dissect Session List Notification
  if template_id == 10036 then
    return eurex_derivatives_edci_t7_v13_1_dissect.session_list_notification(buffer, offset, packet, parent)
  end
  -- Dissect Session Status Broadcast
  if template_id == 10903 then
    return eurex_derivatives_edci_t7_v13_1_dissect.session_status_broadcast(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
eurex_derivatives_edci_t7_v13_1_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return eurex_derivatives_edci_t7_v13_1_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = eurex_derivatives_edci_t7_v13_1_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = eurex_derivatives_edci_t7_v13_1_display.payload(buffer, packet, parent)
  local element = parent:add(eurex_derivatives_edci_t7_v13_1.fields.payload, range, display)

  return eurex_derivatives_edci_t7_v13_1_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Template Id
eurex_derivatives_edci_t7_v13_1_size_of.template_id = 2

-- Display: Template Id
eurex_derivatives_edci_t7_v13_1_display.template_id = function(value)
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
eurex_derivatives_edci_t7_v13_1_dissect.template_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.template_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Body Len
eurex_derivatives_edci_t7_v13_1_size_of.body_len = 4

-- Display: Body Len
eurex_derivatives_edci_t7_v13_1_display.body_len = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Body Len: No Value"
  end

  return "Body Len: "..value
end

-- Dissect: Body Len
eurex_derivatives_edci_t7_v13_1_dissect.body_len = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_edci_t7_v13_1_size_of.body_len
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_edci_t7_v13_1_display.body_len(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_edci_t7_v13_1.fields.body_len, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
eurex_derivatives_edci_t7_v13_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.body_len

  index = index + eurex_derivatives_edci_t7_v13_1_size_of.template_id

  return index
end

-- Display: Message Header
eurex_derivatives_edci_t7_v13_1_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
eurex_derivatives_edci_t7_v13_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer Nullable
  index, body_len = eurex_derivatives_edci_t7_v13_1_dissect.body_len(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index, template_id = eurex_derivatives_edci_t7_v13_1_dissect.template_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
eurex_derivatives_edci_t7_v13_1_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.message_header, buffer(offset, 0))
    local index = eurex_derivatives_edci_t7_v13_1_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = eurex_derivatives_edci_t7_v13_1_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return eurex_derivatives_edci_t7_v13_1_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
eurex_derivatives_edci_t7_v13_1_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
eurex_derivatives_edci_t7_v13_1_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = eurex_derivatives_edci_t7_v13_1_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 13 branches
  index = eurex_derivatives_edci_t7_v13_1_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
eurex_derivatives_edci_t7_v13_1_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = eurex_derivatives_edci_t7_v13_1_display.message(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_edci_t7_v13_1.fields.message, range, display)
  end

  eurex_derivatives_edci_t7_v13_1_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < eurex_derivatives_edci_t7_v13_1_size_of.message_header(buffer, index) then
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

-- Dissect Packet
eurex_derivatives_edci_t7_v13_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = eurex_derivatives_edci_t7_v13_1_dissect.message(buffer, index, packet, parent, size_of_message)
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
function eurex_derivatives_edci_t7_v13_1.init()
end

-- Dissector for Eurex Derivatives Edci T7 13.1
function eurex_derivatives_edci_t7_v13_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = eurex_derivatives_edci_t7_v13_1.name

  -- Dissect protocol
  local protocol = parent:add(eurex_derivatives_edci_t7_v13_1, buffer(), eurex_derivatives_edci_t7_v13_1.description, "("..buffer:len().." Bytes)")
  return eurex_derivatives_edci_t7_v13_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, eurex_derivatives_edci_t7_v13_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.eurex_derivatives_edci_t7_v13_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Eurex Derivatives Edci T7 13.1
local function eurex_derivatives_edci_t7_v13_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.eurex_derivatives_edci_t7_v13_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = eurex_derivatives_edci_t7_v13_1
  eurex_derivatives_edci_t7_v13_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Derivatives Edci T7 13.1
eurex_derivatives_edci_t7_v13_1:register_heuristic("tcp", eurex_derivatives_edci_t7_v13_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 13.1
--   Date: Thursday, March 6, 2025
--   Specification: T7_R.13.1_Enhanced_Drop_Copy_Interface_-_Derivatives_Message_Reference_Version_1.pdf
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
