-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Cash Eti T7 6.0 Protocol
local eurex_cash_eti_t7_v6_0 = Proto("Eurex.Cash.Eti.T7.v6.0.Lua", "Eurex Cash Eti T7 6.0")

-- Component Tables
local show = {}
local format = {}
local eurex_cash_eti_t7_v6_0_display = {}
local eurex_cash_eti_t7_v6_0_dissect = {}
local eurex_cash_eti_t7_v6_0_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex Cash Eti T7 6.0 Fields
eurex_cash_eti_t7_v6_0.fields.account = ProtoField.new("Account", "eurex.cash.eti.t7.v6.0.account", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.affected_ord_grp_comp = ProtoField.new("Affected Ord Grp Comp", "eurex.cash.eti.t7.v6.0.affectedordgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.affected_order_id = ProtoField.new("Affected Order Id", "eurex.cash.eti.t7.v6.0.affectedorderid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.affected_orig_cl_ord_id = ProtoField.new("Affected Orig Cl Ord Id", "eurex.cash.eti.t7.v6.0.affectedorigclordid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.appl_beg_msg_id = ProtoField.new("Appl Beg Msg Id", "eurex.cash.eti.t7.v6.0.applbegmsgid", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.appl_beg_seq_num = ProtoField.new("Appl Beg Seq Num", "eurex.cash.eti.t7.v6.0.applbegseqnum", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.appl_end_msg_id = ProtoField.new("Appl End Msg Id", "eurex.cash.eti.t7.v6.0.applendmsgid", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.appl_end_seq_num = ProtoField.new("Appl End Seq Num", "eurex.cash.eti.t7.v6.0.applendseqnum", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.appl_id = ProtoField.new("Appl Id", "eurex.cash.eti.t7.v6.0.applid", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.appl_id_status = ProtoField.new("Appl Id Status", "eurex.cash.eti.t7.v6.0.applidstatus", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.appl_msg_id = ProtoField.new("Appl Msg Id", "eurex.cash.eti.t7.v6.0.applmsgid", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.appl_resend_flag = ProtoField.new("Appl Resend Flag", "eurex.cash.eti.t7.v6.0.applresendflag", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.appl_seq_indicator = ProtoField.new("Appl Seq Indicator", "eurex.cash.eti.t7.v6.0.applseqindicator", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "eurex.cash.eti.t7.v6.0.applseqnum", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.appl_seq_status = ProtoField.new("Appl Seq Status", "eurex.cash.eti.t7.v6.0.applseqstatus", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.appl_seq_trade_date = ProtoField.new("Appl Seq Trade Date", "eurex.cash.eti.t7.v6.0.applseqtradedate", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.appl_sub_id = ProtoField.new("Appl Sub Id", "eurex.cash.eti.t7.v6.0.applsubid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.appl_total_message_count = ProtoField.new("Appl Total Message Count", "eurex.cash.eti.t7.v6.0.appltotalmessagecount", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.appl_usage_orders = ProtoField.new("Appl Usage Orders", "eurex.cash.eti.t7.v6.0.applusageorders", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.appl_usage_quotes = ProtoField.new("Appl Usage Quotes", "eurex.cash.eti.t7.v6.0.applusagequotes", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.application_system_name = ProtoField.new("Application System Name", "eurex.cash.eti.t7.v6.0.applicationsystemname", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.application_system_vendor = ProtoField.new("Application System Vendor", "eurex.cash.eti.t7.v6.0.applicationsystemvendor", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.application_system_version = ProtoField.new("Application System Version", "eurex.cash.eti.t7.v6.0.applicationsystemversion", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.best_quote_execution_report = ProtoField.new("Best Quote Execution Report", "eurex.cash.eti.t7.v6.0.bestquoteexecutionreport", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.best_quote_response = ProtoField.new("Best Quote Response", "eurex.cash.eti.t7.v6.0.bestquoteresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.bid_cxl_size = ProtoField.new("Bid Cxl Size", "eurex.cash.eti.t7.v6.0.bidcxlsize", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.bid_px = ProtoField.new("Bid Px", "eurex.cash.eti.t7.v6.0.bidpx", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.bid_size = ProtoField.new("Bid Size", "eurex.cash.eti.t7.v6.0.bidsize", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.body_len = ProtoField.new("Body Len", "eurex.cash.eti.t7.v6.0.bodylen", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.broadcast_error_notification = ProtoField.new("Broadcast Error Notification", "eurex.cash.eti.t7.v6.0.broadcasterrornotification", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "eurex.cash.eti.t7.v6.0.clordid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.cross_request = ProtoField.new("Cross Request", "eurex.cash.eti.t7.v6.0.crossrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.cross_request_response = ProtoField.new("Cross Request Response", "eurex.cash.eti.t7.v6.0.crossrequestresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.crossed_indicator = ProtoField.new("Crossed Indicator", "eurex.cash.eti.t7.v6.0.crossedindicator", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.cum_qty = ProtoField.new("Cum Qty", "eurex.cash.eti.t7.v6.0.cumqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.currency = ProtoField.new("Currency", "eurex.cash.eti.t7.v6.0.currency", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.cxl_qty = ProtoField.new("Cxl Qty", "eurex.cash.eti.t7.v6.0.cxlqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.default_cstm_appl_ver_id = ProtoField.new("Default Cstm Appl Ver Id", "eurex.cash.eti.t7.v6.0.defaultcstmapplverid", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.default_cstm_appl_ver_sub_id = ProtoField.new("Default Cstm Appl Ver Sub Id", "eurex.cash.eti.t7.v6.0.defaultcstmapplversubid", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_all_order_broadcast = ProtoField.new("Delete All Order Broadcast", "eurex.cash.eti.t7.v6.0.deleteallorderbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_all_order_nr_response = ProtoField.new("Delete All Order Nr Response", "eurex.cash.eti.t7.v6.0.deleteallordernrresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_all_order_quote_event_broadcast = ProtoField.new("Delete All Order Quote Event Broadcast", "eurex.cash.eti.t7.v6.0.deleteallorderquoteeventbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_all_order_request = ProtoField.new("Delete All Order Request", "eurex.cash.eti.t7.v6.0.deleteallorderrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_all_order_response = ProtoField.new("Delete All Order Response", "eurex.cash.eti.t7.v6.0.deleteallorderresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_all_quote_broadcast = ProtoField.new("Delete All Quote Broadcast", "eurex.cash.eti.t7.v6.0.deleteallquotebroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_all_quote_request = ProtoField.new("Delete All Quote Request", "eurex.cash.eti.t7.v6.0.deleteallquoterequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_all_quote_response = ProtoField.new("Delete All Quote Response", "eurex.cash.eti.t7.v6.0.deleteallquoteresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_order_broadcast = ProtoField.new("Delete Order Broadcast", "eurex.cash.eti.t7.v6.0.deleteorderbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_order_nr_response = ProtoField.new("Delete Order Nr Response", "eurex.cash.eti.t7.v6.0.deleteordernrresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_order_response = ProtoField.new("Delete Order Response", "eurex.cash.eti.t7.v6.0.deleteorderresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delete_order_single_request = ProtoField.new("Delete Order Single Request", "eurex.cash.eti.t7.v6.0.deleteordersinglerequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.delivery_type = ProtoField.new("Delivery Type", "eurex.cash.eti.t7.v6.0.deliverytype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.display_high_qty = ProtoField.new("Display High Qty", "eurex.cash.eti.t7.v6.0.displayhighqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.display_low_qty = ProtoField.new("Display Low Qty", "eurex.cash.eti.t7.v6.0.displaylowqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.display_qty = ProtoField.new("Display Qty", "eurex.cash.eti.t7.v6.0.displayqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.enrichment_rule_id = ProtoField.new("Enrichment Rule Id", "eurex.cash.eti.t7.v6.0.enrichmentruleid", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.enrichment_rules_grp_comp = ProtoField.new("Enrichment Rules Grp Comp", "eurex.cash.eti.t7.v6.0.enrichmentrulesgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.enter_best_quote_request = ProtoField.new("Enter Best Quote Request", "eurex.cash.eti.t7.v6.0.enterbestquoterequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.ex_destination_type = ProtoField.new("Ex Destination Type", "eurex.cash.eti.t7.v6.0.exdestinationtype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.exec_id = ProtoField.new("Exec Id", "eurex.cash.eti.t7.v6.0.execid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.exec_inst = ProtoField.new("Exec Inst", "eurex.cash.eti.t7.v6.0.execinst", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "eurex.cash.eti.t7.v6.0.execrestatementreason", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.exec_type = ProtoField.new("Exec Type", "eurex.cash.eti.t7.v6.0.exectype", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.executing_trader = ProtoField.new("Executing Trader", "eurex.cash.eti.t7.v6.0.executingtrader", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.executing_trader_qualifier = ProtoField.new("Executing Trader Qualifier", "eurex.cash.eti.t7.v6.0.executingtraderqualifier", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.expire_date = ProtoField.new("Expire Date", "eurex.cash.eti.t7.v6.0.expiredate", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.extended_deletion_report = ProtoField.new("Extended Deletion Report", "eurex.cash.eti.t7.v6.0.extendeddeletionreport", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "eurex.cash.eti.t7.v6.0.fillexecid", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.fill_liquidity_ind = ProtoField.new("Fill Liquidity Ind", "eurex.cash.eti.t7.v6.0.fillliquidityind", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.fill_match_id = ProtoField.new("Fill Match Id", "eurex.cash.eti.t7.v6.0.fillmatchid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.fill_px = ProtoField.new("Fill Px", "eurex.cash.eti.t7.v6.0.fillpx", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.fill_qty = ProtoField.new("Fill Qty", "eurex.cash.eti.t7.v6.0.fillqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.fills_grp_comp = ProtoField.new("Fills Grp Comp", "eurex.cash.eti.t7.v6.0.fillsgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.fix_cl_ord_id = ProtoField.new("Fix Cl Ord Id", "eurex.cash.eti.t7.v6.0.fixclordid", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.fix_engine_name = ProtoField.new("Fix Engine Name", "eurex.cash.eti.t7.v6.0.fixenginename", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.fix_engine_vendor = ProtoField.new("Fix Engine Vendor", "eurex.cash.eti.t7.v6.0.fixenginevendor", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.fix_engine_version = ProtoField.new("Fix Engine Version", "eurex.cash.eti.t7.v6.0.fixengineversion", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.forced_logout_notification = ProtoField.new("Forced Logout Notification", "eurex.cash.eti.t7.v6.0.forcedlogoutnotification", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.forced_user_logout_notification = ProtoField.new("Forced User Logout Notification", "eurex.cash.eti.t7.v6.0.forceduserlogoutnotification", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.free_text_1 = ProtoField.new("Free Text 1", "eurex.cash.eti.t7.v6.0.freetext1", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.free_text_2 = ProtoField.new("Free Text 2", "eurex.cash.eti.t7.v6.0.freetext2", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.free_text_4 = ProtoField.new("Free Text 4", "eurex.cash.eti.t7.v6.0.freetext4", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.gateway_id = ProtoField.new("Gateway Id", "eurex.cash.eti.t7.v6.0.gatewayid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.gateway_request = ProtoField.new("Gateway Request", "eurex.cash.eti.t7.v6.0.gatewayrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.gateway_response = ProtoField.new("Gateway Response", "eurex.cash.eti.t7.v6.0.gatewayresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.gateway_status = ProtoField.new("Gateway Status", "eurex.cash.eti.t7.v6.0.gatewaystatus", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.gateway_sub_id = ProtoField.new("Gateway Sub Id", "eurex.cash.eti.t7.v6.0.gatewaysubid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.headline = ProtoField.new("Headline", "eurex.cash.eti.t7.v6.0.headline", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.heart_bt_int = ProtoField.new("Heart Bt Int", "eurex.cash.eti.t7.v6.0.heartbtint", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.cash.eti.t7.v6.0.heartbeat", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.heartbeat_notification = ProtoField.new("Heartbeat Notification", "eurex.cash.eti.t7.v6.0.heartbeatnotification", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.inquire_enrichment_rule_id_list_request = ProtoField.new("Inquire Enrichment Rule Id List Request", "eurex.cash.eti.t7.v6.0.inquireenrichmentruleidlistrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.inquire_enrichment_rule_id_list_response = ProtoField.new("Inquire Enrichment Rule Id List Response", "eurex.cash.eti.t7.v6.0.inquireenrichmentruleidlistresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.inquire_session_list_request = ProtoField.new("Inquire Session List Request", "eurex.cash.eti.t7.v6.0.inquiresessionlistrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.inquire_session_list_response = ProtoField.new("Inquire Session List Response", "eurex.cash.eti.t7.v6.0.inquiresessionlistresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.inquire_user_request = ProtoField.new("Inquire User Request", "eurex.cash.eti.t7.v6.0.inquireuserrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.inquire_user_response = ProtoField.new("Inquire User Response", "eurex.cash.eti.t7.v6.0.inquireuserresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.last_entity_processed = ProtoField.new("Last Entity Processed", "eurex.cash.eti.t7.v6.0.lastentityprocessed", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.cash.eti.t7.v6.0.lastfragment", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.last_mkt = ProtoField.new("Last Mkt", "eurex.cash.eti.t7.v6.0.lastmkt", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.last_px = ProtoField.new("Last Px", "eurex.cash.eti.t7.v6.0.lastpx", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.last_qty = ProtoField.new("Last Qty", "eurex.cash.eti.t7.v6.0.lastqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.leaves_qty = ProtoField.new("Leaves Qty", "eurex.cash.eti.t7.v6.0.leavesqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.legal_notification_broadcast = ProtoField.new("Legal Notification Broadcast", "eurex.cash.eti.t7.v6.0.legalnotificationbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.list_update_action = ProtoField.new("List Update Action", "eurex.cash.eti.t7.v6.0.listupdateaction", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.logon_request = ProtoField.new("Logon Request", "eurex.cash.eti.t7.v6.0.logonrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.logon_response = ProtoField.new("Logon Response", "eurex.cash.eti.t7.v6.0.logonresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.logout_request = ProtoField.new("Logout Request", "eurex.cash.eti.t7.v6.0.logoutrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.logout_response = ProtoField.new("Logout Response", "eurex.cash.eti.t7.v6.0.logoutresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.market_id = ProtoField.new("Market Id", "eurex.cash.eti.t7.v6.0.marketid", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.cash.eti.t7.v6.0.marketsegmentid", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.mass_action_reason = ProtoField.new("Mass Action Reason", "eurex.cash.eti.t7.v6.0.massactionreason", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "eurex.cash.eti.t7.v6.0.massactionreportid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.mass_action_type = ProtoField.new("Mass Action Type", "eurex.cash.eti.t7.v6.0.massactiontype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.mass_quote_request = ProtoField.new("Mass Quote Request", "eurex.cash.eti.t7.v6.0.massquoterequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.mass_quote_response = ProtoField.new("Mass Quote Response", "eurex.cash.eti.t7.v6.0.massquoteresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.match_date = ProtoField.new("Match Date", "eurex.cash.eti.t7.v6.0.matchdate", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.match_inst_cross_id = ProtoField.new("Match Inst Cross Id", "eurex.cash.eti.t7.v6.0.matchinstcrossid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.match_sub_type = ProtoField.new("Match Sub Type", "eurex.cash.eti.t7.v6.0.matchsubtype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.match_type = ProtoField.new("Match Type", "eurex.cash.eti.t7.v6.0.matchtype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.matching_engine_status = ProtoField.new("Matching Engine Status", "eurex.cash.eti.t7.v6.0.matchingenginestatus", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.matching_engine_trade_date = ProtoField.new("Matching Engine Trade Date", "eurex.cash.eti.t7.v6.0.matchingenginetradedate", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.message = ProtoField.new("Message", "eurex.cash.eti.t7.v6.0.message", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.message_header = ProtoField.new("Message Header", "eurex.cash.eti.t7.v6.0.messageheader", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.modify_order_nr_response = ProtoField.new("Modify Order Nr Response", "eurex.cash.eti.t7.v6.0.modifyordernrresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.modify_order_response = ProtoField.new("Modify Order Response", "eurex.cash.eti.t7.v6.0.modifyorderresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.modify_order_single_request = ProtoField.new("Modify Order Single Request", "eurex.cash.eti.t7.v6.0.modifyordersinglerequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.modify_order_single_short_request = ProtoField.new("Modify Order Single Short Request", "eurex.cash.eti.t7.v6.0.modifyordersingleshortrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.cash.eti.t7.v6.0.msgseqnum", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.network_msg_id = ProtoField.new("Network Msg Id", "eurex.cash.eti.t7.v6.0.networkmsgid", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.new_order_nr_response = ProtoField.new("New Order Nr Response", "eurex.cash.eti.t7.v6.0.newordernrresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.new_order_response = ProtoField.new("New Order Response", "eurex.cash.eti.t7.v6.0.neworderresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.new_order_single_request = ProtoField.new("New Order Single Request", "eurex.cash.eti.t7.v6.0.newordersinglerequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.new_order_single_short_request = ProtoField.new("New Order Single Short Request", "eurex.cash.eti.t7.v6.0.newordersingleshortrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.news_broadcast = ProtoField.new("News Broadcast", "eurex.cash.eti.t7.v6.0.newsbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.no_affected_orders = ProtoField.new("No Affected Orders", "eurex.cash.eti.t7.v6.0.noaffectedorders", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.no_enrichment_rules = ProtoField.new("No Enrichment Rules", "eurex.cash.eti.t7.v6.0.noenrichmentrules", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.no_fills = ProtoField.new("No Fills", "eurex.cash.eti.t7.v6.0.nofills", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.no_not_affected_orders = ProtoField.new("No Not Affected Orders", "eurex.cash.eti.t7.v6.0.nonotaffectedorders", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.no_not_affected_securities = ProtoField.new("No Not Affected Securities", "eurex.cash.eti.t7.v6.0.nonotaffectedsecurities", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.no_party_details = ProtoField.new("No Party Details", "eurex.cash.eti.t7.v6.0.nopartydetails", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.no_quote_entries = ProtoField.new("No Quote Entries", "eurex.cash.eti.t7.v6.0.noquoteentries", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.no_quote_events = ProtoField.new("No Quote Events", "eurex.cash.eti.t7.v6.0.noquoteevents", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.no_sessions = ProtoField.new("No Sessions", "eurex.cash.eti.t7.v6.0.nosessions", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.not_aff_orig_cl_ord_id = ProtoField.new("Not Aff Orig Cl Ord Id", "eurex.cash.eti.t7.v6.0.notafforigclordid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.not_affected_order_id = ProtoField.new("Not Affected Order Id", "eurex.cash.eti.t7.v6.0.notaffectedorderid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.not_affected_orders_grp_comp = ProtoField.new("Not Affected Orders Grp Comp", "eurex.cash.eti.t7.v6.0.notaffectedordersgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.not_affected_securities_grp_comp = ProtoField.new("Not Affected Securities Grp Comp", "eurex.cash.eti.t7.v6.0.notaffectedsecuritiesgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.not_affected_security_id = ProtoField.new("Not Affected Security Id", "eurex.cash.eti.t7.v6.0.notaffectedsecurityid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.notif_header_comp = ProtoField.new("Notif Header Comp", "eurex.cash.eti.t7.v6.0.notifheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.notification_in = ProtoField.new("Notification In", "eurex.cash.eti.t7.v6.0.notificationin", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.nr_response_header_me_comp = ProtoField.new("Nr Response Header Me Comp", "eurex.cash.eti.t7.v6.0.nrresponseheadermecomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.nrbc_header_comp = ProtoField.new("Nrbc Header Comp", "eurex.cash.eti.t7.v6.0.nrbcheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.offer_cxl_size = ProtoField.new("Offer Cxl Size", "eurex.cash.eti.t7.v6.0.offercxlsize", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.offer_px = ProtoField.new("Offer Px", "eurex.cash.eti.t7.v6.0.offerpx", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.offer_size = ProtoField.new("Offer Size", "eurex.cash.eti.t7.v6.0.offersize", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.ord_status = ProtoField.new("Ord Status", "eurex.cash.eti.t7.v6.0.ordstatus", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.ord_type = ProtoField.new("Ord Type", "eurex.cash.eti.t7.v6.0.ordtype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.order_attribute_liquidity_provision = ProtoField.new("Order Attribute Liquidity Provision", "eurex.cash.eti.t7.v6.0.orderattributeliquidityprovision", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.order_category = ProtoField.new("Order Category", "eurex.cash.eti.t7.v6.0.ordercategory", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.order_exec_notification = ProtoField.new("Order Exec Notification", "eurex.cash.eti.t7.v6.0.orderexecnotification", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.order_exec_report_broadcast = ProtoField.new("Order Exec Report Broadcast", "eurex.cash.eti.t7.v6.0.orderexecreportbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.order_exec_response = ProtoField.new("Order Exec Response", "eurex.cash.eti.t7.v6.0.orderexecresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.order_id = ProtoField.new("Order Id", "eurex.cash.eti.t7.v6.0.orderid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.order_id_sfx = ProtoField.new("Order Id Sfx", "eurex.cash.eti.t7.v6.0.orderidsfx", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.order_qty = ProtoField.new("Order Qty", "eurex.cash.eti.t7.v6.0.orderqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.order_routing_indicator = ProtoField.new("Order Routing Indicator", "eurex.cash.eti.t7.v6.0.orderroutingindicator", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "eurex.cash.eti.t7.v6.0.origclordid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.orig_time = ProtoField.new("Orig Time", "eurex.cash.eti.t7.v6.0.origtime", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.orig_trade_id = ProtoField.new("Orig Trade Id", "eurex.cash.eti.t7.v6.0.origtradeid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.ownership_indicator = ProtoField.new("Ownership Indicator", "eurex.cash.eti.t7.v6.0.ownershipindicator", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.packet = ProtoField.new("Packet", "eurex.cash.eti.t7.v6.0.packet", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.pad_1 = ProtoField.new("Pad 1", "eurex.cash.eti.t7.v6.0.pad1", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.pad_2 = ProtoField.new("Pad 2", "eurex.cash.eti.t7.v6.0.pad2", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.pad_3 = ProtoField.new("Pad 3", "eurex.cash.eti.t7.v6.0.pad3", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.pad_4 = ProtoField.new("Pad 4", "eurex.cash.eti.t7.v6.0.pad4", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.pad_5 = ProtoField.new("Pad 5", "eurex.cash.eti.t7.v6.0.pad5", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.pad_6 = ProtoField.new("Pad 6", "eurex.cash.eti.t7.v6.0.pad6", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.pad_7 = ProtoField.new("Pad 7", "eurex.cash.eti.t7.v6.0.pad7", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.partition_id = ProtoField.new("Partition Id", "eurex.cash.eti.t7.v6.0.partitionid", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.party_action_report = ProtoField.new("Party Action Report", "eurex.cash.eti.t7.v6.0.partyactionreport", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.party_action_type = ProtoField.new("Party Action Type", "eurex.cash.eti.t7.v6.0.partyactiontype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.party_detail_desk_id = ProtoField.new("Party Detail Desk Id", "eurex.cash.eti.t7.v6.0.partydetaildeskid", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.party_detail_executing_trader = ProtoField.new("Party Detail Executing Trader", "eurex.cash.eti.t7.v6.0.partydetailexecutingtrader", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.party_detail_id_executing_trader = ProtoField.new("Party Detail Id Executing Trader", "eurex.cash.eti.t7.v6.0.partydetailidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.party_detail_id_executing_unit = ProtoField.new("Party Detail Id Executing Unit", "eurex.cash.eti.t7.v6.0.partydetailidexecutingunit", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.party_detail_role_qualifier = ProtoField.new("Party Detail Role Qualifier", "eurex.cash.eti.t7.v6.0.partydetailrolequalifier", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.party_detail_status = ProtoField.new("Party Detail Status", "eurex.cash.eti.t7.v6.0.partydetailstatus", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.party_details_grp_comp = ProtoField.new("Party Details Grp Comp", "eurex.cash.eti.t7.v6.0.partydetailsgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.party_entitlements_update_report = ProtoField.new("Party Entitlements Update Report", "eurex.cash.eti.t7.v6.0.partyentitlementsupdatereport", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.party_executing_firm = ProtoField.new("Party Executing Firm", "eurex.cash.eti.t7.v6.0.partyexecutingfirm", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.party_id_client_id = ProtoField.new("Party Id Client Id", "eurex.cash.eti.t7.v6.0.partyidclientid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.party_id_entering_firm = ProtoField.new("Party Id Entering Firm", "eurex.cash.eti.t7.v6.0.partyidenteringfirm", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.party_id_entering_trader = ProtoField.new("Party Id Entering Trader", "eurex.cash.eti.t7.v6.0.partyidenteringtrader", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.party_id_executing_trader = ProtoField.new("Party Id Executing Trader", "eurex.cash.eti.t7.v6.0.partyidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.party_id_executing_unit = ProtoField.new("Party Id Executing Unit", "eurex.cash.eti.t7.v6.0.partyidexecutingunit", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.party_id_investment_decision_maker = ProtoField.new("Party Id Investment Decision Maker", "eurex.cash.eti.t7.v6.0.partyidinvestmentdecisionmaker", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.party_id_investment_decision_maker_qualifier = ProtoField.new("Party Id Investment Decision Maker Qualifier", "eurex.cash.eti.t7.v6.0.partyidinvestmentdecisionmakerqualifier", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.party_id_session_id = ProtoField.new("Party Id Session Id", "eurex.cash.eti.t7.v6.0.partyidsessionid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.password = ProtoField.new("Password", "eurex.cash.eti.t7.v6.0.password", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.payload = ProtoField.new("Payload", "eurex.cash.eti.t7.v6.0.payload", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.peg_offset_value_abs = ProtoField.new("Peg Offset Value Abs", "eurex.cash.eti.t7.v6.0.pegoffsetvalueabs", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.peg_offset_value_bid_px = ProtoField.new("Peg Offset Value Bid Px", "eurex.cash.eti.t7.v6.0.pegoffsetvaluebidpx", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.peg_offset_value_offer_px = ProtoField.new("Peg Offset Value Offer Px", "eurex.cash.eti.t7.v6.0.pegoffsetvalueofferpx", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.peg_offset_value_pct = ProtoField.new("Peg Offset Value Pct", "eurex.cash.eti.t7.v6.0.pegoffsetvaluepct", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.price = ProtoField.new("Price", "eurex.cash.eti.t7.v6.0.price", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.price_validity_check_type = ProtoField.new("Price Validity Check Type", "eurex.cash.eti.t7.v6.0.pricevaliditychecktype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.quote_activation_notification = ProtoField.new("Quote Activation Notification", "eurex.cash.eti.t7.v6.0.quoteactivationnotification", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.quote_activation_request = ProtoField.new("Quote Activation Request", "eurex.cash.eti.t7.v6.0.quoteactivationrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.quote_activation_response = ProtoField.new("Quote Activation Response", "eurex.cash.eti.t7.v6.0.quoteactivationresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.quote_entry_ack_grp_comp = ProtoField.new("Quote Entry Ack Grp Comp", "eurex.cash.eti.t7.v6.0.quoteentryackgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.quote_entry_grp_comp = ProtoField.new("Quote Entry Grp Comp", "eurex.cash.eti.t7.v6.0.quoteentrygrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.quote_entry_reject_reason = ProtoField.new("Quote Entry Reject Reason", "eurex.cash.eti.t7.v6.0.quoteentryrejectreason", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.quote_entry_status = ProtoField.new("Quote Entry Status", "eurex.cash.eti.t7.v6.0.quoteentrystatus", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.quote_event_exec_id = ProtoField.new("Quote Event Exec Id", "eurex.cash.eti.t7.v6.0.quoteeventexecid", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.quote_event_grp_comp = ProtoField.new("Quote Event Grp Comp", "eurex.cash.eti.t7.v6.0.quoteeventgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.quote_event_liquidity_ind = ProtoField.new("Quote Event Liquidity Ind", "eurex.cash.eti.t7.v6.0.quoteeventliquidityind", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.quote_event_match_id = ProtoField.new("Quote Event Match Id", "eurex.cash.eti.t7.v6.0.quoteeventmatchid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.quote_event_px = ProtoField.new("Quote Event Px", "eurex.cash.eti.t7.v6.0.quoteeventpx", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.quote_event_qty = ProtoField.new("Quote Event Qty", "eurex.cash.eti.t7.v6.0.quoteeventqty", ftypes.INT32)
eurex_cash_eti_t7_v6_0.fields.quote_event_reason = ProtoField.new("Quote Event Reason", "eurex.cash.eti.t7.v6.0.quoteeventreason", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.quote_event_side = ProtoField.new("Quote Event Side", "eurex.cash.eti.t7.v6.0.quoteeventside", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.quote_event_type = ProtoField.new("Quote Event Type", "eurex.cash.eti.t7.v6.0.quoteeventtype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.quote_execution_report = ProtoField.new("Quote Execution Report", "eurex.cash.eti.t7.v6.0.quoteexecutionreport", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.quote_id = ProtoField.new("Quote Id", "eurex.cash.eti.t7.v6.0.quoteid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.quote_msg_id = ProtoField.new("Quote Msg Id", "eurex.cash.eti.t7.v6.0.quotemsgid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.quote_response_id = ProtoField.new("Quote Response Id", "eurex.cash.eti.t7.v6.0.quoteresponseid", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.quote_size_type = ProtoField.new("Quote Size Type", "eurex.cash.eti.t7.v6.0.quotesizetype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.rbc_header_comp = ProtoField.new("Rbc Header Comp", "eurex.cash.eti.t7.v6.0.rbcheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.rbc_header_me_comp = ProtoField.new("Rbc Header Me Comp", "eurex.cash.eti.t7.v6.0.rbcheadermecomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.ref_appl_id = ProtoField.new("Ref Appl Id", "eurex.cash.eti.t7.v6.0.refapplid", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.ref_appl_last_msg_id = ProtoField.new("Ref Appl Last Msg Id", "eurex.cash.eti.t7.v6.0.refappllastmsgid", ftypes.BYTES)
eurex_cash_eti_t7_v6_0.fields.ref_appl_last_seq_num = ProtoField.new("Ref Appl Last Seq Num", "eurex.cash.eti.t7.v6.0.refappllastseqnum", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.ref_appl_sub_id = ProtoField.new("Ref Appl Sub Id", "eurex.cash.eti.t7.v6.0.refapplsubid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.reject = ProtoField.new("Reject", "eurex.cash.eti.t7.v6.0.reject", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.request_header_comp = ProtoField.new("Request Header Comp", "eurex.cash.eti.t7.v6.0.requestheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.request_out = ProtoField.new("Request Out", "eurex.cash.eti.t7.v6.0.requestout", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.request_time = ProtoField.new("Request Time", "eurex.cash.eti.t7.v6.0.requesttime", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.requesting_party_clearing_firm = ProtoField.new("Requesting Party Clearing Firm", "eurex.cash.eti.t7.v6.0.requestingpartyclearingfirm", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.requesting_party_entering_firm = ProtoField.new("Requesting Party Entering Firm", "eurex.cash.eti.t7.v6.0.requestingpartyenteringfirm", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.requesting_party_id_entering_firm = ProtoField.new("Requesting Party Id Entering Firm", "eurex.cash.eti.t7.v6.0.requestingpartyidenteringfirm", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.requesting_party_id_executing_system = ProtoField.new("Requesting Party Id Executing System", "eurex.cash.eti.t7.v6.0.requestingpartyidexecutingsystem", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.requesting_party_id_executing_trader = ProtoField.new("Requesting Party Id Executing Trader", "eurex.cash.eti.t7.v6.0.requestingpartyidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.reserved_bid_size = ProtoField.new("Reserved Bid Size", "eurex.cash.eti.t7.v6.0.reservedbidsize", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.reserved_offer_size = ProtoField.new("Reserved Offer Size", "eurex.cash.eti.t7.v6.0.reservedoffersize", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.reserved_size = ProtoField.new("Reserved Size", "eurex.cash.eti.t7.v6.0.reservedsize", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.response_header_comp = ProtoField.new("Response Header Comp", "eurex.cash.eti.t7.v6.0.responseheadercomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.response_header_me_comp = ProtoField.new("Response Header Me Comp", "eurex.cash.eti.t7.v6.0.responseheadermecomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.response_in = ProtoField.new("Response In", "eurex.cash.eti.t7.v6.0.responsein", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.retransmit_me_message_request = ProtoField.new("Retransmit Me Message Request", "eurex.cash.eti.t7.v6.0.retransmitmemessagerequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.retransmit_me_message_response = ProtoField.new("Retransmit Me Message Response", "eurex.cash.eti.t7.v6.0.retransmitmemessageresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.retransmit_request = ProtoField.new("Retransmit Request", "eurex.cash.eti.t7.v6.0.retransmitrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.retransmit_response = ProtoField.new("Retransmit Response", "eurex.cash.eti.t7.v6.0.retransmitresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.rfq_broadcast = ProtoField.new("Rfq Broadcast", "eurex.cash.eti.t7.v6.0.rfqbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.rfq_publish_indicator = ProtoField.new("Rfq Publish Indicator", "eurex.cash.eti.t7.v6.0.rfqpublishindicator", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.rfq_request = ProtoField.new("Rfq Request", "eurex.cash.eti.t7.v6.0.rfqrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.rfq_requester_disclosure_instruction = ProtoField.new("Rfq Requester Disclosure Instruction", "eurex.cash.eti.t7.v6.0.rfqrequesterdisclosureinstruction", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.rfq_response = ProtoField.new("Rfq Response", "eurex.cash.eti.t7.v6.0.rfqresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_clearing_firm = ProtoField.new("Root Party Clearing Firm", "eurex.cash.eti.t7.v6.0.rootpartyclearingfirm", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_contra_firm = ProtoField.new("Root Party Contra Firm", "eurex.cash.eti.t7.v6.0.rootpartycontrafirm", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_contra_firm_kv_number = ProtoField.new("Root Party Contra Firm Kv Number", "eurex.cash.eti.t7.v6.0.rootpartycontrafirmkvnumber", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_contra_settlement_account = ProtoField.new("Root Party Contra Settlement Account", "eurex.cash.eti.t7.v6.0.rootpartycontrasettlementaccount", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_contra_settlement_firm = ProtoField.new("Root Party Contra Settlement Firm", "eurex.cash.eti.t7.v6.0.rootpartycontrasettlementfirm", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_contra_settlement_location = ProtoField.new("Root Party Contra Settlement Location", "eurex.cash.eti.t7.v6.0.rootpartycontrasettlementlocation", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_executing_firm = ProtoField.new("Root Party Executing Firm", "eurex.cash.eti.t7.v6.0.rootpartyexecutingfirm", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_executing_firm_kv_number = ProtoField.new("Root Party Executing Firm Kv Number", "eurex.cash.eti.t7.v6.0.rootpartyexecutingfirmkvnumber", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_executing_trader = ProtoField.new("Root Party Executing Trader", "eurex.cash.eti.t7.v6.0.rootpartyexecutingtrader", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_id_clearing_unit = ProtoField.new("Root Party Id Clearing Unit", "eurex.cash.eti.t7.v6.0.rootpartyidclearingunit", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.root_party_id_contra_settlement_unit = ProtoField.new("Root Party Id Contra Settlement Unit", "eurex.cash.eti.t7.v6.0.rootpartyidcontrasettlementunit", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.root_party_id_contra_unit = ProtoField.new("Root Party Id Contra Unit", "eurex.cash.eti.t7.v6.0.rootpartyidcontraunit", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.root_party_id_executing_trader = ProtoField.new("Root Party Id Executing Trader", "eurex.cash.eti.t7.v6.0.rootpartyidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.root_party_id_executing_unit = ProtoField.new("Root Party Id Executing Unit", "eurex.cash.eti.t7.v6.0.rootpartyidexecutingunit", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.root_party_id_session_id = ProtoField.new("Root Party Id Session Id", "eurex.cash.eti.t7.v6.0.rootpartyidsessionid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.root_party_id_settlement_unit = ProtoField.new("Root Party Id Settlement Unit", "eurex.cash.eti.t7.v6.0.rootpartyidsettlementunit", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.root_party_settlement_account = ProtoField.new("Root Party Settlement Account", "eurex.cash.eti.t7.v6.0.rootpartysettlementaccount", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_settlement_firm = ProtoField.new("Root Party Settlement Firm", "eurex.cash.eti.t7.v6.0.rootpartysettlementfirm", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.root_party_settlement_location = ProtoField.new("Root Party Settlement Location", "eurex.cash.eti.t7.v6.0.rootpartysettlementlocation", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.secondary_gateway_id = ProtoField.new("Secondary Gateway Id", "eurex.cash.eti.t7.v6.0.secondarygatewayid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.secondary_gateway_status = ProtoField.new("Secondary Gateway Status", "eurex.cash.eti.t7.v6.0.secondarygatewaystatus", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.secondary_gateway_sub_id = ProtoField.new("Secondary Gateway Sub Id", "eurex.cash.eti.t7.v6.0.secondarygatewaysubid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.security_id = ProtoField.new("Security Id", "eurex.cash.eti.t7.v6.0.securityid", ftypes.INT64)
eurex_cash_eti_t7_v6_0.fields.sender_sub_id = ProtoField.new("Sender Sub Id", "eurex.cash.eti.t7.v6.0.sendersubid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.sending_time = ProtoField.new("Sending Time", "eurex.cash.eti.t7.v6.0.sendingtime", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.service_availability_broadcast = ProtoField.new("Service Availability Broadcast", "eurex.cash.eti.t7.v6.0.serviceavailabilitybroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.session_instance_id = ProtoField.new("Session Instance Id", "eurex.cash.eti.t7.v6.0.sessioninstanceid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.session_mode = ProtoField.new("Session Mode", "eurex.cash.eti.t7.v6.0.sessionmode", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.session_reject_reason = ProtoField.new("Session Reject Reason", "eurex.cash.eti.t7.v6.0.sessionrejectreason", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.session_status = ProtoField.new("Session Status", "eurex.cash.eti.t7.v6.0.sessionstatus", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.session_sub_mode = ProtoField.new("Session Sub Mode", "eurex.cash.eti.t7.v6.0.sessionsubmode", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.sessions_grp_comp = ProtoField.new("Sessions Grp Comp", "eurex.cash.eti.t7.v6.0.sessionsgrpcomp", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.settl_curr_amt = ProtoField.new("Settl Curr Amt", "eurex.cash.eti.t7.v6.0.settlcurramt", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.settl_curr_fx_rate = ProtoField.new("Settl Curr Fx Rate", "eurex.cash.eti.t7.v6.0.settlcurrfxrate", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.settl_currency = ProtoField.new("Settl Currency", "eurex.cash.eti.t7.v6.0.settlcurrency", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.settl_date = ProtoField.new("Settl Date", "eurex.cash.eti.t7.v6.0.settldate", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.side = ProtoField.new("Side", "eurex.cash.eti.t7.v6.0.side", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.side_liquidity_ind = ProtoField.new("Side Liquidity Ind", "eurex.cash.eti.t7.v6.0.sideliquidityind", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.side_trade_id = ProtoField.new("Side Trade Id", "eurex.cash.eti.t7.v6.0.sidetradeid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.side_trade_report_id = ProtoField.new("Side Trade Report Id", "eurex.cash.eti.t7.v6.0.sidetradereportid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.stop_px = ProtoField.new("Stop Px", "eurex.cash.eti.t7.v6.0.stoppx", ftypes.DOUBLE)
eurex_cash_eti_t7_v6_0.fields.stop_px_indicator = ProtoField.new("Stop Px Indicator", "eurex.cash.eti.t7.v6.0.stoppxindicator", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.subscribe_request = ProtoField.new("Subscribe Request", "eurex.cash.eti.t7.v6.0.subscriberequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.subscribe_response = ProtoField.new("Subscribe Response", "eurex.cash.eti.t7.v6.0.subscriberesponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.subscription_scope = ProtoField.new("Subscription Scope", "eurex.cash.eti.t7.v6.0.subscriptionscope", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.target_party_id_desk_id = ProtoField.new("Target Party Id Desk Id", "eurex.cash.eti.t7.v6.0.targetpartyiddeskid", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.target_party_id_executing_trader = ProtoField.new("Target Party Id Executing Trader", "eurex.cash.eti.t7.v6.0.targetpartyidexecutingtrader", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.target_party_id_session_id = ProtoField.new("Target Party Id Session Id", "eurex.cash.eti.t7.v6.0.targetpartyidsessionid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.template_id = ProtoField.new("Template Id", "eurex.cash.eti.t7.v6.0.templateid", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.throttle_disconnect_limit = ProtoField.new("Throttle Disconnect Limit", "eurex.cash.eti.t7.v6.0.throttledisconnectlimit", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.throttle_no_msgs = ProtoField.new("Throttle No Msgs", "eurex.cash.eti.t7.v6.0.throttlenomsgs", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.throttle_time_interval = ProtoField.new("Throttle Time Interval", "eurex.cash.eti.t7.v6.0.throttletimeinterval", ftypes.INT64)
eurex_cash_eti_t7_v6_0.fields.throttle_update_notification = ProtoField.new("Throttle Update Notification", "eurex.cash.eti.t7.v6.0.throttleupdatenotification", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.time_in_force = ProtoField.new("Time In Force", "eurex.cash.eti.t7.v6.0.timeinforce", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.tm_trading_session_status_broadcast = ProtoField.new("Tm Trading Session Status Broadcast", "eurex.cash.eti.t7.v6.0.tmtradingsessionstatusbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.trad_ses_event = ProtoField.new("Trad Ses Event", "eurex.cash.eti.t7.v6.0.tradsesevent", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.trad_ses_mode = ProtoField.new("Trad Ses Mode", "eurex.cash.eti.t7.v6.0.tradsesmode", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.trade_broadcast = ProtoField.new("Trade Broadcast", "eurex.cash.eti.t7.v6.0.tradebroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.trade_date = ProtoField.new("Trade Date", "eurex.cash.eti.t7.v6.0.tradedate", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.trade_id = ProtoField.new("Trade Id", "eurex.cash.eti.t7.v6.0.tradeid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.trade_manager_status = ProtoField.new("Trade Manager Status", "eurex.cash.eti.t7.v6.0.trademanagerstatus", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.trade_manager_trade_date = ProtoField.new("Trade Manager Trade Date", "eurex.cash.eti.t7.v6.0.trademanagertradedate", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.trade_number = ProtoField.new("Trade Number", "eurex.cash.eti.t7.v6.0.tradenumber", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.trade_report_type = ProtoField.new("Trade Report Type", "eurex.cash.eti.t7.v6.0.tradereporttype", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.trading_capacity = ProtoField.new("Trading Capacity", "eurex.cash.eti.t7.v6.0.tradingcapacity", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.trading_session_status_broadcast = ProtoField.new("Trading Session Status Broadcast", "eurex.cash.eti.t7.v6.0.tradingsessionstatusbroadcast", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.cash.eti.t7.v6.0.tradingsessionsubid", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.trailing_stop_update_notification = ProtoField.new("Trailing Stop Update Notification", "eurex.cash.eti.t7.v6.0.trailingstopupdatenotification", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.transact_time = ProtoField.new("Transact Time", "eurex.cash.eti.t7.v6.0.transacttime", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.transfer_reason = ProtoField.new("Transfer Reason", "eurex.cash.eti.t7.v6.0.transferreason", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.trd_match_id = ProtoField.new("Trd Match Id", "eurex.cash.eti.t7.v6.0.trdmatchid", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.trd_reg_ts_entry_time = ProtoField.new("Trd Reg Ts Entry Time", "eurex.cash.eti.t7.v6.0.trdregtsentrytime", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.trd_reg_ts_time_in = ProtoField.new("Trd Reg Ts Time In", "eurex.cash.eti.t7.v6.0.trdregtstimein", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.trd_reg_ts_time_out = ProtoField.new("Trd Reg Ts Time Out", "eurex.cash.eti.t7.v6.0.trdregtstimeout", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "eurex.cash.eti.t7.v6.0.trdregtstimepriority", ftypes.UINT64)
eurex_cash_eti_t7_v6_0.fields.triggered = ProtoField.new("Triggered", "eurex.cash.eti.t7.v6.0.triggered", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.unsubscribe_request = ProtoField.new("Unsubscribe Request", "eurex.cash.eti.t7.v6.0.unsubscriberequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.unsubscribe_response = ProtoField.new("Unsubscribe Response", "eurex.cash.eti.t7.v6.0.unsubscriberesponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.user_login_request = ProtoField.new("User Login Request", "eurex.cash.eti.t7.v6.0.userloginrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.user_login_response = ProtoField.new("User Login Response", "eurex.cash.eti.t7.v6.0.userloginresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.user_logout_request = ProtoField.new("User Logout Request", "eurex.cash.eti.t7.v6.0.userlogoutrequest", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.user_logout_response = ProtoField.new("User Logout Response", "eurex.cash.eti.t7.v6.0.userlogoutresponse", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.user_status = ProtoField.new("User Status", "eurex.cash.eti.t7.v6.0.userstatus", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.username = ProtoField.new("Username", "eurex.cash.eti.t7.v6.0.username", ftypes.UINT32)
eurex_cash_eti_t7_v6_0.fields.value_check_type_quantity = ProtoField.new("Value Check Type Quantity", "eurex.cash.eti.t7.v6.0.valuechecktypequantity", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.value_check_type_value = ProtoField.new("Value Check Type Value", "eurex.cash.eti.t7.v6.0.valuechecktypevalue", ftypes.UINT8)
eurex_cash_eti_t7_v6_0.fields.var_text = ProtoField.new("Var Text", "eurex.cash.eti.t7.v6.0.vartext", ftypes.STRING)
eurex_cash_eti_t7_v6_0.fields.var_text_len = ProtoField.new("Var Text Len", "eurex.cash.eti.t7.v6.0.vartextlen", ftypes.UINT16)
eurex_cash_eti_t7_v6_0.fields.volume_discovery_price = ProtoField.new("Volume Discovery Price", "eurex.cash.eti.t7.v6.0.volumediscoveryprice", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Eurex Cash Eti T7 6.0 Element Dissection Options
show.affected_ord_grp_comp = true
show.best_quote_execution_report = true
show.best_quote_response = true
show.broadcast_error_notification = true
show.cross_request = true
show.cross_request_response = true
show.delete_all_order_broadcast = true
show.delete_all_order_nr_response = true
show.delete_all_order_quote_event_broadcast = true
show.delete_all_order_request = true
show.delete_all_order_response = true
show.delete_all_quote_broadcast = true
show.delete_all_quote_request = true
show.delete_all_quote_response = true
show.delete_order_broadcast = true
show.delete_order_nr_response = true
show.delete_order_response = true
show.delete_order_single_request = true
show.enrichment_rules_grp_comp = true
show.enter_best_quote_request = true
show.extended_deletion_report = true
show.fills_grp_comp = true
show.forced_logout_notification = true
show.forced_user_logout_notification = true
show.gateway_request = true
show.gateway_response = true
show.heartbeat = true
show.heartbeat_notification = true
show.inquire_enrichment_rule_id_list_request = true
show.inquire_enrichment_rule_id_list_response = true
show.inquire_session_list_request = true
show.inquire_session_list_response = true
show.inquire_user_request = true
show.inquire_user_response = true
show.legal_notification_broadcast = true
show.logon_request = true
show.logon_response = true
show.logout_request = true
show.logout_response = true
show.mass_quote_request = true
show.mass_quote_response = true
show.message = true
show.message_header = true
show.modify_order_nr_response = true
show.modify_order_response = true
show.modify_order_single_request = true
show.modify_order_single_short_request = true
show.new_order_nr_response = true
show.new_order_response = true
show.new_order_single_request = true
show.new_order_single_short_request = true
show.news_broadcast = true
show.not_affected_orders_grp_comp = true
show.not_affected_securities_grp_comp = true
show.notif_header_comp = true
show.nr_response_header_me_comp = true
show.nrbc_header_comp = true
show.order_exec_notification = true
show.order_exec_report_broadcast = true
show.order_exec_response = true
show.packet = true
show.party_action_report = true
show.party_details_grp_comp = true
show.party_entitlements_update_report = true
show.quote_activation_notification = true
show.quote_activation_request = true
show.quote_activation_response = true
show.quote_entry_ack_grp_comp = true
show.quote_entry_grp_comp = true
show.quote_event_grp_comp = true
show.quote_execution_report = true
show.rbc_header_comp = true
show.rbc_header_me_comp = true
show.reject = true
show.request_header_comp = true
show.response_header_comp = true
show.response_header_me_comp = true
show.retransmit_me_message_request = true
show.retransmit_me_message_response = true
show.retransmit_request = true
show.retransmit_response = true
show.rfq_broadcast = true
show.rfq_request = true
show.rfq_response = true
show.service_availability_broadcast = true
show.sessions_grp_comp = true
show.subscribe_request = true
show.subscribe_response = true
show.throttle_update_notification = true
show.tm_trading_session_status_broadcast = true
show.trade_broadcast = true
show.trading_session_status_broadcast = true
show.trailing_stop_update_notification = true
show.unsubscribe_request = true
show.unsubscribe_response = true
show.user_login_request = true
show.user_login_response = true
show.user_logout_request = true
show.user_logout_response = true
show.payload = false

-- Register Eurex Cash Eti T7 6.0 Show Options
eurex_cash_eti_t7_v6_0.prefs.show_affected_ord_grp_comp = Pref.bool("Show Affected Ord Grp Comp", show.affected_ord_grp_comp, "Parse and add Affected Ord Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_best_quote_execution_report = Pref.bool("Show Best Quote Execution Report", show.best_quote_execution_report, "Parse and add Best Quote Execution Report to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_best_quote_response = Pref.bool("Show Best Quote Response", show.best_quote_response, "Parse and add Best Quote Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_broadcast_error_notification = Pref.bool("Show Broadcast Error Notification", show.broadcast_error_notification, "Parse and add Broadcast Error Notification to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_cross_request = Pref.bool("Show Cross Request", show.cross_request, "Parse and add Cross Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_cross_request_response = Pref.bool("Show Cross Request Response", show.cross_request_response, "Parse and add Cross Request Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_broadcast = Pref.bool("Show Delete All Order Broadcast", show.delete_all_order_broadcast, "Parse and add Delete All Order Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_nr_response = Pref.bool("Show Delete All Order Nr Response", show.delete_all_order_nr_response, "Parse and add Delete All Order Nr Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_quote_event_broadcast = Pref.bool("Show Delete All Order Quote Event Broadcast", show.delete_all_order_quote_event_broadcast, "Parse and add Delete All Order Quote Event Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_request = Pref.bool("Show Delete All Order Request", show.delete_all_order_request, "Parse and add Delete All Order Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_response = Pref.bool("Show Delete All Order Response", show.delete_all_order_response, "Parse and add Delete All Order Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_all_quote_broadcast = Pref.bool("Show Delete All Quote Broadcast", show.delete_all_quote_broadcast, "Parse and add Delete All Quote Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_all_quote_request = Pref.bool("Show Delete All Quote Request", show.delete_all_quote_request, "Parse and add Delete All Quote Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_all_quote_response = Pref.bool("Show Delete All Quote Response", show.delete_all_quote_response, "Parse and add Delete All Quote Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_order_broadcast = Pref.bool("Show Delete Order Broadcast", show.delete_order_broadcast, "Parse and add Delete Order Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_order_nr_response = Pref.bool("Show Delete Order Nr Response", show.delete_order_nr_response, "Parse and add Delete Order Nr Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_order_response = Pref.bool("Show Delete Order Response", show.delete_order_response, "Parse and add Delete Order Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_delete_order_single_request = Pref.bool("Show Delete Order Single Request", show.delete_order_single_request, "Parse and add Delete Order Single Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_enrichment_rules_grp_comp = Pref.bool("Show Enrichment Rules Grp Comp", show.enrichment_rules_grp_comp, "Parse and add Enrichment Rules Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_enter_best_quote_request = Pref.bool("Show Enter Best Quote Request", show.enter_best_quote_request, "Parse and add Enter Best Quote Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_extended_deletion_report = Pref.bool("Show Extended Deletion Report", show.extended_deletion_report, "Parse and add Extended Deletion Report to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_fills_grp_comp = Pref.bool("Show Fills Grp Comp", show.fills_grp_comp, "Parse and add Fills Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_forced_logout_notification = Pref.bool("Show Forced Logout Notification", show.forced_logout_notification, "Parse and add Forced Logout Notification to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_forced_user_logout_notification = Pref.bool("Show Forced User Logout Notification", show.forced_user_logout_notification, "Parse and add Forced User Logout Notification to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_gateway_request = Pref.bool("Show Gateway Request", show.gateway_request, "Parse and add Gateway Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_gateway_response = Pref.bool("Show Gateway Response", show.gateway_response, "Parse and add Gateway Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_heartbeat_notification = Pref.bool("Show Heartbeat Notification", show.heartbeat_notification, "Parse and add Heartbeat Notification to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_inquire_enrichment_rule_id_list_request = Pref.bool("Show Inquire Enrichment Rule Id List Request", show.inquire_enrichment_rule_id_list_request, "Parse and add Inquire Enrichment Rule Id List Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_inquire_enrichment_rule_id_list_response = Pref.bool("Show Inquire Enrichment Rule Id List Response", show.inquire_enrichment_rule_id_list_response, "Parse and add Inquire Enrichment Rule Id List Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_inquire_session_list_request = Pref.bool("Show Inquire Session List Request", show.inquire_session_list_request, "Parse and add Inquire Session List Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_inquire_session_list_response = Pref.bool("Show Inquire Session List Response", show.inquire_session_list_response, "Parse and add Inquire Session List Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_inquire_user_request = Pref.bool("Show Inquire User Request", show.inquire_user_request, "Parse and add Inquire User Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_inquire_user_response = Pref.bool("Show Inquire User Response", show.inquire_user_response, "Parse and add Inquire User Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_legal_notification_broadcast = Pref.bool("Show Legal Notification Broadcast", show.legal_notification_broadcast, "Parse and add Legal Notification Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_logon_request = Pref.bool("Show Logon Request", show.logon_request, "Parse and add Logon Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_logon_response = Pref.bool("Show Logon Response", show.logon_response, "Parse and add Logon Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_logout_request = Pref.bool("Show Logout Request", show.logout_request, "Parse and add Logout Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_logout_response = Pref.bool("Show Logout Response", show.logout_response, "Parse and add Logout Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_mass_quote_request = Pref.bool("Show Mass Quote Request", show.mass_quote_request, "Parse and add Mass Quote Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_mass_quote_response = Pref.bool("Show Mass Quote Response", show.mass_quote_response, "Parse and add Mass Quote Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_modify_order_nr_response = Pref.bool("Show Modify Order Nr Response", show.modify_order_nr_response, "Parse and add Modify Order Nr Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_modify_order_response = Pref.bool("Show Modify Order Response", show.modify_order_response, "Parse and add Modify Order Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_modify_order_single_request = Pref.bool("Show Modify Order Single Request", show.modify_order_single_request, "Parse and add Modify Order Single Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_modify_order_single_short_request = Pref.bool("Show Modify Order Single Short Request", show.modify_order_single_short_request, "Parse and add Modify Order Single Short Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_new_order_nr_response = Pref.bool("Show New Order Nr Response", show.new_order_nr_response, "Parse and add New Order Nr Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_new_order_response = Pref.bool("Show New Order Response", show.new_order_response, "Parse and add New Order Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_new_order_single_request = Pref.bool("Show New Order Single Request", show.new_order_single_request, "Parse and add New Order Single Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_new_order_single_short_request = Pref.bool("Show New Order Single Short Request", show.new_order_single_short_request, "Parse and add New Order Single Short Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_news_broadcast = Pref.bool("Show News Broadcast", show.news_broadcast, "Parse and add News Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_not_affected_orders_grp_comp = Pref.bool("Show Not Affected Orders Grp Comp", show.not_affected_orders_grp_comp, "Parse and add Not Affected Orders Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_not_affected_securities_grp_comp = Pref.bool("Show Not Affected Securities Grp Comp", show.not_affected_securities_grp_comp, "Parse and add Not Affected Securities Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_notif_header_comp = Pref.bool("Show Notif Header Comp", show.notif_header_comp, "Parse and add Notif Header Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_nr_response_header_me_comp = Pref.bool("Show Nr Response Header Me Comp", show.nr_response_header_me_comp, "Parse and add Nr Response Header Me Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_nrbc_header_comp = Pref.bool("Show Nrbc Header Comp", show.nrbc_header_comp, "Parse and add Nrbc Header Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_order_exec_notification = Pref.bool("Show Order Exec Notification", show.order_exec_notification, "Parse and add Order Exec Notification to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_order_exec_report_broadcast = Pref.bool("Show Order Exec Report Broadcast", show.order_exec_report_broadcast, "Parse and add Order Exec Report Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_order_exec_response = Pref.bool("Show Order Exec Response", show.order_exec_response, "Parse and add Order Exec Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_party_action_report = Pref.bool("Show Party Action Report", show.party_action_report, "Parse and add Party Action Report to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_party_details_grp_comp = Pref.bool("Show Party Details Grp Comp", show.party_details_grp_comp, "Parse and add Party Details Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_party_entitlements_update_report = Pref.bool("Show Party Entitlements Update Report", show.party_entitlements_update_report, "Parse and add Party Entitlements Update Report to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_quote_activation_notification = Pref.bool("Show Quote Activation Notification", show.quote_activation_notification, "Parse and add Quote Activation Notification to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_quote_activation_request = Pref.bool("Show Quote Activation Request", show.quote_activation_request, "Parse and add Quote Activation Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_quote_activation_response = Pref.bool("Show Quote Activation Response", show.quote_activation_response, "Parse and add Quote Activation Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_quote_entry_ack_grp_comp = Pref.bool("Show Quote Entry Ack Grp Comp", show.quote_entry_ack_grp_comp, "Parse and add Quote Entry Ack Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_quote_entry_grp_comp = Pref.bool("Show Quote Entry Grp Comp", show.quote_entry_grp_comp, "Parse and add Quote Entry Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_quote_event_grp_comp = Pref.bool("Show Quote Event Grp Comp", show.quote_event_grp_comp, "Parse and add Quote Event Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_quote_execution_report = Pref.bool("Show Quote Execution Report", show.quote_execution_report, "Parse and add Quote Execution Report to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_rbc_header_comp = Pref.bool("Show Rbc Header Comp", show.rbc_header_comp, "Parse and add Rbc Header Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_rbc_header_me_comp = Pref.bool("Show Rbc Header Me Comp", show.rbc_header_me_comp, "Parse and add Rbc Header Me Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_reject = Pref.bool("Show Reject", show.reject, "Parse and add Reject to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_request_header_comp = Pref.bool("Show Request Header Comp", show.request_header_comp, "Parse and add Request Header Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_response_header_comp = Pref.bool("Show Response Header Comp", show.response_header_comp, "Parse and add Response Header Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_response_header_me_comp = Pref.bool("Show Response Header Me Comp", show.response_header_me_comp, "Parse and add Response Header Me Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_retransmit_me_message_request = Pref.bool("Show Retransmit Me Message Request", show.retransmit_me_message_request, "Parse and add Retransmit Me Message Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_retransmit_me_message_response = Pref.bool("Show Retransmit Me Message Response", show.retransmit_me_message_response, "Parse and add Retransmit Me Message Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_retransmit_request = Pref.bool("Show Retransmit Request", show.retransmit_request, "Parse and add Retransmit Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_retransmit_response = Pref.bool("Show Retransmit Response", show.retransmit_response, "Parse and add Retransmit Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_rfq_broadcast = Pref.bool("Show Rfq Broadcast", show.rfq_broadcast, "Parse and add Rfq Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_rfq_request = Pref.bool("Show Rfq Request", show.rfq_request, "Parse and add Rfq Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_rfq_response = Pref.bool("Show Rfq Response", show.rfq_response, "Parse and add Rfq Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_service_availability_broadcast = Pref.bool("Show Service Availability Broadcast", show.service_availability_broadcast, "Parse and add Service Availability Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_sessions_grp_comp = Pref.bool("Show Sessions Grp Comp", show.sessions_grp_comp, "Parse and add Sessions Grp Comp to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_subscribe_request = Pref.bool("Show Subscribe Request", show.subscribe_request, "Parse and add Subscribe Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_subscribe_response = Pref.bool("Show Subscribe Response", show.subscribe_response, "Parse and add Subscribe Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_throttle_update_notification = Pref.bool("Show Throttle Update Notification", show.throttle_update_notification, "Parse and add Throttle Update Notification to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_tm_trading_session_status_broadcast = Pref.bool("Show Tm Trading Session Status Broadcast", show.tm_trading_session_status_broadcast, "Parse and add Tm Trading Session Status Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_trade_broadcast = Pref.bool("Show Trade Broadcast", show.trade_broadcast, "Parse and add Trade Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_trading_session_status_broadcast = Pref.bool("Show Trading Session Status Broadcast", show.trading_session_status_broadcast, "Parse and add Trading Session Status Broadcast to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_trailing_stop_update_notification = Pref.bool("Show Trailing Stop Update Notification", show.trailing_stop_update_notification, "Parse and add Trailing Stop Update Notification to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_unsubscribe_request = Pref.bool("Show Unsubscribe Request", show.unsubscribe_request, "Parse and add Unsubscribe Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_unsubscribe_response = Pref.bool("Show Unsubscribe Response", show.unsubscribe_response, "Parse and add Unsubscribe Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_user_login_request = Pref.bool("Show User Login Request", show.user_login_request, "Parse and add User Login Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_user_login_response = Pref.bool("Show User Login Response", show.user_login_response, "Parse and add User Login Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_user_logout_request = Pref.bool("Show User Logout Request", show.user_logout_request, "Parse and add User Logout Request to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_user_logout_response = Pref.bool("Show User Logout Response", show.user_logout_response, "Parse and add User Logout Response to protocol tree")
eurex_cash_eti_t7_v6_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function eurex_cash_eti_t7_v6_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.affected_ord_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_affected_ord_grp_comp then
    show.affected_ord_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_affected_ord_grp_comp
    changed = true
  end
  if show.best_quote_execution_report ~= eurex_cash_eti_t7_v6_0.prefs.show_best_quote_execution_report then
    show.best_quote_execution_report = eurex_cash_eti_t7_v6_0.prefs.show_best_quote_execution_report
    changed = true
  end
  if show.best_quote_response ~= eurex_cash_eti_t7_v6_0.prefs.show_best_quote_response then
    show.best_quote_response = eurex_cash_eti_t7_v6_0.prefs.show_best_quote_response
    changed = true
  end
  if show.broadcast_error_notification ~= eurex_cash_eti_t7_v6_0.prefs.show_broadcast_error_notification then
    show.broadcast_error_notification = eurex_cash_eti_t7_v6_0.prefs.show_broadcast_error_notification
    changed = true
  end
  if show.cross_request ~= eurex_cash_eti_t7_v6_0.prefs.show_cross_request then
    show.cross_request = eurex_cash_eti_t7_v6_0.prefs.show_cross_request
    changed = true
  end
  if show.cross_request_response ~= eurex_cash_eti_t7_v6_0.prefs.show_cross_request_response then
    show.cross_request_response = eurex_cash_eti_t7_v6_0.prefs.show_cross_request_response
    changed = true
  end
  if show.delete_all_order_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_broadcast then
    show.delete_all_order_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_broadcast
    changed = true
  end
  if show.delete_all_order_nr_response ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_nr_response then
    show.delete_all_order_nr_response = eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_nr_response
    changed = true
  end
  if show.delete_all_order_quote_event_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_quote_event_broadcast then
    show.delete_all_order_quote_event_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_quote_event_broadcast
    changed = true
  end
  if show.delete_all_order_request ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_request then
    show.delete_all_order_request = eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_request
    changed = true
  end
  if show.delete_all_order_response ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_response then
    show.delete_all_order_response = eurex_cash_eti_t7_v6_0.prefs.show_delete_all_order_response
    changed = true
  end
  if show.delete_all_quote_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_all_quote_broadcast then
    show.delete_all_quote_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_delete_all_quote_broadcast
    changed = true
  end
  if show.delete_all_quote_request ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_all_quote_request then
    show.delete_all_quote_request = eurex_cash_eti_t7_v6_0.prefs.show_delete_all_quote_request
    changed = true
  end
  if show.delete_all_quote_response ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_all_quote_response then
    show.delete_all_quote_response = eurex_cash_eti_t7_v6_0.prefs.show_delete_all_quote_response
    changed = true
  end
  if show.delete_order_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_order_broadcast then
    show.delete_order_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_delete_order_broadcast
    changed = true
  end
  if show.delete_order_nr_response ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_order_nr_response then
    show.delete_order_nr_response = eurex_cash_eti_t7_v6_0.prefs.show_delete_order_nr_response
    changed = true
  end
  if show.delete_order_response ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_order_response then
    show.delete_order_response = eurex_cash_eti_t7_v6_0.prefs.show_delete_order_response
    changed = true
  end
  if show.delete_order_single_request ~= eurex_cash_eti_t7_v6_0.prefs.show_delete_order_single_request then
    show.delete_order_single_request = eurex_cash_eti_t7_v6_0.prefs.show_delete_order_single_request
    changed = true
  end
  if show.enrichment_rules_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_enrichment_rules_grp_comp then
    show.enrichment_rules_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_enrichment_rules_grp_comp
    changed = true
  end
  if show.enter_best_quote_request ~= eurex_cash_eti_t7_v6_0.prefs.show_enter_best_quote_request then
    show.enter_best_quote_request = eurex_cash_eti_t7_v6_0.prefs.show_enter_best_quote_request
    changed = true
  end
  if show.extended_deletion_report ~= eurex_cash_eti_t7_v6_0.prefs.show_extended_deletion_report then
    show.extended_deletion_report = eurex_cash_eti_t7_v6_0.prefs.show_extended_deletion_report
    changed = true
  end
  if show.fills_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_fills_grp_comp then
    show.fills_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_fills_grp_comp
    changed = true
  end
  if show.forced_logout_notification ~= eurex_cash_eti_t7_v6_0.prefs.show_forced_logout_notification then
    show.forced_logout_notification = eurex_cash_eti_t7_v6_0.prefs.show_forced_logout_notification
    changed = true
  end
  if show.forced_user_logout_notification ~= eurex_cash_eti_t7_v6_0.prefs.show_forced_user_logout_notification then
    show.forced_user_logout_notification = eurex_cash_eti_t7_v6_0.prefs.show_forced_user_logout_notification
    changed = true
  end
  if show.gateway_request ~= eurex_cash_eti_t7_v6_0.prefs.show_gateway_request then
    show.gateway_request = eurex_cash_eti_t7_v6_0.prefs.show_gateway_request
    changed = true
  end
  if show.gateway_response ~= eurex_cash_eti_t7_v6_0.prefs.show_gateway_response then
    show.gateway_response = eurex_cash_eti_t7_v6_0.prefs.show_gateway_response
    changed = true
  end
  if show.heartbeat ~= eurex_cash_eti_t7_v6_0.prefs.show_heartbeat then
    show.heartbeat = eurex_cash_eti_t7_v6_0.prefs.show_heartbeat
    changed = true
  end
  if show.heartbeat_notification ~= eurex_cash_eti_t7_v6_0.prefs.show_heartbeat_notification then
    show.heartbeat_notification = eurex_cash_eti_t7_v6_0.prefs.show_heartbeat_notification
    changed = true
  end
  if show.inquire_enrichment_rule_id_list_request ~= eurex_cash_eti_t7_v6_0.prefs.show_inquire_enrichment_rule_id_list_request then
    show.inquire_enrichment_rule_id_list_request = eurex_cash_eti_t7_v6_0.prefs.show_inquire_enrichment_rule_id_list_request
    changed = true
  end
  if show.inquire_enrichment_rule_id_list_response ~= eurex_cash_eti_t7_v6_0.prefs.show_inquire_enrichment_rule_id_list_response then
    show.inquire_enrichment_rule_id_list_response = eurex_cash_eti_t7_v6_0.prefs.show_inquire_enrichment_rule_id_list_response
    changed = true
  end
  if show.inquire_session_list_request ~= eurex_cash_eti_t7_v6_0.prefs.show_inquire_session_list_request then
    show.inquire_session_list_request = eurex_cash_eti_t7_v6_0.prefs.show_inquire_session_list_request
    changed = true
  end
  if show.inquire_session_list_response ~= eurex_cash_eti_t7_v6_0.prefs.show_inquire_session_list_response then
    show.inquire_session_list_response = eurex_cash_eti_t7_v6_0.prefs.show_inquire_session_list_response
    changed = true
  end
  if show.inquire_user_request ~= eurex_cash_eti_t7_v6_0.prefs.show_inquire_user_request then
    show.inquire_user_request = eurex_cash_eti_t7_v6_0.prefs.show_inquire_user_request
    changed = true
  end
  if show.inquire_user_response ~= eurex_cash_eti_t7_v6_0.prefs.show_inquire_user_response then
    show.inquire_user_response = eurex_cash_eti_t7_v6_0.prefs.show_inquire_user_response
    changed = true
  end
  if show.legal_notification_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_legal_notification_broadcast then
    show.legal_notification_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_legal_notification_broadcast
    changed = true
  end
  if show.logon_request ~= eurex_cash_eti_t7_v6_0.prefs.show_logon_request then
    show.logon_request = eurex_cash_eti_t7_v6_0.prefs.show_logon_request
    changed = true
  end
  if show.logon_response ~= eurex_cash_eti_t7_v6_0.prefs.show_logon_response then
    show.logon_response = eurex_cash_eti_t7_v6_0.prefs.show_logon_response
    changed = true
  end
  if show.logout_request ~= eurex_cash_eti_t7_v6_0.prefs.show_logout_request then
    show.logout_request = eurex_cash_eti_t7_v6_0.prefs.show_logout_request
    changed = true
  end
  if show.logout_response ~= eurex_cash_eti_t7_v6_0.prefs.show_logout_response then
    show.logout_response = eurex_cash_eti_t7_v6_0.prefs.show_logout_response
    changed = true
  end
  if show.mass_quote_request ~= eurex_cash_eti_t7_v6_0.prefs.show_mass_quote_request then
    show.mass_quote_request = eurex_cash_eti_t7_v6_0.prefs.show_mass_quote_request
    changed = true
  end
  if show.mass_quote_response ~= eurex_cash_eti_t7_v6_0.prefs.show_mass_quote_response then
    show.mass_quote_response = eurex_cash_eti_t7_v6_0.prefs.show_mass_quote_response
    changed = true
  end
  if show.message ~= eurex_cash_eti_t7_v6_0.prefs.show_message then
    show.message = eurex_cash_eti_t7_v6_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= eurex_cash_eti_t7_v6_0.prefs.show_message_header then
    show.message_header = eurex_cash_eti_t7_v6_0.prefs.show_message_header
    changed = true
  end
  if show.modify_order_nr_response ~= eurex_cash_eti_t7_v6_0.prefs.show_modify_order_nr_response then
    show.modify_order_nr_response = eurex_cash_eti_t7_v6_0.prefs.show_modify_order_nr_response
    changed = true
  end
  if show.modify_order_response ~= eurex_cash_eti_t7_v6_0.prefs.show_modify_order_response then
    show.modify_order_response = eurex_cash_eti_t7_v6_0.prefs.show_modify_order_response
    changed = true
  end
  if show.modify_order_single_request ~= eurex_cash_eti_t7_v6_0.prefs.show_modify_order_single_request then
    show.modify_order_single_request = eurex_cash_eti_t7_v6_0.prefs.show_modify_order_single_request
    changed = true
  end
  if show.modify_order_single_short_request ~= eurex_cash_eti_t7_v6_0.prefs.show_modify_order_single_short_request then
    show.modify_order_single_short_request = eurex_cash_eti_t7_v6_0.prefs.show_modify_order_single_short_request
    changed = true
  end
  if show.new_order_nr_response ~= eurex_cash_eti_t7_v6_0.prefs.show_new_order_nr_response then
    show.new_order_nr_response = eurex_cash_eti_t7_v6_0.prefs.show_new_order_nr_response
    changed = true
  end
  if show.new_order_response ~= eurex_cash_eti_t7_v6_0.prefs.show_new_order_response then
    show.new_order_response = eurex_cash_eti_t7_v6_0.prefs.show_new_order_response
    changed = true
  end
  if show.new_order_single_request ~= eurex_cash_eti_t7_v6_0.prefs.show_new_order_single_request then
    show.new_order_single_request = eurex_cash_eti_t7_v6_0.prefs.show_new_order_single_request
    changed = true
  end
  if show.new_order_single_short_request ~= eurex_cash_eti_t7_v6_0.prefs.show_new_order_single_short_request then
    show.new_order_single_short_request = eurex_cash_eti_t7_v6_0.prefs.show_new_order_single_short_request
    changed = true
  end
  if show.news_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_news_broadcast then
    show.news_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_news_broadcast
    changed = true
  end
  if show.not_affected_orders_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_not_affected_orders_grp_comp then
    show.not_affected_orders_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_not_affected_orders_grp_comp
    changed = true
  end
  if show.not_affected_securities_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_not_affected_securities_grp_comp then
    show.not_affected_securities_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_not_affected_securities_grp_comp
    changed = true
  end
  if show.notif_header_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_notif_header_comp then
    show.notif_header_comp = eurex_cash_eti_t7_v6_0.prefs.show_notif_header_comp
    changed = true
  end
  if show.nr_response_header_me_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_nr_response_header_me_comp then
    show.nr_response_header_me_comp = eurex_cash_eti_t7_v6_0.prefs.show_nr_response_header_me_comp
    changed = true
  end
  if show.nrbc_header_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_nrbc_header_comp then
    show.nrbc_header_comp = eurex_cash_eti_t7_v6_0.prefs.show_nrbc_header_comp
    changed = true
  end
  if show.order_exec_notification ~= eurex_cash_eti_t7_v6_0.prefs.show_order_exec_notification then
    show.order_exec_notification = eurex_cash_eti_t7_v6_0.prefs.show_order_exec_notification
    changed = true
  end
  if show.order_exec_report_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_order_exec_report_broadcast then
    show.order_exec_report_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_order_exec_report_broadcast
    changed = true
  end
  if show.order_exec_response ~= eurex_cash_eti_t7_v6_0.prefs.show_order_exec_response then
    show.order_exec_response = eurex_cash_eti_t7_v6_0.prefs.show_order_exec_response
    changed = true
  end
  if show.packet ~= eurex_cash_eti_t7_v6_0.prefs.show_packet then
    show.packet = eurex_cash_eti_t7_v6_0.prefs.show_packet
    changed = true
  end
  if show.party_action_report ~= eurex_cash_eti_t7_v6_0.prefs.show_party_action_report then
    show.party_action_report = eurex_cash_eti_t7_v6_0.prefs.show_party_action_report
    changed = true
  end
  if show.party_details_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_party_details_grp_comp then
    show.party_details_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_party_details_grp_comp
    changed = true
  end
  if show.party_entitlements_update_report ~= eurex_cash_eti_t7_v6_0.prefs.show_party_entitlements_update_report then
    show.party_entitlements_update_report = eurex_cash_eti_t7_v6_0.prefs.show_party_entitlements_update_report
    changed = true
  end
  if show.quote_activation_notification ~= eurex_cash_eti_t7_v6_0.prefs.show_quote_activation_notification then
    show.quote_activation_notification = eurex_cash_eti_t7_v6_0.prefs.show_quote_activation_notification
    changed = true
  end
  if show.quote_activation_request ~= eurex_cash_eti_t7_v6_0.prefs.show_quote_activation_request then
    show.quote_activation_request = eurex_cash_eti_t7_v6_0.prefs.show_quote_activation_request
    changed = true
  end
  if show.quote_activation_response ~= eurex_cash_eti_t7_v6_0.prefs.show_quote_activation_response then
    show.quote_activation_response = eurex_cash_eti_t7_v6_0.prefs.show_quote_activation_response
    changed = true
  end
  if show.quote_entry_ack_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_quote_entry_ack_grp_comp then
    show.quote_entry_ack_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_quote_entry_ack_grp_comp
    changed = true
  end
  if show.quote_entry_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_quote_entry_grp_comp then
    show.quote_entry_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_quote_entry_grp_comp
    changed = true
  end
  if show.quote_event_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_quote_event_grp_comp then
    show.quote_event_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_quote_event_grp_comp
    changed = true
  end
  if show.quote_execution_report ~= eurex_cash_eti_t7_v6_0.prefs.show_quote_execution_report then
    show.quote_execution_report = eurex_cash_eti_t7_v6_0.prefs.show_quote_execution_report
    changed = true
  end
  if show.rbc_header_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_rbc_header_comp then
    show.rbc_header_comp = eurex_cash_eti_t7_v6_0.prefs.show_rbc_header_comp
    changed = true
  end
  if show.rbc_header_me_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_rbc_header_me_comp then
    show.rbc_header_me_comp = eurex_cash_eti_t7_v6_0.prefs.show_rbc_header_me_comp
    changed = true
  end
  if show.reject ~= eurex_cash_eti_t7_v6_0.prefs.show_reject then
    show.reject = eurex_cash_eti_t7_v6_0.prefs.show_reject
    changed = true
  end
  if show.request_header_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_request_header_comp then
    show.request_header_comp = eurex_cash_eti_t7_v6_0.prefs.show_request_header_comp
    changed = true
  end
  if show.response_header_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_response_header_comp then
    show.response_header_comp = eurex_cash_eti_t7_v6_0.prefs.show_response_header_comp
    changed = true
  end
  if show.response_header_me_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_response_header_me_comp then
    show.response_header_me_comp = eurex_cash_eti_t7_v6_0.prefs.show_response_header_me_comp
    changed = true
  end
  if show.retransmit_me_message_request ~= eurex_cash_eti_t7_v6_0.prefs.show_retransmit_me_message_request then
    show.retransmit_me_message_request = eurex_cash_eti_t7_v6_0.prefs.show_retransmit_me_message_request
    changed = true
  end
  if show.retransmit_me_message_response ~= eurex_cash_eti_t7_v6_0.prefs.show_retransmit_me_message_response then
    show.retransmit_me_message_response = eurex_cash_eti_t7_v6_0.prefs.show_retransmit_me_message_response
    changed = true
  end
  if show.retransmit_request ~= eurex_cash_eti_t7_v6_0.prefs.show_retransmit_request then
    show.retransmit_request = eurex_cash_eti_t7_v6_0.prefs.show_retransmit_request
    changed = true
  end
  if show.retransmit_response ~= eurex_cash_eti_t7_v6_0.prefs.show_retransmit_response then
    show.retransmit_response = eurex_cash_eti_t7_v6_0.prefs.show_retransmit_response
    changed = true
  end
  if show.rfq_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_rfq_broadcast then
    show.rfq_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_rfq_broadcast
    changed = true
  end
  if show.rfq_request ~= eurex_cash_eti_t7_v6_0.prefs.show_rfq_request then
    show.rfq_request = eurex_cash_eti_t7_v6_0.prefs.show_rfq_request
    changed = true
  end
  if show.rfq_response ~= eurex_cash_eti_t7_v6_0.prefs.show_rfq_response then
    show.rfq_response = eurex_cash_eti_t7_v6_0.prefs.show_rfq_response
    changed = true
  end
  if show.service_availability_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_service_availability_broadcast then
    show.service_availability_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_service_availability_broadcast
    changed = true
  end
  if show.sessions_grp_comp ~= eurex_cash_eti_t7_v6_0.prefs.show_sessions_grp_comp then
    show.sessions_grp_comp = eurex_cash_eti_t7_v6_0.prefs.show_sessions_grp_comp
    changed = true
  end
  if show.subscribe_request ~= eurex_cash_eti_t7_v6_0.prefs.show_subscribe_request then
    show.subscribe_request = eurex_cash_eti_t7_v6_0.prefs.show_subscribe_request
    changed = true
  end
  if show.subscribe_response ~= eurex_cash_eti_t7_v6_0.prefs.show_subscribe_response then
    show.subscribe_response = eurex_cash_eti_t7_v6_0.prefs.show_subscribe_response
    changed = true
  end
  if show.throttle_update_notification ~= eurex_cash_eti_t7_v6_0.prefs.show_throttle_update_notification then
    show.throttle_update_notification = eurex_cash_eti_t7_v6_0.prefs.show_throttle_update_notification
    changed = true
  end
  if show.tm_trading_session_status_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_tm_trading_session_status_broadcast then
    show.tm_trading_session_status_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_tm_trading_session_status_broadcast
    changed = true
  end
  if show.trade_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_trade_broadcast then
    show.trade_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_trade_broadcast
    changed = true
  end
  if show.trading_session_status_broadcast ~= eurex_cash_eti_t7_v6_0.prefs.show_trading_session_status_broadcast then
    show.trading_session_status_broadcast = eurex_cash_eti_t7_v6_0.prefs.show_trading_session_status_broadcast
    changed = true
  end
  if show.trailing_stop_update_notification ~= eurex_cash_eti_t7_v6_0.prefs.show_trailing_stop_update_notification then
    show.trailing_stop_update_notification = eurex_cash_eti_t7_v6_0.prefs.show_trailing_stop_update_notification
    changed = true
  end
  if show.unsubscribe_request ~= eurex_cash_eti_t7_v6_0.prefs.show_unsubscribe_request then
    show.unsubscribe_request = eurex_cash_eti_t7_v6_0.prefs.show_unsubscribe_request
    changed = true
  end
  if show.unsubscribe_response ~= eurex_cash_eti_t7_v6_0.prefs.show_unsubscribe_response then
    show.unsubscribe_response = eurex_cash_eti_t7_v6_0.prefs.show_unsubscribe_response
    changed = true
  end
  if show.user_login_request ~= eurex_cash_eti_t7_v6_0.prefs.show_user_login_request then
    show.user_login_request = eurex_cash_eti_t7_v6_0.prefs.show_user_login_request
    changed = true
  end
  if show.user_login_response ~= eurex_cash_eti_t7_v6_0.prefs.show_user_login_response then
    show.user_login_response = eurex_cash_eti_t7_v6_0.prefs.show_user_login_response
    changed = true
  end
  if show.user_logout_request ~= eurex_cash_eti_t7_v6_0.prefs.show_user_logout_request then
    show.user_logout_request = eurex_cash_eti_t7_v6_0.prefs.show_user_logout_request
    changed = true
  end
  if show.user_logout_response ~= eurex_cash_eti_t7_v6_0.prefs.show_user_logout_response then
    show.user_logout_response = eurex_cash_eti_t7_v6_0.prefs.show_user_logout_response
    changed = true
  end
  if show.payload ~= eurex_cash_eti_t7_v6_0.prefs.show_payload then
    show.payload = eurex_cash_eti_t7_v6_0.prefs.show_payload
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
-- Dissect Eurex Cash Eti T7 6.0
-----------------------------------------------------------------------

-- Size: Pad 4
eurex_cash_eti_t7_v6_0_size_of.pad_4 = 4

-- Display: Pad 4
eurex_cash_eti_t7_v6_0_display.pad_4 = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
eurex_cash_eti_t7_v6_0_dissect.pad_4 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.pad_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.pad_4(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Size: Msg Seq Num
eurex_cash_eti_t7_v6_0_size_of.msg_seq_num = 4

-- Display: Msg Seq Num
eurex_cash_eti_t7_v6_0_display.msg_seq_num = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
eurex_cash_eti_t7_v6_0_dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Sending Time
eurex_cash_eti_t7_v6_0_size_of.sending_time = 8

-- Display: Sending Time
eurex_cash_eti_t7_v6_0_display.sending_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
eurex_cash_eti_t7_v6_0_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Request Time
eurex_cash_eti_t7_v6_0_size_of.request_time = 8

-- Display: Request Time
eurex_cash_eti_t7_v6_0_display.request_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Request Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Time
eurex_cash_eti_t7_v6_0_dissect.request_time = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.request_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.request_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.request_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Response Header Comp
eurex_cash_eti_t7_v6_0_size_of.response_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.request_time

  index = index + eurex_cash_eti_t7_v6_0_size_of.sending_time

  index = index + eurex_cash_eti_t7_v6_0_size_of.msg_seq_num

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_4

  return index
end

-- Display: Response Header Comp
eurex_cash_eti_t7_v6_0_display.response_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Response Header Comp
eurex_cash_eti_t7_v6_0_dissect.response_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = eurex_cash_eti_t7_v6_0_dissect.request_time(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = eurex_cash_eti_t7_v6_0_dissect.sending_time(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = eurex_cash_eti_t7_v6_0_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Comp
eurex_cash_eti_t7_v6_0_dissect.response_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.response_header_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.response_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.response_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.response_header_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.response_header_comp_fields(buffer, offset, packet, parent)
end

-- Size: Pad 2
eurex_cash_eti_t7_v6_0_size_of.pad_2 = 2

-- Display: Pad 2
eurex_cash_eti_t7_v6_0_display.pad_2 = function(value)
  return "Pad 2: "..value
end

-- Dissect: Pad 2
eurex_cash_eti_t7_v6_0_dissect.pad_2 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.pad_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.pad_2(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.pad_2, range, value, display)

  return offset + length, value
end

-- Display: User Logout Response
eurex_cash_eti_t7_v6_0_display.user_logout_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Logout Response
eurex_cash_eti_t7_v6_0_dissect.user_logout_response_fields = function(buffer, offset, packet, parent, size_of_user_logout_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: User Logout Response
eurex_cash_eti_t7_v6_0_dissect.user_logout_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_user_logout_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.user_logout_response then
    local range = buffer(offset, size_of_user_logout_response)
    local display = eurex_cash_eti_t7_v6_0_display.user_logout_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.user_logout_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.user_logout_response_fields(buffer, offset, packet, parent, size_of_user_logout_response)

  return offset + size_of_user_logout_response
end

-- Size: Username
eurex_cash_eti_t7_v6_0_size_of.username = 4

-- Display: Username
eurex_cash_eti_t7_v6_0_display.username = function(value)
  return "Username: "..value
end

-- Dissect: Username
eurex_cash_eti_t7_v6_0_dissect.username = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.username
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.username(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.username, range, value, display)

  return offset + length, value
end

-- Size: Sender Sub Id
eurex_cash_eti_t7_v6_0_size_of.sender_sub_id = 4

-- Display: Sender Sub Id
eurex_cash_eti_t7_v6_0_display.sender_sub_id = function(value)
  return "Sender Sub Id: "..value
end

-- Dissect: Sender Sub Id
eurex_cash_eti_t7_v6_0_dissect.sender_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.sender_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.sender_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.sender_sub_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request Header Comp
eurex_cash_eti_t7_v6_0_size_of.request_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.msg_seq_num

  index = index + eurex_cash_eti_t7_v6_0_size_of.sender_sub_id

  return index
end

-- Display: Request Header Comp
eurex_cash_eti_t7_v6_0_display.request_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request Header Comp
eurex_cash_eti_t7_v6_0_dissect.request_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = eurex_cash_eti_t7_v6_0_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Sender Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, sender_sub_id = eurex_cash_eti_t7_v6_0_dissect.sender_sub_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Header Comp
eurex_cash_eti_t7_v6_0_dissect.request_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_header_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.request_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.request_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.request_header_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.request_header_comp_fields(buffer, offset, packet, parent)
end

-- Size: Network Msg Id
eurex_cash_eti_t7_v6_0_size_of.network_msg_id = 8

-- Display: Network Msg Id
eurex_cash_eti_t7_v6_0_display.network_msg_id = function(value)
  return "Network Msg Id: "..value
end

-- Dissect: Network Msg Id
eurex_cash_eti_t7_v6_0_dissect.network_msg_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.network_msg_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.network_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.network_msg_id, range, value, display)

  return offset + length, value
end

-- Display: User Logout Request
eurex_cash_eti_t7_v6_0_display.user_logout_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Logout Request
eurex_cash_eti_t7_v6_0_dissect.user_logout_request_fields = function(buffer, offset, packet, parent, size_of_user_logout_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer
  index, username = eurex_cash_eti_t7_v6_0_dissect.username(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: User Logout Request
eurex_cash_eti_t7_v6_0_dissect.user_logout_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_user_logout_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.user_logout_request then
    local range = buffer(offset, size_of_user_logout_request)
    local display = eurex_cash_eti_t7_v6_0_display.user_logout_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.user_logout_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.user_logout_request_fields(buffer, offset, packet, parent, size_of_user_logout_request)

  return offset + size_of_user_logout_request
end

-- Display: User Login Response
eurex_cash_eti_t7_v6_0_display.user_login_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Login Response
eurex_cash_eti_t7_v6_0_dissect.user_login_response_fields = function(buffer, offset, packet, parent, size_of_user_login_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: User Login Response
eurex_cash_eti_t7_v6_0_dissect.user_login_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_user_login_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.user_login_response then
    local range = buffer(offset, size_of_user_login_response)
    local display = eurex_cash_eti_t7_v6_0_display.user_login_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.user_login_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.user_login_response_fields(buffer, offset, packet, parent, size_of_user_login_response)

  return offset + size_of_user_login_response
end

-- Size: Password
eurex_cash_eti_t7_v6_0_size_of.password = 32

-- Display: Password
eurex_cash_eti_t7_v6_0_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
eurex_cash_eti_t7_v6_0_dissect.password = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.password
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.password(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.password, range, value, display)

  return offset + length, value
end

-- Display: User Login Request
eurex_cash_eti_t7_v6_0_display.user_login_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Login Request
eurex_cash_eti_t7_v6_0_dissect.user_login_request_fields = function(buffer, offset, packet, parent, size_of_user_login_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer
  index, username = eurex_cash_eti_t7_v6_0_dissect.username(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = eurex_cash_eti_t7_v6_0_dissect.password(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: User Login Request
eurex_cash_eti_t7_v6_0_dissect.user_login_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_user_login_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.user_login_request then
    local range = buffer(offset, size_of_user_login_request)
    local display = eurex_cash_eti_t7_v6_0_display.user_login_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.user_login_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.user_login_request_fields(buffer, offset, packet, parent, size_of_user_login_request)

  return offset + size_of_user_login_request
end

-- Display: Unsubscribe Response
eurex_cash_eti_t7_v6_0_display.unsubscribe_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsubscribe Response
eurex_cash_eti_t7_v6_0_dissect.unsubscribe_response_fields = function(buffer, offset, packet, parent, size_of_unsubscribe_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsubscribe Response
eurex_cash_eti_t7_v6_0_dissect.unsubscribe_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_unsubscribe_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.unsubscribe_response then
    local range = buffer(offset, size_of_unsubscribe_response)
    local display = eurex_cash_eti_t7_v6_0_display.unsubscribe_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.unsubscribe_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.unsubscribe_response_fields(buffer, offset, packet, parent, size_of_unsubscribe_response)

  return offset + size_of_unsubscribe_response
end

-- Size: Ref Appl Sub Id
eurex_cash_eti_t7_v6_0_size_of.ref_appl_sub_id = 4

-- Display: Ref Appl Sub Id
eurex_cash_eti_t7_v6_0_display.ref_appl_sub_id = function(value)
  return "Ref Appl Sub Id: "..value
end

-- Dissect: Ref Appl Sub Id
eurex_cash_eti_t7_v6_0_dissect.ref_appl_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.ref_appl_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.ref_appl_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.ref_appl_sub_id, range, value, display)

  return offset + length, value
end

-- Display: Unsubscribe Request
eurex_cash_eti_t7_v6_0_display.unsubscribe_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unsubscribe Request
eurex_cash_eti_t7_v6_0_dissect.unsubscribe_request_fields = function(buffer, offset, packet, parent, size_of_unsubscribe_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Ref Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, ref_appl_sub_id = eurex_cash_eti_t7_v6_0_dissect.ref_appl_sub_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Unsubscribe Request
eurex_cash_eti_t7_v6_0_dissect.unsubscribe_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_unsubscribe_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.unsubscribe_request then
    local range = buffer(offset, size_of_unsubscribe_request)
    local display = eurex_cash_eti_t7_v6_0_display.unsubscribe_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.unsubscribe_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.unsubscribe_request_fields(buffer, offset, packet, parent, size_of_unsubscribe_request)

  return offset + size_of_unsubscribe_request
end

-- Size: Pad 3
eurex_cash_eti_t7_v6_0_size_of.pad_3 = 3

-- Display: Pad 3
eurex_cash_eti_t7_v6_0_display.pad_3 = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
eurex_cash_eti_t7_v6_0_dissect.pad_3 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.pad_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.pad_3(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Size: Fix Cl Ord Id
eurex_cash_eti_t7_v6_0_size_of.fix_cl_ord_id = 20

-- Display: Fix Cl Ord Id
eurex_cash_eti_t7_v6_0_display.fix_cl_ord_id = function(value)
  return "Fix Cl Ord Id: "..value
end

-- Dissect: Fix Cl Ord Id
eurex_cash_eti_t7_v6_0_dissect.fix_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.fix_cl_ord_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.fix_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.fix_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Side
eurex_cash_eti_t7_v6_0_size_of.side = 1

-- Display: Side
eurex_cash_eti_t7_v6_0_display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
eurex_cash_eti_t7_v6_0_dissect.side = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.side(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Exec Type
eurex_cash_eti_t7_v6_0_size_of.exec_type = 1

-- Display: Exec Type
eurex_cash_eti_t7_v6_0_display.exec_type = function(value)
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
eurex_cash_eti_t7_v6_0_dissect.exec_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.exec_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = eurex_cash_eti_t7_v6_0_display.exec_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.exec_type, range, value, display)

  return offset + length, value
end

-- Size: Ord Status
eurex_cash_eti_t7_v6_0_size_of.ord_status = 1

-- Display: Ord Status
eurex_cash_eti_t7_v6_0_display.ord_status = function(value)
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
eurex_cash_eti_t7_v6_0_dissect.ord_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.ord_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = eurex_cash_eti_t7_v6_0_display.ord_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.ord_status, range, value, display)

  return offset + length, value
end

-- Size: Exec Restatement Reason
eurex_cash_eti_t7_v6_0_size_of.exec_restatement_reason = 2

-- Display: Exec Restatement Reason
eurex_cash_eti_t7_v6_0_display.exec_restatement_reason = function(value)
  if value == 0 then
    return "Exec Restatement Reason: Corporate Action (0)"
  end
  if value == 1 then
    return "Exec Restatement Reason: Order Book Restatement (1)"
  end
  if value == 8 then
    return "Exec Restatement Reason: Exchange Option (8)"
  end
  if value == 101 then
    return "Exec Restatement Reason: Order Added (101)"
  end
  if value == 102 then
    return "Exec Restatement Reason: Order Modified (102)"
  end
  if value == 103 then
    return "Exec Restatement Reason: Order Cancelled (103)"
  end
  if value == 105 then
    return "Exec Restatement Reason: Ioc Order Cancelled (105)"
  end
  if value == 107 then
    return "Exec Restatement Reason: Fok Order Cancelled (107)"
  end
  if value == 108 then
    return "Exec Restatement Reason: Book Order Executed (108)"
  end
  if value == 122 then
    return "Exec Restatement Reason: Instrument State Change (122)"
  end
  if value == 146 then
    return "Exec Restatement Reason: End Of Day Processing (146)"
  end
  if value == 148 then
    return "Exec Restatement Reason: Order Expiration (148)"
  end
  if value == 149 then
    return "Exec Restatement Reason: Cao Order Activated (149)"
  end
  if value == 150 then
    return "Exec Restatement Reason: Cao Order Inactivated (150)"
  end
  if value == 151 then
    return "Exec Restatement Reason: Oao Order Activated (151)"
  end
  if value == 152 then
    return "Exec Restatement Reason: Oao Order Inactivated (152)"
  end
  if value == 153 then
    return "Exec Restatement Reason: Aao Order Activated (153)"
  end
  if value == 154 then
    return "Exec Restatement Reason: Aao Order Inactivated (154)"
  end
  if value == 155 then
    return "Exec Restatement Reason: Order Refreshed (155)"
  end
  if value == 164 then
    return "Exec Restatement Reason: Oco Order Triggered (164)"
  end
  if value == 172 then
    return "Exec Restatement Reason: Stop Order Triggered (172)"
  end
  if value == 181 then
    return "Exec Restatement Reason: Ownership Changed (181)"
  end
  if value == 197 then
    return "Exec Restatement Reason: Order Cancellation Pending (197)"
  end
  if value == 199 then
    return "Exec Restatement Reason: Pending Cancellation Executed (199)"
  end
  if value == 212 then
    return "Exec Restatement Reason: Boc Order Cancelled (212)"
  end
  if value == 213 then
    return "Exec Restatement Reason: Trailing Stop Update (213)"
  end
  if value == 237 then
    return "Exec Restatement Reason: Exceeds Maximum Quantity (237)"
  end
  if value == 238 then
    return "Exec Restatement Reason: Invalid Limit Price (238)"
  end
  if value == 241 then
    return "Exec Restatement Reason: User Does Not Exist (241)"
  end
  if value == 242 then
    return "Exec Restatement Reason: Session Does Not Exist (242)"
  end
  if value == 243 then
    return "Exec Restatement Reason: Invalid Stop Price (243)"
  end
  if value == 245 then
    return "Exec Restatement Reason: Instrument Does Not Exist (245)"
  end
  if value == 246 then
    return "Exec Restatement Reason: Business Unit Risk Event (246)"
  end
  if value == 292 then
    return "Exec Restatement Reason: Dividend Payment (292)"
  end
  if value == 294 then
    return "Exec Restatement Reason: Last Trading Day (294)"
  end
  if value == 295 then
    return "Exec Restatement Reason: Trading Parameter Change (295)"
  end
  if value == 296 then
    return "Exec Restatement Reason: Currency Change (296)"
  end
  if value == 297 then
    return "Exec Restatement Reason: Product Assignment Change (297)"
  end
  if value == 298 then
    return "Exec Restatement Reason: Reference Price Change (298)"
  end
  if value == 300 then
    return "Exec Restatement Reason: Tick Rule Change (300)"
  end

  return "Exec Restatement Reason: Unknown("..value..")"
end

-- Dissect: Exec Restatement Reason
eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.exec_restatement_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.exec_restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
eurex_cash_eti_t7_v6_0_size_of.order_qty = 4

-- Display: Order Qty
eurex_cash_eti_t7_v6_0_display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
eurex_cash_eti_t7_v6_0_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.order_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Id
eurex_cash_eti_t7_v6_0_size_of.market_segment_id = 4

-- Display: Market Segment Id
eurex_cash_eti_t7_v6_0_display.market_segment_id = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
eurex_cash_eti_t7_v6_0_dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.market_segment_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id Sfx
eurex_cash_eti_t7_v6_0_size_of.order_id_sfx = 4

-- Display: Order Id Sfx
eurex_cash_eti_t7_v6_0_display.order_id_sfx = function(value)
  return "Order Id Sfx: "..value
end

-- Dissect: Order Id Sfx
eurex_cash_eti_t7_v6_0_dissect.order_id_sfx = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.order_id_sfx
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.order_id_sfx(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.order_id_sfx, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
eurex_cash_eti_t7_v6_0_size_of.stop_px = 8

-- Display: Stop Px
eurex_cash_eti_t7_v6_0_display.stop_px = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
translate.stop_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
eurex_cash_eti_t7_v6_0_dissect.stop_px = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.stop_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.stop_px(raw)
  local display = eurex_cash_eti_t7_v6_0_display.stop_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
eurex_cash_eti_t7_v6_0_size_of.exec_id = 8

-- Display: Exec Id
eurex_cash_eti_t7_v6_0_display.exec_id = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Exec Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Exec Id
eurex_cash_eti_t7_v6_0_dissect.exec_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Security Id
eurex_cash_eti_t7_v6_0_size_of.security_id = 8

-- Display: Security Id
eurex_cash_eti_t7_v6_0_display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
eurex_cash_eti_t7_v6_0_dissect.security_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_cash_eti_t7_v6_0_display.security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.security_id, range, value, display)

  return offset + length, value
end

-- Size: Orig Cl Ord Id
eurex_cash_eti_t7_v6_0_size_of.orig_cl_ord_id = 8

-- Display: Orig Cl Ord Id
eurex_cash_eti_t7_v6_0_display.orig_cl_ord_id = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Cl Ord Id
eurex_cash_eti_t7_v6_0_size_of.cl_ord_id = 8

-- Display: Cl Ord Id
eurex_cash_eti_t7_v6_0_display.cl_ord_id = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
eurex_cash_eti_t7_v6_0_dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
eurex_cash_eti_t7_v6_0_size_of.order_id = 8

-- Display: Order Id
eurex_cash_eti_t7_v6_0_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
eurex_cash_eti_t7_v6_0_dissect.order_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.order_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Pad 7
eurex_cash_eti_t7_v6_0_size_of.pad_7 = 7

-- Display: Pad 7
eurex_cash_eti_t7_v6_0_display.pad_7 = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
eurex_cash_eti_t7_v6_0_dissect.pad_7 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.pad_7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.pad_7(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Size: Last Fragment
eurex_cash_eti_t7_v6_0_size_of.last_fragment = 1

-- Display: Last Fragment
eurex_cash_eti_t7_v6_0_display.last_fragment = function(value)
  if value == 0 then
    return "Last Fragment: Not Last Message (0)"
  end
  if value == 1 then
    return "Last Fragment: Last Message (1)"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
eurex_cash_eti_t7_v6_0_dissect.last_fragment = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.last_fragment
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.last_fragment(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Size: Appl Resend Flag
eurex_cash_eti_t7_v6_0_size_of.appl_resend_flag = 1

-- Display: Appl Resend Flag
eurex_cash_eti_t7_v6_0_display.appl_resend_flag = function(value)
  if value == 0 then
    return "Appl Resend Flag: False (0)"
  end
  if value == 1 then
    return "Appl Resend Flag: True (1)"
  end

  return "Appl Resend Flag: Unknown("..value..")"
end

-- Dissect: Appl Resend Flag
eurex_cash_eti_t7_v6_0_dissect.appl_resend_flag = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_resend_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.appl_resend_flag(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_resend_flag, range, value, display)

  return offset + length, value
end

-- Size: Appl Id
eurex_cash_eti_t7_v6_0_size_of.appl_id = 1

-- Display: Appl Id
eurex_cash_eti_t7_v6_0_display.appl_id = function(value)
  if value == 1 then
    return "Appl Id: Trade (1)"
  end
  if value == 2 then
    return "Appl Id: News (2)"
  end
  if value == 3 then
    return "Appl Id: Serviceavailability (3)"
  end
  if value == 4 then
    return "Appl Id: Sessiondata (4)"
  end
  if value == 5 then
    return "Appl Id: Listenerdata (5)"
  end
  if value == 6 then
    return "Appl Id: Risk Control (6)"
  end

  return "Appl Id: Unknown("..value..")"
end

-- Dissect: Appl Id
eurex_cash_eti_t7_v6_0_dissect.appl_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.appl_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Msg Id
eurex_cash_eti_t7_v6_0_size_of.appl_msg_id = 16

-- Display: Appl Msg Id
eurex_cash_eti_t7_v6_0_display.appl_msg_id = function(value)
  return "Appl Msg Id: "..value
end

-- Dissect: Appl Msg Id
eurex_cash_eti_t7_v6_0_dissect.appl_msg_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_msg_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.appl_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_msg_id, range, value, display)

  return offset + length, value
end

-- Size: Partition Id
eurex_cash_eti_t7_v6_0_size_of.partition_id = 2

-- Display: Partition Id
eurex_cash_eti_t7_v6_0_display.partition_id = function(value)
  return "Partition Id: "..value
end

-- Dissect: Partition Id
eurex_cash_eti_t7_v6_0_dissect.partition_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.partition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.partition_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Sub Id
eurex_cash_eti_t7_v6_0_size_of.appl_sub_id = 4

-- Display: Appl Sub Id
eurex_cash_eti_t7_v6_0_display.appl_sub_id = function(value)
  return "Appl Sub Id: "..value
end

-- Dissect: Appl Sub Id
eurex_cash_eti_t7_v6_0_dissect.appl_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.appl_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Notification In
eurex_cash_eti_t7_v6_0_size_of.notification_in = 8

-- Display: Notification In
eurex_cash_eti_t7_v6_0_display.notification_in = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Notification In: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Notification In
eurex_cash_eti_t7_v6_0_dissect.notification_in = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.notification_in
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.notification_in(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.notification_in, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Time Out
eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_out = 8

-- Display: Trd Reg Ts Time Out
eurex_cash_eti_t7_v6_0_display.trd_reg_ts_time_out = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Time Out: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time Out
eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_out = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_out
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.trd_reg_ts_time_out(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trd_reg_ts_time_out, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rbc Header Me Comp
eurex_cash_eti_t7_v6_0_size_of.rbc_header_me_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_out

  index = index + eurex_cash_eti_t7_v6_0_size_of.notification_in

  index = index + eurex_cash_eti_t7_v6_0_size_of.sending_time

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_sub_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.partition_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_msg_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_resend_flag

  index = index + eurex_cash_eti_t7_v6_0_size_of.last_fragment

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_7

  return index
end

-- Display: Rbc Header Me Comp
eurex_cash_eti_t7_v6_0_display.rbc_header_me_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rbc Header Me Comp
eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_out = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_out(buffer, index, packet, parent)

  -- Notification In: 8 Byte Unsigned Fixed Width Integer
  index, notification_in = eurex_cash_eti_t7_v6_0_dissect.notification_in(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = eurex_cash_eti_t7_v6_0_dissect.sending_time(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, appl_sub_id = eurex_cash_eti_t7_v6_0_dissect.appl_sub_id(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = eurex_cash_eti_t7_v6_0_dissect.partition_id(buffer, index, packet, parent)

  -- Appl Msg Id: 16 Byte
  index, appl_msg_id = eurex_cash_eti_t7_v6_0_dissect.appl_msg_id(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, appl_id = eurex_cash_eti_t7_v6_0_dissect.appl_id(buffer, index, packet, parent)

  -- Appl Resend Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_resend_flag = eurex_cash_eti_t7_v6_0_dissect.appl_resend_flag(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = eurex_cash_eti_t7_v6_0_dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_cash_eti_t7_v6_0_dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Me Comp
eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rbc_header_me_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.rbc_header_me_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.rbc_header_me_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.rbc_header_me_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp_fields(buffer, offset, packet, parent)
end

-- Display: Trailing Stop Update Notification
eurex_cash_eti_t7_v6_0_display.trailing_stop_update_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trailing Stop Update Notification
eurex_cash_eti_t7_v6_0_dissect.trailing_stop_update_notification_fields = function(buffer, offset, packet, parent, size_of_trailing_stop_update_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = eurex_cash_eti_t7_v6_0_dissect.stop_px(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Trailing Stop Update Notification
eurex_cash_eti_t7_v6_0_dissect.trailing_stop_update_notification = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_trailing_stop_update_notification = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.trailing_stop_update_notification then
    local range = buffer(offset, size_of_trailing_stop_update_notification)
    local display = eurex_cash_eti_t7_v6_0_display.trailing_stop_update_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.trailing_stop_update_notification, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.trailing_stop_update_notification_fields(buffer, offset, packet, parent, size_of_trailing_stop_update_notification)

  return offset + size_of_trailing_stop_update_notification
end

-- Size: Ref Appl Last Msg Id
eurex_cash_eti_t7_v6_0_size_of.ref_appl_last_msg_id = 16

-- Display: Ref Appl Last Msg Id
eurex_cash_eti_t7_v6_0_display.ref_appl_last_msg_id = function(value)
  return "Ref Appl Last Msg Id: "..value
end

-- Dissect: Ref Appl Last Msg Id
eurex_cash_eti_t7_v6_0_dissect.ref_appl_last_msg_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.ref_appl_last_msg_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.ref_appl_last_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.ref_appl_last_msg_id, range, value, display)

  return offset + length, value
end

-- Size: Trad Ses Event
eurex_cash_eti_t7_v6_0_size_of.trad_ses_event = 1

-- Display: Trad Ses Event
eurex_cash_eti_t7_v6_0_display.trad_ses_event = function(value)
  if value == 101 then
    return "Trad Ses Event: Startof Service (101)"
  end
  if value == 102 then
    return "Trad Ses Event: Market Reset (102)"
  end
  if value == 103 then
    return "Trad Ses Event: Endof Restatement (103)"
  end
  if value == 104 then
    return "Trad Ses Event: Endof Day Service (104)"
  end
  if value == 105 then
    return "Trad Ses Event: Service Resumed (105)"
  end

  return "Trad Ses Event: Unknown("..value..")"
end

-- Dissect: Trad Ses Event
eurex_cash_eti_t7_v6_0_dissect.trad_ses_event = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trad_ses_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trad_ses_event(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trad_ses_event, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
eurex_cash_eti_t7_v6_0_size_of.trade_date = 4

-- Display: Trade Date
eurex_cash_eti_t7_v6_0_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
eurex_cash_eti_t7_v6_0_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Display: Trading Session Status Broadcast
eurex_cash_eti_t7_v6_0_display.trading_session_status_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Session Status Broadcast
eurex_cash_eti_t7_v6_0_dissect.trading_session_status_broadcast_fields = function(buffer, offset, packet, parent, size_of_trading_session_status_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = eurex_cash_eti_t7_v6_0_dissect.trade_date(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_event = eurex_cash_eti_t7_v6_0_dissect.trad_ses_event(buffer, index, packet, parent)

  -- Ref Appl Last Msg Id: 16 Byte
  index, ref_appl_last_msg_id = eurex_cash_eti_t7_v6_0_dissect.ref_appl_last_msg_id(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_cash_eti_t7_v6_0_dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Broadcast
eurex_cash_eti_t7_v6_0_dissect.trading_session_status_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_trading_session_status_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.trading_session_status_broadcast then
    local range = buffer(offset, size_of_trading_session_status_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.trading_session_status_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.trading_session_status_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.trading_session_status_broadcast_fields(buffer, offset, packet, parent, size_of_trading_session_status_broadcast)

  return offset + size_of_trading_session_status_broadcast
end

-- Size: Pad 1
eurex_cash_eti_t7_v6_0_size_of.pad_1 = 1

-- Display: Pad 1
eurex_cash_eti_t7_v6_0_display.pad_1 = function(value)
  return "Pad 1: "..value
end

-- Dissect: Pad 1
eurex_cash_eti_t7_v6_0_dissect.pad_1 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.pad_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.pad_1(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.pad_1, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Settlement Location
eurex_cash_eti_t7_v6_0_size_of.root_party_contra_settlement_location = 3

-- Display: Root Party Contra Settlement Location
eurex_cash_eti_t7_v6_0_display.root_party_contra_settlement_location = function(value)
  if value == "APK" then
    return "Root Party Contra Settlement Location: Apk (APK)"
  end
  if value == "CBF" then
    return "Root Party Contra Settlement Location: Cbf (CBF)"
  end
  if value == "CBL" then
    return "Root Party Contra Settlement Location: Cbl (CBL)"
  end
  if value == "CCO" then
    return "Root Party Contra Settlement Location: Cco (CCO)"
  end
  if value == "CIK" then
    return "Root Party Contra Settlement Location: Cik (CIK)"
  end
  if value == "EOC" then
    return "Root Party Contra Settlement Location: Eoc (EOC)"
  end
  if value == "HEL" then
    return "Root Party Contra Settlement Location: Hel (HEL)"
  end
  if value == "IBC" then
    return "Root Party Contra Settlement Location: Ibc (IBC)"
  end
  if value == "INT" then
    return "Root Party Contra Settlement Location: Int (INT)"
  end
  if value == "KDP" then
    return "Root Party Contra Settlement Location: Kdp (KDP)"
  end
  if value == "MOT" then
    return "Root Party Contra Settlement Location: Mot (MOT)"
  end
  if value == "NEC" then
    return "Root Party Contra Settlement Location: Nec (NEC)"
  end
  if value == "OEB" then
    return "Root Party Contra Settlement Location: Oeb (OEB)"
  end
  if value == "SIC" then
    return "Root Party Contra Settlement Location: Sic (SIC)"
  end
  if value == "SIS" then
    return "Root Party Contra Settlement Location: Sis (SIS)"
  end
  if value == "VPC" then
    return "Root Party Contra Settlement Location: Vpc (VPC)"
  end
  if value == "VPD" then
    return "Root Party Contra Settlement Location: Vpd (VPD)"
  end
  if value == "VPS" then
    return "Root Party Contra Settlement Location: Vps (VPS)"
  end

  return "Root Party Contra Settlement Location: Unknown("..value..")"
end

-- Dissect: Root Party Contra Settlement Location
eurex_cash_eti_t7_v6_0_dissect.root_party_contra_settlement_location = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_contra_settlement_location
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_contra_settlement_location(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_contra_settlement_location, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Settlement Account
eurex_cash_eti_t7_v6_0_size_of.root_party_contra_settlement_account = 35

-- Display: Root Party Contra Settlement Account
eurex_cash_eti_t7_v6_0_display.root_party_contra_settlement_account = function(value)
  return "Root Party Contra Settlement Account: "..value
end

-- Dissect: Root Party Contra Settlement Account
eurex_cash_eti_t7_v6_0_dissect.root_party_contra_settlement_account = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_contra_settlement_account
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_contra_settlement_account(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_contra_settlement_account, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Firm Kv Number
eurex_cash_eti_t7_v6_0_size_of.root_party_contra_firm_kv_number = 4

-- Display: Root Party Contra Firm Kv Number
eurex_cash_eti_t7_v6_0_display.root_party_contra_firm_kv_number = function(value)
  return "Root Party Contra Firm Kv Number: "..value
end

-- Dissect: Root Party Contra Firm Kv Number
eurex_cash_eti_t7_v6_0_dissect.root_party_contra_firm_kv_number = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_contra_firm_kv_number
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_contra_firm_kv_number(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_contra_firm_kv_number, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Settlement Firm
eurex_cash_eti_t7_v6_0_size_of.root_party_contra_settlement_firm = 5

-- Display: Root Party Contra Settlement Firm
eurex_cash_eti_t7_v6_0_display.root_party_contra_settlement_firm = function(value)
  return "Root Party Contra Settlement Firm: "..value
end

-- Dissect: Root Party Contra Settlement Firm
eurex_cash_eti_t7_v6_0_dissect.root_party_contra_settlement_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_contra_settlement_firm
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_contra_settlement_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_contra_settlement_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Contra Firm
eurex_cash_eti_t7_v6_0_size_of.root_party_contra_firm = 5

-- Display: Root Party Contra Firm
eurex_cash_eti_t7_v6_0_display.root_party_contra_firm = function(value)
  return "Root Party Contra Firm: "..value
end

-- Dissect: Root Party Contra Firm
eurex_cash_eti_t7_v6_0_dissect.root_party_contra_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_contra_firm
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_contra_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_contra_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Settlement Firm
eurex_cash_eti_t7_v6_0_size_of.root_party_settlement_firm = 5

-- Display: Root Party Settlement Firm
eurex_cash_eti_t7_v6_0_display.root_party_settlement_firm = function(value)
  return "Root Party Settlement Firm: "..value
end

-- Dissect: Root Party Settlement Firm
eurex_cash_eti_t7_v6_0_dissect.root_party_settlement_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_settlement_firm
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_settlement_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_settlement_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Settlement Location
eurex_cash_eti_t7_v6_0_size_of.root_party_settlement_location = 3

-- Display: Root Party Settlement Location
eurex_cash_eti_t7_v6_0_display.root_party_settlement_location = function(value)
  if value == "APK" then
    return "Root Party Settlement Location: Apk (APK)"
  end
  if value == "CBF" then
    return "Root Party Settlement Location: Cbf (CBF)"
  end
  if value == "CBL" then
    return "Root Party Settlement Location: Cbl (CBL)"
  end
  if value == "CCO" then
    return "Root Party Settlement Location: Cco (CCO)"
  end
  if value == "CIK" then
    return "Root Party Settlement Location: Cik (CIK)"
  end
  if value == "EOC" then
    return "Root Party Settlement Location: Eoc (EOC)"
  end
  if value == "HEL" then
    return "Root Party Settlement Location: Hel (HEL)"
  end
  if value == "IBC" then
    return "Root Party Settlement Location: Ibc (IBC)"
  end
  if value == "INT" then
    return "Root Party Settlement Location: Int (INT)"
  end
  if value == "KDP" then
    return "Root Party Settlement Location: Kdp (KDP)"
  end
  if value == "MOT" then
    return "Root Party Settlement Location: Mot (MOT)"
  end
  if value == "NEC" then
    return "Root Party Settlement Location: Nec (NEC)"
  end
  if value == "OEB" then
    return "Root Party Settlement Location: Oeb (OEB)"
  end
  if value == "SIC" then
    return "Root Party Settlement Location: Sic (SIC)"
  end
  if value == "SIS" then
    return "Root Party Settlement Location: Sis (SIS)"
  end
  if value == "VPC" then
    return "Root Party Settlement Location: Vpc (VPC)"
  end
  if value == "VPD" then
    return "Root Party Settlement Location: Vpd (VPD)"
  end
  if value == "VPS" then
    return "Root Party Settlement Location: Vps (VPS)"
  end

  return "Root Party Settlement Location: Unknown("..value..")"
end

-- Dissect: Root Party Settlement Location
eurex_cash_eti_t7_v6_0_dissect.root_party_settlement_location = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_settlement_location
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_settlement_location(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_settlement_location, range, value, display)

  return offset + length, value
end

-- Size: Root Party Settlement Account
eurex_cash_eti_t7_v6_0_size_of.root_party_settlement_account = 35

-- Display: Root Party Settlement Account
eurex_cash_eti_t7_v6_0_display.root_party_settlement_account = function(value)
  return "Root Party Settlement Account: "..value
end

-- Dissect: Root Party Settlement Account
eurex_cash_eti_t7_v6_0_dissect.root_party_settlement_account = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_settlement_account
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_settlement_account(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_settlement_account, range, value, display)

  return offset + length, value
end

-- Size: Root Party Executing Firm Kv Number
eurex_cash_eti_t7_v6_0_size_of.root_party_executing_firm_kv_number = 4

-- Display: Root Party Executing Firm Kv Number
eurex_cash_eti_t7_v6_0_display.root_party_executing_firm_kv_number = function(value)
  return "Root Party Executing Firm Kv Number: "..value
end

-- Dissect: Root Party Executing Firm Kv Number
eurex_cash_eti_t7_v6_0_dissect.root_party_executing_firm_kv_number = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_executing_firm_kv_number
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_executing_firm_kv_number(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_executing_firm_kv_number, range, value, display)

  return offset + length, value
end

-- Size: Root Party Clearing Firm
eurex_cash_eti_t7_v6_0_size_of.root_party_clearing_firm = 5

-- Display: Root Party Clearing Firm
eurex_cash_eti_t7_v6_0_display.root_party_clearing_firm = function(value)
  return "Root Party Clearing Firm: "..value
end

-- Dissect: Root Party Clearing Firm
eurex_cash_eti_t7_v6_0_dissect.root_party_clearing_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_clearing_firm
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_clearing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_clearing_firm, range, value, display)

  return offset + length, value
end

-- Size: Root Party Executing Trader
eurex_cash_eti_t7_v6_0_size_of.root_party_executing_trader = 6

-- Display: Root Party Executing Trader
eurex_cash_eti_t7_v6_0_display.root_party_executing_trader = function(value)
  return "Root Party Executing Trader: "..value
end

-- Dissect: Root Party Executing Trader
eurex_cash_eti_t7_v6_0_dissect.root_party_executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_executing_trader
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Root Party Executing Firm
eurex_cash_eti_t7_v6_0_size_of.root_party_executing_firm = 5

-- Display: Root Party Executing Firm
eurex_cash_eti_t7_v6_0_display.root_party_executing_firm = function(value)
  return "Root Party Executing Firm: "..value
end

-- Dissect: Root Party Executing Firm
eurex_cash_eti_t7_v6_0_dissect.root_party_executing_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_executing_firm
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.root_party_executing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_executing_firm, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
eurex_cash_eti_t7_v6_0_size_of.ord_type = 1

-- Display: Ord Type
eurex_cash_eti_t7_v6_0_display.ord_type = function(value)
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

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
eurex_cash_eti_t7_v6_0_dissect.ord_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.ord_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.ord_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Size: Order Category
eurex_cash_eti_t7_v6_0_size_of.order_category = 1

-- Display: Order Category
eurex_cash_eti_t7_v6_0_display.order_category = function(value)
  if value == "1" then
    return "Order Category: Order (1)"
  end
  if value == "2" then
    return "Order Category: Quote (2)"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
eurex_cash_eti_t7_v6_0_dissect.order_category = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.order_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = eurex_cash_eti_t7_v6_0_display.order_category(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.order_category, range, value, display)

  return offset + length, value
end

-- Size: Free Text 4
eurex_cash_eti_t7_v6_0_size_of.free_text_4 = 16

-- Display: Free Text 4
eurex_cash_eti_t7_v6_0_display.free_text_4 = function(value)
  return "Free Text 4: "..value
end

-- Dissect: Free Text 4
eurex_cash_eti_t7_v6_0_dissect.free_text_4 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.free_text_4
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.free_text_4(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.free_text_4, range, value, display)

  return offset + length, value
end

-- Size: Free Text 2
eurex_cash_eti_t7_v6_0_size_of.free_text_2 = 12

-- Display: Free Text 2
eurex_cash_eti_t7_v6_0_display.free_text_2 = function(value)
  return "Free Text 2: "..value
end

-- Dissect: Free Text 2
eurex_cash_eti_t7_v6_0_dissect.free_text_2 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.free_text_2
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.free_text_2(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.free_text_2, range, value, display)

  return offset + length, value
end

-- Size: Free Text 1
eurex_cash_eti_t7_v6_0_size_of.free_text_1 = 12

-- Display: Free Text 1
eurex_cash_eti_t7_v6_0_display.free_text_1 = function(value)
  return "Free Text 1: "..value
end

-- Dissect: Free Text 1
eurex_cash_eti_t7_v6_0_dissect.free_text_1 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.free_text_1
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.free_text_1(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.free_text_1, range, value, display)

  return offset + length, value
end

-- Size: Currency
eurex_cash_eti_t7_v6_0_size_of.currency = 3

-- Display: Currency
eurex_cash_eti_t7_v6_0_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
eurex_cash_eti_t7_v6_0_dissect.currency = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.currency(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Settl Currency
eurex_cash_eti_t7_v6_0_size_of.settl_currency = 3

-- Display: Settl Currency
eurex_cash_eti_t7_v6_0_display.settl_currency = function(value)
  return "Settl Currency: "..value
end

-- Dissect: Settl Currency
eurex_cash_eti_t7_v6_0_dissect.settl_currency = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.settl_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.settl_currency(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.settl_currency, range, value, display)

  return offset + length, value
end

-- Size: Account
eurex_cash_eti_t7_v6_0_size_of.account = 2

-- Display: Account
eurex_cash_eti_t7_v6_0_display.account = function(value)
  return "Account: "..value
end

-- Dissect: Account
eurex_cash_eti_t7_v6_0_dissect.account = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.account
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.account(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.account, range, value, display)

  return offset + length, value
end

-- Size: Trading Capacity
eurex_cash_eti_t7_v6_0_size_of.trading_capacity = 1

-- Display: Trading Capacity
eurex_cash_eti_t7_v6_0_display.trading_capacity = function(value)
  if value == 1 then
    return "Trading Capacity: Customer (1)"
  end
  if value == 5 then
    return "Trading Capacity: Principal (5)"
  end
  if value == 6 then
    return "Trading Capacity: Market Maker (6)"
  end
  if value == 8 then
    return "Trading Capacity: Systematic Internaliser (8)"
  end
  if value == 9 then
    return "Trading Capacity: Riskless Principal (9)"
  end

  return "Trading Capacity: Unknown("..value..")"
end

-- Dissect: Trading Capacity
eurex_cash_eti_t7_v6_0_dissect.trading_capacity = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trading_capacity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trading_capacity(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Size: Delivery Type
eurex_cash_eti_t7_v6_0_size_of.delivery_type = 1

-- Display: Delivery Type
eurex_cash_eti_t7_v6_0_display.delivery_type = function(value)
  if value == 1 then
    return "Delivery Type: Akv (1)"
  end
  if value == 2 then
    return "Delivery Type: Gs (2)"
  end
  if value == 3 then
    return "Delivery Type: Str (3)"
  end
  if value == 4 then
    return "Delivery Type: Wpr (4)"
  end

  return "Delivery Type: Unknown("..value..")"
end

-- Dissect: Delivery Type
eurex_cash_eti_t7_v6_0_dissect.delivery_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.delivery_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.delivery_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- Size: Side Liquidity Ind
eurex_cash_eti_t7_v6_0_size_of.side_liquidity_ind = 1

-- Display: Side Liquidity Ind
eurex_cash_eti_t7_v6_0_display.side_liquidity_ind = function(value)
  if value == 1 then
    return "Side Liquidity Ind: Added Liquidity (1)"
  end
  if value == 2 then
    return "Side Liquidity Ind: Removed Liquidity (2)"
  end
  if value == 4 then
    return "Side Liquidity Ind: Auction (4)"
  end

  return "Side Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Side Liquidity Ind
eurex_cash_eti_t7_v6_0_dissect.side_liquidity_ind = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.side_liquidity_ind
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.side_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.side_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Size: Match Sub Type
eurex_cash_eti_t7_v6_0_size_of.match_sub_type = 1

-- Display: Match Sub Type
eurex_cash_eti_t7_v6_0_display.match_sub_type = function(value)
  if value == 1 then
    return "Match Sub Type: Opening Auction (1)"
  end
  if value == 2 then
    return "Match Sub Type: Closing Auction (2)"
  end
  if value == 3 then
    return "Match Sub Type: Intraday Auction (3)"
  end
  if value == 4 then
    return "Match Sub Type: Circuit Breaker Auction (4)"
  end

  return "Match Sub Type: Unknown("..value..")"
end

-- Dissect: Match Sub Type
eurex_cash_eti_t7_v6_0_dissect.match_sub_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.match_sub_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.match_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.match_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Match Type
eurex_cash_eti_t7_v6_0_size_of.match_type = 1

-- Display: Match Type
eurex_cash_eti_t7_v6_0_display.match_type = function(value)
  if value == 3 then
    return "Match Type: Confirmed Trade Report (3)"
  end
  if value == 4 then
    return "Match Type: Automatchincoming (4)"
  end
  if value == 5 then
    return "Match Type: Cross Auction (5)"
  end
  if value == 7 then
    return "Match Type: Call Auction (7)"
  end
  if value == 9 then
    return "Match Type: Systematic Internaliser (9)"
  end
  if value == 11 then
    return "Match Type: Automatchresting (11)"
  end
  if value == 12 then
    return "Match Type: Automatchatmidpoint (12)"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
eurex_cash_eti_t7_v6_0_dissect.match_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.match_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.match_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.match_type, range, value, display)

  return offset + length, value
end

-- Size: Transfer Reason
eurex_cash_eti_t7_v6_0_size_of.transfer_reason = 1

-- Display: Transfer Reason
eurex_cash_eti_t7_v6_0_display.transfer_reason = function(value)
  if value == 1 then
    return "Transfer Reason: Owner (1)"
  end
  if value == 2 then
    return "Transfer Reason: Clearer (2)"
  end

  return "Transfer Reason: Unknown("..value..")"
end

-- Dissect: Transfer Reason
eurex_cash_eti_t7_v6_0_dissect.transfer_reason = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.transfer_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.transfer_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.transfer_reason, range, value, display)

  return offset + length, value
end

-- Size: Trade Report Type
eurex_cash_eti_t7_v6_0_size_of.trade_report_type = 1

-- Display: Trade Report Type
eurex_cash_eti_t7_v6_0_display.trade_report_type = function(value)
  if value == 0 then
    return "Trade Report Type: Submit (0)"
  end
  if value == 7 then
    return "Trade Report Type: Trade Break (7)"
  end

  return "Trade Report Type: Unknown("..value..")"
end

-- Dissect: Trade Report Type
eurex_cash_eti_t7_v6_0_dissect.trade_report_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trade_report_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trade_report_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trade_report_type, range, value, display)

  return offset + length, value
end

-- Size: Last Mkt
eurex_cash_eti_t7_v6_0_size_of.last_mkt = 2

-- Display: Last Mkt
eurex_cash_eti_t7_v6_0_display.last_mkt = function(value)
  if value == 3 then
    return "Last Mkt: Xetr (3)"
  end
  if value == 4 then
    return "Last Mkt: Xvie (4)"
  end
  if value == 5 then
    return "Last Mkt: Xdub (5)"
  end

  return "Last Mkt: Unknown("..value..")"
end

-- Dissect: Last Mkt
eurex_cash_eti_t7_v6_0_dissect.last_mkt = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.last_mkt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.last_mkt(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.last_mkt, range, value, display)

  return offset + length, value
end

-- Size: Trd Match Id
eurex_cash_eti_t7_v6_0_size_of.trd_match_id = 4

-- Display: Trd Match Id
eurex_cash_eti_t7_v6_0_display.trd_match_id = function(value)
  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
eurex_cash_eti_t7_v6_0_dissect.trd_match_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trd_match_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trd_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Size: Settl Date
eurex_cash_eti_t7_v6_0_size_of.settl_date = 4

-- Display: Settl Date
eurex_cash_eti_t7_v6_0_display.settl_date = function(value)
  return "Settl Date: "..value
end

-- Dissect: Settl Date
eurex_cash_eti_t7_v6_0_dissect.settl_date = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.settl_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.settl_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.settl_date, range, value, display)

  return offset + length, value
end

-- Size: Match Date
eurex_cash_eti_t7_v6_0_size_of.match_date = 4

-- Display: Match Date
eurex_cash_eti_t7_v6_0_display.match_date = function(value)
  return "Match Date: "..value
end

-- Dissect: Match Date
eurex_cash_eti_t7_v6_0_dissect.match_date = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.match_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.match_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.match_date, range, value, display)

  return offset + length, value
end

-- Size: Trade Number
eurex_cash_eti_t7_v6_0_size_of.trade_number = 4

-- Display: Trade Number
eurex_cash_eti_t7_v6_0_display.trade_number = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
eurex_cash_eti_t7_v6_0_dissect.trade_number = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trade_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trade_number(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Size: Side Trade Report Id
eurex_cash_eti_t7_v6_0_size_of.side_trade_report_id = 4

-- Display: Side Trade Report Id
eurex_cash_eti_t7_v6_0_display.side_trade_report_id = function(value)
  return "Side Trade Report Id: "..value
end

-- Dissect: Side Trade Report Id
eurex_cash_eti_t7_v6_0_dissect.side_trade_report_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.side_trade_report_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.side_trade_report_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.side_trade_report_id, range, value, display)

  return offset + length, value
end

-- Size: Side Trade Id
eurex_cash_eti_t7_v6_0_size_of.side_trade_id = 4

-- Display: Side Trade Id
eurex_cash_eti_t7_v6_0_display.side_trade_id = function(value)
  return "Side Trade Id: "..value
end

-- Dissect: Side Trade Id
eurex_cash_eti_t7_v6_0_dissect.side_trade_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.side_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.side_trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.side_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
eurex_cash_eti_t7_v6_0_size_of.last_qty = 4

-- Display: Last Qty
eurex_cash_eti_t7_v6_0_display.last_qty = function(value)
  return "Last Qty: "..value
end

-- Dissect: Last Qty
eurex_cash_eti_t7_v6_0_dissect.last_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.last_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.last_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
eurex_cash_eti_t7_v6_0_size_of.leaves_qty = 4

-- Display: Leaves Qty
eurex_cash_eti_t7_v6_0_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
eurex_cash_eti_t7_v6_0_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
eurex_cash_eti_t7_v6_0_size_of.cum_qty = 4

-- Display: Cum Qty
eurex_cash_eti_t7_v6_0_display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
eurex_cash_eti_t7_v6_0_dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Contra Settlement Unit
eurex_cash_eti_t7_v6_0_size_of.root_party_id_contra_settlement_unit = 4

-- Display: Root Party Id Contra Settlement Unit
eurex_cash_eti_t7_v6_0_display.root_party_id_contra_settlement_unit = function(value)
  return "Root Party Id Contra Settlement Unit: "..value
end

-- Dissect: Root Party Id Contra Settlement Unit
eurex_cash_eti_t7_v6_0_dissect.root_party_id_contra_settlement_unit = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_id_contra_settlement_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.root_party_id_contra_settlement_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_id_contra_settlement_unit, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Contra Unit
eurex_cash_eti_t7_v6_0_size_of.root_party_id_contra_unit = 4

-- Display: Root Party Id Contra Unit
eurex_cash_eti_t7_v6_0_display.root_party_id_contra_unit = function(value)
  return "Root Party Id Contra Unit: "..value
end

-- Dissect: Root Party Id Contra Unit
eurex_cash_eti_t7_v6_0_dissect.root_party_id_contra_unit = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_id_contra_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.root_party_id_contra_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_id_contra_unit, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Clearing Unit
eurex_cash_eti_t7_v6_0_size_of.root_party_id_clearing_unit = 4

-- Display: Root Party Id Clearing Unit
eurex_cash_eti_t7_v6_0_display.root_party_id_clearing_unit = function(value)
  return "Root Party Id Clearing Unit: "..value
end

-- Dissect: Root Party Id Clearing Unit
eurex_cash_eti_t7_v6_0_dissect.root_party_id_clearing_unit = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_id_clearing_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.root_party_id_clearing_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_id_clearing_unit, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Settlement Unit
eurex_cash_eti_t7_v6_0_size_of.root_party_id_settlement_unit = 4

-- Display: Root Party Id Settlement Unit
eurex_cash_eti_t7_v6_0_display.root_party_id_settlement_unit = function(value)
  return "Root Party Id Settlement Unit: "..value
end

-- Dissect: Root Party Id Settlement Unit
eurex_cash_eti_t7_v6_0_dissect.root_party_id_settlement_unit = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_id_settlement_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.root_party_id_settlement_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_id_settlement_unit, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Executing Trader
eurex_cash_eti_t7_v6_0_size_of.root_party_id_executing_trader = 4

-- Display: Root Party Id Executing Trader
eurex_cash_eti_t7_v6_0_display.root_party_id_executing_trader = function(value)
  return "Root Party Id Executing Trader: "..value
end

-- Dissect: Root Party Id Executing Trader
eurex_cash_eti_t7_v6_0_dissect.root_party_id_executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.root_party_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Session Id
eurex_cash_eti_t7_v6_0_size_of.root_party_id_session_id = 4

-- Display: Root Party Id Session Id
eurex_cash_eti_t7_v6_0_display.root_party_id_session_id = function(value)
  return "Root Party Id Session Id: "..value
end

-- Dissect: Root Party Id Session Id
eurex_cash_eti_t7_v6_0_dissect.root_party_id_session_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_id_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.root_party_id_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_id_session_id, range, value, display)

  return offset + length, value
end

-- Size: Root Party Id Executing Unit
eurex_cash_eti_t7_v6_0_size_of.root_party_id_executing_unit = 4

-- Display: Root Party Id Executing Unit
eurex_cash_eti_t7_v6_0_display.root_party_id_executing_unit = function(value)
  return "Root Party Id Executing Unit: "..value
end

-- Dissect: Root Party Id Executing Unit
eurex_cash_eti_t7_v6_0_dissect.root_party_id_executing_unit = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.root_party_id_executing_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.root_party_id_executing_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.root_party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Size: Orig Trade Id
eurex_cash_eti_t7_v6_0_size_of.orig_trade_id = 4

-- Display: Orig Trade Id
eurex_cash_eti_t7_v6_0_display.orig_trade_id = function(value)
  return "Orig Trade Id: "..value
end

-- Dissect: Orig Trade Id
eurex_cash_eti_t7_v6_0_dissect.orig_trade_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.orig_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.orig_trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.orig_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
eurex_cash_eti_t7_v6_0_size_of.trade_id = 4

-- Display: Trade Id
eurex_cash_eti_t7_v6_0_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
eurex_cash_eti_t7_v6_0_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
eurex_cash_eti_t7_v6_0_size_of.transact_time = 8

-- Display: Transact Time
eurex_cash_eti_t7_v6_0_display.transact_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
eurex_cash_eti_t7_v6_0_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Settl Curr Fx Rate
eurex_cash_eti_t7_v6_0_size_of.settl_curr_fx_rate = 8

-- Display: Settl Curr Fx Rate
eurex_cash_eti_t7_v6_0_display.settl_curr_fx_rate = function(value)
  return "Settl Curr Fx Rate: "..value
end

-- Translate: Settl Curr Fx Rate
translate.settl_curr_fx_rate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Settl Curr Fx Rate
eurex_cash_eti_t7_v6_0_dissect.settl_curr_fx_rate = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.settl_curr_fx_rate
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.settl_curr_fx_rate(raw)
  local display = eurex_cash_eti_t7_v6_0_display.settl_curr_fx_rate(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.settl_curr_fx_rate, range, value, display)

  return offset + length, value
end

-- Size: Settl Curr Amt
eurex_cash_eti_t7_v6_0_size_of.settl_curr_amt = 8

-- Display: Settl Curr Amt
eurex_cash_eti_t7_v6_0_display.settl_curr_amt = function(value)
  return "Settl Curr Amt: "..value
end

-- Translate: Settl Curr Amt
translate.settl_curr_amt = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Settl Curr Amt
eurex_cash_eti_t7_v6_0_dissect.settl_curr_amt = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.settl_curr_amt
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.settl_curr_amt(raw)
  local display = eurex_cash_eti_t7_v6_0_display.settl_curr_amt(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.settl_curr_amt, range, value, display)

  return offset + length, value
end

-- Size: Last Px
eurex_cash_eti_t7_v6_0_size_of.last_px = 8

-- Display: Last Px
eurex_cash_eti_t7_v6_0_display.last_px = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Last Px
eurex_cash_eti_t7_v6_0_dissect.last_px = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.last_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.last_px(raw)
  local display = eurex_cash_eti_t7_v6_0_display.last_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Price
eurex_cash_eti_t7_v6_0_size_of.price = 8

-- Display: Price
eurex_cash_eti_t7_v6_0_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
eurex_cash_eti_t7_v6_0_dissect.price = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = eurex_cash_eti_t7_v6_0_display.price(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Num
eurex_cash_eti_t7_v6_0_size_of.appl_seq_num = 8

-- Display: Appl Seq Num
eurex_cash_eti_t7_v6_0_display.appl_seq_num = function(value)
  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
eurex_cash_eti_t7_v6_0_dissect.appl_seq_num = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.appl_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rbc Header Comp
eurex_cash_eti_t7_v6_0_size_of.rbc_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.sending_time

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_seq_num

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_sub_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.partition_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_resend_flag

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.last_fragment

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_7

  return index
end

-- Display: Rbc Header Comp
eurex_cash_eti_t7_v6_0_display.rbc_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rbc Header Comp
eurex_cash_eti_t7_v6_0_dissect.rbc_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = eurex_cash_eti_t7_v6_0_dissect.sending_time(buffer, index, packet, parent)

  -- Appl Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_seq_num = eurex_cash_eti_t7_v6_0_dissect.appl_seq_num(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, appl_sub_id = eurex_cash_eti_t7_v6_0_dissect.appl_sub_id(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = eurex_cash_eti_t7_v6_0_dissect.partition_id(buffer, index, packet, parent)

  -- Appl Resend Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_resend_flag = eurex_cash_eti_t7_v6_0_dissect.appl_resend_flag(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, appl_id = eurex_cash_eti_t7_v6_0_dissect.appl_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = eurex_cash_eti_t7_v6_0_dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_cash_eti_t7_v6_0_dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Rbc Header Comp
eurex_cash_eti_t7_v6_0_dissect.rbc_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rbc_header_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.rbc_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.rbc_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.rbc_header_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.rbc_header_comp_fields(buffer, offset, packet, parent)
end

-- Display: Trade Broadcast
eurex_cash_eti_t7_v6_0_display.trade_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Broadcast
eurex_cash_eti_t7_v6_0_dissect.trade_broadcast_fields = function(buffer, offset, packet, parent, size_of_trade_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = eurex_cash_eti_t7_v6_0_dissect.price(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer
  index, last_px = eurex_cash_eti_t7_v6_0_dissect.last_px(buffer, index, packet, parent)

  -- Settl Curr Amt: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_amt = eurex_cash_eti_t7_v6_0_dissect.settl_curr_amt(buffer, index, packet, parent)

  -- Settl Curr Fx Rate: 8 Byte Unsigned Fixed Width Integer
  index, settl_curr_fx_rate = eurex_cash_eti_t7_v6_0_dissect.settl_curr_fx_rate(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = eurex_cash_eti_t7_v6_0_dissect.transact_time(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = eurex_cash_eti_t7_v6_0_dissect.trade_id(buffer, index, packet, parent)

  -- Orig Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, orig_trade_id = eurex_cash_eti_t7_v6_0_dissect.orig_trade_id(buffer, index, packet, parent)

  -- Root Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_executing_unit = eurex_cash_eti_t7_v6_0_dissect.root_party_id_executing_unit(buffer, index, packet, parent)

  -- Root Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.root_party_id_session_id(buffer, index, packet, parent)

  -- Root Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_executing_trader = eurex_cash_eti_t7_v6_0_dissect.root_party_id_executing_trader(buffer, index, packet, parent)

  -- Root Party Id Settlement Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_settlement_unit = eurex_cash_eti_t7_v6_0_dissect.root_party_id_settlement_unit(buffer, index, packet, parent)

  -- Root Party Id Clearing Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_clearing_unit = eurex_cash_eti_t7_v6_0_dissect.root_party_id_clearing_unit(buffer, index, packet, parent)

  -- Root Party Id Contra Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_contra_unit = eurex_cash_eti_t7_v6_0_dissect.root_party_id_contra_unit(buffer, index, packet, parent)

  -- Root Party Id Contra Settlement Unit: 4 Byte Unsigned Fixed Width Integer
  index, root_party_id_contra_settlement_unit = eurex_cash_eti_t7_v6_0_dissect.root_party_id_contra_settlement_unit(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = eurex_cash_eti_t7_v6_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Signed Fixed Width Integer
  index, last_qty = eurex_cash_eti_t7_v6_0_dissect.last_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_id = eurex_cash_eti_t7_v6_0_dissect.side_trade_id(buffer, index, packet, parent)

  -- Side Trade Report Id: 4 Byte Unsigned Fixed Width Integer
  index, side_trade_report_id = eurex_cash_eti_t7_v6_0_dissect.side_trade_report_id(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = eurex_cash_eti_t7_v6_0_dissect.trade_number(buffer, index, packet, parent)

  -- Match Date: 4 Byte Unsigned Fixed Width Integer
  index, match_date = eurex_cash_eti_t7_v6_0_dissect.match_date(buffer, index, packet, parent)

  -- Settl Date: 4 Byte Unsigned Fixed Width Integer
  index, settl_date = eurex_cash_eti_t7_v6_0_dissect.settl_date(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer
  index, trd_match_id = eurex_cash_eti_t7_v6_0_dissect.trd_match_id(buffer, index, packet, parent)

  -- Last Mkt: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_mkt = eurex_cash_eti_t7_v6_0_dissect.last_mkt(buffer, index, packet, parent)

  -- Trade Report Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_report_type = eurex_cash_eti_t7_v6_0_dissect.trade_report_type(buffer, index, packet, parent)

  -- Transfer Reason: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, transfer_reason = eurex_cash_eti_t7_v6_0_dissect.transfer_reason(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, match_type = eurex_cash_eti_t7_v6_0_dissect.match_type(buffer, index, packet, parent)

  -- Match Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, match_sub_type = eurex_cash_eti_t7_v6_0_dissect.match_sub_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Side Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_liquidity_ind = eurex_cash_eti_t7_v6_0_dissect.side_liquidity_ind(buffer, index, packet, parent)

  -- Delivery Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, delivery_type = eurex_cash_eti_t7_v6_0_dissect.delivery_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = eurex_cash_eti_t7_v6_0_dissect.trading_capacity(buffer, index, packet, parent)

  -- Account: 2 Byte Ascii String
  index, account = eurex_cash_eti_t7_v6_0_dissect.account(buffer, index, packet, parent)

  -- Settl Currency: 3 Byte Ascii String
  index, settl_currency = eurex_cash_eti_t7_v6_0_dissect.settl_currency(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = eurex_cash_eti_t7_v6_0_dissect.currency(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = eurex_cash_eti_t7_v6_0_dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = eurex_cash_eti_t7_v6_0_dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = eurex_cash_eti_t7_v6_0_dissect.free_text_4(buffer, index, packet, parent)

  -- Order Category: 1 Byte Ascii String Enum with 2 values
  index, order_category = eurex_cash_eti_t7_v6_0_dissect.order_category(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = eurex_cash_eti_t7_v6_0_dissect.ord_type(buffer, index, packet, parent)

  -- Root Party Executing Firm: 5 Byte Ascii String
  index, root_party_executing_firm = eurex_cash_eti_t7_v6_0_dissect.root_party_executing_firm(buffer, index, packet, parent)

  -- Root Party Executing Trader: 6 Byte Ascii String
  index, root_party_executing_trader = eurex_cash_eti_t7_v6_0_dissect.root_party_executing_trader(buffer, index, packet, parent)

  -- Root Party Clearing Firm: 5 Byte Ascii String
  index, root_party_clearing_firm = eurex_cash_eti_t7_v6_0_dissect.root_party_clearing_firm(buffer, index, packet, parent)

  -- Root Party Executing Firm Kv Number: 4 Byte Ascii String
  index, root_party_executing_firm_kv_number = eurex_cash_eti_t7_v6_0_dissect.root_party_executing_firm_kv_number(buffer, index, packet, parent)

  -- Root Party Settlement Account: 35 Byte Ascii String
  index, root_party_settlement_account = eurex_cash_eti_t7_v6_0_dissect.root_party_settlement_account(buffer, index, packet, parent)

  -- Root Party Settlement Location: 3 Byte Ascii String Enum with 18 values
  index, root_party_settlement_location = eurex_cash_eti_t7_v6_0_dissect.root_party_settlement_location(buffer, index, packet, parent)

  -- Root Party Settlement Firm: 5 Byte Ascii String
  index, root_party_settlement_firm = eurex_cash_eti_t7_v6_0_dissect.root_party_settlement_firm(buffer, index, packet, parent)

  -- Root Party Contra Firm: 5 Byte Ascii String
  index, root_party_contra_firm = eurex_cash_eti_t7_v6_0_dissect.root_party_contra_firm(buffer, index, packet, parent)

  -- Root Party Contra Settlement Firm: 5 Byte Ascii String
  index, root_party_contra_settlement_firm = eurex_cash_eti_t7_v6_0_dissect.root_party_contra_settlement_firm(buffer, index, packet, parent)

  -- Root Party Contra Firm Kv Number: 4 Byte Ascii String
  index, root_party_contra_firm_kv_number = eurex_cash_eti_t7_v6_0_dissect.root_party_contra_firm_kv_number(buffer, index, packet, parent)

  -- Root Party Contra Settlement Account: 35 Byte Ascii String
  index, root_party_contra_settlement_account = eurex_cash_eti_t7_v6_0_dissect.root_party_contra_settlement_account(buffer, index, packet, parent)

  -- Root Party Contra Settlement Location: 3 Byte Ascii String Enum with 18 values
  index, root_party_contra_settlement_location = eurex_cash_eti_t7_v6_0_dissect.root_party_contra_settlement_location(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_cash_eti_t7_v6_0_dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Broadcast
eurex_cash_eti_t7_v6_0_dissect.trade_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_trade_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.trade_broadcast then
    local range = buffer(offset, size_of_trade_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.trade_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.trade_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.trade_broadcast_fields(buffer, offset, packet, parent, size_of_trade_broadcast)

  return offset + size_of_trade_broadcast
end

-- Size: Throttle Disconnect Limit
eurex_cash_eti_t7_v6_0_size_of.throttle_disconnect_limit = 4

-- Display: Throttle Disconnect Limit
eurex_cash_eti_t7_v6_0_display.throttle_disconnect_limit = function(value)
  return "Throttle Disconnect Limit: "..value
end

-- Dissect: Throttle Disconnect Limit
eurex_cash_eti_t7_v6_0_dissect.throttle_disconnect_limit = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.throttle_disconnect_limit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.throttle_disconnect_limit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.throttle_disconnect_limit, range, value, display)

  return offset + length, value
end

-- Size: Throttle No Msgs
eurex_cash_eti_t7_v6_0_size_of.throttle_no_msgs = 4

-- Display: Throttle No Msgs
eurex_cash_eti_t7_v6_0_display.throttle_no_msgs = function(value)
  return "Throttle No Msgs: "..value
end

-- Dissect: Throttle No Msgs
eurex_cash_eti_t7_v6_0_dissect.throttle_no_msgs = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.throttle_no_msgs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.throttle_no_msgs(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.throttle_no_msgs, range, value, display)

  return offset + length, value
end

-- Size: Throttle Time Interval
eurex_cash_eti_t7_v6_0_size_of.throttle_time_interval = 8

-- Display: Throttle Time Interval
eurex_cash_eti_t7_v6_0_display.throttle_time_interval = function(value)
  return "Throttle Time Interval: "..value
end

-- Dissect: Throttle Time Interval
eurex_cash_eti_t7_v6_0_dissect.throttle_time_interval = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.throttle_time_interval
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_cash_eti_t7_v6_0_display.throttle_time_interval(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.throttle_time_interval, range, value, display)

  return offset + length, value
end

-- Calculate size of: Notif Header Comp
eurex_cash_eti_t7_v6_0_size_of.notif_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.sending_time

  return index
end

-- Display: Notif Header Comp
eurex_cash_eti_t7_v6_0_display.notif_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Notif Header Comp
eurex_cash_eti_t7_v6_0_dissect.notif_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = eurex_cash_eti_t7_v6_0_dissect.sending_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Notif Header Comp
eurex_cash_eti_t7_v6_0_dissect.notif_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.notif_header_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.notif_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.notif_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.notif_header_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.notif_header_comp_fields(buffer, offset, packet, parent)
end

-- Display: Throttle Update Notification
eurex_cash_eti_t7_v6_0_display.throttle_update_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Throttle Update Notification
eurex_cash_eti_t7_v6_0_dissect.throttle_update_notification_fields = function(buffer, offset, packet, parent, size_of_throttle_update_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_cash_eti_t7_v6_0_dissect.notif_header_comp(buffer, index, packet, parent)

  -- Throttle Time Interval: 8 Byte Signed Fixed Width Integer
  index, throttle_time_interval = eurex_cash_eti_t7_v6_0_dissect.throttle_time_interval(buffer, index, packet, parent)

  -- Throttle No Msgs: 4 Byte Unsigned Fixed Width Integer
  index, throttle_no_msgs = eurex_cash_eti_t7_v6_0_dissect.throttle_no_msgs(buffer, index, packet, parent)

  -- Throttle Disconnect Limit: 4 Byte Unsigned Fixed Width Integer
  index, throttle_disconnect_limit = eurex_cash_eti_t7_v6_0_dissect.throttle_disconnect_limit(buffer, index, packet, parent)

  return index
end

-- Dissect: Throttle Update Notification
eurex_cash_eti_t7_v6_0_dissect.throttle_update_notification = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_throttle_update_notification = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.throttle_update_notification then
    local range = buffer(offset, size_of_throttle_update_notification)
    local display = eurex_cash_eti_t7_v6_0_display.throttle_update_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.throttle_update_notification, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.throttle_update_notification_fields(buffer, offset, packet, parent, size_of_throttle_update_notification)

  return offset + size_of_throttle_update_notification
end

-- Display: Tm Trading Session Status Broadcast
eurex_cash_eti_t7_v6_0_display.tm_trading_session_status_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tm Trading Session Status Broadcast
eurex_cash_eti_t7_v6_0_dissect.tm_trading_session_status_broadcast_fields = function(buffer, offset, packet, parent, size_of_tm_trading_session_status_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Trad Ses Event: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trad_ses_event = eurex_cash_eti_t7_v6_0_dissect.trad_ses_event(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_cash_eti_t7_v6_0_dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Tm Trading Session Status Broadcast
eurex_cash_eti_t7_v6_0_dissect.tm_trading_session_status_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_tm_trading_session_status_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.tm_trading_session_status_broadcast then
    local range = buffer(offset, size_of_tm_trading_session_status_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.tm_trading_session_status_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.tm_trading_session_status_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.tm_trading_session_status_broadcast_fields(buffer, offset, packet, parent, size_of_tm_trading_session_status_broadcast)

  return offset + size_of_tm_trading_session_status_broadcast
end

-- Display: Subscribe Response
eurex_cash_eti_t7_v6_0_display.subscribe_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Subscribe Response
eurex_cash_eti_t7_v6_0_dissect.subscribe_response_fields = function(buffer, offset, packet, parent, size_of_subscribe_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, appl_sub_id = eurex_cash_eti_t7_v6_0_dissect.appl_sub_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscribe Response
eurex_cash_eti_t7_v6_0_dissect.subscribe_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_subscribe_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.subscribe_response then
    local range = buffer(offset, size_of_subscribe_response)
    local display = eurex_cash_eti_t7_v6_0_display.subscribe_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.subscribe_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.subscribe_response_fields(buffer, offset, packet, parent, size_of_subscribe_response)

  return offset + size_of_subscribe_response
end

-- Size: Ref Appl Id
eurex_cash_eti_t7_v6_0_size_of.ref_appl_id = 1

-- Display: Ref Appl Id
eurex_cash_eti_t7_v6_0_display.ref_appl_id = function(value)
  if value == 1 then
    return "Ref Appl Id: Trade (1)"
  end
  if value == 2 then
    return "Ref Appl Id: News (2)"
  end
  if value == 3 then
    return "Ref Appl Id: Serviceavailability (3)"
  end
  if value == 4 then
    return "Ref Appl Id: Sessiondata (4)"
  end
  if value == 5 then
    return "Ref Appl Id: Listenerdata (5)"
  end
  if value == 6 then
    return "Ref Appl Id: Risk Control (6)"
  end

  return "Ref Appl Id: Unknown("..value..")"
end

-- Dissect: Ref Appl Id
eurex_cash_eti_t7_v6_0_dissect.ref_appl_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.ref_appl_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.ref_appl_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.ref_appl_id, range, value, display)

  return offset + length, value
end

-- Size: Subscription Scope
eurex_cash_eti_t7_v6_0_size_of.subscription_scope = 4

-- Display: Subscription Scope
eurex_cash_eti_t7_v6_0_display.subscription_scope = function(value)
  return "Subscription Scope: "..value
end

-- Dissect: Subscription Scope
eurex_cash_eti_t7_v6_0_dissect.subscription_scope = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.subscription_scope
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.subscription_scope(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.subscription_scope, range, value, display)

  return offset + length, value
end

-- Display: Subscribe Request
eurex_cash_eti_t7_v6_0_display.subscribe_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Subscribe Request
eurex_cash_eti_t7_v6_0_dissect.subscribe_request_fields = function(buffer, offset, packet, parent, size_of_subscribe_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer
  index, subscription_scope = eurex_cash_eti_t7_v6_0_dissect.subscription_scope(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, ref_appl_id = eurex_cash_eti_t7_v6_0_dissect.ref_appl_id(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Subscribe Request
eurex_cash_eti_t7_v6_0_dissect.subscribe_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_subscribe_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.subscribe_request then
    local range = buffer(offset, size_of_subscribe_request)
    local display = eurex_cash_eti_t7_v6_0_display.subscribe_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.subscribe_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.subscribe_request_fields(buffer, offset, packet, parent, size_of_subscribe_request)

  return offset + size_of_subscribe_request
end

-- Size: Appl Seq Status
eurex_cash_eti_t7_v6_0_size_of.appl_seq_status = 1

-- Display: Appl Seq Status
eurex_cash_eti_t7_v6_0_display.appl_seq_status = function(value)
  if value == 0 then
    return "Appl Seq Status: Unavailable (0)"
  end
  if value == 1 then
    return "Appl Seq Status: Available (1)"
  end

  return "Appl Seq Status: Unknown("..value..")"
end

-- Dissect: Appl Seq Status
eurex_cash_eti_t7_v6_0_dissect.appl_seq_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_seq_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.appl_seq_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_seq_status, range, value, display)

  return offset + length, value
end

-- Size: Trade Manager Status
eurex_cash_eti_t7_v6_0_size_of.trade_manager_status = 1

-- Display: Trade Manager Status
eurex_cash_eti_t7_v6_0_display.trade_manager_status = function(value)
  if value == 0 then
    return "Trade Manager Status: Unavailable (0)"
  end
  if value == 1 then
    return "Trade Manager Status: Available (1)"
  end

  return "Trade Manager Status: Unknown("..value..")"
end

-- Dissect: Trade Manager Status
eurex_cash_eti_t7_v6_0_dissect.trade_manager_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trade_manager_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trade_manager_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trade_manager_status, range, value, display)

  return offset + length, value
end

-- Size: Matching Engine Status
eurex_cash_eti_t7_v6_0_size_of.matching_engine_status = 1

-- Display: Matching Engine Status
eurex_cash_eti_t7_v6_0_display.matching_engine_status = function(value)
  if value == 0 then
    return "Matching Engine Status: Unavailable (0)"
  end
  if value == 1 then
    return "Matching Engine Status: Available (1)"
  end

  return "Matching Engine Status: Unknown("..value..")"
end

-- Dissect: Matching Engine Status
eurex_cash_eti_t7_v6_0_dissect.matching_engine_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.matching_engine_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.matching_engine_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.matching_engine_status, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Trade Date
eurex_cash_eti_t7_v6_0_size_of.appl_seq_trade_date = 4

-- Display: Appl Seq Trade Date
eurex_cash_eti_t7_v6_0_display.appl_seq_trade_date = function(value)
  return "Appl Seq Trade Date: "..value
end

-- Dissect: Appl Seq Trade Date
eurex_cash_eti_t7_v6_0_dissect.appl_seq_trade_date = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_seq_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.appl_seq_trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_seq_trade_date, range, value, display)

  return offset + length, value
end

-- Size: Trade Manager Trade Date
eurex_cash_eti_t7_v6_0_size_of.trade_manager_trade_date = 4

-- Display: Trade Manager Trade Date
eurex_cash_eti_t7_v6_0_display.trade_manager_trade_date = function(value)
  return "Trade Manager Trade Date: "..value
end

-- Dissect: Trade Manager Trade Date
eurex_cash_eti_t7_v6_0_dissect.trade_manager_trade_date = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trade_manager_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trade_manager_trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trade_manager_trade_date, range, value, display)

  return offset + length, value
end

-- Size: Matching Engine Trade Date
eurex_cash_eti_t7_v6_0_size_of.matching_engine_trade_date = 4

-- Display: Matching Engine Trade Date
eurex_cash_eti_t7_v6_0_display.matching_engine_trade_date = function(value)
  return "Matching Engine Trade Date: "..value
end

-- Dissect: Matching Engine Trade Date
eurex_cash_eti_t7_v6_0_dissect.matching_engine_trade_date = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.matching_engine_trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.matching_engine_trade_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.matching_engine_trade_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Nrbc Header Comp
eurex_cash_eti_t7_v6_0_size_of.nrbc_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.sending_time

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_sub_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.last_fragment

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_2

  return index
end

-- Display: Nrbc Header Comp
eurex_cash_eti_t7_v6_0_display.nrbc_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Nrbc Header Comp
eurex_cash_eti_t7_v6_0_dissect.nrbc_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = eurex_cash_eti_t7_v6_0_dissect.sending_time(buffer, index, packet, parent)

  -- Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, appl_sub_id = eurex_cash_eti_t7_v6_0_dissect.appl_sub_id(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, appl_id = eurex_cash_eti_t7_v6_0_dissect.appl_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = eurex_cash_eti_t7_v6_0_dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Nrbc Header Comp
eurex_cash_eti_t7_v6_0_dissect.nrbc_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.nrbc_header_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.nrbc_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.nrbc_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.nrbc_header_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.nrbc_header_comp_fields(buffer, offset, packet, parent)
end

-- Display: Service Availability Broadcast
eurex_cash_eti_t7_v6_0_display.service_availability_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Service Availability Broadcast
eurex_cash_eti_t7_v6_0_dissect.service_availability_broadcast_fields = function(buffer, offset, packet, parent, size_of_service_availability_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nrbc Header Comp: Struct of 5 fields
  index, nrbc_header_comp = eurex_cash_eti_t7_v6_0_dissect.nrbc_header_comp(buffer, index, packet, parent)

  -- Matching Engine Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, matching_engine_trade_date = eurex_cash_eti_t7_v6_0_dissect.matching_engine_trade_date(buffer, index, packet, parent)

  -- Trade Manager Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_manager_trade_date = eurex_cash_eti_t7_v6_0_dissect.trade_manager_trade_date(buffer, index, packet, parent)

  -- Appl Seq Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, appl_seq_trade_date = eurex_cash_eti_t7_v6_0_dissect.appl_seq_trade_date(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = eurex_cash_eti_t7_v6_0_dissect.partition_id(buffer, index, packet, parent)

  -- Matching Engine Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, matching_engine_status = eurex_cash_eti_t7_v6_0_dissect.matching_engine_status(buffer, index, packet, parent)

  -- Trade Manager Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, trade_manager_status = eurex_cash_eti_t7_v6_0_dissect.trade_manager_status(buffer, index, packet, parent)

  -- Appl Seq Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_status = eurex_cash_eti_t7_v6_0_dissect.appl_seq_status(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_cash_eti_t7_v6_0_dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Service Availability Broadcast
eurex_cash_eti_t7_v6_0_dissect.service_availability_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_service_availability_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.service_availability_broadcast then
    local range = buffer(offset, size_of_service_availability_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.service_availability_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.service_availability_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.service_availability_broadcast_fields(buffer, offset, packet, parent, size_of_service_availability_broadcast)

  return offset + size_of_service_availability_broadcast
end

-- Size: Pad 6
eurex_cash_eti_t7_v6_0_size_of.pad_6 = 6

-- Display: Pad 6
eurex_cash_eti_t7_v6_0_display.pad_6 = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
eurex_cash_eti_t7_v6_0_dissect.pad_6 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.pad_6
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.pad_6(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Size: Appl Total Message Count
eurex_cash_eti_t7_v6_0_size_of.appl_total_message_count = 2

-- Display: Appl Total Message Count
eurex_cash_eti_t7_v6_0_display.appl_total_message_count = function(value)
  return "Appl Total Message Count: "..value
end

-- Dissect: Appl Total Message Count
eurex_cash_eti_t7_v6_0_dissect.appl_total_message_count = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_total_message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.appl_total_message_count(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_total_message_count, range, value, display)

  return offset + length, value
end

-- Size: Ref Appl Last Seq Num
eurex_cash_eti_t7_v6_0_size_of.ref_appl_last_seq_num = 8

-- Display: Ref Appl Last Seq Num
eurex_cash_eti_t7_v6_0_display.ref_appl_last_seq_num = function(value)
  return "Ref Appl Last Seq Num: "..value
end

-- Dissect: Ref Appl Last Seq Num
eurex_cash_eti_t7_v6_0_dissect.ref_appl_last_seq_num = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.ref_appl_last_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.ref_appl_last_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.ref_appl_last_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Appl End Seq Num
eurex_cash_eti_t7_v6_0_size_of.appl_end_seq_num = 8

-- Display: Appl End Seq Num
eurex_cash_eti_t7_v6_0_display.appl_end_seq_num = function(value)
  return "Appl End Seq Num: "..value
end

-- Dissect: Appl End Seq Num
eurex_cash_eti_t7_v6_0_dissect.appl_end_seq_num = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_end_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.appl_end_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_end_seq_num, range, value, display)

  return offset + length, value
end

-- Display: Retransmit Response
eurex_cash_eti_t7_v6_0_display.retransmit_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Response
eurex_cash_eti_t7_v6_0_dissect.retransmit_response_fields = function(buffer, offset, packet, parent, size_of_retransmit_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  -- Appl End Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_end_seq_num = eurex_cash_eti_t7_v6_0_dissect.appl_end_seq_num(buffer, index, packet, parent)

  -- Ref Appl Last Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, ref_appl_last_seq_num = eurex_cash_eti_t7_v6_0_dissect.ref_appl_last_seq_num(buffer, index, packet, parent)

  -- Appl Total Message Count: 2 Byte Unsigned Fixed Width Integer
  index, appl_total_message_count = eurex_cash_eti_t7_v6_0_dissect.appl_total_message_count(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Response
eurex_cash_eti_t7_v6_0_dissect.retransmit_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_retransmit_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.retransmit_response then
    local range = buffer(offset, size_of_retransmit_response)
    local display = eurex_cash_eti_t7_v6_0_display.retransmit_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.retransmit_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.retransmit_response_fields(buffer, offset, packet, parent, size_of_retransmit_response)

  return offset + size_of_retransmit_response
end

-- Size: Pad 5
eurex_cash_eti_t7_v6_0_size_of.pad_5 = 5

-- Display: Pad 5
eurex_cash_eti_t7_v6_0_display.pad_5 = function(value)
  return "Pad 5: "..value
end

-- Dissect: Pad 5
eurex_cash_eti_t7_v6_0_dissect.pad_5 = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.pad_5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.pad_5(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.pad_5, range, value, display)

  return offset + length, value
end

-- Size: Appl Beg Seq Num
eurex_cash_eti_t7_v6_0_size_of.appl_beg_seq_num = 8

-- Display: Appl Beg Seq Num
eurex_cash_eti_t7_v6_0_display.appl_beg_seq_num = function(value)
  return "Appl Beg Seq Num: "..value
end

-- Dissect: Appl Beg Seq Num
eurex_cash_eti_t7_v6_0_dissect.appl_beg_seq_num = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_beg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.appl_beg_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_beg_seq_num, range, value, display)

  return offset + length, value
end

-- Display: Retransmit Request
eurex_cash_eti_t7_v6_0_display.retransmit_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Request
eurex_cash_eti_t7_v6_0_dissect.retransmit_request_fields = function(buffer, offset, packet, parent, size_of_retransmit_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Appl Beg Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_beg_seq_num = eurex_cash_eti_t7_v6_0_dissect.appl_beg_seq_num(buffer, index, packet, parent)

  -- Appl End Seq Num: 8 Byte Unsigned Fixed Width Integer
  index, appl_end_seq_num = eurex_cash_eti_t7_v6_0_dissect.appl_end_seq_num(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = eurex_cash_eti_t7_v6_0_dissect.partition_id(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, ref_appl_id = eurex_cash_eti_t7_v6_0_dissect.ref_appl_id(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_cash_eti_t7_v6_0_dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request
eurex_cash_eti_t7_v6_0_dissect.retransmit_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_retransmit_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.retransmit_request then
    local range = buffer(offset, size_of_retransmit_request)
    local display = eurex_cash_eti_t7_v6_0_display.retransmit_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.retransmit_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.retransmit_request_fields(buffer, offset, packet, parent, size_of_retransmit_request)

  return offset + size_of_retransmit_request
end

-- Size: Appl End Msg Id
eurex_cash_eti_t7_v6_0_size_of.appl_end_msg_id = 16

-- Display: Appl End Msg Id
eurex_cash_eti_t7_v6_0_display.appl_end_msg_id = function(value)
  return "Appl End Msg Id: "..value
end

-- Dissect: Appl End Msg Id
eurex_cash_eti_t7_v6_0_dissect.appl_end_msg_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_end_msg_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.appl_end_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_end_msg_id, range, value, display)

  return offset + length, value
end

-- Display: Retransmit Me Message Response
eurex_cash_eti_t7_v6_0_display.retransmit_me_message_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Me Message Response
eurex_cash_eti_t7_v6_0_dissect.retransmit_me_message_response_fields = function(buffer, offset, packet, parent, size_of_retransmit_me_message_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  -- Appl Total Message Count: 2 Byte Unsigned Fixed Width Integer
  index, appl_total_message_count = eurex_cash_eti_t7_v6_0_dissect.appl_total_message_count(buffer, index, packet, parent)

  -- Appl End Msg Id: 16 Byte
  index, appl_end_msg_id = eurex_cash_eti_t7_v6_0_dissect.appl_end_msg_id(buffer, index, packet, parent)

  -- Ref Appl Last Msg Id: 16 Byte
  index, ref_appl_last_msg_id = eurex_cash_eti_t7_v6_0_dissect.ref_appl_last_msg_id(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Me Message Response
eurex_cash_eti_t7_v6_0_dissect.retransmit_me_message_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_retransmit_me_message_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.retransmit_me_message_response then
    local range = buffer(offset, size_of_retransmit_me_message_response)
    local display = eurex_cash_eti_t7_v6_0_display.retransmit_me_message_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.retransmit_me_message_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.retransmit_me_message_response_fields(buffer, offset, packet, parent, size_of_retransmit_me_message_response)

  return offset + size_of_retransmit_me_message_response
end

-- Size: Appl Beg Msg Id
eurex_cash_eti_t7_v6_0_size_of.appl_beg_msg_id = 16

-- Display: Appl Beg Msg Id
eurex_cash_eti_t7_v6_0_display.appl_beg_msg_id = function(value)
  return "Appl Beg Msg Id: "..value
end

-- Dissect: Appl Beg Msg Id
eurex_cash_eti_t7_v6_0_dissect.appl_beg_msg_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_beg_msg_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.appl_beg_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_beg_msg_id, range, value, display)

  return offset + length, value
end

-- Display: Retransmit Me Message Request
eurex_cash_eti_t7_v6_0_display.retransmit_me_message_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Me Message Request
eurex_cash_eti_t7_v6_0_dissect.retransmit_me_message_request_fields = function(buffer, offset, packet, parent, size_of_retransmit_me_message_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Subscription Scope: 4 Byte Unsigned Fixed Width Integer
  index, subscription_scope = eurex_cash_eti_t7_v6_0_dissect.subscription_scope(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = eurex_cash_eti_t7_v6_0_dissect.partition_id(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, ref_appl_id = eurex_cash_eti_t7_v6_0_dissect.ref_appl_id(buffer, index, packet, parent)

  -- Appl Beg Msg Id: 16 Byte
  index, appl_beg_msg_id = eurex_cash_eti_t7_v6_0_dissect.appl_beg_msg_id(buffer, index, packet, parent)

  -- Appl End Msg Id: 16 Byte
  index, appl_end_msg_id = eurex_cash_eti_t7_v6_0_dissect.appl_end_msg_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_cash_eti_t7_v6_0_dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Me Message Request
eurex_cash_eti_t7_v6_0_dissect.retransmit_me_message_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_retransmit_me_message_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.retransmit_me_message_request then
    local range = buffer(offset, size_of_retransmit_me_message_request)
    local display = eurex_cash_eti_t7_v6_0_display.retransmit_me_message_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.retransmit_me_message_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.retransmit_me_message_request_fields(buffer, offset, packet, parent, size_of_retransmit_me_message_request)

  return offset + size_of_retransmit_me_message_request
end

-- Display: Var Text
eurex_cash_eti_t7_v6_0_display.var_text = function(value)
  return "Var Text: "..value
end

-- Dissect runtime sized field: Var Text
eurex_cash_eti_t7_v6_0_dissect.var_text = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = eurex_cash_eti_t7_v6_0_display.var_text(value, buffer, offset, packet, parent, size)

  parent:add(eurex_cash_eti_t7_v6_0.fields.var_text, range, value, display)

  return offset + size
end

-- Size: Session Status
eurex_cash_eti_t7_v6_0_size_of.session_status = 1

-- Display: Session Status
eurex_cash_eti_t7_v6_0_display.session_status = function(value)
  if value == 0 then
    return "Session Status: Active (0)"
  end
  if value == 4 then
    return "Session Status: Logout (4)"
  end

  return "Session Status: Unknown("..value..")"
end

-- Dissect: Session Status
eurex_cash_eti_t7_v6_0_dissect.session_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.session_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.session_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.session_status, range, value, display)

  return offset + length, value
end

-- Size: Var Text Len
eurex_cash_eti_t7_v6_0_size_of.var_text_len = 2

-- Display: Var Text Len
eurex_cash_eti_t7_v6_0_display.var_text_len = function(value)
  return "Var Text Len: "..value
end

-- Dissect: Var Text Len
eurex_cash_eti_t7_v6_0_dissect.var_text_len = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.var_text_len
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.var_text_len(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.var_text_len, range, value, display)

  return offset + length, value
end

-- Size: Session Reject Reason
eurex_cash_eti_t7_v6_0_size_of.session_reject_reason = 4

-- Display: Session Reject Reason
eurex_cash_eti_t7_v6_0_display.session_reject_reason = function(value)
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
  if value == 100 then
    return "Session Reject Reason: Throttle Limit Exceeded (100)"
  end
  if value == 101 then
    return "Session Reject Reason: Exposure Limit Exceeded (101)"
  end
  if value == 102 then
    return "Session Reject Reason: Service Temporarily Not Available (102)"
  end
  if value == 103 then
    return "Session Reject Reason: Service Not Available (103)"
  end
  if value == 104 then
    return "Session Reject Reason: Result Of Transaction Unknown (104)"
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
  if value == 211 then
    return "Session Reject Reason: User Already Logged In (211)"
  end
  if value == 214 then
    return "Session Reject Reason: Session Gateway Assignment Expired (214)"
  end
  if value == 215 then
    return "Session Reject Reason: Gateway Not Reserved To Session (215)"
  end
  if value == 216 then
    return "Session Reject Reason: Gateway Is Standby (216)"
  end
  if value == 217 then
    return "Session Reject Reason: Session Login Limit Reached (217)"
  end
  if value == 218 then
    return "Session Reject Reason: Partition Not Reachable By Hf Gateway (218)"
  end
  if value == 219 then
    return "Session Reject Reason: Partition Not Reachable By Ps Gateway (219)"
  end
  if value == 222 then
    return "Session Reject Reason: No Gateway Available (222)"
  end
  if value == 223 then
    return "Session Reject Reason: User Entitlement Data Timeout (223)"
  end
  if value == 10000 then
    return "Session Reject Reason: Order Not Found (10000)"
  end
  if value == 10001 then
    return "Session Reject Reason: Price Not Reasonable (10001)"
  end
  if value == 10002 then
    return "Session Reject Reason: Client Order Id Not Unique (10002)"
  end
  if value == 10003 then
    return "Session Reject Reason: Quote Activation In Progress (10003)"
  end
  if value == 10004 then
    return "Session Reject Reason: Bu Book Order Limit Exceeded (10004)"
  end
  if value == 10005 then
    return "Session Reject Reason: Session Book Order Limit Exceeded (10005)"
  end
  if value == 10006 then
    return "Session Reject Reason: Stop Bid Price Not Reasonable (10006)"
  end
  if value == 10007 then
    return "Session Reject Reason: Stop Ask Price Not Reasonable (10007)"
  end
  if value == 10008 then
    return "Session Reject Reason: Order Not Executable Within Validity (10008)"
  end
  if value == 10009 then
    return "Session Reject Reason: Invalid Trading Restriction For Instrument State (10009)"
  end
  if value == 10011 then
    return "Session Reject Reason: Transaction Not Allowed In Current State (10011)"
  end

  return "Session Reject Reason: Unknown("..value..")"
end

-- Dissect: Session Reject Reason
eurex_cash_eti_t7_v6_0_dissect.session_reject_reason = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.session_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.session_reject_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.session_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Response In
eurex_cash_eti_t7_v6_0_size_of.response_in = 8

-- Display: Response In
eurex_cash_eti_t7_v6_0_display.response_in = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Response In: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Response In
eurex_cash_eti_t7_v6_0_dissect.response_in = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.response_in
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.response_in(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.response_in, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Time In
eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_in = 8

-- Display: Trd Reg Ts Time In
eurex_cash_eti_t7_v6_0_display.trd_reg_ts_time_in = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Time In: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time In
eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_in = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_in
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.trd_reg_ts_time_in(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trd_reg_ts_time_in, range, value, display)

  return offset + length, value
end

-- Size: Request Out
eurex_cash_eti_t7_v6_0_size_of.request_out = 8

-- Display: Request Out
eurex_cash_eti_t7_v6_0_display.request_out = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Request Out: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Out
eurex_cash_eti_t7_v6_0_dissect.request_out = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.request_out
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.request_out(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.request_out, range, value, display)

  return offset + length, value
end

-- Calculate size of: Nr Response Header Me Comp
eurex_cash_eti_t7_v6_0_size_of.nr_response_header_me_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.request_time

  index = index + eurex_cash_eti_t7_v6_0_size_of.request_out

  index = index + eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_in

  index = index + eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_out

  index = index + eurex_cash_eti_t7_v6_0_size_of.response_in

  index = index + eurex_cash_eti_t7_v6_0_size_of.sending_time

  index = index + eurex_cash_eti_t7_v6_0_size_of.msg_seq_num

  index = index + eurex_cash_eti_t7_v6_0_size_of.last_fragment

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_3

  return index
end

-- Display: Nr Response Header Me Comp
eurex_cash_eti_t7_v6_0_display.nr_response_header_me_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Nr Response Header Me Comp
eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = eurex_cash_eti_t7_v6_0_dissect.request_time(buffer, index, packet, parent)

  -- Request Out: 8 Byte Unsigned Fixed Width Integer
  index, request_out = eurex_cash_eti_t7_v6_0_dissect.request_out(buffer, index, packet, parent)

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_in = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_out = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_out(buffer, index, packet, parent)

  -- Response In: 8 Byte Unsigned Fixed Width Integer
  index, response_in = eurex_cash_eti_t7_v6_0_dissect.response_in(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = eurex_cash_eti_t7_v6_0_dissect.sending_time(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = eurex_cash_eti_t7_v6_0_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = eurex_cash_eti_t7_v6_0_dissect.last_fragment(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Nr Response Header Me Comp
eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.nr_response_header_me_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.nr_response_header_me_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.nr_response_header_me_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.nr_response_header_me_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp_fields(buffer, offset, packet, parent)
end

-- Display: Reject
eurex_cash_eti_t7_v6_0_display.reject = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reject
eurex_cash_eti_t7_v6_0_dissect.reject_fields = function(buffer, offset, packet, parent, size_of_reject)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Session Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 35 values
  index, session_reject_reason = eurex_cash_eti_t7_v6_0_dissect.session_reject_reason(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = eurex_cash_eti_t7_v6_0_dissect.var_text_len(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, session_status = eurex_cash_eti_t7_v6_0_dissect.session_status(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_cash_eti_t7_v6_0_dissect.pad_1(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = eurex_cash_eti_t7_v6_0_dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Reject
eurex_cash_eti_t7_v6_0_dissect.reject = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_reject = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.reject then
    local range = buffer(offset, size_of_reject)
    local display = eurex_cash_eti_t7_v6_0_display.reject(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.reject, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.reject_fields(buffer, offset, packet, parent, size_of_reject)

  return offset + size_of_reject
end

-- Display: Rfq Response
eurex_cash_eti_t7_v6_0_display.rfq_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Response
eurex_cash_eti_t7_v6_0_dissect.rfq_response_fields = function(buffer, offset, packet, parent, size_of_rfq_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Response
eurex_cash_eti_t7_v6_0_dissect.rfq_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_rfq_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.rfq_response then
    local range = buffer(offset, size_of_rfq_response)
    local display = eurex_cash_eti_t7_v6_0_display.rfq_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.rfq_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.rfq_response_fields(buffer, offset, packet, parent, size_of_rfq_response)

  return offset + size_of_rfq_response
end

-- Size: Rfq Requester Disclosure Instruction
eurex_cash_eti_t7_v6_0_size_of.rfq_requester_disclosure_instruction = 1

-- Display: Rfq Requester Disclosure Instruction
eurex_cash_eti_t7_v6_0_display.rfq_requester_disclosure_instruction = function(value)
  if value == 0 then
    return "Rfq Requester Disclosure Instruction: No (0)"
  end
  if value == 1 then
    return "Rfq Requester Disclosure Instruction: Yes (1)"
  end

  return "Rfq Requester Disclosure Instruction: Unknown("..value..")"
end

-- Dissect: Rfq Requester Disclosure Instruction
eurex_cash_eti_t7_v6_0_dissect.rfq_requester_disclosure_instruction = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.rfq_requester_disclosure_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.rfq_requester_disclosure_instruction(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.rfq_requester_disclosure_instruction, range, value, display)

  return offset + length, value
end

-- Size: Rfq Publish Indicator
eurex_cash_eti_t7_v6_0_size_of.rfq_publish_indicator = 1

-- Display: Rfq Publish Indicator
eurex_cash_eti_t7_v6_0_display.rfq_publish_indicator = function(value)
  if value == 1 then
    return "Rfq Publish Indicator: Market Data (1)"
  end
  if value == 2 then
    return "Rfq Publish Indicator: Designated Sponsor (2)"
  end
  if value == 3 then
    return "Rfq Publish Indicator: Market Dataand Designated Sponsor (3)"
  end
  if value == 4 then
    return "Rfq Publish Indicator: Market Makerand Designated Sponsor (4)"
  end
  if value == 5 then
    return "Rfq Publish Indicator: Market Dataand Market Makerand Designated Sponsor (5)"
  end

  return "Rfq Publish Indicator: Unknown("..value..")"
end

-- Dissect: Rfq Publish Indicator
eurex_cash_eti_t7_v6_0_dissect.rfq_publish_indicator = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.rfq_publish_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.rfq_publish_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.rfq_publish_indicator, range, value, display)

  return offset + length, value
end

-- Display: Rfq Request
eurex_cash_eti_t7_v6_0_display.rfq_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Request
eurex_cash_eti_t7_v6_0_dissect.rfq_request_fields = function(buffer, offset, packet, parent, size_of_rfq_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  -- Rfq Publish Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, rfq_publish_indicator = eurex_cash_eti_t7_v6_0_dissect.rfq_publish_indicator(buffer, index, packet, parent)

  -- Rfq Requester Disclosure Instruction: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, rfq_requester_disclosure_instruction = eurex_cash_eti_t7_v6_0_dissect.rfq_requester_disclosure_instruction(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_cash_eti_t7_v6_0_dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Request
eurex_cash_eti_t7_v6_0_dissect.rfq_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_rfq_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.rfq_request then
    local range = buffer(offset, size_of_rfq_request)
    local display = eurex_cash_eti_t7_v6_0_display.rfq_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.rfq_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.rfq_request_fields(buffer, offset, packet, parent, size_of_rfq_request)

  return offset + size_of_rfq_request
end

-- Size: Party Executing Firm
eurex_cash_eti_t7_v6_0_size_of.party_executing_firm = 5

-- Display: Party Executing Firm
eurex_cash_eti_t7_v6_0_display.party_executing_firm = function(value)
  return "Party Executing Firm: "..value
end

-- Dissect: Party Executing Firm
eurex_cash_eti_t7_v6_0_dissect.party_executing_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_executing_firm
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.party_executing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_executing_firm, range, value, display)

  return offset + length, value
end

-- Display: Rfq Broadcast
eurex_cash_eti_t7_v6_0_display.rfq_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Broadcast
eurex_cash_eti_t7_v6_0_dissect.rfq_broadcast_fields = function(buffer, offset, packet, parent, size_of_rfq_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Party Executing Firm: 5 Byte Ascii String
  index, party_executing_firm = eurex_cash_eti_t7_v6_0_dissect.party_executing_firm(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Broadcast
eurex_cash_eti_t7_v6_0_dissect.rfq_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_rfq_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.rfq_broadcast then
    local range = buffer(offset, size_of_rfq_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.rfq_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.rfq_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.rfq_broadcast_fields(buffer, offset, packet, parent, size_of_rfq_broadcast)

  return offset + size_of_rfq_broadcast
end

-- Size: Quote Event Reason
eurex_cash_eti_t7_v6_0_size_of.quote_event_reason = 1

-- Display: Quote Event Reason
eurex_cash_eti_t7_v6_0_display.quote_event_reason = function(value)
  if value == 14 then
    return "Quote Event Reason: Pendingcancellationexecuted (14)"
  end
  if value == 15 then
    return "Quote Event Reason: Invalidprice (15)"
  end
  if value == 16 then
    return "Quote Event Reason: Crossrejected (16)"
  end

  return "Quote Event Reason: Unknown("..value..")"
end

-- Dissect: Quote Event Reason
eurex_cash_eti_t7_v6_0_dissect.quote_event_reason = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_event_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.quote_event_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_event_reason, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Liquidity Ind
eurex_cash_eti_t7_v6_0_size_of.quote_event_liquidity_ind = 1

-- Display: Quote Event Liquidity Ind
eurex_cash_eti_t7_v6_0_display.quote_event_liquidity_ind = function(value)
  if value == 1 then
    return "Quote Event Liquidity Ind: Added Liquidity (1)"
  end
  if value == 2 then
    return "Quote Event Liquidity Ind: Removed Liquidity (2)"
  end

  return "Quote Event Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Quote Event Liquidity Ind
eurex_cash_eti_t7_v6_0_dissect.quote_event_liquidity_ind = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_event_liquidity_ind
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.quote_event_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_event_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Side
eurex_cash_eti_t7_v6_0_size_of.quote_event_side = 1

-- Display: Quote Event Side
eurex_cash_eti_t7_v6_0_display.quote_event_side = function(value)
  if value == 1 then
    return "Quote Event Side: Buy (1)"
  end
  if value == 2 then
    return "Quote Event Side: Sell (2)"
  end

  return "Quote Event Side: Unknown("..value..")"
end

-- Dissect: Quote Event Side
eurex_cash_eti_t7_v6_0_dissect.quote_event_side = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_event_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.quote_event_side(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_event_side, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Type
eurex_cash_eti_t7_v6_0_size_of.quote_event_type = 1

-- Display: Quote Event Type
eurex_cash_eti_t7_v6_0_display.quote_event_type = function(value)
  if value == 2 then
    return "Quote Event Type: Modifiedquoteside (2)"
  end
  if value == 3 then
    return "Quote Event Type: Removedquoteside (3)"
  end
  if value == 4 then
    return "Quote Event Type: Partiallyfilled (4)"
  end
  if value == 5 then
    return "Quote Event Type: Filled (5)"
  end

  return "Quote Event Type: Unknown("..value..")"
end

-- Dissect: Quote Event Type
eurex_cash_eti_t7_v6_0_dissect.quote_event_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_event_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.quote_event_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_event_type, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Qty
eurex_cash_eti_t7_v6_0_size_of.quote_event_qty = 4

-- Display: Quote Event Qty
eurex_cash_eti_t7_v6_0_display.quote_event_qty = function(value)
  return "Quote Event Qty: "..value
end

-- Dissect: Quote Event Qty
eurex_cash_eti_t7_v6_0_dissect.quote_event_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_event_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.quote_event_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_event_qty, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Exec Id
eurex_cash_eti_t7_v6_0_size_of.quote_event_exec_id = 4

-- Display: Quote Event Exec Id
eurex_cash_eti_t7_v6_0_display.quote_event_exec_id = function(value)
  return "Quote Event Exec Id: "..value
end

-- Dissect: Quote Event Exec Id
eurex_cash_eti_t7_v6_0_dissect.quote_event_exec_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_event_exec_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.quote_event_exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_event_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Match Id
eurex_cash_eti_t7_v6_0_size_of.quote_event_match_id = 4

-- Display: Quote Event Match Id
eurex_cash_eti_t7_v6_0_display.quote_event_match_id = function(value)
  return "Quote Event Match Id: "..value
end

-- Dissect: Quote Event Match Id
eurex_cash_eti_t7_v6_0_dissect.quote_event_match_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_event_match_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.quote_event_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_event_match_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Msg Id
eurex_cash_eti_t7_v6_0_size_of.quote_msg_id = 8

-- Display: Quote Msg Id
eurex_cash_eti_t7_v6_0_display.quote_msg_id = function(value)
  return "Quote Msg Id: "..value
end

-- Dissect: Quote Msg Id
eurex_cash_eti_t7_v6_0_dissect.quote_msg_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_msg_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.quote_msg_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_msg_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Event Px
eurex_cash_eti_t7_v6_0_size_of.quote_event_px = 8

-- Display: Quote Event Px
eurex_cash_eti_t7_v6_0_display.quote_event_px = function(value)
  return "Quote Event Px: "..value
end

-- Translate: Quote Event Px
translate.quote_event_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Quote Event Px
eurex_cash_eti_t7_v6_0_dissect.quote_event_px = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_event_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.quote_event_px(raw)
  local display = eurex_cash_eti_t7_v6_0_display.quote_event_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_event_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Event Grp Comp
eurex_cash_eti_t7_v6_0_size_of.quote_event_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.security_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_event_px

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_msg_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_event_match_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_event_exec_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_event_qty

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_event_type

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_event_side

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_event_liquidity_ind

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_event_reason

  return index
end

-- Display: Quote Event Grp Comp
eurex_cash_eti_t7_v6_0_display.quote_event_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Event Grp Comp
eurex_cash_eti_t7_v6_0_dissect.quote_event_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Quote Event Px: 8 Byte Unsigned Fixed Width Integer
  index, quote_event_px = eurex_cash_eti_t7_v6_0_dissect.quote_event_px(buffer, index, packet, parent)

  -- Quote Msg Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_msg_id = eurex_cash_eti_t7_v6_0_dissect.quote_msg_id(buffer, index, packet, parent)

  -- Quote Event Match Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_event_match_id = eurex_cash_eti_t7_v6_0_dissect.quote_event_match_id(buffer, index, packet, parent)

  -- Quote Event Exec Id: 4 Byte Signed Fixed Width Integer
  index, quote_event_exec_id = eurex_cash_eti_t7_v6_0_dissect.quote_event_exec_id(buffer, index, packet, parent)

  -- Quote Event Qty: 4 Byte Signed Fixed Width Integer
  index, quote_event_qty = eurex_cash_eti_t7_v6_0_dissect.quote_event_qty(buffer, index, packet, parent)

  -- Quote Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_event_type = eurex_cash_eti_t7_v6_0_dissect.quote_event_type(buffer, index, packet, parent)

  -- Quote Event Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_event_side = eurex_cash_eti_t7_v6_0_dissect.quote_event_side(buffer, index, packet, parent)

  -- Quote Event Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_event_liquidity_ind = eurex_cash_eti_t7_v6_0_dissect.quote_event_liquidity_ind(buffer, index, packet, parent)

  -- Quote Event Reason: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, quote_event_reason = eurex_cash_eti_t7_v6_0_dissect.quote_event_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Event Grp Comp
eurex_cash_eti_t7_v6_0_dissect.quote_event_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_event_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.quote_event_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.quote_event_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.quote_event_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.quote_event_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Quote Events
eurex_cash_eti_t7_v6_0_size_of.no_quote_events = 1

-- Display: No Quote Events
eurex_cash_eti_t7_v6_0_display.no_quote_events = function(value)
  return "No Quote Events: "..value
end

-- Dissect: No Quote Events
eurex_cash_eti_t7_v6_0_dissect.no_quote_events = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.no_quote_events
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.no_quote_events(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.no_quote_events, range, value, display)

  return offset + length, value
end

-- Display: Quote Execution Report
eurex_cash_eti_t7_v6_0_display.quote_execution_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Execution Report
eurex_cash_eti_t7_v6_0_dissect.quote_execution_report_fields = function(buffer, offset, packet, parent, size_of_quote_execution_report)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- No Quote Events: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_events = eurex_cash_eti_t7_v6_0_dissect.no_quote_events(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  -- Quote Event Grp Comp: Struct of 10 fields
  for i = 1, no_quote_events do
    index = eurex_cash_eti_t7_v6_0_dissect.quote_event_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Execution Report
eurex_cash_eti_t7_v6_0_dissect.quote_execution_report = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_quote_execution_report = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.quote_execution_report then
    local range = buffer(offset, size_of_quote_execution_report)
    local display = eurex_cash_eti_t7_v6_0_display.quote_execution_report(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.quote_execution_report, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.quote_execution_report_fields(buffer, offset, packet, parent, size_of_quote_execution_report)

  return offset + size_of_quote_execution_report
end

-- Size: Not Affected Security Id
eurex_cash_eti_t7_v6_0_size_of.not_affected_security_id = 8

-- Display: Not Affected Security Id
eurex_cash_eti_t7_v6_0_display.not_affected_security_id = function(value)
  return "Not Affected Security Id: "..value
end

-- Dissect: Not Affected Security Id
eurex_cash_eti_t7_v6_0_dissect.not_affected_security_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.not_affected_security_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.not_affected_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.not_affected_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Not Affected Securities Grp Comp
eurex_cash_eti_t7_v6_0_size_of.not_affected_securities_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.not_affected_security_id

  return index
end

-- Display: Not Affected Securities Grp Comp
eurex_cash_eti_t7_v6_0_display.not_affected_securities_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Affected Securities Grp Comp
eurex_cash_eti_t7_v6_0_dissect.not_affected_securities_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Not Affected Security Id: 8 Byte Unsigned Fixed Width Integer
  index, not_affected_security_id = eurex_cash_eti_t7_v6_0_dissect.not_affected_security_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Securities Grp Comp
eurex_cash_eti_t7_v6_0_dissect.not_affected_securities_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_affected_securities_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.not_affected_securities_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.not_affected_securities_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.not_affected_securities_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.not_affected_securities_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Not Affected Securities
eurex_cash_eti_t7_v6_0_size_of.no_not_affected_securities = 2

-- Display: No Not Affected Securities
eurex_cash_eti_t7_v6_0_display.no_not_affected_securities = function(value)
  return "No Not Affected Securities: "..value
end

-- Dissect: No Not Affected Securities
eurex_cash_eti_t7_v6_0_dissect.no_not_affected_securities = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.no_not_affected_securities
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.no_not_affected_securities(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.no_not_affected_securities, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Report Id
eurex_cash_eti_t7_v6_0_size_of.mass_action_report_id = 8

-- Display: Mass Action Report Id
eurex_cash_eti_t7_v6_0_display.mass_action_report_id = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Mass Action Report Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Mass Action Report Id
eurex_cash_eti_t7_v6_0_dissect.mass_action_report_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.mass_action_report_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.mass_action_report_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.mass_action_report_id, range, value, display)

  return offset + length, value
end

-- Display: Quote Activation Response
eurex_cash_eti_t7_v6_0_display.quote_activation_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Activation Response
eurex_cash_eti_t7_v6_0_dissect.quote_activation_response_fields = function(buffer, offset, packet, parent, size_of_quote_activation_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = eurex_cash_eti_t7_v6_0_dissect.mass_action_report_id(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = eurex_cash_eti_t7_v6_0_dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  -- Not Affected Securities Grp Comp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = eurex_cash_eti_t7_v6_0_dissect.not_affected_securities_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Activation Response
eurex_cash_eti_t7_v6_0_dissect.quote_activation_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_quote_activation_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.quote_activation_response then
    local range = buffer(offset, size_of_quote_activation_response)
    local display = eurex_cash_eti_t7_v6_0_display.quote_activation_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.quote_activation_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.quote_activation_response_fields(buffer, offset, packet, parent, size_of_quote_activation_response)

  return offset + size_of_quote_activation_response
end

-- Size: Executing Trader Qualifier
eurex_cash_eti_t7_v6_0_size_of.executing_trader_qualifier = 1

-- Display: Executing Trader Qualifier
eurex_cash_eti_t7_v6_0_display.executing_trader_qualifier = function(value)
  if value == 22 then
    return "Executing Trader Qualifier: Algo (22)"
  end
  if value == 24 then
    return "Executing Trader Qualifier: Human (24)"
  end

  return "Executing Trader Qualifier: Unknown("..value..")"
end

-- Dissect: Executing Trader Qualifier
eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.executing_trader_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.executing_trader_qualifier(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.executing_trader_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Party Id Investment Decision Maker Qualifier
eurex_cash_eti_t7_v6_0_size_of.party_id_investment_decision_maker_qualifier = 1

-- Display: Party Id Investment Decision Maker Qualifier
eurex_cash_eti_t7_v6_0_display.party_id_investment_decision_maker_qualifier = function(value)
  if value == 22 then
    return "Party Id Investment Decision Maker Qualifier: Algo (22)"
  end
  if value == 24 then
    return "Party Id Investment Decision Maker Qualifier: Human (24)"
  end

  return "Party Id Investment Decision Maker Qualifier: Unknown("..value..")"
end

-- Dissect: Party Id Investment Decision Maker Qualifier
eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_id_investment_decision_maker_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_id_investment_decision_maker_qualifier(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_id_investment_decision_maker_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Mass Action Type
eurex_cash_eti_t7_v6_0_size_of.mass_action_type = 1

-- Display: Mass Action Type
eurex_cash_eti_t7_v6_0_display.mass_action_type = function(value)
  if value == 1 then
    return "Mass Action Type: Suspendquotes (1)"
  end
  if value == 2 then
    return "Mass Action Type: Releasequotes (2)"
  end

  return "Mass Action Type: Unknown("..value..")"
end

-- Dissect: Mass Action Type
eurex_cash_eti_t7_v6_0_dissect.mass_action_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.mass_action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.mass_action_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.mass_action_type, range, value, display)

  return offset + length, value
end

-- Size: Target Party Id Session Id
eurex_cash_eti_t7_v6_0_size_of.target_party_id_session_id = 4

-- Display: Target Party Id Session Id
eurex_cash_eti_t7_v6_0_display.target_party_id_session_id = function(value)
  return "Target Party Id Session Id: "..value
end

-- Dissect: Target Party Id Session Id
eurex_cash_eti_t7_v6_0_dissect.target_party_id_session_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.target_party_id_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.target_party_id_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.target_party_id_session_id, range, value, display)

  return offset + length, value
end

-- Size: Executing Trader
eurex_cash_eti_t7_v6_0_size_of.executing_trader = 8

-- Display: Executing Trader
eurex_cash_eti_t7_v6_0_display.executing_trader = function(value)
  return "Executing Trader: "..value
end

-- Dissect: Executing Trader
eurex_cash_eti_t7_v6_0_dissect.executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Id Investment Decision Maker
eurex_cash_eti_t7_v6_0_size_of.party_id_investment_decision_maker = 8

-- Display: Party Id Investment Decision Maker
eurex_cash_eti_t7_v6_0_display.party_id_investment_decision_maker = function(value)
  return "Party Id Investment Decision Maker: "..value
end

-- Dissect: Party Id Investment Decision Maker
eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_id_investment_decision_maker
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.party_id_investment_decision_maker(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_id_investment_decision_maker, range, value, display)

  return offset + length, value
end

-- Display: Quote Activation Request
eurex_cash_eti_t7_v6_0_display.quote_activation_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Activation Request
eurex_cash_eti_t7_v6_0_dissect.quote_activation_request_fields = function(buffer, offset, packet, parent, size_of_quote_activation_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_type = eurex_cash_eti_t7_v6_0_dissect.mass_action_type(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_cash_eti_t7_v6_0_dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Activation Request
eurex_cash_eti_t7_v6_0_dissect.quote_activation_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_quote_activation_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.quote_activation_request then
    local range = buffer(offset, size_of_quote_activation_request)
    local display = eurex_cash_eti_t7_v6_0_display.quote_activation_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.quote_activation_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.quote_activation_request_fields(buffer, offset, packet, parent, size_of_quote_activation_request)

  return offset + size_of_quote_activation_request
end

-- Size: Mass Action Reason
eurex_cash_eti_t7_v6_0_size_of.mass_action_reason = 1

-- Display: Mass Action Reason
eurex_cash_eti_t7_v6_0_display.mass_action_reason = function(value)
  if value == 0 then
    return "Mass Action Reason: No Special Reason (0)"
  end
  if value == 1 then
    return "Mass Action Reason: Stop Trading (1)"
  end
  if value == 2 then
    return "Mass Action Reason: Emergency (2)"
  end
  if value == 6 then
    return "Mass Action Reason: Session Loss (6)"
  end
  if value == 7 then
    return "Mass Action Reason: Duplicate Session Login (7)"
  end
  if value == 8 then
    return "Mass Action Reason: Clearing Risk Control (8)"
  end
  if value == 105 then
    return "Mass Action Reason: Product State Halt (105)"
  end
  if value == 106 then
    return "Mass Action Reason: Product State Holiday (106)"
  end
  if value == 107 then
    return "Mass Action Reason: Instrument Suspended (107)"
  end
  if value == 110 then
    return "Mass Action Reason: Volatility Interruption (110)"
  end
  if value == 111 then
    return "Mass Action Reason: Producttemporarilynottradeable (111)"
  end
  if value == 113 then
    return "Mass Action Reason: Instrument Stopped (113)"
  end

  return "Mass Action Reason: Unknown("..value..")"
end

-- Dissect: Mass Action Reason
eurex_cash_eti_t7_v6_0_dissect.mass_action_reason = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.mass_action_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.mass_action_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.mass_action_reason, range, value, display)

  return offset + length, value
end

-- Size: Party Id Entering Firm
eurex_cash_eti_t7_v6_0_size_of.party_id_entering_firm = 1

-- Display: Party Id Entering Firm
eurex_cash_eti_t7_v6_0_display.party_id_entering_firm = function(value)
  if value == 1 then
    return "Party Id Entering Firm: Participant (1)"
  end
  if value == 2 then
    return "Party Id Entering Firm: Market Supervision (2)"
  end

  return "Party Id Entering Firm: Unknown("..value..")"
end

-- Dissect: Party Id Entering Firm
eurex_cash_eti_t7_v6_0_dissect.party_id_entering_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_id_entering_firm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_id_entering_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_id_entering_firm, range, value, display)

  return offset + length, value
end

-- Size: Party Id Entering Trader
eurex_cash_eti_t7_v6_0_size_of.party_id_entering_trader = 4

-- Display: Party Id Entering Trader
eurex_cash_eti_t7_v6_0_display.party_id_entering_trader = function(value)
  return "Party Id Entering Trader: "..value
end

-- Dissect: Party Id Entering Trader
eurex_cash_eti_t7_v6_0_dissect.party_id_entering_trader = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_id_entering_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_id_entering_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_id_entering_trader, range, value, display)

  return offset + length, value
end

-- Display: Quote Activation Notification
eurex_cash_eti_t7_v6_0_display.quote_activation_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Activation Notification
eurex_cash_eti_t7_v6_0_dissect.quote_activation_notification_fields = function(buffer, offset, packet, parent, size_of_quote_activation_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = eurex_cash_eti_t7_v6_0_dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = eurex_cash_eti_t7_v6_0_dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Mass Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_action_type = eurex_cash_eti_t7_v6_0_dissect.mass_action_type(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, mass_action_reason = eurex_cash_eti_t7_v6_0_dissect.mass_action_reason(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  -- Not Affected Securities Grp Comp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = eurex_cash_eti_t7_v6_0_dissect.not_affected_securities_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Activation Notification
eurex_cash_eti_t7_v6_0_dissect.quote_activation_notification = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_quote_activation_notification = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.quote_activation_notification then
    local range = buffer(offset, size_of_quote_activation_notification)
    local display = eurex_cash_eti_t7_v6_0_display.quote_activation_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.quote_activation_notification, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.quote_activation_notification_fields(buffer, offset, packet, parent, size_of_quote_activation_notification)

  return offset + size_of_quote_activation_notification
end

-- Size: Party Detail Status
eurex_cash_eti_t7_v6_0_size_of.party_detail_status = 1

-- Display: Party Detail Status
eurex_cash_eti_t7_v6_0_display.party_detail_status = function(value)
  if value == 0 then
    return "Party Detail Status: Active (0)"
  end
  if value == 1 then
    return "Party Detail Status: Suspend (1)"
  end

  return "Party Detail Status: Unknown("..value..")"
end

-- Dissect: Party Detail Status
eurex_cash_eti_t7_v6_0_dissect.party_detail_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_detail_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_detail_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_detail_status, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Clearing Firm
eurex_cash_eti_t7_v6_0_size_of.requesting_party_clearing_firm = 9

-- Display: Requesting Party Clearing Firm
eurex_cash_eti_t7_v6_0_display.requesting_party_clearing_firm = function(value)
  return "Requesting Party Clearing Firm: "..value
end

-- Dissect: Requesting Party Clearing Firm
eurex_cash_eti_t7_v6_0_dissect.requesting_party_clearing_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.requesting_party_clearing_firm
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.requesting_party_clearing_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.requesting_party_clearing_firm, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Entering Firm
eurex_cash_eti_t7_v6_0_size_of.requesting_party_entering_firm = 9

-- Display: Requesting Party Entering Firm
eurex_cash_eti_t7_v6_0_display.requesting_party_entering_firm = function(value)
  return "Requesting Party Entering Firm: "..value
end

-- Dissect: Requesting Party Entering Firm
eurex_cash_eti_t7_v6_0_dissect.requesting_party_entering_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.requesting_party_entering_firm
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.requesting_party_entering_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.requesting_party_entering_firm, range, value, display)

  return offset + length, value
end

-- Size: List Update Action
eurex_cash_eti_t7_v6_0_size_of.list_update_action = 1

-- Display: List Update Action
eurex_cash_eti_t7_v6_0_display.list_update_action = function(value)
  if value == "A" then
    return "List Update Action: Add (A)"
  end
  if value == "D" then
    return "List Update Action: Delete (D)"
  end

  return "List Update Action: Unknown("..value..")"
end

-- Dissect: List Update Action
eurex_cash_eti_t7_v6_0_dissect.list_update_action = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.list_update_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = eurex_cash_eti_t7_v6_0_display.list_update_action(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.list_update_action, range, value, display)

  return offset + length, value
end

-- Size: Market Id
eurex_cash_eti_t7_v6_0_size_of.market_id = 2

-- Display: Market Id
eurex_cash_eti_t7_v6_0_display.market_id = function(value)
  if value == 3 then
    return "Market Id: Xetr (3)"
  end
  if value == 4 then
    return "Market Id: Xvie (4)"
  end
  if value == 5 then
    return "Market Id: Xdub (5)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
eurex_cash_eti_t7_v6_0_dissect.market_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.market_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Id Executing System
eurex_cash_eti_t7_v6_0_size_of.requesting_party_id_executing_system = 4

-- Display: Requesting Party Id Executing System
eurex_cash_eti_t7_v6_0_display.requesting_party_id_executing_system = function(value)
  if value == 2 then
    return "Requesting Party Id Executing System: T 7 (2)"
  end

  return "Requesting Party Id Executing System: Unknown("..value..")"
end

-- Dissect: Requesting Party Id Executing System
eurex_cash_eti_t7_v6_0_dissect.requesting_party_id_executing_system = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.requesting_party_id_executing_system
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.requesting_party_id_executing_system(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.requesting_party_id_executing_system, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Id Executing Unit
eurex_cash_eti_t7_v6_0_size_of.party_detail_id_executing_unit = 4

-- Display: Party Detail Id Executing Unit
eurex_cash_eti_t7_v6_0_display.party_detail_id_executing_unit = function(value)
  return "Party Detail Id Executing Unit: "..value
end

-- Dissect: Party Detail Id Executing Unit
eurex_cash_eti_t7_v6_0_dissect.party_detail_id_executing_unit = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_detail_id_executing_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_detail_id_executing_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_detail_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Display: Party Entitlements Update Report
eurex_cash_eti_t7_v6_0_display.party_entitlements_update_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Entitlements Update Report
eurex_cash_eti_t7_v6_0_dissect.party_entitlements_update_report_fields = function(buffer, offset, packet, parent, size_of_party_entitlements_update_report)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = eurex_cash_eti_t7_v6_0_dissect.transact_time(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = eurex_cash_eti_t7_v6_0_dissect.trade_date(buffer, index, packet, parent)

  -- Party Detail Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_detail_id_executing_unit = eurex_cash_eti_t7_v6_0_dissect.party_detail_id_executing_unit(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, requesting_party_id_executing_system = eurex_cash_eti_t7_v6_0_dissect.requesting_party_id_executing_system(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = eurex_cash_eti_t7_v6_0_dissect.market_id(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String Enum with 2 values
  index, list_update_action = eurex_cash_eti_t7_v6_0_dissect.list_update_action(buffer, index, packet, parent)

  -- Requesting Party Entering Firm: 9 Byte Ascii String
  index, requesting_party_entering_firm = eurex_cash_eti_t7_v6_0_dissect.requesting_party_entering_firm(buffer, index, packet, parent)

  -- Requesting Party Clearing Firm: 9 Byte Ascii String
  index, requesting_party_clearing_firm = eurex_cash_eti_t7_v6_0_dissect.requesting_party_clearing_firm(buffer, index, packet, parent)

  -- Party Detail Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_detail_status = eurex_cash_eti_t7_v6_0_dissect.party_detail_status(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Entitlements Update Report
eurex_cash_eti_t7_v6_0_dissect.party_entitlements_update_report = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_party_entitlements_update_report = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.party_entitlements_update_report then
    local range = buffer(offset, size_of_party_entitlements_update_report)
    local display = eurex_cash_eti_t7_v6_0_display.party_entitlements_update_report(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.party_entitlements_update_report, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.party_entitlements_update_report_fields(buffer, offset, packet, parent, size_of_party_entitlements_update_report)

  return offset + size_of_party_entitlements_update_report
end

-- Size: Requesting Party Id Entering Firm
eurex_cash_eti_t7_v6_0_size_of.requesting_party_id_entering_firm = 1

-- Display: Requesting Party Id Entering Firm
eurex_cash_eti_t7_v6_0_display.requesting_party_id_entering_firm = function(value)
  if value == 1 then
    return "Requesting Party Id Entering Firm: Participant (1)"
  end
  if value == 2 then
    return "Requesting Party Id Entering Firm: Market Supervision (2)"
  end

  return "Requesting Party Id Entering Firm: Unknown("..value..")"
end

-- Dissect: Requesting Party Id Entering Firm
eurex_cash_eti_t7_v6_0_dissect.requesting_party_id_entering_firm = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.requesting_party_id_entering_firm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.requesting_party_id_entering_firm(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.requesting_party_id_entering_firm, range, value, display)

  return offset + length, value
end

-- Size: Party Action Type
eurex_cash_eti_t7_v6_0_size_of.party_action_type = 1

-- Display: Party Action Type
eurex_cash_eti_t7_v6_0_display.party_action_type = function(value)
  if value == 1 then
    return "Party Action Type: Halt Trading (1)"
  end
  if value == 2 then
    return "Party Action Type: Reinstate (2)"
  end

  return "Party Action Type: Unknown("..value..")"
end

-- Dissect: Party Action Type
eurex_cash_eti_t7_v6_0_dissect.party_action_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_action_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_action_type, range, value, display)

  return offset + length, value
end

-- Size: Party Id Executing Trader
eurex_cash_eti_t7_v6_0_size_of.party_id_executing_trader = 4

-- Display: Party Id Executing Trader
eurex_cash_eti_t7_v6_0_display.party_id_executing_trader = function(value)
  return "Party Id Executing Trader: "..value
end

-- Dissect: Party Id Executing Trader
eurex_cash_eti_t7_v6_0_dissect.party_id_executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Id Executing Unit
eurex_cash_eti_t7_v6_0_size_of.party_id_executing_unit = 4

-- Display: Party Id Executing Unit
eurex_cash_eti_t7_v6_0_display.party_id_executing_unit = function(value)
  return "Party Id Executing Unit: "..value
end

-- Dissect: Party Id Executing Unit
eurex_cash_eti_t7_v6_0_dissect.party_id_executing_unit = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_id_executing_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_id_executing_unit(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_id_executing_unit, range, value, display)

  return offset + length, value
end

-- Size: Requesting Party Id Executing Trader
eurex_cash_eti_t7_v6_0_size_of.requesting_party_id_executing_trader = 4

-- Display: Requesting Party Id Executing Trader
eurex_cash_eti_t7_v6_0_display.requesting_party_id_executing_trader = function(value)
  return "Requesting Party Id Executing Trader: "..value
end

-- Dissect: Requesting Party Id Executing Trader
eurex_cash_eti_t7_v6_0_dissect.requesting_party_id_executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.requesting_party_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.requesting_party_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.requesting_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Display: Party Action Report
eurex_cash_eti_t7_v6_0_display.party_action_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Action Report
eurex_cash_eti_t7_v6_0_dissect.party_action_report_fields = function(buffer, offset, packet, parent, size_of_party_action_report)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = eurex_cash_eti_t7_v6_0_dissect.transact_time(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = eurex_cash_eti_t7_v6_0_dissect.trade_date(buffer, index, packet, parent)

  -- Requesting Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, requesting_party_id_executing_trader = eurex_cash_eti_t7_v6_0_dissect.requesting_party_id_executing_trader(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_unit = eurex_cash_eti_t7_v6_0_dissect.party_id_executing_unit(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_trader = eurex_cash_eti_t7_v6_0_dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Requesting Party Id Executing System: 4 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, requesting_party_id_executing_system = eurex_cash_eti_t7_v6_0_dissect.requesting_party_id_executing_system(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = eurex_cash_eti_t7_v6_0_dissect.market_id(buffer, index, packet, parent)

  -- Party Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_action_type = eurex_cash_eti_t7_v6_0_dissect.party_action_type(buffer, index, packet, parent)

  -- Requesting Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, requesting_party_id_entering_firm = eurex_cash_eti_t7_v6_0_dissect.requesting_party_id_entering_firm(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Action Report
eurex_cash_eti_t7_v6_0_dissect.party_action_report = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_party_action_report = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.party_action_report then
    local range = buffer(offset, size_of_party_action_report)
    local display = eurex_cash_eti_t7_v6_0_display.party_action_report(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.party_action_report, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.party_action_report_fields(buffer, offset, packet, parent, size_of_party_action_report)

  return offset + size_of_party_action_report
end

-- Size: Fill Liquidity Ind
eurex_cash_eti_t7_v6_0_size_of.fill_liquidity_ind = 1

-- Display: Fill Liquidity Ind
eurex_cash_eti_t7_v6_0_display.fill_liquidity_ind = function(value)
  if value == 1 then
    return "Fill Liquidity Ind: Added Liquidity (1)"
  end
  if value == 2 then
    return "Fill Liquidity Ind: Removed Liquidity (2)"
  end
  if value == 5 then
    return "Fill Liquidity Ind: Triggered Stop Order (5)"
  end
  if value == 6 then
    return "Fill Liquidity Ind: Triggered Oco Order (6)"
  end
  if value == 7 then
    return "Fill Liquidity Ind: Triggered Market Order (7)"
  end

  return "Fill Liquidity Ind: Unknown("..value..")"
end

-- Dissect: Fill Liquidity Ind
eurex_cash_eti_t7_v6_0_dissect.fill_liquidity_ind = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.fill_liquidity_ind
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.fill_liquidity_ind(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.fill_liquidity_ind, range, value, display)

  return offset + length, value
end

-- Size: Fill Exec Id
eurex_cash_eti_t7_v6_0_size_of.fill_exec_id = 4

-- Display: Fill Exec Id
eurex_cash_eti_t7_v6_0_display.fill_exec_id = function(value)
  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
eurex_cash_eti_t7_v6_0_dissect.fill_exec_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.fill_exec_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.fill_exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.fill_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Fill Match Id
eurex_cash_eti_t7_v6_0_size_of.fill_match_id = 4

-- Display: Fill Match Id
eurex_cash_eti_t7_v6_0_display.fill_match_id = function(value)
  return "Fill Match Id: "..value
end

-- Dissect: Fill Match Id
eurex_cash_eti_t7_v6_0_dissect.fill_match_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.fill_match_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.fill_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.fill_match_id, range, value, display)

  return offset + length, value
end

-- Size: Fill Qty
eurex_cash_eti_t7_v6_0_size_of.fill_qty = 4

-- Display: Fill Qty
eurex_cash_eti_t7_v6_0_display.fill_qty = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
eurex_cash_eti_t7_v6_0_dissect.fill_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.fill_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.fill_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.fill_qty, range, value, display)

  return offset + length, value
end

-- Size: Fill Px
eurex_cash_eti_t7_v6_0_size_of.fill_px = 8

-- Display: Fill Px
eurex_cash_eti_t7_v6_0_display.fill_px = function(value)
  return "Fill Px: "..value
end

-- Translate: Fill Px
translate.fill_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Fill Px
eurex_cash_eti_t7_v6_0_dissect.fill_px = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.fill_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.fill_px(raw)
  local display = eurex_cash_eti_t7_v6_0_display.fill_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.fill_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fills Grp Comp
eurex_cash_eti_t7_v6_0_size_of.fills_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.fill_px

  index = index + eurex_cash_eti_t7_v6_0_size_of.fill_qty

  index = index + eurex_cash_eti_t7_v6_0_size_of.fill_match_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.fill_exec_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.fill_liquidity_ind

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_3

  return index
end

-- Display: Fills Grp Comp
eurex_cash_eti_t7_v6_0_display.fills_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fills Grp Comp
eurex_cash_eti_t7_v6_0_dissect.fills_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Fill Px: 8 Byte Unsigned Fixed Width Integer
  index, fill_px = eurex_cash_eti_t7_v6_0_dissect.fill_px(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Signed Fixed Width Integer
  index, fill_qty = eurex_cash_eti_t7_v6_0_dissect.fill_qty(buffer, index, packet, parent)

  -- Fill Match Id: 4 Byte Unsigned Fixed Width Integer
  index, fill_match_id = eurex_cash_eti_t7_v6_0_dissect.fill_match_id(buffer, index, packet, parent)

  -- Fill Exec Id: 4 Byte Signed Fixed Width Integer
  index, fill_exec_id = eurex_cash_eti_t7_v6_0_dissect.fill_exec_id(buffer, index, packet, parent)

  -- Fill Liquidity Ind: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, fill_liquidity_ind = eurex_cash_eti_t7_v6_0_dissect.fill_liquidity_ind(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Grp Comp
eurex_cash_eti_t7_v6_0_dissect.fills_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fills_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.fills_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.fills_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.fills_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.fills_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Fills
eurex_cash_eti_t7_v6_0_size_of.no_fills = 1

-- Display: No Fills
eurex_cash_eti_t7_v6_0_display.no_fills = function(value)
  return "No Fills: "..value
end

-- Dissect: No Fills
eurex_cash_eti_t7_v6_0_dissect.no_fills = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.no_fills
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.no_fills(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.no_fills, range, value, display)

  return offset + length, value
end

-- Size: Crossed Indicator
eurex_cash_eti_t7_v6_0_size_of.crossed_indicator = 1

-- Display: Crossed Indicator
eurex_cash_eti_t7_v6_0_display.crossed_indicator = function(value)
  if value == 0 then
    return "Crossed Indicator: Nocrossing (0)"
  end
  if value == 1 then
    return "Crossed Indicator: Crossrejected (1)"
  end

  return "Crossed Indicator: Unknown("..value..")"
end

-- Dissect: Crossed Indicator
eurex_cash_eti_t7_v6_0_dissect.crossed_indicator = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.crossed_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.crossed_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.crossed_indicator, range, value, display)

  return offset + length, value
end

-- Size: Triggered
eurex_cash_eti_t7_v6_0_size_of.triggered = 1

-- Display: Triggered
eurex_cash_eti_t7_v6_0_display.triggered = function(value)
  if value == 0 then
    return "Triggered: Nottriggered (0)"
  end
  if value == 1 then
    return "Triggered: Triggered Stop (1)"
  end
  if value == 2 then
    return "Triggered: Triggered Oco (2)"
  end

  return "Triggered: Unknown("..value..")"
end

-- Dissect: Triggered
eurex_cash_eti_t7_v6_0_dissect.triggered = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.triggered
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.triggered(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.triggered, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
eurex_cash_eti_t7_v6_0_size_of.display_qty = 4

-- Display: Display Qty
eurex_cash_eti_t7_v6_0_display.display_qty = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
eurex_cash_eti_t7_v6_0_dissect.display_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.display_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.display_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Size: Cxl Qty
eurex_cash_eti_t7_v6_0_size_of.cxl_qty = 4

-- Display: Cxl Qty
eurex_cash_eti_t7_v6_0_display.cxl_qty = function(value)
  return "Cxl Qty: "..value
end

-- Dissect: Cxl Qty
eurex_cash_eti_t7_v6_0_dissect.cxl_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.cxl_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.cxl_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.cxl_qty, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Time Priority
eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_priority = 8

-- Display: Trd Reg Ts Time Priority
eurex_cash_eti_t7_v6_0_display.trd_reg_ts_time_priority = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Time Priority: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time Priority
eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_priority = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.trd_reg_ts_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Entry Time
eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_entry_time = 8

-- Display: Trd Reg Ts Entry Time
eurex_cash_eti_t7_v6_0_display.trd_reg_ts_entry_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Entry Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Entry Time
eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_entry_time = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_entry_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.trd_reg_ts_entry_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trd_reg_ts_entry_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Response Header Me Comp
eurex_cash_eti_t7_v6_0_size_of.response_header_me_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.request_time

  index = index + eurex_cash_eti_t7_v6_0_size_of.request_out

  index = index + eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_in

  index = index + eurex_cash_eti_t7_v6_0_size_of.trd_reg_ts_time_out

  index = index + eurex_cash_eti_t7_v6_0_size_of.response_in

  index = index + eurex_cash_eti_t7_v6_0_size_of.sending_time

  index = index + eurex_cash_eti_t7_v6_0_size_of.msg_seq_num

  index = index + eurex_cash_eti_t7_v6_0_size_of.partition_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.appl_msg_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.last_fragment

  return index
end

-- Display: Response Header Me Comp
eurex_cash_eti_t7_v6_0_display.response_header_me_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Response Header Me Comp
eurex_cash_eti_t7_v6_0_dissect.response_header_me_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index, request_time = eurex_cash_eti_t7_v6_0_dissect.request_time(buffer, index, packet, parent)

  -- Request Out: 8 Byte Unsigned Fixed Width Integer
  index, request_out = eurex_cash_eti_t7_v6_0_dissect.request_out(buffer, index, packet, parent)

  -- Trd Reg Ts Time In: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_in = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_in(buffer, index, packet, parent)

  -- Trd Reg Ts Time Out: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_out = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_out(buffer, index, packet, parent)

  -- Response In: 8 Byte Unsigned Fixed Width Integer
  index, response_in = eurex_cash_eti_t7_v6_0_dissect.response_in(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = eurex_cash_eti_t7_v6_0_dissect.sending_time(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = eurex_cash_eti_t7_v6_0_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = eurex_cash_eti_t7_v6_0_dissect.partition_id(buffer, index, packet, parent)

  -- Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, appl_id = eurex_cash_eti_t7_v6_0_dissect.appl_id(buffer, index, packet, parent)

  -- Appl Msg Id: 16 Byte
  index, appl_msg_id = eurex_cash_eti_t7_v6_0_dissect.appl_msg_id(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, last_fragment = eurex_cash_eti_t7_v6_0_dissect.last_fragment(buffer, index, packet, parent)

  return index
end

-- Dissect: Response Header Me Comp
eurex_cash_eti_t7_v6_0_dissect.response_header_me_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.response_header_me_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.response_header_me_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.response_header_me_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.response_header_me_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.response_header_me_comp_fields(buffer, offset, packet, parent)
end

-- Display: Order Exec Response
eurex_cash_eti_t7_v6_0_display.order_exec_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Exec Response
eurex_cash_eti_t7_v6_0_dissect.order_exec_response_fields = function(buffer, offset, packet, parent, size_of_order_exec_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_entry_time = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_entry_time(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = eurex_cash_eti_t7_v6_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = eurex_cash_eti_t7_v6_0_dissect.cxl_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index, display_qty = eurex_cash_eti_t7_v6_0_dissect.display_qty(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, match_type = eurex_cash_eti_t7_v6_0_dissect.match_type(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = eurex_cash_eti_t7_v6_0_dissect.triggered(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = eurex_cash_eti_t7_v6_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = eurex_cash_eti_t7_v6_0_dissect.no_fills(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_cash_eti_t7_v6_0_dissect.pad_7(buffer, index, packet, parent)

  -- Fills Grp Comp: Struct of 6 fields
  for i = 1, no_fills do
    index = eurex_cash_eti_t7_v6_0_dissect.fills_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Exec Response
eurex_cash_eti_t7_v6_0_dissect.order_exec_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_order_exec_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.order_exec_response then
    local range = buffer(offset, size_of_order_exec_response)
    local display = eurex_cash_eti_t7_v6_0_display.order_exec_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.order_exec_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.order_exec_response_fields(buffer, offset, packet, parent, size_of_order_exec_response)

  return offset + size_of_order_exec_response
end

-- Size: Ex Destination Type
eurex_cash_eti_t7_v6_0_size_of.ex_destination_type = 1

-- Display: Ex Destination Type
eurex_cash_eti_t7_v6_0_display.ex_destination_type = function(value)
  if value == 3 then
    return "Ex Destination Type: Tradeonexchangeor Si (3)"
  end

  return "Ex Destination Type: Unknown("..value..")"
end

-- Dissect: Ex Destination Type
eurex_cash_eti_t7_v6_0_dissect.ex_destination_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.ex_destination_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.ex_destination_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.ex_destination_type, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Indicator
eurex_cash_eti_t7_v6_0_size_of.appl_seq_indicator = 1

-- Display: Appl Seq Indicator
eurex_cash_eti_t7_v6_0_display.appl_seq_indicator = function(value)
  if value == 0 then
    return "Appl Seq Indicator: No Recovery Required (0)"
  end
  if value == 1 then
    return "Appl Seq Indicator: Recovery Required (1)"
  end

  return "Appl Seq Indicator: Unknown("..value..")"
end

-- Dissect: Appl Seq Indicator
eurex_cash_eti_t7_v6_0_dissect.appl_seq_indicator = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_seq_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.appl_seq_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_seq_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Sub Id
eurex_cash_eti_t7_v6_0_size_of.trading_session_sub_id = 1

-- Display: Trading Session Sub Id
eurex_cash_eti_t7_v6_0_display.trading_session_sub_id = function(value)
  if value == 2 then
    return "Trading Session Sub Id: Openingauction (2)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Closingauction (4)"
  end
  if value == 8 then
    return "Trading Session Sub Id: Any Auction (8)"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
eurex_cash_eti_t7_v6_0_dissect.trading_session_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trading_session_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trading_session_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Exec Inst
eurex_cash_eti_t7_v6_0_size_of.exec_inst = 1

-- Display: Exec Inst
eurex_cash_eti_t7_v6_0_display.exec_inst = function(value)
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

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
eurex_cash_eti_t7_v6_0_dissect.exec_inst = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.exec_inst
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.exec_inst(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
eurex_cash_eti_t7_v6_0_size_of.time_in_force = 1

-- Display: Time In Force
eurex_cash_eti_t7_v6_0_display.time_in_force = function(value)
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
  if value == 5 then
    return "Time In Force: Gtx (5)"
  end
  if value == 6 then
    return "Time In Force: Gtd (6)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
eurex_cash_eti_t7_v6_0_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Party Id Session Id
eurex_cash_eti_t7_v6_0_size_of.party_id_session_id = 4

-- Display: Party Id Session Id
eurex_cash_eti_t7_v6_0_display.party_id_session_id = function(value)
  return "Party Id Session Id: "..value
end

-- Dissect: Party Id Session Id
eurex_cash_eti_t7_v6_0_dissect.party_id_session_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_id_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_id_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_id_session_id, range, value, display)

  return offset + length, value
end

-- Size: Match Inst Cross Id
eurex_cash_eti_t7_v6_0_size_of.match_inst_cross_id = 4

-- Display: Match Inst Cross Id
eurex_cash_eti_t7_v6_0_display.match_inst_cross_id = function(value)
  return "Match Inst Cross Id: "..value
end

-- Dissect: Match Inst Cross Id
eurex_cash_eti_t7_v6_0_dissect.match_inst_cross_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.match_inst_cross_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.match_inst_cross_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.match_inst_cross_id, range, value, display)

  return offset + length, value
end

-- Size: Expire Date
eurex_cash_eti_t7_v6_0_size_of.expire_date = 4

-- Display: Expire Date
eurex_cash_eti_t7_v6_0_display.expire_date = function(value)
  return "Expire Date: "..value
end

-- Dissect: Expire Date
eurex_cash_eti_t7_v6_0_dissect.expire_date = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.expire_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.expire_date(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.expire_date, range, value, display)

  return offset + length, value
end

-- Size: Display High Qty
eurex_cash_eti_t7_v6_0_size_of.display_high_qty = 4

-- Display: Display High Qty
eurex_cash_eti_t7_v6_0_display.display_high_qty = function(value)
  return "Display High Qty: "..value
end

-- Dissect: Display High Qty
eurex_cash_eti_t7_v6_0_dissect.display_high_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.display_high_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.display_high_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.display_high_qty, range, value, display)

  return offset + length, value
end

-- Size: Display Low Qty
eurex_cash_eti_t7_v6_0_size_of.display_low_qty = 4

-- Display: Display Low Qty
eurex_cash_eti_t7_v6_0_display.display_low_qty = function(value)
  return "Display Low Qty: "..value
end

-- Dissect: Display Low Qty
eurex_cash_eti_t7_v6_0_dissect.display_low_qty = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.display_low_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.display_low_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.display_low_qty, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value Pct
eurex_cash_eti_t7_v6_0_size_of.peg_offset_value_pct = 8

-- Display: Peg Offset Value Pct
eurex_cash_eti_t7_v6_0_display.peg_offset_value_pct = function(value)
  return "Peg Offset Value Pct: "..value
end

-- Translate: Peg Offset Value Pct
translate.peg_offset_value_pct = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Peg Offset Value Pct
eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_pct = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.peg_offset_value_pct
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.peg_offset_value_pct(raw)
  local display = eurex_cash_eti_t7_v6_0_display.peg_offset_value_pct(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.peg_offset_value_pct, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value Abs
eurex_cash_eti_t7_v6_0_size_of.peg_offset_value_abs = 8

-- Display: Peg Offset Value Abs
eurex_cash_eti_t7_v6_0_display.peg_offset_value_abs = function(value)
  return "Peg Offset Value Abs: "..value
end

-- Translate: Peg Offset Value Abs
translate.peg_offset_value_abs = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Peg Offset Value Abs
eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_abs = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.peg_offset_value_abs
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.peg_offset_value_abs(raw)
  local display = eurex_cash_eti_t7_v6_0_display.peg_offset_value_abs(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.peg_offset_value_abs, range, value, display)

  return offset + length, value
end

-- Size: Volume Discovery Price
eurex_cash_eti_t7_v6_0_size_of.volume_discovery_price = 8

-- Display: Volume Discovery Price
eurex_cash_eti_t7_v6_0_display.volume_discovery_price = function(value)
  return "Volume Discovery Price: "..value
end

-- Translate: Volume Discovery Price
translate.volume_discovery_price = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Volume Discovery Price
eurex_cash_eti_t7_v6_0_dissect.volume_discovery_price = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.volume_discovery_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.volume_discovery_price(raw)
  local display = eurex_cash_eti_t7_v6_0_display.volume_discovery_price(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.volume_discovery_price, range, value, display)

  return offset + length, value
end

-- Display: Order Exec Report Broadcast
eurex_cash_eti_t7_v6_0_display.order_exec_report_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Exec Report Broadcast
eurex_cash_eti_t7_v6_0_dissect.order_exec_report_broadcast_fields = function(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_entry_time = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_entry_time(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = eurex_cash_eti_t7_v6_0_dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = eurex_cash_eti_t7_v6_0_dissect.stop_px(buffer, index, packet, parent)

  -- Volume Discovery Price: 8 Byte Unsigned Fixed Width Integer
  index, volume_discovery_price = eurex_cash_eti_t7_v6_0_dissect.volume_discovery_price(buffer, index, packet, parent)

  -- Peg Offset Value Abs: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_abs = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_abs(buffer, index, packet, parent)

  -- Peg Offset Value Pct: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_pct = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_pct(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = eurex_cash_eti_t7_v6_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = eurex_cash_eti_t7_v6_0_dissect.cxl_qty(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index, display_qty = eurex_cash_eti_t7_v6_0_dissect.display_qty(buffer, index, packet, parent)

  -- Display Low Qty: 4 Byte Signed Fixed Width Integer
  index, display_low_qty = eurex_cash_eti_t7_v6_0_dissect.display_low_qty(buffer, index, packet, parent)

  -- Display High Qty: 4 Byte Signed Fixed Width Integer
  index, display_high_qty = eurex_cash_eti_t7_v6_0_dissect.display_high_qty(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = eurex_cash_eti_t7_v6_0_dissect.expire_date(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = eurex_cash_eti_t7_v6_0_dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_unit = eurex_cash_eti_t7_v6_0_dissect.party_id_executing_unit(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.party_id_session_id(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_trader = eurex_cash_eti_t7_v6_0_dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, match_type = eurex_cash_eti_t7_v6_0_dissect.match_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = eurex_cash_eti_t7_v6_0_dissect.ord_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = eurex_cash_eti_t7_v6_0_dissect.trading_capacity(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = eurex_cash_eti_t7_v6_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = eurex_cash_eti_t7_v6_0_dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_session_sub_id = eurex_cash_eti_t7_v6_0_dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = eurex_cash_eti_t7_v6_0_dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Ex Destination Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, ex_destination_type = eurex_cash_eti_t7_v6_0_dissect.ex_destination_type(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = eurex_cash_eti_t7_v6_0_dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = eurex_cash_eti_t7_v6_0_dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = eurex_cash_eti_t7_v6_0_dissect.free_text_4(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = eurex_cash_eti_t7_v6_0_dissect.no_fills(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = eurex_cash_eti_t7_v6_0_dissect.triggered(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = eurex_cash_eti_t7_v6_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_cash_eti_t7_v6_0_dissect.pad_7(buffer, index, packet, parent)

  -- Fills Grp Comp: Struct of 6 fields
  for i = 1, no_fills do
    index = eurex_cash_eti_t7_v6_0_dissect.fills_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Exec Report Broadcast
eurex_cash_eti_t7_v6_0_dissect.order_exec_report_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_order_exec_report_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.order_exec_report_broadcast then
    local range = buffer(offset, size_of_order_exec_report_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.order_exec_report_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.order_exec_report_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.order_exec_report_broadcast_fields(buffer, offset, packet, parent, size_of_order_exec_report_broadcast)

  return offset + size_of_order_exec_report_broadcast
end

-- Display: Order Exec Notification
eurex_cash_eti_t7_v6_0_display.order_exec_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Exec Notification
eurex_cash_eti_t7_v6_0_dissect.order_exec_notification_fields = function(buffer, offset, packet, parent, size_of_order_exec_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = eurex_cash_eti_t7_v6_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = eurex_cash_eti_t7_v6_0_dissect.cxl_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index, display_qty = eurex_cash_eti_t7_v6_0_dissect.display_qty(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, match_type = eurex_cash_eti_t7_v6_0_dissect.match_type(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = eurex_cash_eti_t7_v6_0_dissect.triggered(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = eurex_cash_eti_t7_v6_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- No Fills: 1 Byte Unsigned Fixed Width Integer
  index, no_fills = eurex_cash_eti_t7_v6_0_dissect.no_fills(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  -- Fills Grp Comp: Struct of 6 fields
  for i = 1, no_fills do
    index = eurex_cash_eti_t7_v6_0_dissect.fills_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Exec Notification
eurex_cash_eti_t7_v6_0_dissect.order_exec_notification = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_order_exec_notification = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.order_exec_notification then
    local range = buffer(offset, size_of_order_exec_notification)
    local display = eurex_cash_eti_t7_v6_0_display.order_exec_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.order_exec_notification, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.order_exec_notification_fields(buffer, offset, packet, parent, size_of_order_exec_notification)

  return offset + size_of_order_exec_notification
end

-- Size: Headline
eurex_cash_eti_t7_v6_0_size_of.headline = 256

-- Display: Headline
eurex_cash_eti_t7_v6_0_display.headline = function(value)
  return "Headline: "..value
end

-- Dissect: Headline
eurex_cash_eti_t7_v6_0_dissect.headline = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.headline
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.headline(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.headline, range, value, display)

  return offset + length, value
end

-- Size: Orig Time
eurex_cash_eti_t7_v6_0_size_of.orig_time = 8

-- Display: Orig Time
eurex_cash_eti_t7_v6_0_display.orig_time = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Orig Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
eurex_cash_eti_t7_v6_0_dissect.orig_time = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.orig_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.orig_time(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Display: News Broadcast
eurex_cash_eti_t7_v6_0_display.news_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: News Broadcast
eurex_cash_eti_t7_v6_0_dissect.news_broadcast_fields = function(buffer, offset, packet, parent, size_of_news_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer
  index, orig_time = eurex_cash_eti_t7_v6_0_dissect.orig_time(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = eurex_cash_eti_t7_v6_0_dissect.var_text_len(buffer, index, packet, parent)

  -- Headline: 256 Byte Ascii String
  index, headline = eurex_cash_eti_t7_v6_0_dissect.headline(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = eurex_cash_eti_t7_v6_0_dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: News Broadcast
eurex_cash_eti_t7_v6_0_dissect.news_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_news_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.news_broadcast then
    local range = buffer(offset, size_of_news_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.news_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.news_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.news_broadcast_fields(buffer, offset, packet, parent, size_of_news_broadcast)

  return offset + size_of_news_broadcast
end

-- Size: Order Attribute Liquidity Provision
eurex_cash_eti_t7_v6_0_size_of.order_attribute_liquidity_provision = 1

-- Display: Order Attribute Liquidity Provision
eurex_cash_eti_t7_v6_0_display.order_attribute_liquidity_provision = function(value)
  if value == 1 then
    return "Order Attribute Liquidity Provision: Y (1)"
  end
  if value == 0 then
    return "Order Attribute Liquidity Provision: N (0)"
  end

  return "Order Attribute Liquidity Provision: Unknown("..value..")"
end

-- Dissect: Order Attribute Liquidity Provision
eurex_cash_eti_t7_v6_0_dissect.order_attribute_liquidity_provision = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.order_attribute_liquidity_provision
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.order_attribute_liquidity_provision(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.order_attribute_liquidity_provision, range, value, display)

  return offset + length, value
end

-- Size: Value Check Type Quantity
eurex_cash_eti_t7_v6_0_size_of.value_check_type_quantity = 1

-- Display: Value Check Type Quantity
eurex_cash_eti_t7_v6_0_display.value_check_type_quantity = function(value)
  if value == 0 then
    return "Value Check Type Quantity: Donotcheck (0)"
  end
  if value == 1 then
    return "Value Check Type Quantity: Check (1)"
  end

  return "Value Check Type Quantity: Unknown("..value..")"
end

-- Dissect: Value Check Type Quantity
eurex_cash_eti_t7_v6_0_dissect.value_check_type_quantity = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.value_check_type_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.value_check_type_quantity(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.value_check_type_quantity, range, value, display)

  return offset + length, value
end

-- Size: Value Check Type Value
eurex_cash_eti_t7_v6_0_size_of.value_check_type_value = 1

-- Display: Value Check Type Value
eurex_cash_eti_t7_v6_0_display.value_check_type_value = function(value)
  if value == 0 then
    return "Value Check Type Value: Donotcheck (0)"
  end
  if value == 1 then
    return "Value Check Type Value: Check (1)"
  end

  return "Value Check Type Value: Unknown("..value..")"
end

-- Dissect: Value Check Type Value
eurex_cash_eti_t7_v6_0_dissect.value_check_type_value = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.value_check_type_value
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.value_check_type_value(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.value_check_type_value, range, value, display)

  return offset + length, value
end

-- Size: Price Validity Check Type
eurex_cash_eti_t7_v6_0_size_of.price_validity_check_type = 1

-- Display: Price Validity Check Type
eurex_cash_eti_t7_v6_0_display.price_validity_check_type = function(value)
  if value == 0 then
    return "Price Validity Check Type: None (0)"
  end
  if value == 2 then
    return "Price Validity Check Type: Mandatory (2)"
  end

  return "Price Validity Check Type: Unknown("..value..")"
end

-- Dissect: Price Validity Check Type
eurex_cash_eti_t7_v6_0_dissect.price_validity_check_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.price_validity_check_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.price_validity_check_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.price_validity_check_type, range, value, display)

  return offset + length, value
end

-- Size: Enrichment Rule Id
eurex_cash_eti_t7_v6_0_size_of.enrichment_rule_id = 2

-- Display: Enrichment Rule Id
eurex_cash_eti_t7_v6_0_display.enrichment_rule_id = function(value)
  return "Enrichment Rule Id: "..value
end

-- Dissect: Enrichment Rule Id
eurex_cash_eti_t7_v6_0_dissect.enrichment_rule_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.enrichment_rule_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.enrichment_rule_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.enrichment_rule_id, range, value, display)

  return offset + length, value
end

-- Size: Party Id Client Id
eurex_cash_eti_t7_v6_0_size_of.party_id_client_id = 8

-- Display: Party Id Client Id
eurex_cash_eti_t7_v6_0_display.party_id_client_id = function(value)
  return "Party Id Client Id: "..value
end

-- Dissect: Party Id Client Id
eurex_cash_eti_t7_v6_0_dissect.party_id_client_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_id_client_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.party_id_client_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_id_client_id, range, value, display)

  return offset + length, value
end

-- Display: New Order Single Short Request
eurex_cash_eti_t7_v6_0_display.new_order_single_short_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single Short Request
eurex_cash_eti_t7_v6_0_dissect.new_order_single_short_request_fields = function(buffer, offset, packet, parent, size_of_new_order_single_short_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = eurex_cash_eti_t7_v6_0_dissect.price(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = eurex_cash_eti_t7_v6_0_dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = eurex_cash_eti_t7_v6_0_dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = eurex_cash_eti_t7_v6_0_dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = eurex_cash_eti_t7_v6_0_dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = eurex_cash_eti_t7_v6_0_dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = eurex_cash_eti_t7_v6_0_dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = eurex_cash_eti_t7_v6_0_dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = eurex_cash_eti_t7_v6_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = eurex_cash_eti_t7_v6_0_dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = eurex_cash_eti_t7_v6_0_dissect.trading_capacity(buffer, index, packet, parent)

  -- Ex Destination Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, ex_destination_type = eurex_cash_eti_t7_v6_0_dissect.ex_destination_type(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Short Request
eurex_cash_eti_t7_v6_0_dissect.new_order_single_short_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_new_order_single_short_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.new_order_single_short_request then
    local range = buffer(offset, size_of_new_order_single_short_request)
    local display = eurex_cash_eti_t7_v6_0_display.new_order_single_short_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.new_order_single_short_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.new_order_single_short_request_fields(buffer, offset, packet, parent, size_of_new_order_single_short_request)

  return offset + size_of_new_order_single_short_request
end

-- Display: New Order Single Request
eurex_cash_eti_t7_v6_0_display.new_order_single_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single Request
eurex_cash_eti_t7_v6_0_dissect.new_order_single_request_fields = function(buffer, offset, packet, parent, size_of_new_order_single_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = eurex_cash_eti_t7_v6_0_dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = eurex_cash_eti_t7_v6_0_dissect.stop_px(buffer, index, packet, parent)

  -- Volume Discovery Price: 8 Byte Unsigned Fixed Width Integer
  index, volume_discovery_price = eurex_cash_eti_t7_v6_0_dissect.volume_discovery_price(buffer, index, packet, parent)

  -- Peg Offset Value Abs: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_abs = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_abs(buffer, index, packet, parent)

  -- Peg Offset Value Pct: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_pct = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_pct(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = eurex_cash_eti_t7_v6_0_dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index, display_qty = eurex_cash_eti_t7_v6_0_dissect.display_qty(buffer, index, packet, parent)

  -- Display Low Qty: 4 Byte Signed Fixed Width Integer
  index, display_low_qty = eurex_cash_eti_t7_v6_0_dissect.display_low_qty(buffer, index, packet, parent)

  -- Display High Qty: 4 Byte Signed Fixed Width Integer
  index, display_high_qty = eurex_cash_eti_t7_v6_0_dissect.display_high_qty(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = eurex_cash_eti_t7_v6_0_dissect.expire_date(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = eurex_cash_eti_t7_v6_0_dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = eurex_cash_eti_t7_v6_0_dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = eurex_cash_eti_t7_v6_0_dissect.ord_type(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = eurex_cash_eti_t7_v6_0_dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = eurex_cash_eti_t7_v6_0_dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = eurex_cash_eti_t7_v6_0_dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = eurex_cash_eti_t7_v6_0_dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = eurex_cash_eti_t7_v6_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = eurex_cash_eti_t7_v6_0_dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_session_sub_id = eurex_cash_eti_t7_v6_0_dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = eurex_cash_eti_t7_v6_0_dissect.trading_capacity(buffer, index, packet, parent)

  -- Ex Destination Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, ex_destination_type = eurex_cash_eti_t7_v6_0_dissect.ex_destination_type(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = eurex_cash_eti_t7_v6_0_dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = eurex_cash_eti_t7_v6_0_dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = eurex_cash_eti_t7_v6_0_dissect.free_text_4(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single Request
eurex_cash_eti_t7_v6_0_dissect.new_order_single_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_new_order_single_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.new_order_single_request then
    local range = buffer(offset, size_of_new_order_single_request)
    local display = eurex_cash_eti_t7_v6_0_display.new_order_single_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.new_order_single_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.new_order_single_request_fields(buffer, offset, packet, parent, size_of_new_order_single_request)

  return offset + size_of_new_order_single_request
end

-- Display: New Order Response
eurex_cash_eti_t7_v6_0_display.new_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Response
eurex_cash_eti_t7_v6_0_dissect.new_order_response_fields = function(buffer, offset, packet, parent, size_of_new_order_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_entry_time = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_entry_time(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = eurex_cash_eti_t7_v6_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = eurex_cash_eti_t7_v6_0_dissect.triggered(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Response
eurex_cash_eti_t7_v6_0_dissect.new_order_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_new_order_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.new_order_response then
    local range = buffer(offset, size_of_new_order_response)
    local display = eurex_cash_eti_t7_v6_0_display.new_order_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.new_order_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.new_order_response_fields(buffer, offset, packet, parent, size_of_new_order_response)

  return offset + size_of_new_order_response
end

-- Display: New Order Nr Response
eurex_cash_eti_t7_v6_0_display.new_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Nr Response
eurex_cash_eti_t7_v6_0_dissect.new_order_nr_response_fields = function(buffer, offset, packet, parent, size_of_new_order_nr_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = eurex_cash_eti_t7_v6_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = eurex_cash_eti_t7_v6_0_dissect.triggered(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Nr Response
eurex_cash_eti_t7_v6_0_dissect.new_order_nr_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_new_order_nr_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.new_order_nr_response then
    local range = buffer(offset, size_of_new_order_nr_response)
    local display = eurex_cash_eti_t7_v6_0_display.new_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.new_order_nr_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.new_order_nr_response_fields(buffer, offset, packet, parent, size_of_new_order_nr_response)

  return offset + size_of_new_order_nr_response
end

-- Display: Modify Order Single Short Request
eurex_cash_eti_t7_v6_0_display.modify_order_single_short_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Single Short Request
eurex_cash_eti_t7_v6_0_dissect.modify_order_single_short_request_fields = function(buffer, offset, packet, parent, size_of_modify_order_single_short_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = eurex_cash_eti_t7_v6_0_dissect.price(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = eurex_cash_eti_t7_v6_0_dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = eurex_cash_eti_t7_v6_0_dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = eurex_cash_eti_t7_v6_0_dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = eurex_cash_eti_t7_v6_0_dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = eurex_cash_eti_t7_v6_0_dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = eurex_cash_eti_t7_v6_0_dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = eurex_cash_eti_t7_v6_0_dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = eurex_cash_eti_t7_v6_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = eurex_cash_eti_t7_v6_0_dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = eurex_cash_eti_t7_v6_0_dissect.trading_capacity(buffer, index, packet, parent)

  -- Ex Destination Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, ex_destination_type = eurex_cash_eti_t7_v6_0_dissect.ex_destination_type(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Short Request
eurex_cash_eti_t7_v6_0_dissect.modify_order_single_short_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_modify_order_single_short_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.modify_order_single_short_request then
    local range = buffer(offset, size_of_modify_order_single_short_request)
    local display = eurex_cash_eti_t7_v6_0_display.modify_order_single_short_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.modify_order_single_short_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.modify_order_single_short_request_fields(buffer, offset, packet, parent, size_of_modify_order_single_short_request)

  return offset + size_of_modify_order_single_short_request
end

-- Size: Ownership Indicator
eurex_cash_eti_t7_v6_0_size_of.ownership_indicator = 1

-- Display: Ownership Indicator
eurex_cash_eti_t7_v6_0_display.ownership_indicator = function(value)
  if value == 0 then
    return "Ownership Indicator: No Changeof Ownership (0)"
  end
  if value == 1 then
    return "Ownership Indicator: Changeto Executing Trader (1)"
  end

  return "Ownership Indicator: Unknown("..value..")"
end

-- Dissect: Ownership Indicator
eurex_cash_eti_t7_v6_0_dissect.ownership_indicator = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.ownership_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.ownership_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.ownership_indicator, range, value, display)

  return offset + length, value
end

-- Size: Stop Px Indicator
eurex_cash_eti_t7_v6_0_size_of.stop_px_indicator = 1

-- Display: Stop Px Indicator
eurex_cash_eti_t7_v6_0_display.stop_px_indicator = function(value)
  if value == 0 then
    return "Stop Px Indicator: Donotoverwrite (0)"
  end
  if value == 1 then
    return "Stop Px Indicator: Overwrite (1)"
  end

  return "Stop Px Indicator: Unknown("..value..")"
end

-- Dissect: Stop Px Indicator
eurex_cash_eti_t7_v6_0_dissect.stop_px_indicator = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.stop_px_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.stop_px_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.stop_px_indicator, range, value, display)

  return offset + length, value
end

-- Display: Modify Order Single Request
eurex_cash_eti_t7_v6_0_display.modify_order_single_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Single Request
eurex_cash_eti_t7_v6_0_dissect.modify_order_single_request_fields = function(buffer, offset, packet, parent, size_of_modify_order_single_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = eurex_cash_eti_t7_v6_0_dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = eurex_cash_eti_t7_v6_0_dissect.stop_px(buffer, index, packet, parent)

  -- Volume Discovery Price: 8 Byte Unsigned Fixed Width Integer
  index, volume_discovery_price = eurex_cash_eti_t7_v6_0_dissect.volume_discovery_price(buffer, index, packet, parent)

  -- Peg Offset Value Abs: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_abs = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_abs(buffer, index, packet, parent)

  -- Peg Offset Value Pct: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_pct = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_pct(buffer, index, packet, parent)

  -- Party Id Client Id: 8 Byte Unsigned Fixed Width Integer
  index, party_id_client_id = eurex_cash_eti_t7_v6_0_dissect.party_id_client_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index, display_qty = eurex_cash_eti_t7_v6_0_dissect.display_qty(buffer, index, packet, parent)

  -- Display Low Qty: 4 Byte Signed Fixed Width Integer
  index, display_low_qty = eurex_cash_eti_t7_v6_0_dissect.display_low_qty(buffer, index, packet, parent)

  -- Display High Qty: 4 Byte Signed Fixed Width Integer
  index, display_high_qty = eurex_cash_eti_t7_v6_0_dissect.display_high_qty(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = eurex_cash_eti_t7_v6_0_dissect.expire_date(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = eurex_cash_eti_t7_v6_0_dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = eurex_cash_eti_t7_v6_0_dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = eurex_cash_eti_t7_v6_0_dissect.ord_type(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = eurex_cash_eti_t7_v6_0_dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = eurex_cash_eti_t7_v6_0_dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = eurex_cash_eti_t7_v6_0_dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = eurex_cash_eti_t7_v6_0_dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = eurex_cash_eti_t7_v6_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = eurex_cash_eti_t7_v6_0_dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_session_sub_id = eurex_cash_eti_t7_v6_0_dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Stop Px Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, stop_px_indicator = eurex_cash_eti_t7_v6_0_dissect.stop_px_indicator(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = eurex_cash_eti_t7_v6_0_dissect.trading_capacity(buffer, index, packet, parent)

  -- Ex Destination Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, ex_destination_type = eurex_cash_eti_t7_v6_0_dissect.ex_destination_type(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Ownership Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ownership_indicator = eurex_cash_eti_t7_v6_0_dissect.ownership_indicator(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = eurex_cash_eti_t7_v6_0_dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = eurex_cash_eti_t7_v6_0_dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = eurex_cash_eti_t7_v6_0_dissect.free_text_4(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Single Request
eurex_cash_eti_t7_v6_0_dissect.modify_order_single_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_modify_order_single_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.modify_order_single_request then
    local range = buffer(offset, size_of_modify_order_single_request)
    local display = eurex_cash_eti_t7_v6_0_display.modify_order_single_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.modify_order_single_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.modify_order_single_request_fields(buffer, offset, packet, parent, size_of_modify_order_single_request)

  return offset + size_of_modify_order_single_request
end

-- Display: Modify Order Response
eurex_cash_eti_t7_v6_0_display.modify_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Response
eurex_cash_eti_t7_v6_0_dissect.modify_order_response_fields = function(buffer, offset, packet, parent, size_of_modify_order_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = eurex_cash_eti_t7_v6_0_dissect.stop_px(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_time_priority = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = eurex_cash_eti_t7_v6_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = eurex_cash_eti_t7_v6_0_dissect.cxl_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index, display_qty = eurex_cash_eti_t7_v6_0_dissect.display_qty(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = eurex_cash_eti_t7_v6_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = eurex_cash_eti_t7_v6_0_dissect.triggered(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Response
eurex_cash_eti_t7_v6_0_dissect.modify_order_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_modify_order_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.modify_order_response then
    local range = buffer(offset, size_of_modify_order_response)
    local display = eurex_cash_eti_t7_v6_0_display.modify_order_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.modify_order_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.modify_order_response_fields(buffer, offset, packet, parent, size_of_modify_order_response)

  return offset + size_of_modify_order_response
end

-- Display: Modify Order Nr Response
eurex_cash_eti_t7_v6_0_display.modify_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Nr Response
eurex_cash_eti_t7_v6_0_dissect.modify_order_nr_response_fields = function(buffer, offset, packet, parent, size_of_modify_order_nr_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = eurex_cash_eti_t7_v6_0_dissect.stop_px(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = eurex_cash_eti_t7_v6_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = eurex_cash_eti_t7_v6_0_dissect.cxl_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index, display_qty = eurex_cash_eti_t7_v6_0_dissect.display_qty(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Crossed Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, crossed_indicator = eurex_cash_eti_t7_v6_0_dissect.crossed_indicator(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = eurex_cash_eti_t7_v6_0_dissect.triggered(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Nr Response
eurex_cash_eti_t7_v6_0_dissect.modify_order_nr_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_modify_order_nr_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.modify_order_nr_response then
    local range = buffer(offset, size_of_modify_order_nr_response)
    local display = eurex_cash_eti_t7_v6_0_display.modify_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.modify_order_nr_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.modify_order_nr_response_fields(buffer, offset, packet, parent, size_of_modify_order_nr_response)

  return offset + size_of_modify_order_nr_response
end

-- Size: Quote Entry Status
eurex_cash_eti_t7_v6_0_size_of.quote_entry_status = 1

-- Display: Quote Entry Status
eurex_cash_eti_t7_v6_0_display.quote_entry_status = function(value)
  if value == 0 then
    return "Quote Entry Status: Accepted (0)"
  end
  if value == 5 then
    return "Quote Entry Status: Rejected (5)"
  end
  if value == 6 then
    return "Quote Entry Status: Removedand Rejected (6)"
  end
  if value == 10 then
    return "Quote Entry Status: Pending (10)"
  end

  return "Quote Entry Status: Unknown("..value..")"
end

-- Dissect: Quote Entry Status
eurex_cash_eti_t7_v6_0_dissect.quote_entry_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_entry_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.quote_entry_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_entry_status, range, value, display)

  return offset + length, value
end

-- Size: Quote Entry Reject Reason
eurex_cash_eti_t7_v6_0_size_of.quote_entry_reject_reason = 4

-- Display: Quote Entry Reject Reason
eurex_cash_eti_t7_v6_0_display.quote_entry_reject_reason = function(value)
  if value == 1 then
    return "Quote Entry Reject Reason: Unknown Security (1)"
  end
  if value == 6 then
    return "Quote Entry Reject Reason: Duplicate Quote (6)"
  end
  if value == 8 then
    return "Quote Entry Reject Reason: Invalid Price (8)"
  end
  if value == 16 then
    return "Quote Entry Reject Reason: No Reference Price Available (16)"
  end
  if value == 100 then
    return "Quote Entry Reject Reason: No Single Sided Quotes (100)"
  end
  if value == 103 then
    return "Quote Entry Reject Reason: Invalid Quoting Model (103)"
  end
  if value == 106 then
    return "Quote Entry Reject Reason: Invalid Size (106)"
  end
  if value == 108 then
    return "Quote Entry Reject Reason: Bid Price Not Reasonable (108)"
  end
  if value == 109 then
    return "Quote Entry Reject Reason: Ask Price Not Reasonable (109)"
  end
  if value == 110 then
    return "Quote Entry Reject Reason: Bid Price Exceeds Range (110)"
  end
  if value == 111 then
    return "Quote Entry Reject Reason: Ask Price Exceeds Range (111)"
  end
  if value == 115 then
    return "Quote Entry Reject Reason: Instrument State Freeze (115)"
  end
  if value == 116 then
    return "Quote Entry Reject Reason: Deletion Already Pending (116)"
  end
  if value == 117 then
    return "Quote Entry Reject Reason: Pre Trade Risk Session Limit Exceeded (117)"
  end
  if value == 118 then
    return "Quote Entry Reject Reason: Pre Trade Risk Bu Limit Exceeded (118)"
  end
  if value == 120 then
    return "Quote Entry Reject Reason: Bid Value Exceeds Limit (120)"
  end
  if value == 121 then
    return "Quote Entry Reject Reason: Ask Value Exceeds Limit (121)"
  end
  if value == 122 then
    return "Quote Entry Reject Reason: Not Tradeable For Business Unit (122)"
  end
  if value == 125 then
    return "Quote Entry Reject Reason: Quantity Limit Exceeded (125)"
  end
  if value == 126 then
    return "Quote Entry Reject Reason: Value Limit Exceeded (126)"
  end
  if value == 127 then
    return "Quote Entry Reject Reason: Invalid Quote Spread (127)"
  end
  if value == 131 then
    return "Quote Entry Reject Reason: Cant Proc In Curr Instr State (131)"
  end

  return "Quote Entry Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Entry Reject Reason
eurex_cash_eti_t7_v6_0_dissect.quote_entry_reject_reason = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_entry_reject_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.quote_entry_reject_reason(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_entry_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Offer Cxl Size
eurex_cash_eti_t7_v6_0_size_of.offer_cxl_size = 4

-- Display: Offer Cxl Size
eurex_cash_eti_t7_v6_0_display.offer_cxl_size = function(value)
  return "Offer Cxl Size: "..value
end

-- Dissect: Offer Cxl Size
eurex_cash_eti_t7_v6_0_dissect.offer_cxl_size = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.offer_cxl_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.offer_cxl_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.offer_cxl_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Cxl Size
eurex_cash_eti_t7_v6_0_size_of.bid_cxl_size = 4

-- Display: Bid Cxl Size
eurex_cash_eti_t7_v6_0_display.bid_cxl_size = function(value)
  return "Bid Cxl Size: "..value
end

-- Dissect: Bid Cxl Size
eurex_cash_eti_t7_v6_0_dissect.bid_cxl_size = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.bid_cxl_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.bid_cxl_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.bid_cxl_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Entry Ack Grp Comp
eurex_cash_eti_t7_v6_0_size_of.quote_entry_ack_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.security_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.bid_cxl_size

  index = index + eurex_cash_eti_t7_v6_0_size_of.offer_cxl_size

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_entry_reject_reason

  index = index + eurex_cash_eti_t7_v6_0_size_of.quote_entry_status

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_3

  return index
end

-- Display: Quote Entry Ack Grp Comp
eurex_cash_eti_t7_v6_0_display.quote_entry_ack_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Entry Ack Grp Comp
eurex_cash_eti_t7_v6_0_dissect.quote_entry_ack_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Bid Cxl Size: 4 Byte Signed Fixed Width Integer
  index, bid_cxl_size = eurex_cash_eti_t7_v6_0_dissect.bid_cxl_size(buffer, index, packet, parent)

  -- Offer Cxl Size: 4 Byte Signed Fixed Width Integer
  index, offer_cxl_size = eurex_cash_eti_t7_v6_0_dissect.offer_cxl_size(buffer, index, packet, parent)

  -- Quote Entry Reject Reason: 4 Byte Unsigned Fixed Width Integer Enum with 22 values
  index, quote_entry_reject_reason = eurex_cash_eti_t7_v6_0_dissect.quote_entry_reject_reason(buffer, index, packet, parent)

  -- Quote Entry Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_entry_status = eurex_cash_eti_t7_v6_0_dissect.quote_entry_status(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Ack Grp Comp
eurex_cash_eti_t7_v6_0_dissect.quote_entry_ack_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_entry_ack_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.quote_entry_ack_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.quote_entry_ack_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.quote_entry_ack_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.quote_entry_ack_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Quote Entries
eurex_cash_eti_t7_v6_0_size_of.no_quote_entries = 1

-- Display: No Quote Entries
eurex_cash_eti_t7_v6_0_display.no_quote_entries = function(value)
  return "No Quote Entries: "..value
end

-- Dissect: No Quote Entries
eurex_cash_eti_t7_v6_0_dissect.no_quote_entries = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.no_quote_entries
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.no_quote_entries(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.no_quote_entries, range, value, display)

  return offset + length, value
end

-- Size: Quote Response Id
eurex_cash_eti_t7_v6_0_size_of.quote_response_id = 8

-- Display: Quote Response Id
eurex_cash_eti_t7_v6_0_display.quote_response_id = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Quote Response Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Quote Response Id
eurex_cash_eti_t7_v6_0_dissect.quote_response_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_response_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.quote_response_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_response_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Id
eurex_cash_eti_t7_v6_0_size_of.quote_id = 8

-- Display: Quote Id
eurex_cash_eti_t7_v6_0_display.quote_id = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
eurex_cash_eti_t7_v6_0_dissect.quote_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.quote_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_id, range, value, display)

  return offset + length, value
end

-- Display: Mass Quote Response
eurex_cash_eti_t7_v6_0_display.mass_quote_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Response
eurex_cash_eti_t7_v6_0_dissect.mass_quote_response_fields = function(buffer, offset, packet, parent, size_of_mass_quote_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = eurex_cash_eti_t7_v6_0_dissect.quote_id(buffer, index, packet, parent)

  -- Quote Response Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_response_id = eurex_cash_eti_t7_v6_0_dissect.quote_response_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_entries = eurex_cash_eti_t7_v6_0_dissect.no_quote_entries(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  -- Quote Entry Ack Grp Comp: Struct of 6 fields
  for i = 1, no_quote_entries do
    index = eurex_cash_eti_t7_v6_0_dissect.quote_entry_ack_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Quote Response
eurex_cash_eti_t7_v6_0_dissect.mass_quote_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_mass_quote_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.mass_quote_response then
    local range = buffer(offset, size_of_mass_quote_response)
    local display = eurex_cash_eti_t7_v6_0_display.mass_quote_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.mass_quote_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.mass_quote_response_fields(buffer, offset, packet, parent, size_of_mass_quote_response)

  return offset + size_of_mass_quote_response
end

-- Size: Offer Size
eurex_cash_eti_t7_v6_0_size_of.offer_size = 4

-- Display: Offer Size
eurex_cash_eti_t7_v6_0_display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
eurex_cash_eti_t7_v6_0_dissect.offer_size = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.offer_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
eurex_cash_eti_t7_v6_0_size_of.bid_size = 4

-- Display: Bid Size
eurex_cash_eti_t7_v6_0_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
eurex_cash_eti_t7_v6_0_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_cash_eti_t7_v6_0_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Offer Px
eurex_cash_eti_t7_v6_0_size_of.offer_px = 8

-- Display: Offer Px
eurex_cash_eti_t7_v6_0_display.offer_px = function(value)
  return "Offer Px: "..value
end

-- Translate: Offer Px
translate.offer_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Px
eurex_cash_eti_t7_v6_0_dissect.offer_px = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.offer_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.offer_px(raw)
  local display = eurex_cash_eti_t7_v6_0_display.offer_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Size: Bid Px
eurex_cash_eti_t7_v6_0_size_of.bid_px = 8

-- Display: Bid Px
eurex_cash_eti_t7_v6_0_display.bid_px = function(value)
  return "Bid Px: "..value
end

-- Translate: Bid Px
translate.bid_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Px
eurex_cash_eti_t7_v6_0_dissect.bid_px = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.bid_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.bid_px(raw)
  local display = eurex_cash_eti_t7_v6_0_display.bid_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Entry Grp Comp
eurex_cash_eti_t7_v6_0_size_of.quote_entry_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.security_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.bid_px

  index = index + eurex_cash_eti_t7_v6_0_size_of.offer_px

  index = index + eurex_cash_eti_t7_v6_0_size_of.bid_size

  index = index + eurex_cash_eti_t7_v6_0_size_of.offer_size

  return index
end

-- Display: Quote Entry Grp Comp
eurex_cash_eti_t7_v6_0_display.quote_entry_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Entry Grp Comp
eurex_cash_eti_t7_v6_0_dissect.quote_entry_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = eurex_cash_eti_t7_v6_0_dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = eurex_cash_eti_t7_v6_0_dissect.offer_px(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Signed Fixed Width Integer
  index, bid_size = eurex_cash_eti_t7_v6_0_dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Signed Fixed Width Integer
  index, offer_size = eurex_cash_eti_t7_v6_0_dissect.offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entry Grp Comp
eurex_cash_eti_t7_v6_0_dissect.quote_entry_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_entry_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.quote_entry_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.quote_entry_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.quote_entry_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.quote_entry_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Quote Size Type
eurex_cash_eti_t7_v6_0_size_of.quote_size_type = 1

-- Display: Quote Size Type
eurex_cash_eti_t7_v6_0_display.quote_size_type = function(value)
  if value == 1 then
    return "Quote Size Type: Total Size (1)"
  end
  if value == 2 then
    return "Quote Size Type: Open Size (2)"
  end

  return "Quote Size Type: Unknown("..value..")"
end

-- Dissect: Quote Size Type
eurex_cash_eti_t7_v6_0_dissect.quote_size_type = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.quote_size_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.quote_size_type(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.quote_size_type, range, value, display)

  return offset + length, value
end

-- Display: Mass Quote Request
eurex_cash_eti_t7_v6_0_display.mass_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Request
eurex_cash_eti_t7_v6_0_dissect.mass_quote_request_fields = function(buffer, offset, packet, parent, size_of_mass_quote_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = eurex_cash_eti_t7_v6_0_dissect.quote_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = eurex_cash_eti_t7_v6_0_dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = eurex_cash_eti_t7_v6_0_dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Price Validity Check Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, price_validity_check_type = eurex_cash_eti_t7_v6_0_dissect.price_validity_check_type(buffer, index, packet, parent)

  -- Value Check Type Value: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_value = eurex_cash_eti_t7_v6_0_dissect.value_check_type_value(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = eurex_cash_eti_t7_v6_0_dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Quote Size Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_size_type = eurex_cash_eti_t7_v6_0_dissect.quote_size_type(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = eurex_cash_eti_t7_v6_0_dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index, no_quote_entries = eurex_cash_eti_t7_v6_0_dissect.no_quote_entries(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  -- Quote Entry Grp Comp: Struct of 5 fields
  for i = 1, no_quote_entries do
    index = eurex_cash_eti_t7_v6_0_dissect.quote_entry_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Quote Request
eurex_cash_eti_t7_v6_0_dissect.mass_quote_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_mass_quote_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.mass_quote_request then
    local range = buffer(offset, size_of_mass_quote_request)
    local display = eurex_cash_eti_t7_v6_0_display.mass_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.mass_quote_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.mass_quote_request_fields(buffer, offset, packet, parent, size_of_mass_quote_request)

  return offset + size_of_mass_quote_request
end

-- Display: Logout Response
eurex_cash_eti_t7_v6_0_display.logout_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Response
eurex_cash_eti_t7_v6_0_dissect.logout_response_fields = function(buffer, offset, packet, parent, size_of_logout_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response
eurex_cash_eti_t7_v6_0_dissect.logout_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_logout_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.logout_response then
    local range = buffer(offset, size_of_logout_response)
    local display = eurex_cash_eti_t7_v6_0_display.logout_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.logout_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.logout_response_fields(buffer, offset, packet, parent, size_of_logout_response)

  return offset + size_of_logout_response
end

-- Display: Logout Request
eurex_cash_eti_t7_v6_0_display.logout_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Request
eurex_cash_eti_t7_v6_0_dissect.logout_request_fields = function(buffer, offset, packet, parent, size_of_logout_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Request
eurex_cash_eti_t7_v6_0_dissect.logout_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_logout_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.logout_request then
    local range = buffer(offset, size_of_logout_request)
    local display = eurex_cash_eti_t7_v6_0_display.logout_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.logout_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.logout_request_fields(buffer, offset, packet, parent, size_of_logout_request)

  return offset + size_of_logout_request
end

-- Size: Default Cstm Appl Ver Sub Id
eurex_cash_eti_t7_v6_0_size_of.default_cstm_appl_ver_sub_id = 5

-- Display: Default Cstm Appl Ver Sub Id
eurex_cash_eti_t7_v6_0_display.default_cstm_appl_ver_sub_id = function(value)
  if value == "C0002" then
    return "Default Cstm Appl Ver Sub Id: Cash (C0002)"
  end

  return "Default Cstm Appl Ver Sub Id: Unknown("..value..")"
end

-- Dissect: Default Cstm Appl Ver Sub Id
eurex_cash_eti_t7_v6_0_dissect.default_cstm_appl_ver_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.default_cstm_appl_ver_sub_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.default_cstm_appl_ver_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.default_cstm_appl_ver_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Default Cstm Appl Ver Id
eurex_cash_eti_t7_v6_0_size_of.default_cstm_appl_ver_id = 30

-- Display: Default Cstm Appl Ver Id
eurex_cash_eti_t7_v6_0_display.default_cstm_appl_ver_id = function(value)
  return "Default Cstm Appl Ver Id: "..value
end

-- Dissect: Default Cstm Appl Ver Id
eurex_cash_eti_t7_v6_0_dissect.default_cstm_appl_ver_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.default_cstm_appl_ver_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.default_cstm_appl_ver_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.default_cstm_appl_ver_id, range, value, display)

  return offset + length, value
end

-- Size: Trad Ses Mode
eurex_cash_eti_t7_v6_0_size_of.trad_ses_mode = 1

-- Display: Trad Ses Mode
eurex_cash_eti_t7_v6_0_display.trad_ses_mode = function(value)
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

  return "Trad Ses Mode: Unknown("..value..")"
end

-- Dissect: Trad Ses Mode
eurex_cash_eti_t7_v6_0_dissect.trad_ses_mode = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.trad_ses_mode
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.trad_ses_mode(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.trad_ses_mode, range, value, display)

  return offset + length, value
end

-- Size: Session Instance Id
eurex_cash_eti_t7_v6_0_size_of.session_instance_id = 4

-- Display: Session Instance Id
eurex_cash_eti_t7_v6_0_display.session_instance_id = function(value)
  return "Session Instance Id: "..value
end

-- Dissect: Session Instance Id
eurex_cash_eti_t7_v6_0_dissect.session_instance_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.session_instance_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.session_instance_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.session_instance_id, range, value, display)

  return offset + length, value
end

-- Size: Heart Bt Int
eurex_cash_eti_t7_v6_0_size_of.heart_bt_int = 4

-- Display: Heart Bt Int
eurex_cash_eti_t7_v6_0_display.heart_bt_int = function(value)
  return "Heart Bt Int: "..value
end

-- Dissect: Heart Bt Int
eurex_cash_eti_t7_v6_0_dissect.heart_bt_int = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.heart_bt_int
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.heart_bt_int(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.heart_bt_int, range, value, display)

  return offset + length, value
end

-- Display: Logon Response
eurex_cash_eti_t7_v6_0_display.logon_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Response
eurex_cash_eti_t7_v6_0_dissect.logon_response_fields = function(buffer, offset, packet, parent, size_of_logon_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  -- Throttle Time Interval: 8 Byte Signed Fixed Width Integer
  index, throttle_time_interval = eurex_cash_eti_t7_v6_0_dissect.throttle_time_interval(buffer, index, packet, parent)

  -- Throttle No Msgs: 4 Byte Unsigned Fixed Width Integer
  index, throttle_no_msgs = eurex_cash_eti_t7_v6_0_dissect.throttle_no_msgs(buffer, index, packet, parent)

  -- Throttle Disconnect Limit: 4 Byte Unsigned Fixed Width Integer
  index, throttle_disconnect_limit = eurex_cash_eti_t7_v6_0_dissect.throttle_disconnect_limit(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer
  index, heart_bt_int = eurex_cash_eti_t7_v6_0_dissect.heart_bt_int(buffer, index, packet, parent)

  -- Session Instance Id: 4 Byte Unsigned Fixed Width Integer
  index, session_instance_id = eurex_cash_eti_t7_v6_0_dissect.session_instance_id(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_id = eurex_cash_eti_t7_v6_0_dissect.market_id(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trad_ses_mode = eurex_cash_eti_t7_v6_0_dissect.trad_ses_mode(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String
  index, default_cstm_appl_ver_id = eurex_cash_eti_t7_v6_0_dissect.default_cstm_appl_ver_id(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Sub Id: 5 Byte Ascii String Enum with 1 values
  index, default_cstm_appl_ver_sub_id = eurex_cash_eti_t7_v6_0_dissect.default_cstm_appl_ver_sub_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response
eurex_cash_eti_t7_v6_0_dissect.logon_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_logon_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.logon_response then
    local range = buffer(offset, size_of_logon_response)
    local display = eurex_cash_eti_t7_v6_0_display.logon_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.logon_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.logon_response_fields(buffer, offset, packet, parent, size_of_logon_response)

  return offset + size_of_logon_response
end

-- Size: Application System Vendor
eurex_cash_eti_t7_v6_0_size_of.application_system_vendor = 30

-- Display: Application System Vendor
eurex_cash_eti_t7_v6_0_display.application_system_vendor = function(value)
  return "Application System Vendor: "..value
end

-- Dissect: Application System Vendor
eurex_cash_eti_t7_v6_0_dissect.application_system_vendor = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.application_system_vendor
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.application_system_vendor(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.application_system_vendor, range, value, display)

  return offset + length, value
end

-- Size: Application System Version
eurex_cash_eti_t7_v6_0_size_of.application_system_version = 30

-- Display: Application System Version
eurex_cash_eti_t7_v6_0_display.application_system_version = function(value)
  return "Application System Version: "..value
end

-- Dissect: Application System Version
eurex_cash_eti_t7_v6_0_dissect.application_system_version = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.application_system_version
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.application_system_version(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.application_system_version, range, value, display)

  return offset + length, value
end

-- Size: Application System Name
eurex_cash_eti_t7_v6_0_size_of.application_system_name = 30

-- Display: Application System Name
eurex_cash_eti_t7_v6_0_display.application_system_name = function(value)
  return "Application System Name: "..value
end

-- Dissect: Application System Name
eurex_cash_eti_t7_v6_0_dissect.application_system_name = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.application_system_name
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.application_system_name(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.application_system_name, range, value, display)

  return offset + length, value
end

-- Size: Fix Engine Vendor
eurex_cash_eti_t7_v6_0_size_of.fix_engine_vendor = 30

-- Display: Fix Engine Vendor
eurex_cash_eti_t7_v6_0_display.fix_engine_vendor = function(value)
  return "Fix Engine Vendor: "..value
end

-- Dissect: Fix Engine Vendor
eurex_cash_eti_t7_v6_0_dissect.fix_engine_vendor = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.fix_engine_vendor
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.fix_engine_vendor(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.fix_engine_vendor, range, value, display)

  return offset + length, value
end

-- Size: Fix Engine Version
eurex_cash_eti_t7_v6_0_size_of.fix_engine_version = 30

-- Display: Fix Engine Version
eurex_cash_eti_t7_v6_0_display.fix_engine_version = function(value)
  return "Fix Engine Version: "..value
end

-- Dissect: Fix Engine Version
eurex_cash_eti_t7_v6_0_dissect.fix_engine_version = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.fix_engine_version
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.fix_engine_version(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.fix_engine_version, range, value, display)

  return offset + length, value
end

-- Size: Fix Engine Name
eurex_cash_eti_t7_v6_0_size_of.fix_engine_name = 30

-- Display: Fix Engine Name
eurex_cash_eti_t7_v6_0_display.fix_engine_name = function(value)
  return "Fix Engine Name: "..value
end

-- Dissect: Fix Engine Name
eurex_cash_eti_t7_v6_0_dissect.fix_engine_name = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.fix_engine_name
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.fix_engine_name(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.fix_engine_name, range, value, display)

  return offset + length, value
end

-- Size: Order Routing Indicator
eurex_cash_eti_t7_v6_0_size_of.order_routing_indicator = 1

-- Display: Order Routing Indicator
eurex_cash_eti_t7_v6_0_display.order_routing_indicator = function(value)
  if value == "Y" then
    return "Order Routing Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Order Routing Indicator: No (N)"
  end

  return "Order Routing Indicator: Unknown("..value..")"
end

-- Dissect: Order Routing Indicator
eurex_cash_eti_t7_v6_0_dissect.order_routing_indicator = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.order_routing_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = eurex_cash_eti_t7_v6_0_display.order_routing_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.order_routing_indicator, range, value, display)

  return offset + length, value
end

-- Size: Appl Usage Quotes
eurex_cash_eti_t7_v6_0_size_of.appl_usage_quotes = 1

-- Display: Appl Usage Quotes
eurex_cash_eti_t7_v6_0_display.appl_usage_quotes = function(value)
  if value == "A" then
    return "Appl Usage Quotes: Automated (A)"
  end
  if value == "M" then
    return "Appl Usage Quotes: Manual (M)"
  end
  if value == "B" then
    return "Appl Usage Quotes: Auto Select (B)"
  end
  if value == "N" then
    return "Appl Usage Quotes: None (N)"
  end

  return "Appl Usage Quotes: Unknown("..value..")"
end

-- Dissect: Appl Usage Quotes
eurex_cash_eti_t7_v6_0_dissect.appl_usage_quotes = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_usage_quotes
  local range = buffer(offset, length)
  local value = range:string()
  local display = eurex_cash_eti_t7_v6_0_display.appl_usage_quotes(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_usage_quotes, range, value, display)

  return offset + length, value
end

-- Size: Appl Usage Orders
eurex_cash_eti_t7_v6_0_size_of.appl_usage_orders = 1

-- Display: Appl Usage Orders
eurex_cash_eti_t7_v6_0_display.appl_usage_orders = function(value)
  if value == "A" then
    return "Appl Usage Orders: Automated (A)"
  end
  if value == "M" then
    return "Appl Usage Orders: Manual (M)"
  end
  if value == "B" then
    return "Appl Usage Orders: Auto Select (B)"
  end
  if value == "N" then
    return "Appl Usage Orders: None (N)"
  end

  return "Appl Usage Orders: Unknown("..value..")"
end

-- Dissect: Appl Usage Orders
eurex_cash_eti_t7_v6_0_dissect.appl_usage_orders = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_usage_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = eurex_cash_eti_t7_v6_0_display.appl_usage_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_usage_orders, range, value, display)

  return offset + length, value
end

-- Display: Logon Request
eurex_cash_eti_t7_v6_0_display.logon_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Request
eurex_cash_eti_t7_v6_0_dissect.logon_request_fields = function(buffer, offset, packet, parent, size_of_logon_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Heart Bt Int: 4 Byte Unsigned Fixed Width Integer
  index, heart_bt_int = eurex_cash_eti_t7_v6_0_dissect.heart_bt_int(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.party_id_session_id(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String
  index, default_cstm_appl_ver_id = eurex_cash_eti_t7_v6_0_dissect.default_cstm_appl_ver_id(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = eurex_cash_eti_t7_v6_0_dissect.password(buffer, index, packet, parent)

  -- Appl Usage Orders: 1 Byte Ascii String Enum with 4 values
  index, appl_usage_orders = eurex_cash_eti_t7_v6_0_dissect.appl_usage_orders(buffer, index, packet, parent)

  -- Appl Usage Quotes: 1 Byte Ascii String Enum with 4 values
  index, appl_usage_quotes = eurex_cash_eti_t7_v6_0_dissect.appl_usage_quotes(buffer, index, packet, parent)

  -- Order Routing Indicator: 1 Byte Ascii String Enum with 2 values
  index, order_routing_indicator = eurex_cash_eti_t7_v6_0_dissect.order_routing_indicator(buffer, index, packet, parent)

  -- Fix Engine Name: 30 Byte Ascii String
  index, fix_engine_name = eurex_cash_eti_t7_v6_0_dissect.fix_engine_name(buffer, index, packet, parent)

  -- Fix Engine Version: 30 Byte Ascii String
  index, fix_engine_version = eurex_cash_eti_t7_v6_0_dissect.fix_engine_version(buffer, index, packet, parent)

  -- Fix Engine Vendor: 30 Byte Ascii String
  index, fix_engine_vendor = eurex_cash_eti_t7_v6_0_dissect.fix_engine_vendor(buffer, index, packet, parent)

  -- Application System Name: 30 Byte Ascii String
  index, application_system_name = eurex_cash_eti_t7_v6_0_dissect.application_system_name(buffer, index, packet, parent)

  -- Application System Version: 30 Byte Ascii String
  index, application_system_version = eurex_cash_eti_t7_v6_0_dissect.application_system_version(buffer, index, packet, parent)

  -- Application System Vendor: 30 Byte Ascii String
  index, application_system_vendor = eurex_cash_eti_t7_v6_0_dissect.application_system_vendor(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request
eurex_cash_eti_t7_v6_0_dissect.logon_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_logon_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.logon_request then
    local range = buffer(offset, size_of_logon_request)
    local display = eurex_cash_eti_t7_v6_0_display.logon_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.logon_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.logon_request_fields(buffer, offset, packet, parent, size_of_logon_request)

  return offset + size_of_logon_request
end

-- Size: User Status
eurex_cash_eti_t7_v6_0_size_of.user_status = 1

-- Display: User Status
eurex_cash_eti_t7_v6_0_display.user_status = function(value)
  if value == 7 then
    return "User Status: Userforcedlogout (7)"
  end
  if value == 10 then
    return "User Status: Userstopped (10)"
  end
  if value == 11 then
    return "User Status: Userreleased (11)"
  end

  return "User Status: Unknown("..value..")"
end

-- Dissect: User Status
eurex_cash_eti_t7_v6_0_dissect.user_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.user_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.user_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.user_status, range, value, display)

  return offset + length, value
end

-- Display: Legal Notification Broadcast
eurex_cash_eti_t7_v6_0_display.legal_notification_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Legal Notification Broadcast
eurex_cash_eti_t7_v6_0_dissect.legal_notification_broadcast_fields = function(buffer, offset, packet, parent, size_of_legal_notification_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Comp: Struct of 8 fields
  index, rbc_header_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_comp(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index, transact_time = eurex_cash_eti_t7_v6_0_dissect.transact_time(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = eurex_cash_eti_t7_v6_0_dissect.var_text_len(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_status = eurex_cash_eti_t7_v6_0_dissect.user_status(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_cash_eti_t7_v6_0_dissect.pad_5(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = eurex_cash_eti_t7_v6_0_dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Legal Notification Broadcast
eurex_cash_eti_t7_v6_0_dissect.legal_notification_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_legal_notification_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.legal_notification_broadcast then
    local range = buffer(offset, size_of_legal_notification_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.legal_notification_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.legal_notification_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.legal_notification_broadcast_fields(buffer, offset, packet, parent, size_of_legal_notification_broadcast)

  return offset + size_of_legal_notification_broadcast
end

-- Size: Party Detail Desk Id
eurex_cash_eti_t7_v6_0_size_of.party_detail_desk_id = 3

-- Display: Party Detail Desk Id
eurex_cash_eti_t7_v6_0_display.party_detail_desk_id = function(value)
  return "Party Detail Desk Id: "..value
end

-- Dissect: Party Detail Desk Id
eurex_cash_eti_t7_v6_0_dissect.party_detail_desk_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_detail_desk_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.party_detail_desk_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_detail_desk_id, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Role Qualifier
eurex_cash_eti_t7_v6_0_size_of.party_detail_role_qualifier = 1

-- Display: Party Detail Role Qualifier
eurex_cash_eti_t7_v6_0_display.party_detail_role_qualifier = function(value)
  if value == 10 then
    return "Party Detail Role Qualifier: Trader (10)"
  end
  if value == 11 then
    return "Party Detail Role Qualifier: Head Trader (11)"
  end
  if value == 12 then
    return "Party Detail Role Qualifier: Supervisor (12)"
  end

  return "Party Detail Role Qualifier: Unknown("..value..")"
end

-- Dissect: Party Detail Role Qualifier
eurex_cash_eti_t7_v6_0_dissect.party_detail_role_qualifier = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_detail_role_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_detail_role_qualifier(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_detail_role_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Executing Trader
eurex_cash_eti_t7_v6_0_size_of.party_detail_executing_trader = 6

-- Display: Party Detail Executing Trader
eurex_cash_eti_t7_v6_0_display.party_detail_executing_trader = function(value)
  return "Party Detail Executing Trader: "..value
end

-- Dissect: Party Detail Executing Trader
eurex_cash_eti_t7_v6_0_dissect.party_detail_executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_detail_executing_trader
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.party_detail_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_detail_executing_trader, range, value, display)

  return offset + length, value
end

-- Size: Party Detail Id Executing Trader
eurex_cash_eti_t7_v6_0_size_of.party_detail_id_executing_trader = 4

-- Display: Party Detail Id Executing Trader
eurex_cash_eti_t7_v6_0_display.party_detail_id_executing_trader = function(value)
  return "Party Detail Id Executing Trader: "..value
end

-- Dissect: Party Detail Id Executing Trader
eurex_cash_eti_t7_v6_0_dissect.party_detail_id_executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.party_detail_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.party_detail_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.party_detail_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Calculate size of: Party Details Grp Comp
eurex_cash_eti_t7_v6_0_size_of.party_details_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.party_detail_id_executing_trader

  index = index + eurex_cash_eti_t7_v6_0_size_of.party_detail_executing_trader

  index = index + eurex_cash_eti_t7_v6_0_size_of.party_detail_role_qualifier

  index = index + eurex_cash_eti_t7_v6_0_size_of.party_detail_status

  index = index + eurex_cash_eti_t7_v6_0_size_of.party_detail_desk_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_1

  return index
end

-- Display: Party Details Grp Comp
eurex_cash_eti_t7_v6_0_display.party_details_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Grp Comp
eurex_cash_eti_t7_v6_0_dissect.party_details_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Detail Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_detail_id_executing_trader = eurex_cash_eti_t7_v6_0_dissect.party_detail_id_executing_trader(buffer, index, packet, parent)

  -- Party Detail Executing Trader: 6 Byte Ascii String
  index, party_detail_executing_trader = eurex_cash_eti_t7_v6_0_dissect.party_detail_executing_trader(buffer, index, packet, parent)

  -- Party Detail Role Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, party_detail_role_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_detail_role_qualifier(buffer, index, packet, parent)

  -- Party Detail Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_detail_status = eurex_cash_eti_t7_v6_0_dissect.party_detail_status(buffer, index, packet, parent)

  -- Party Detail Desk Id: 3 Byte Ascii String
  index, party_detail_desk_id = eurex_cash_eti_t7_v6_0_dissect.party_detail_desk_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_cash_eti_t7_v6_0_dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Grp Comp
eurex_cash_eti_t7_v6_0_dissect.party_details_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.party_details_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.party_details_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.party_details_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.party_details_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.party_details_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Party Details
eurex_cash_eti_t7_v6_0_size_of.no_party_details = 2

-- Display: No Party Details
eurex_cash_eti_t7_v6_0_display.no_party_details = function(value)
  return "No Party Details: "..value
end

-- Dissect: No Party Details
eurex_cash_eti_t7_v6_0_dissect.no_party_details = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.no_party_details
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.no_party_details(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.no_party_details, range, value, display)

  return offset + length, value
end

-- Size: Last Entity Processed
eurex_cash_eti_t7_v6_0_size_of.last_entity_processed = 16

-- Display: Last Entity Processed
eurex_cash_eti_t7_v6_0_display.last_entity_processed = function(value)
  return "Last Entity Processed: "..value
end

-- Dissect: Last Entity Processed
eurex_cash_eti_t7_v6_0_dissect.last_entity_processed = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.last_entity_processed
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_cash_eti_t7_v6_0_display.last_entity_processed(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.last_entity_processed, range, value, display)

  return offset + length, value
end

-- Display: Inquire User Response
eurex_cash_eti_t7_v6_0_display.inquire_user_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire User Response
eurex_cash_eti_t7_v6_0_dissect.inquire_user_response_fields = function(buffer, offset, packet, parent, size_of_inquire_user_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = eurex_cash_eti_t7_v6_0_dissect.last_entity_processed(buffer, index, packet, parent)

  -- No Party Details: 2 Byte Unsigned Fixed Width Integer
  index, no_party_details = eurex_cash_eti_t7_v6_0_dissect.no_party_details(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  -- Party Details Grp Comp: Struct of 6 fields
  for i = 1, no_party_details do
    index = eurex_cash_eti_t7_v6_0_dissect.party_details_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Inquire User Response
eurex_cash_eti_t7_v6_0_dissect.inquire_user_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_inquire_user_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.inquire_user_response then
    local range = buffer(offset, size_of_inquire_user_response)
    local display = eurex_cash_eti_t7_v6_0_display.inquire_user_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.inquire_user_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.inquire_user_response_fields(buffer, offset, packet, parent, size_of_inquire_user_response)

  return offset + size_of_inquire_user_response
end

-- Display: Inquire User Request
eurex_cash_eti_t7_v6_0_display.inquire_user_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire User Request
eurex_cash_eti_t7_v6_0_dissect.inquire_user_request_fields = function(buffer, offset, packet, parent, size_of_inquire_user_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = eurex_cash_eti_t7_v6_0_dissect.last_entity_processed(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire User Request
eurex_cash_eti_t7_v6_0_dissect.inquire_user_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_inquire_user_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.inquire_user_request then
    local range = buffer(offset, size_of_inquire_user_request)
    local display = eurex_cash_eti_t7_v6_0_display.inquire_user_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.inquire_user_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.inquire_user_request_fields(buffer, offset, packet, parent, size_of_inquire_user_request)

  return offset + size_of_inquire_user_request
end

-- Size: Session Sub Mode
eurex_cash_eti_t7_v6_0_size_of.session_sub_mode = 1

-- Display: Session Sub Mode
eurex_cash_eti_t7_v6_0_display.session_sub_mode = function(value)
  if value == 0 then
    return "Session Sub Mode: Regulartradingsession (0)"
  end
  if value == 1 then
    return "Session Sub Mode: Fi Xtradingsession (1)"
  end
  if value == 2 then
    return "Session Sub Mode: Regular Back Officesession (2)"
  end

  return "Session Sub Mode: Unknown("..value..")"
end

-- Dissect: Session Sub Mode
eurex_cash_eti_t7_v6_0_dissect.session_sub_mode = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.session_sub_mode
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.session_sub_mode(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.session_sub_mode, range, value, display)

  return offset + length, value
end

-- Size: Session Mode
eurex_cash_eti_t7_v6_0_size_of.session_mode = 1

-- Display: Session Mode
eurex_cash_eti_t7_v6_0_display.session_mode = function(value)
  if value == 1 then
    return "Session Mode: Hf (1)"
  end
  if value == 2 then
    return "Session Mode: Lf (2)"
  end
  if value == 3 then
    return "Session Mode: Gui (3)"
  end

  return "Session Mode: Unknown("..value..")"
end

-- Dissect: Session Mode
eurex_cash_eti_t7_v6_0_dissect.session_mode = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.session_mode
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.session_mode(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.session_mode, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sessions Grp Comp
eurex_cash_eti_t7_v6_0_size_of.sessions_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.party_id_session_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.session_mode

  index = index + eurex_cash_eti_t7_v6_0_size_of.session_sub_mode

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_2

  return index
end

-- Display: Sessions Grp Comp
eurex_cash_eti_t7_v6_0_display.sessions_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sessions Grp Comp
eurex_cash_eti_t7_v6_0_dissect.sessions_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.party_id_session_id(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_mode = eurex_cash_eti_t7_v6_0_dissect.session_mode(buffer, index, packet, parent)

  -- Session Sub Mode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_sub_mode = eurex_cash_eti_t7_v6_0_dissect.session_sub_mode(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Sessions Grp Comp
eurex_cash_eti_t7_v6_0_dissect.sessions_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sessions_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.sessions_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.sessions_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.sessions_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.sessions_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Sessions
eurex_cash_eti_t7_v6_0_size_of.no_sessions = 2

-- Display: No Sessions
eurex_cash_eti_t7_v6_0_display.no_sessions = function(value)
  return "No Sessions: "..value
end

-- Dissect: No Sessions
eurex_cash_eti_t7_v6_0_dissect.no_sessions = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.no_sessions
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.no_sessions(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.no_sessions, range, value, display)

  return offset + length, value
end

-- Display: Inquire Session List Response
eurex_cash_eti_t7_v6_0_display.inquire_session_list_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Session List Response
eurex_cash_eti_t7_v6_0_dissect.inquire_session_list_response_fields = function(buffer, offset, packet, parent, size_of_inquire_session_list_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  -- No Sessions: 2 Byte Unsigned Fixed Width Integer
  index, no_sessions = eurex_cash_eti_t7_v6_0_dissect.no_sessions(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  -- Sessions Grp Comp: Struct of 4 fields
  for i = 1, no_sessions do
    index = eurex_cash_eti_t7_v6_0_dissect.sessions_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Inquire Session List Response
eurex_cash_eti_t7_v6_0_dissect.inquire_session_list_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_inquire_session_list_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.inquire_session_list_response then
    local range = buffer(offset, size_of_inquire_session_list_response)
    local display = eurex_cash_eti_t7_v6_0_display.inquire_session_list_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.inquire_session_list_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.inquire_session_list_response_fields(buffer, offset, packet, parent, size_of_inquire_session_list_response)

  return offset + size_of_inquire_session_list_response
end

-- Display: Inquire Session List Request
eurex_cash_eti_t7_v6_0_display.inquire_session_list_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Session List Request
eurex_cash_eti_t7_v6_0_dissect.inquire_session_list_request_fields = function(buffer, offset, packet, parent, size_of_inquire_session_list_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Session List Request
eurex_cash_eti_t7_v6_0_dissect.inquire_session_list_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_inquire_session_list_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.inquire_session_list_request then
    local range = buffer(offset, size_of_inquire_session_list_request)
    local display = eurex_cash_eti_t7_v6_0_display.inquire_session_list_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.inquire_session_list_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.inquire_session_list_request_fields(buffer, offset, packet, parent, size_of_inquire_session_list_request)

  return offset + size_of_inquire_session_list_request
end

-- Calculate size of: Enrichment Rules Grp Comp
eurex_cash_eti_t7_v6_0_size_of.enrichment_rules_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.enrichment_rule_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.free_text_1

  index = index + eurex_cash_eti_t7_v6_0_size_of.free_text_2

  index = index + eurex_cash_eti_t7_v6_0_size_of.free_text_4

  index = index + eurex_cash_eti_t7_v6_0_size_of.pad_6

  return index
end

-- Display: Enrichment Rules Grp Comp
eurex_cash_eti_t7_v6_0_display.enrichment_rules_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enrichment Rules Grp Comp
eurex_cash_eti_t7_v6_0_dissect.enrichment_rules_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = eurex_cash_eti_t7_v6_0_dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = eurex_cash_eti_t7_v6_0_dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = eurex_cash_eti_t7_v6_0_dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = eurex_cash_eti_t7_v6_0_dissect.free_text_4(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Enrichment Rules Grp Comp
eurex_cash_eti_t7_v6_0_dissect.enrichment_rules_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.enrichment_rules_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.enrichment_rules_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.enrichment_rules_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.enrichment_rules_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.enrichment_rules_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Enrichment Rules
eurex_cash_eti_t7_v6_0_size_of.no_enrichment_rules = 2

-- Display: No Enrichment Rules
eurex_cash_eti_t7_v6_0_display.no_enrichment_rules = function(value)
  return "No Enrichment Rules: "..value
end

-- Dissect: No Enrichment Rules
eurex_cash_eti_t7_v6_0_dissect.no_enrichment_rules = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.no_enrichment_rules
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.no_enrichment_rules(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.no_enrichment_rules, range, value, display)

  return offset + length, value
end

-- Display: Inquire Enrichment Rule Id List Response
eurex_cash_eti_t7_v6_0_display.inquire_enrichment_rule_id_list_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Enrichment Rule Id List Response
eurex_cash_eti_t7_v6_0_dissect.inquire_enrichment_rule_id_list_response_fields = function(buffer, offset, packet, parent, size_of_inquire_enrichment_rule_id_list_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = eurex_cash_eti_t7_v6_0_dissect.last_entity_processed(buffer, index, packet, parent)

  -- No Enrichment Rules: 2 Byte Unsigned Fixed Width Integer
  index, no_enrichment_rules = eurex_cash_eti_t7_v6_0_dissect.no_enrichment_rules(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  -- Enrichment Rules Grp Comp: Struct of 5 fields
  for i = 1, no_enrichment_rules do
    index = eurex_cash_eti_t7_v6_0_dissect.enrichment_rules_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Inquire Enrichment Rule Id List Response
eurex_cash_eti_t7_v6_0_dissect.inquire_enrichment_rule_id_list_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_inquire_enrichment_rule_id_list_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.inquire_enrichment_rule_id_list_response then
    local range = buffer(offset, size_of_inquire_enrichment_rule_id_list_response)
    local display = eurex_cash_eti_t7_v6_0_display.inquire_enrichment_rule_id_list_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.inquire_enrichment_rule_id_list_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.inquire_enrichment_rule_id_list_response_fields(buffer, offset, packet, parent, size_of_inquire_enrichment_rule_id_list_response)

  return offset + size_of_inquire_enrichment_rule_id_list_response
end

-- Display: Inquire Enrichment Rule Id List Request
eurex_cash_eti_t7_v6_0_display.inquire_enrichment_rule_id_list_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Inquire Enrichment Rule Id List Request
eurex_cash_eti_t7_v6_0_dissect.inquire_enrichment_rule_id_list_request_fields = function(buffer, offset, packet, parent, size_of_inquire_enrichment_rule_id_list_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Last Entity Processed: 16 Byte
  index, last_entity_processed = eurex_cash_eti_t7_v6_0_dissect.last_entity_processed(buffer, index, packet, parent)

  return index
end

-- Dissect: Inquire Enrichment Rule Id List Request
eurex_cash_eti_t7_v6_0_dissect.inquire_enrichment_rule_id_list_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_inquire_enrichment_rule_id_list_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.inquire_enrichment_rule_id_list_request then
    local range = buffer(offset, size_of_inquire_enrichment_rule_id_list_request)
    local display = eurex_cash_eti_t7_v6_0_display.inquire_enrichment_rule_id_list_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.inquire_enrichment_rule_id_list_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.inquire_enrichment_rule_id_list_request_fields(buffer, offset, packet, parent, size_of_inquire_enrichment_rule_id_list_request)

  return offset + size_of_inquire_enrichment_rule_id_list_request
end

-- Display: Heartbeat Notification
eurex_cash_eti_t7_v6_0_display.heartbeat_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat Notification
eurex_cash_eti_t7_v6_0_dissect.heartbeat_notification_fields = function(buffer, offset, packet, parent, size_of_heartbeat_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_cash_eti_t7_v6_0_dissect.notif_header_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Notification
eurex_cash_eti_t7_v6_0_dissect.heartbeat_notification = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_heartbeat_notification = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.heartbeat_notification then
    local range = buffer(offset, size_of_heartbeat_notification)
    local display = eurex_cash_eti_t7_v6_0_display.heartbeat_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.heartbeat_notification, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.heartbeat_notification_fields(buffer, offset, packet, parent, size_of_heartbeat_notification)

  return offset + size_of_heartbeat_notification
end

-- Display: Heartbeat
eurex_cash_eti_t7_v6_0_display.heartbeat = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat
eurex_cash_eti_t7_v6_0_dissect.heartbeat_fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
eurex_cash_eti_t7_v6_0_dissect.heartbeat = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_heartbeat = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local range = buffer(offset, size_of_heartbeat)
    local display = eurex_cash_eti_t7_v6_0_display.heartbeat(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.heartbeat, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.heartbeat_fields(buffer, offset, packet, parent, size_of_heartbeat)

  return offset + size_of_heartbeat
end

-- Size: Secondary Gateway Status
eurex_cash_eti_t7_v6_0_size_of.secondary_gateway_status = 1

-- Display: Secondary Gateway Status
eurex_cash_eti_t7_v6_0_display.secondary_gateway_status = function(value)
  if value == 0 then
    return "Secondary Gateway Status: Standby (0)"
  end
  if value == 1 then
    return "Secondary Gateway Status: Active (1)"
  end

  return "Secondary Gateway Status: Unknown("..value..")"
end

-- Dissect: Secondary Gateway Status
eurex_cash_eti_t7_v6_0_dissect.secondary_gateway_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.secondary_gateway_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.secondary_gateway_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.secondary_gateway_status, range, value, display)

  return offset + length, value
end

-- Size: Gateway Status
eurex_cash_eti_t7_v6_0_size_of.gateway_status = 1

-- Display: Gateway Status
eurex_cash_eti_t7_v6_0_display.gateway_status = function(value)
  if value == 0 then
    return "Gateway Status: Standby (0)"
  end
  if value == 1 then
    return "Gateway Status: Active (1)"
  end

  return "Gateway Status: Unknown("..value..")"
end

-- Dissect: Gateway Status
eurex_cash_eti_t7_v6_0_dissect.gateway_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.gateway_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.gateway_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.gateway_status, range, value, display)

  return offset + length, value
end

-- Size: Secondary Gateway Sub Id
eurex_cash_eti_t7_v6_0_size_of.secondary_gateway_sub_id = 4

-- Display: Secondary Gateway Sub Id
eurex_cash_eti_t7_v6_0_display.secondary_gateway_sub_id = function(value)
  return "Secondary Gateway Sub Id: "..value
end

-- Dissect: Secondary Gateway Sub Id
eurex_cash_eti_t7_v6_0_dissect.secondary_gateway_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.secondary_gateway_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.secondary_gateway_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.secondary_gateway_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Secondary Gateway Id
eurex_cash_eti_t7_v6_0_size_of.secondary_gateway_id = 4

-- Display: Secondary Gateway Id
eurex_cash_eti_t7_v6_0_display.secondary_gateway_id = function(value)
  return "Secondary Gateway Id: "..value
end

-- Dissect: Secondary Gateway Id
eurex_cash_eti_t7_v6_0_dissect.secondary_gateway_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.secondary_gateway_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.secondary_gateway_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.secondary_gateway_id, range, value, display)

  return offset + length, value
end

-- Size: Gateway Sub Id
eurex_cash_eti_t7_v6_0_size_of.gateway_sub_id = 4

-- Display: Gateway Sub Id
eurex_cash_eti_t7_v6_0_display.gateway_sub_id = function(value)
  return "Gateway Sub Id: "..value
end

-- Dissect: Gateway Sub Id
eurex_cash_eti_t7_v6_0_dissect.gateway_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.gateway_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.gateway_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.gateway_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Gateway Id
eurex_cash_eti_t7_v6_0_size_of.gateway_id = 4

-- Display: Gateway Id
eurex_cash_eti_t7_v6_0_display.gateway_id = function(value)
  return "Gateway Id: "..value
end

-- Dissect: Gateway Id
eurex_cash_eti_t7_v6_0_dissect.gateway_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.gateway_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.gateway_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.gateway_id, range, value, display)

  return offset + length, value
end

-- Display: Gateway Response
eurex_cash_eti_t7_v6_0_display.gateway_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gateway Response
eurex_cash_eti_t7_v6_0_dissect.gateway_response_fields = function(buffer, offset, packet, parent, size_of_gateway_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Comp: Struct of 4 fields
  index, response_header_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_comp(buffer, index, packet, parent)

  -- Gateway Id: 4 Byte Unsigned Fixed Width Integer
  index, gateway_id = eurex_cash_eti_t7_v6_0_dissect.gateway_id(buffer, index, packet, parent)

  -- Gateway Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, gateway_sub_id = eurex_cash_eti_t7_v6_0_dissect.gateway_sub_id(buffer, index, packet, parent)

  -- Secondary Gateway Id: 4 Byte Unsigned Fixed Width Integer
  index, secondary_gateway_id = eurex_cash_eti_t7_v6_0_dissect.secondary_gateway_id(buffer, index, packet, parent)

  -- Secondary Gateway Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, secondary_gateway_sub_id = eurex_cash_eti_t7_v6_0_dissect.secondary_gateway_sub_id(buffer, index, packet, parent)

  -- Gateway Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, gateway_status = eurex_cash_eti_t7_v6_0_dissect.gateway_status(buffer, index, packet, parent)

  -- Secondary Gateway Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, secondary_gateway_status = eurex_cash_eti_t7_v6_0_dissect.secondary_gateway_status(buffer, index, packet, parent)

  -- Session Mode: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, session_mode = eurex_cash_eti_t7_v6_0_dissect.session_mode(buffer, index, packet, parent)

  -- Trad Ses Mode: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trad_ses_mode = eurex_cash_eti_t7_v6_0_dissect.trad_ses_mode(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Response
eurex_cash_eti_t7_v6_0_dissect.gateway_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_gateway_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.gateway_response then
    local range = buffer(offset, size_of_gateway_response)
    local display = eurex_cash_eti_t7_v6_0_display.gateway_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.gateway_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.gateway_response_fields(buffer, offset, packet, parent, size_of_gateway_response)

  return offset + size_of_gateway_response
end

-- Display: Gateway Request
eurex_cash_eti_t7_v6_0_display.gateway_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gateway Request
eurex_cash_eti_t7_v6_0_dissect.gateway_request_fields = function(buffer, offset, packet, parent, size_of_gateway_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.party_id_session_id(buffer, index, packet, parent)

  -- Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, partition_id = eurex_cash_eti_t7_v6_0_dissect.partition_id(buffer, index, packet, parent)

  -- Default Cstm Appl Ver Id: 30 Byte Ascii String
  index, default_cstm_appl_ver_id = eurex_cash_eti_t7_v6_0_dissect.default_cstm_appl_ver_id(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = eurex_cash_eti_t7_v6_0_dissect.password(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Request
eurex_cash_eti_t7_v6_0_dissect.gateway_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_gateway_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.gateway_request then
    local range = buffer(offset, size_of_gateway_request)
    local display = eurex_cash_eti_t7_v6_0_display.gateway_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.gateway_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.gateway_request_fields(buffer, offset, packet, parent, size_of_gateway_request)

  return offset + size_of_gateway_request
end

-- Display: Forced User Logout Notification
eurex_cash_eti_t7_v6_0_display.forced_user_logout_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Forced User Logout Notification
eurex_cash_eti_t7_v6_0_dissect.forced_user_logout_notification_fields = function(buffer, offset, packet, parent, size_of_forced_user_logout_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_cash_eti_t7_v6_0_dissect.notif_header_comp(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, user_status = eurex_cash_eti_t7_v6_0_dissect.user_status(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  -- Username: 4 Byte Unsigned Fixed Width Integer
  index, username = eurex_cash_eti_t7_v6_0_dissect.username(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = eurex_cash_eti_t7_v6_0_dissect.var_text_len(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = eurex_cash_eti_t7_v6_0_dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Forced User Logout Notification
eurex_cash_eti_t7_v6_0_dissect.forced_user_logout_notification = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_forced_user_logout_notification = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.forced_user_logout_notification then
    local range = buffer(offset, size_of_forced_user_logout_notification)
    local display = eurex_cash_eti_t7_v6_0_display.forced_user_logout_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.forced_user_logout_notification, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.forced_user_logout_notification_fields(buffer, offset, packet, parent, size_of_forced_user_logout_notification)

  return offset + size_of_forced_user_logout_notification
end

-- Display: Forced Logout Notification
eurex_cash_eti_t7_v6_0_display.forced_logout_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Forced Logout Notification
eurex_cash_eti_t7_v6_0_dissect.forced_logout_notification_fields = function(buffer, offset, packet, parent, size_of_forced_logout_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_cash_eti_t7_v6_0_dissect.notif_header_comp(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = eurex_cash_eti_t7_v6_0_dissect.var_text_len(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = eurex_cash_eti_t7_v6_0_dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Forced Logout Notification
eurex_cash_eti_t7_v6_0_dissect.forced_logout_notification = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_forced_logout_notification = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.forced_logout_notification then
    local range = buffer(offset, size_of_forced_logout_notification)
    local display = eurex_cash_eti_t7_v6_0_display.forced_logout_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.forced_logout_notification, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.forced_logout_notification_fields(buffer, offset, packet, parent, size_of_forced_logout_notification)

  return offset + size_of_forced_logout_notification
end

-- Display: Extended Deletion Report
eurex_cash_eti_t7_v6_0_display.extended_deletion_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Extended Deletion Report
eurex_cash_eti_t7_v6_0_dissect.extended_deletion_report_fields = function(buffer, offset, packet, parent, size_of_extended_deletion_report)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Trd Reg Ts Entry Time: 8 Byte Unsigned Fixed Width Integer
  index, trd_reg_ts_entry_time = eurex_cash_eti_t7_v6_0_dissect.trd_reg_ts_entry_time(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = eurex_cash_eti_t7_v6_0_dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Unsigned Fixed Width Integer
  index, stop_px = eurex_cash_eti_t7_v6_0_dissect.stop_px(buffer, index, packet, parent)

  -- Volume Discovery Price: 8 Byte Unsigned Fixed Width Integer
  index, volume_discovery_price = eurex_cash_eti_t7_v6_0_dissect.volume_discovery_price(buffer, index, packet, parent)

  -- Peg Offset Value Abs: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_abs = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_abs(buffer, index, packet, parent)

  -- Peg Offset Value Pct: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_pct = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_pct(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Signed Fixed Width Integer
  index, leaves_qty = eurex_cash_eti_t7_v6_0_dissect.leaves_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = eurex_cash_eti_t7_v6_0_dissect.cxl_qty(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Signed Fixed Width Integer
  index, display_qty = eurex_cash_eti_t7_v6_0_dissect.display_qty(buffer, index, packet, parent)

  -- Display Low Qty: 4 Byte Signed Fixed Width Integer
  index, display_low_qty = eurex_cash_eti_t7_v6_0_dissect.display_low_qty(buffer, index, packet, parent)

  -- Display High Qty: 4 Byte Signed Fixed Width Integer
  index, display_high_qty = eurex_cash_eti_t7_v6_0_dissect.display_high_qty(buffer, index, packet, parent)

  -- Expire Date: 4 Byte Unsigned Fixed Width Integer
  index, expire_date = eurex_cash_eti_t7_v6_0_dissect.expire_date(buffer, index, packet, parent)

  -- Match Inst Cross Id: 4 Byte Unsigned Fixed Width Integer
  index, match_inst_cross_id = eurex_cash_eti_t7_v6_0_dissect.match_inst_cross_id(buffer, index, packet, parent)

  -- Party Id Executing Unit: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_unit = eurex_cash_eti_t7_v6_0_dissect.party_id_executing_unit(buffer, index, packet, parent)

  -- Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.party_id_session_id(buffer, index, packet, parent)

  -- Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_executing_trader = eurex_cash_eti_t7_v6_0_dissect.party_id_executing_trader(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ord_type = eurex_cash_eti_t7_v6_0_dissect.ord_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_capacity = eurex_cash_eti_t7_v6_0_dissect.trading_capacity(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, time_in_force = eurex_cash_eti_t7_v6_0_dissect.time_in_force(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = eurex_cash_eti_t7_v6_0_dissect.exec_inst(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_session_sub_id = eurex_cash_eti_t7_v6_0_dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Appl Seq Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, appl_seq_indicator = eurex_cash_eti_t7_v6_0_dissect.appl_seq_indicator(buffer, index, packet, parent)

  -- Ex Destination Type: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, ex_destination_type = eurex_cash_eti_t7_v6_0_dissect.ex_destination_type(buffer, index, packet, parent)

  -- Free Text 1: 12 Byte Ascii String
  index, free_text_1 = eurex_cash_eti_t7_v6_0_dissect.free_text_1(buffer, index, packet, parent)

  -- Free Text 2: 12 Byte Ascii String
  index, free_text_2 = eurex_cash_eti_t7_v6_0_dissect.free_text_2(buffer, index, packet, parent)

  -- Free Text 4: 16 Byte Ascii String
  index, free_text_4 = eurex_cash_eti_t7_v6_0_dissect.free_text_4(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Triggered: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, triggered = eurex_cash_eti_t7_v6_0_dissect.triggered(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_cash_eti_t7_v6_0_dissect.pad_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Extended Deletion Report
eurex_cash_eti_t7_v6_0_dissect.extended_deletion_report = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_extended_deletion_report = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.extended_deletion_report then
    local range = buffer(offset, size_of_extended_deletion_report)
    local display = eurex_cash_eti_t7_v6_0_display.extended_deletion_report(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.extended_deletion_report, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.extended_deletion_report_fields(buffer, offset, packet, parent, size_of_extended_deletion_report)

  return offset + size_of_extended_deletion_report
end

-- Size: Reserved Offer Size
eurex_cash_eti_t7_v6_0_size_of.reserved_offer_size = 4

-- Display: Reserved Offer Size
eurex_cash_eti_t7_v6_0_display.reserved_offer_size = function(value)
  return "Reserved Offer Size: "..value
end

-- Dissect: Reserved Offer Size
eurex_cash_eti_t7_v6_0_dissect.reserved_offer_size = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.reserved_offer_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.reserved_offer_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.reserved_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Reserved Bid Size
eurex_cash_eti_t7_v6_0_size_of.reserved_bid_size = 4

-- Display: Reserved Bid Size
eurex_cash_eti_t7_v6_0_display.reserved_bid_size = function(value)
  return "Reserved Bid Size: "..value
end

-- Dissect: Reserved Bid Size
eurex_cash_eti_t7_v6_0_dissect.reserved_bid_size = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.reserved_bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.reserved_bid_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.reserved_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value Offer Px
eurex_cash_eti_t7_v6_0_size_of.peg_offset_value_offer_px = 8

-- Display: Peg Offset Value Offer Px
eurex_cash_eti_t7_v6_0_display.peg_offset_value_offer_px = function(value)
  return "Peg Offset Value Offer Px: "..value
end

-- Translate: Peg Offset Value Offer Px
translate.peg_offset_value_offer_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Peg Offset Value Offer Px
eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_offer_px = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.peg_offset_value_offer_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.peg_offset_value_offer_px(raw)
  local display = eurex_cash_eti_t7_v6_0_display.peg_offset_value_offer_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.peg_offset_value_offer_px, range, value, display)

  return offset + length, value
end

-- Size: Peg Offset Value Bid Px
eurex_cash_eti_t7_v6_0_size_of.peg_offset_value_bid_px = 8

-- Display: Peg Offset Value Bid Px
eurex_cash_eti_t7_v6_0_display.peg_offset_value_bid_px = function(value)
  return "Peg Offset Value Bid Px: "..value
end

-- Translate: Peg Offset Value Bid Px
translate.peg_offset_value_bid_px = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Peg Offset Value Bid Px
eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_bid_px = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.peg_offset_value_bid_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.peg_offset_value_bid_px(raw)
  local display = eurex_cash_eti_t7_v6_0_display.peg_offset_value_bid_px(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.peg_offset_value_bid_px, range, value, display)

  return offset + length, value
end

-- Display: Enter Best Quote Request
eurex_cash_eti_t7_v6_0_display.enter_best_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Enter Best Quote Request
eurex_cash_eti_t7_v6_0_dissect.enter_best_quote_request_fields = function(buffer, offset, packet, parent, size_of_enter_best_quote_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = eurex_cash_eti_t7_v6_0_dissect.quote_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, bid_px = eurex_cash_eti_t7_v6_0_dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, offer_px = eurex_cash_eti_t7_v6_0_dissect.offer_px(buffer, index, packet, parent)

  -- Peg Offset Value Bid Px: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_bid_px = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_bid_px(buffer, index, packet, parent)

  -- Peg Offset Value Offer Px: 8 Byte Unsigned Fixed Width Integer
  index, peg_offset_value_offer_px = eurex_cash_eti_t7_v6_0_dissect.peg_offset_value_offer_px(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Signed Fixed Width Integer
  index, bid_size = eurex_cash_eti_t7_v6_0_dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Signed Fixed Width Integer
  index, offer_size = eurex_cash_eti_t7_v6_0_dissect.offer_size(buffer, index, packet, parent)

  -- Reserved Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, reserved_bid_size = eurex_cash_eti_t7_v6_0_dissect.reserved_bid_size(buffer, index, packet, parent)

  -- Reserved Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, reserved_offer_size = eurex_cash_eti_t7_v6_0_dissect.reserved_offer_size(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Enrichment Rule Id: 2 Byte Unsigned Fixed Width Integer
  index, enrichment_rule_id = eurex_cash_eti_t7_v6_0_dissect.enrichment_rule_id(buffer, index, packet, parent)

  -- Order Attribute Liquidity Provision: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_attribute_liquidity_provision = eurex_cash_eti_t7_v6_0_dissect.order_attribute_liquidity_provision(buffer, index, packet, parent)

  -- Value Check Type Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, value_check_type_quantity = eurex_cash_eti_t7_v6_0_dissect.value_check_type_quantity(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Enter Best Quote Request
eurex_cash_eti_t7_v6_0_dissect.enter_best_quote_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_enter_best_quote_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.enter_best_quote_request then
    local range = buffer(offset, size_of_enter_best_quote_request)
    local display = eurex_cash_eti_t7_v6_0_display.enter_best_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.enter_best_quote_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.enter_best_quote_request_fields(buffer, offset, packet, parent, size_of_enter_best_quote_request)

  return offset + size_of_enter_best_quote_request
end

-- Display: Delete Order Single Request
eurex_cash_eti_t7_v6_0_display.delete_order_single_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Single Request
eurex_cash_eti_t7_v6_0_dissect.delete_order_single_request_fields = function(buffer, offset, packet, parent, size_of_delete_order_single_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Single Request
eurex_cash_eti_t7_v6_0_dissect.delete_order_single_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_order_single_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_order_single_request then
    local range = buffer(offset, size_of_delete_order_single_request)
    local display = eurex_cash_eti_t7_v6_0_display.delete_order_single_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_order_single_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_order_single_request_fields(buffer, offset, packet, parent, size_of_delete_order_single_request)

  return offset + size_of_delete_order_single_request
end

-- Display: Delete Order Response
eurex_cash_eti_t7_v6_0_display.delete_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Response
eurex_cash_eti_t7_v6_0_dissect.delete_order_response_fields = function(buffer, offset, packet, parent, size_of_delete_order_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = eurex_cash_eti_t7_v6_0_dissect.cxl_qty(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Response
eurex_cash_eti_t7_v6_0_dissect.delete_order_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_order_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_order_response then
    local range = buffer(offset, size_of_delete_order_response)
    local display = eurex_cash_eti_t7_v6_0_display.delete_order_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_order_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_order_response_fields(buffer, offset, packet, parent, size_of_delete_order_response)

  return offset + size_of_delete_order_response
end

-- Display: Delete Order Nr Response
eurex_cash_eti_t7_v6_0_display.delete_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Nr Response
eurex_cash_eti_t7_v6_0_dissect.delete_order_nr_response_fields = function(buffer, offset, packet, parent, size_of_delete_order_nr_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = eurex_cash_eti_t7_v6_0_dissect.cxl_qty(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Nr Response
eurex_cash_eti_t7_v6_0_dissect.delete_order_nr_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_order_nr_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_order_nr_response then
    local range = buffer(offset, size_of_delete_order_nr_response)
    local display = eurex_cash_eti_t7_v6_0_display.delete_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_order_nr_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_order_nr_response_fields(buffer, offset, packet, parent, size_of_delete_order_nr_response)

  return offset + size_of_delete_order_nr_response
end

-- Display: Delete Order Broadcast
eurex_cash_eti_t7_v6_0_display.delete_order_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Broadcast
eurex_cash_eti_t7_v6_0_dissect.delete_order_broadcast_fields = function(buffer, offset, packet, parent, size_of_delete_order_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = eurex_cash_eti_t7_v6_0_dissect.order_id(buffer, index, packet, parent)

  -- Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Order Id Sfx: 4 Byte Unsigned Fixed Width Integer
  index, order_id_sfx = eurex_cash_eti_t7_v6_0_dissect.order_id_sfx(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Signed Fixed Width Integer
  index, cum_qty = eurex_cash_eti_t7_v6_0_dissect.cum_qty(buffer, index, packet, parent)

  -- Cxl Qty: 4 Byte Signed Fixed Width Integer
  index, cxl_qty = eurex_cash_eti_t7_v6_0_dissect.cxl_qty(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- Exec Restatement Reason: 2 Byte Unsigned Fixed Width Integer Enum with 40 values
  index, exec_restatement_reason = eurex_cash_eti_t7_v6_0_dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String Enum with 6 values
  index, ord_status = eurex_cash_eti_t7_v6_0_dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String Enum with 8 values
  index, exec_type = eurex_cash_eti_t7_v6_0_dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Fix Cl Ord Id: 20 Byte Ascii String
  index, fix_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.fix_cl_ord_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Broadcast
eurex_cash_eti_t7_v6_0_dissect.delete_order_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_order_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_order_broadcast then
    local range = buffer(offset, size_of_delete_order_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.delete_order_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_order_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_order_broadcast_fields(buffer, offset, packet, parent, size_of_delete_order_broadcast)

  return offset + size_of_delete_order_broadcast
end

-- Display: Delete All Quote Response
eurex_cash_eti_t7_v6_0_display.delete_all_quote_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Quote Response
eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_response_fields = function(buffer, offset, packet, parent, size_of_delete_all_quote_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = eurex_cash_eti_t7_v6_0_dissect.mass_action_report_id(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = eurex_cash_eti_t7_v6_0_dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  -- Not Affected Securities Grp Comp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = eurex_cash_eti_t7_v6_0_dissect.not_affected_securities_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delete All Quote Response
eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_all_quote_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_all_quote_response then
    local range = buffer(offset, size_of_delete_all_quote_response)
    local display = eurex_cash_eti_t7_v6_0_display.delete_all_quote_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_all_quote_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_response_fields(buffer, offset, packet, parent, size_of_delete_all_quote_response)

  return offset + size_of_delete_all_quote_response
end

-- Display: Delete All Quote Request
eurex_cash_eti_t7_v6_0_display.delete_all_quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Quote Request
eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_request_fields = function(buffer, offset, packet, parent, size_of_delete_all_quote_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_cash_eti_t7_v6_0_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Quote Request
eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_all_quote_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_all_quote_request then
    local range = buffer(offset, size_of_delete_all_quote_request)
    local display = eurex_cash_eti_t7_v6_0_display.delete_all_quote_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_all_quote_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_request_fields(buffer, offset, packet, parent, size_of_delete_all_quote_request)

  return offset + size_of_delete_all_quote_request
end

-- Size: Target Party Id Desk Id
eurex_cash_eti_t7_v6_0_size_of.target_party_id_desk_id = 3

-- Display: Target Party Id Desk Id
eurex_cash_eti_t7_v6_0_display.target_party_id_desk_id = function(value)
  return "Target Party Id Desk Id: "..value
end

-- Dissect: Target Party Id Desk Id
eurex_cash_eti_t7_v6_0_dissect.target_party_id_desk_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.target_party_id_desk_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_cash_eti_t7_v6_0_display.target_party_id_desk_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.target_party_id_desk_id, range, value, display)

  return offset + length, value
end

-- Size: Target Party Id Executing Trader
eurex_cash_eti_t7_v6_0_size_of.target_party_id_executing_trader = 4

-- Display: Target Party Id Executing Trader
eurex_cash_eti_t7_v6_0_display.target_party_id_executing_trader = function(value)
  return "Target Party Id Executing Trader: "..value
end

-- Dissect: Target Party Id Executing Trader
eurex_cash_eti_t7_v6_0_dissect.target_party_id_executing_trader = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.target_party_id_executing_trader
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.target_party_id_executing_trader(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.target_party_id_executing_trader, range, value, display)

  return offset + length, value
end

-- Display: Delete All Quote Broadcast
eurex_cash_eti_t7_v6_0_display.delete_all_quote_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Quote Broadcast
eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_broadcast_fields = function(buffer, offset, packet, parent, size_of_delete_all_quote_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = eurex_cash_eti_t7_v6_0_dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_executing_trader = eurex_cash_eti_t7_v6_0_dissect.target_party_id_executing_trader(buffer, index, packet, parent)

  -- No Not Affected Securities: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_securities = eurex_cash_eti_t7_v6_0_dissect.no_not_affected_securities(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, mass_action_reason = eurex_cash_eti_t7_v6_0_dissect.mass_action_reason(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Target Party Id Desk Id: 3 Byte Ascii String
  index, target_party_id_desk_id = eurex_cash_eti_t7_v6_0_dissect.target_party_id_desk_id(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_cash_eti_t7_v6_0_dissect.pad_1(buffer, index, packet, parent)

  -- Not Affected Securities Grp Comp: Struct of 1 fields
  for i = 1, no_not_affected_securities do
    index = eurex_cash_eti_t7_v6_0_dissect.not_affected_securities_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delete All Quote Broadcast
eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_all_quote_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_all_quote_broadcast then
    local range = buffer(offset, size_of_delete_all_quote_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.delete_all_quote_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_all_quote_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_broadcast_fields(buffer, offset, packet, parent, size_of_delete_all_quote_broadcast)

  return offset + size_of_delete_all_quote_broadcast
end

-- Size: Affected Orig Cl Ord Id
eurex_cash_eti_t7_v6_0_size_of.affected_orig_cl_ord_id = 8

-- Display: Affected Orig Cl Ord Id
eurex_cash_eti_t7_v6_0_display.affected_orig_cl_ord_id = function(value)
  return "Affected Orig Cl Ord Id: "..value
end

-- Dissect: Affected Orig Cl Ord Id
eurex_cash_eti_t7_v6_0_dissect.affected_orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.affected_orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.affected_orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.affected_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Affected Order Id
eurex_cash_eti_t7_v6_0_size_of.affected_order_id = 8

-- Display: Affected Order Id
eurex_cash_eti_t7_v6_0_display.affected_order_id = function(value)
  return "Affected Order Id: "..value
end

-- Dissect: Affected Order Id
eurex_cash_eti_t7_v6_0_dissect.affected_order_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.affected_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.affected_order_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.affected_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Affected Ord Grp Comp
eurex_cash_eti_t7_v6_0_size_of.affected_ord_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.affected_order_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.affected_orig_cl_ord_id

  return index
end

-- Display: Affected Ord Grp Comp
eurex_cash_eti_t7_v6_0_display.affected_ord_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Affected Ord Grp Comp
eurex_cash_eti_t7_v6_0_dissect.affected_ord_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Affected Order Id: 8 Byte Unsigned Fixed Width Integer
  index, affected_order_id = eurex_cash_eti_t7_v6_0_dissect.affected_order_id(buffer, index, packet, parent)

  -- Affected Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, affected_orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.affected_orig_cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Affected Ord Grp Comp
eurex_cash_eti_t7_v6_0_dissect.affected_ord_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.affected_ord_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.affected_ord_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.affected_ord_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.affected_ord_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.affected_ord_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Not Aff Orig Cl Ord Id
eurex_cash_eti_t7_v6_0_size_of.not_aff_orig_cl_ord_id = 8

-- Display: Not Aff Orig Cl Ord Id
eurex_cash_eti_t7_v6_0_display.not_aff_orig_cl_ord_id = function(value)
  return "Not Aff Orig Cl Ord Id: "..value
end

-- Dissect: Not Aff Orig Cl Ord Id
eurex_cash_eti_t7_v6_0_dissect.not_aff_orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.not_aff_orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.not_aff_orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.not_aff_orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Not Affected Order Id
eurex_cash_eti_t7_v6_0_size_of.not_affected_order_id = 8

-- Display: Not Affected Order Id
eurex_cash_eti_t7_v6_0_display.not_affected_order_id = function(value)
  return "Not Affected Order Id: "..value
end

-- Dissect: Not Affected Order Id
eurex_cash_eti_t7_v6_0_dissect.not_affected_order_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.not_affected_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_cash_eti_t7_v6_0_display.not_affected_order_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.not_affected_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Not Affected Orders Grp Comp
eurex_cash_eti_t7_v6_0_size_of.not_affected_orders_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.not_affected_order_id

  index = index + eurex_cash_eti_t7_v6_0_size_of.not_aff_orig_cl_ord_id

  return index
end

-- Display: Not Affected Orders Grp Comp
eurex_cash_eti_t7_v6_0_display.not_affected_orders_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Affected Orders Grp Comp
eurex_cash_eti_t7_v6_0_dissect.not_affected_orders_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Not Affected Order Id: 8 Byte Unsigned Fixed Width Integer
  index, not_affected_order_id = eurex_cash_eti_t7_v6_0_dissect.not_affected_order_id(buffer, index, packet, parent)

  -- Not Aff Orig Cl Ord Id: 8 Byte Unsigned Fixed Width Integer
  index, not_aff_orig_cl_ord_id = eurex_cash_eti_t7_v6_0_dissect.not_aff_orig_cl_ord_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Affected Orders Grp Comp
eurex_cash_eti_t7_v6_0_dissect.not_affected_orders_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_affected_orders_grp_comp then
    local length = eurex_cash_eti_t7_v6_0_size_of.not_affected_orders_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.not_affected_orders_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.not_affected_orders_grp_comp, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.not_affected_orders_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Affected Orders
eurex_cash_eti_t7_v6_0_size_of.no_affected_orders = 2

-- Display: No Affected Orders
eurex_cash_eti_t7_v6_0_display.no_affected_orders = function(value)
  return "No Affected Orders: "..value
end

-- Dissect: No Affected Orders
eurex_cash_eti_t7_v6_0_dissect.no_affected_orders = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.no_affected_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.no_affected_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.no_affected_orders, range, value, display)

  return offset + length, value
end

-- Size: No Not Affected Orders
eurex_cash_eti_t7_v6_0_size_of.no_not_affected_orders = 2

-- Display: No Not Affected Orders
eurex_cash_eti_t7_v6_0_display.no_not_affected_orders = function(value)
  return "No Not Affected Orders: "..value
end

-- Dissect: No Not Affected Orders
eurex_cash_eti_t7_v6_0_dissect.no_not_affected_orders = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.no_not_affected_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.no_not_affected_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.no_not_affected_orders, range, value, display)

  return offset + length, value
end

-- Display: Delete All Order Response
eurex_cash_eti_t7_v6_0_display.delete_all_order_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Response
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_response_fields = function(buffer, offset, packet, parent, size_of_delete_all_order_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Response Header Me Comp: Struct of 11 fields
  index, response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.response_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = eurex_cash_eti_t7_v6_0_dissect.mass_action_report_id(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_orders = eurex_cash_eti_t7_v6_0_dissect.no_not_affected_orders(buffer, index, packet, parent)

  -- No Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_affected_orders = eurex_cash_eti_t7_v6_0_dissect.no_affected_orders(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  -- Not Affected Orders Grp Comp: Struct of 2 fields
  for i = 1, no_not_affected_orders do
    index = eurex_cash_eti_t7_v6_0_dissect.not_affected_orders_grp_comp(buffer, index, packet, parent)
  end

  -- Affected Ord Grp Comp: Struct of 2 fields
  for i = 1, no_affected_orders do
    index = eurex_cash_eti_t7_v6_0_dissect.affected_ord_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delete All Order Response
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_all_order_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_response then
    local range = buffer(offset, size_of_delete_all_order_response)
    local display = eurex_cash_eti_t7_v6_0_display.delete_all_order_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_all_order_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_all_order_response_fields(buffer, offset, packet, parent, size_of_delete_all_order_response)

  return offset + size_of_delete_all_order_response
end

-- Display: Delete All Order Request
eurex_cash_eti_t7_v6_0_display.delete_all_order_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Request
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_request_fields = function(buffer, offset, packet, parent, size_of_delete_all_order_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = eurex_cash_eti_t7_v6_0_dissect.price(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker: 8 Byte Unsigned Fixed Width Integer
  index, party_id_investment_decision_maker = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker(buffer, index, packet, parent)

  -- Executing Trader: 8 Byte Unsigned Fixed Width Integer
  index, executing_trader = eurex_cash_eti_t7_v6_0_dissect.executing_trader(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_executing_trader = eurex_cash_eti_t7_v6_0_dissect.target_party_id_executing_trader(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Party Id Investment Decision Maker Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_investment_decision_maker_qualifier = eurex_cash_eti_t7_v6_0_dissect.party_id_investment_decision_maker_qualifier(buffer, index, packet, parent)

  -- Executing Trader Qualifier: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, executing_trader_qualifier = eurex_cash_eti_t7_v6_0_dissect.executing_trader_qualifier(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_cash_eti_t7_v6_0_dissect.pad_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Request
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_all_order_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_request then
    local range = buffer(offset, size_of_delete_all_order_request)
    local display = eurex_cash_eti_t7_v6_0_display.delete_all_order_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_all_order_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_all_order_request_fields(buffer, offset, packet, parent, size_of_delete_all_order_request)

  return offset + size_of_delete_all_order_request
end

-- Display: Delete All Order Quote Event Broadcast
eurex_cash_eti_t7_v6_0_display.delete_all_order_quote_event_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Quote Event Broadcast
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_quote_event_broadcast_fields = function(buffer, offset, packet, parent, size_of_delete_all_order_quote_event_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = eurex_cash_eti_t7_v6_0_dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, mass_action_reason = eurex_cash_eti_t7_v6_0_dissect.mass_action_reason(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = eurex_cash_eti_t7_v6_0_dissect.exec_inst(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Quote Event Broadcast
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_quote_event_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_all_order_quote_event_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_quote_event_broadcast then
    local range = buffer(offset, size_of_delete_all_order_quote_event_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.delete_all_order_quote_event_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_all_order_quote_event_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_all_order_quote_event_broadcast_fields(buffer, offset, packet, parent, size_of_delete_all_order_quote_event_broadcast)

  return offset + size_of_delete_all_order_quote_event_broadcast
end

-- Display: Delete All Order Nr Response
eurex_cash_eti_t7_v6_0_display.delete_all_order_nr_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Nr Response
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_nr_response_fields = function(buffer, offset, packet, parent, size_of_delete_all_order_nr_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = eurex_cash_eti_t7_v6_0_dissect.mass_action_report_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete All Order Nr Response
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_nr_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_all_order_nr_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_nr_response then
    local range = buffer(offset, size_of_delete_all_order_nr_response)
    local display = eurex_cash_eti_t7_v6_0_display.delete_all_order_nr_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_all_order_nr_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_all_order_nr_response_fields(buffer, offset, packet, parent, size_of_delete_all_order_nr_response)

  return offset + size_of_delete_all_order_nr_response
end

-- Display: Delete All Order Broadcast
eurex_cash_eti_t7_v6_0_display.delete_all_order_broadcast = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete All Order Broadcast
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_broadcast_fields = function(buffer, offset, packet, parent, size_of_delete_all_order_broadcast)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index, mass_action_report_id = eurex_cash_eti_t7_v6_0_dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = eurex_cash_eti_t7_v6_0_dissect.price(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Target Party Id Session Id: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_session_id = eurex_cash_eti_t7_v6_0_dissect.target_party_id_session_id(buffer, index, packet, parent)

  -- Target Party Id Executing Trader: 4 Byte Unsigned Fixed Width Integer
  index, target_party_id_executing_trader = eurex_cash_eti_t7_v6_0_dissect.target_party_id_executing_trader(buffer, index, packet, parent)

  -- Party Id Entering Trader: 4 Byte Unsigned Fixed Width Integer
  index, party_id_entering_trader = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_trader(buffer, index, packet, parent)

  -- No Not Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_not_affected_orders = eurex_cash_eti_t7_v6_0_dissect.no_not_affected_orders(buffer, index, packet, parent)

  -- No Affected Orders: 2 Byte Unsigned Fixed Width Integer
  index, no_affected_orders = eurex_cash_eti_t7_v6_0_dissect.no_affected_orders(buffer, index, packet, parent)

  -- Party Id Entering Firm: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, party_id_entering_firm = eurex_cash_eti_t7_v6_0_dissect.party_id_entering_firm(buffer, index, packet, parent)

  -- Mass Action Reason: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, mass_action_reason = eurex_cash_eti_t7_v6_0_dissect.mass_action_reason(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, exec_inst = eurex_cash_eti_t7_v6_0_dissect.exec_inst(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = eurex_cash_eti_t7_v6_0_dissect.side(buffer, index, packet, parent)

  -- Not Affected Orders Grp Comp: Struct of 2 fields
  for i = 1, no_not_affected_orders do
    index = eurex_cash_eti_t7_v6_0_dissect.not_affected_orders_grp_comp(buffer, index, packet, parent)
  end

  -- Affected Ord Grp Comp: Struct of 2 fields
  for i = 1, no_affected_orders do
    index = eurex_cash_eti_t7_v6_0_dissect.affected_ord_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Delete All Order Broadcast
eurex_cash_eti_t7_v6_0_dissect.delete_all_order_broadcast = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_delete_all_order_broadcast = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.delete_all_order_broadcast then
    local range = buffer(offset, size_of_delete_all_order_broadcast)
    local display = eurex_cash_eti_t7_v6_0_display.delete_all_order_broadcast(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.delete_all_order_broadcast, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.delete_all_order_broadcast_fields(buffer, offset, packet, parent, size_of_delete_all_order_broadcast)

  return offset + size_of_delete_all_order_broadcast
end

-- Display: Cross Request Response
eurex_cash_eti_t7_v6_0_display.cross_request_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Request Response
eurex_cash_eti_t7_v6_0_dissect.cross_request_response_fields = function(buffer, offset, packet, parent, size_of_cross_request_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request Response
eurex_cash_eti_t7_v6_0_dissect.cross_request_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_cross_request_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.cross_request_response then
    local range = buffer(offset, size_of_cross_request_response)
    local display = eurex_cash_eti_t7_v6_0_display.cross_request_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.cross_request_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.cross_request_response_fields(buffer, offset, packet, parent, size_of_cross_request_response)

  return offset + size_of_cross_request_response
end

-- Display: Cross Request
eurex_cash_eti_t7_v6_0_display.cross_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Request
eurex_cash_eti_t7_v6_0_dissect.cross_request_fields = function(buffer, offset, packet, parent, size_of_cross_request)
  local index = offset

  -- Network Msg Id: 8 Byte Ascii String
  index, network_msg_id = eurex_cash_eti_t7_v6_0_dissect.network_msg_id(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Request Header Comp: Struct of 2 fields
  index, request_header_comp = eurex_cash_eti_t7_v6_0_dissect.request_header_comp(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Signed Fixed Width Integer
  index, order_qty = eurex_cash_eti_t7_v6_0_dissect.order_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request
eurex_cash_eti_t7_v6_0_dissect.cross_request = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_cross_request = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.cross_request then
    local range = buffer(offset, size_of_cross_request)
    local display = eurex_cash_eti_t7_v6_0_display.cross_request(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.cross_request, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.cross_request_fields(buffer, offset, packet, parent, size_of_cross_request)

  return offset + size_of_cross_request
end

-- Size: Appl Id Status
eurex_cash_eti_t7_v6_0_size_of.appl_id_status = 4

-- Display: Appl Id Status
eurex_cash_eti_t7_v6_0_display.appl_id_status = function(value)
  if value == 105 then
    return "Appl Id Status: Outboundconversionerror (105)"
  end

  return "Appl Id Status: Unknown("..value..")"
end

-- Dissect: Appl Id Status
eurex_cash_eti_t7_v6_0_dissect.appl_id_status = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.appl_id_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.appl_id_status(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.appl_id_status, range, value, display)

  return offset + length, value
end

-- Display: Broadcast Error Notification
eurex_cash_eti_t7_v6_0_display.broadcast_error_notification = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Broadcast Error Notification
eurex_cash_eti_t7_v6_0_dissect.broadcast_error_notification_fields = function(buffer, offset, packet, parent, size_of_broadcast_error_notification)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Notif Header Comp: Struct of 1 fields
  index, notif_header_comp = eurex_cash_eti_t7_v6_0_dissect.notif_header_comp(buffer, index, packet, parent)

  -- Appl Id Status: 4 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, appl_id_status = eurex_cash_eti_t7_v6_0_dissect.appl_id_status(buffer, index, packet, parent)

  -- Ref Appl Sub Id: 4 Byte Unsigned Fixed Width Integer
  index, ref_appl_sub_id = eurex_cash_eti_t7_v6_0_dissect.ref_appl_sub_id(buffer, index, packet, parent)

  -- Var Text Len: 2 Byte Unsigned Fixed Width Integer
  index, var_text_len = eurex_cash_eti_t7_v6_0_dissect.var_text_len(buffer, index, packet, parent)

  -- Ref Appl Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, ref_appl_id = eurex_cash_eti_t7_v6_0_dissect.ref_appl_id(buffer, index, packet, parent)

  -- Session Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, session_status = eurex_cash_eti_t7_v6_0_dissect.session_status(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  -- Var Text: 2000 Byte Ascii String
  index = eurex_cash_eti_t7_v6_0_dissect.var_text(buffer, index, packet, parent, var_text_len)

  return index
end

-- Dissect: Broadcast Error Notification
eurex_cash_eti_t7_v6_0_dissect.broadcast_error_notification = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_broadcast_error_notification = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.broadcast_error_notification then
    local range = buffer(offset, size_of_broadcast_error_notification)
    local display = eurex_cash_eti_t7_v6_0_display.broadcast_error_notification(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.broadcast_error_notification, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.broadcast_error_notification_fields(buffer, offset, packet, parent, size_of_broadcast_error_notification)

  return offset + size_of_broadcast_error_notification
end

-- Display: Best Quote Response
eurex_cash_eti_t7_v6_0_display.best_quote_response = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Quote Response
eurex_cash_eti_t7_v6_0_dissect.best_quote_response_fields = function(buffer, offset, packet, parent, size_of_best_quote_response)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Nr Response Header Me Comp: Struct of 9 fields
  index, nr_response_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.nr_response_header_me_comp(buffer, index, packet, parent)

  -- Quote Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_id = eurex_cash_eti_t7_v6_0_dissect.quote_id(buffer, index, packet, parent)

  -- Quote Response Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_response_id = eurex_cash_eti_t7_v6_0_dissect.quote_response_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Bid Cxl Size: 4 Byte Signed Fixed Width Integer
  index, bid_cxl_size = eurex_cash_eti_t7_v6_0_dissect.bid_cxl_size(buffer, index, packet, parent)

  -- Offer Cxl Size: 4 Byte Signed Fixed Width Integer
  index, offer_cxl_size = eurex_cash_eti_t7_v6_0_dissect.offer_cxl_size(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_cash_eti_t7_v6_0_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Quote Response
eurex_cash_eti_t7_v6_0_dissect.best_quote_response = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_best_quote_response = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.best_quote_response then
    local range = buffer(offset, size_of_best_quote_response)
    local display = eurex_cash_eti_t7_v6_0_display.best_quote_response(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.best_quote_response, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.best_quote_response_fields(buffer, offset, packet, parent, size_of_best_quote_response)

  return offset + size_of_best_quote_response
end

-- Size: Reserved Size
eurex_cash_eti_t7_v6_0_size_of.reserved_size = 4

-- Display: Reserved Size
eurex_cash_eti_t7_v6_0_display.reserved_size = function(value)
  return "Reserved Size: "..value
end

-- Dissect: Reserved Size
eurex_cash_eti_t7_v6_0_dissect.reserved_size = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.reserved_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.reserved_size(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.reserved_size, range, value, display)

  return offset + length, value
end

-- Display: Best Quote Execution Report
eurex_cash_eti_t7_v6_0_display.best_quote_execution_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Quote Execution Report
eurex_cash_eti_t7_v6_0_dissect.best_quote_execution_report_fields = function(buffer, offset, packet, parent, size_of_best_quote_execution_report)
  local index = offset

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  -- Rbc Header Me Comp: Struct of 10 fields
  index, rbc_header_me_comp = eurex_cash_eti_t7_v6_0_dissect.rbc_header_me_comp(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = eurex_cash_eti_t7_v6_0_dissect.exec_id(buffer, index, packet, parent)

  -- Quote Msg Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_msg_id = eurex_cash_eti_t7_v6_0_dissect.quote_msg_id(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer
  index, security_id = eurex_cash_eti_t7_v6_0_dissect.security_id(buffer, index, packet, parent)

  -- Quote Event Px: 8 Byte Unsigned Fixed Width Integer
  index, quote_event_px = eurex_cash_eti_t7_v6_0_dissect.quote_event_px(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer
  index, market_segment_id = eurex_cash_eti_t7_v6_0_dissect.market_segment_id(buffer, index, packet, parent)

  -- Quote Event Match Id: 4 Byte Unsigned Fixed Width Integer
  index, quote_event_match_id = eurex_cash_eti_t7_v6_0_dissect.quote_event_match_id(buffer, index, packet, parent)

  -- Quote Event Exec Id: 4 Byte Signed Fixed Width Integer
  index, quote_event_exec_id = eurex_cash_eti_t7_v6_0_dissect.quote_event_exec_id(buffer, index, packet, parent)

  -- Quote Event Qty: 4 Byte Signed Fixed Width Integer
  index, quote_event_qty = eurex_cash_eti_t7_v6_0_dissect.quote_event_qty(buffer, index, packet, parent)

  -- Reserved Size: 4 Byte Unsigned Fixed Width Integer
  index, reserved_size = eurex_cash_eti_t7_v6_0_dissect.reserved_size(buffer, index, packet, parent)

  -- Quote Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, quote_event_type = eurex_cash_eti_t7_v6_0_dissect.quote_event_type(buffer, index, packet, parent)

  -- Quote Event Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, quote_event_side = eurex_cash_eti_t7_v6_0_dissect.quote_event_side(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_cash_eti_t7_v6_0_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Quote Execution Report
eurex_cash_eti_t7_v6_0_dissect.best_quote_execution_report = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Body Len
  local body_len = buffer(offset - 6, 4):le_uint()

  -- Parse runtime struct size
  local size_of_best_quote_execution_report = body_len - 6

  -- Optionally add struct element to protocol tree
  if show.best_quote_execution_report then
    local range = buffer(offset, size_of_best_quote_execution_report)
    local display = eurex_cash_eti_t7_v6_0_display.best_quote_execution_report(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.best_quote_execution_report, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.best_quote_execution_report_fields(buffer, offset, packet, parent, size_of_best_quote_execution_report)

  return offset + size_of_best_quote_execution_report
end

-- Calculate runtime size of: Payload
eurex_cash_eti_t7_v6_0_size_of.payload = function(buffer, offset, template_id)
  -- Size of Best Quote Execution Report
  if template_id == 10414 then
    return eurex_cash_eti_t7_v6_0_size_of.best_quote_execution_report(buffer, offset)
  end
  -- Size of Best Quote Response
  if template_id == 10413 then
    return eurex_cash_eti_t7_v6_0_size_of.best_quote_response(buffer, offset)
  end
  -- Size of Broadcast Error Notification
  if template_id == 10032 then
    return eurex_cash_eti_t7_v6_0_size_of.broadcast_error_notification(buffer, offset)
  end
  -- Size of Cross Request
  if template_id == 10118 then
    return eurex_cash_eti_t7_v6_0_size_of.cross_request(buffer, offset)
  end
  -- Size of Cross Request Response
  if template_id == 10119 then
    return eurex_cash_eti_t7_v6_0_size_of.cross_request_response(buffer, offset)
  end
  -- Size of Delete All Order Broadcast
  if template_id == 10122 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_all_order_broadcast(buffer, offset)
  end
  -- Size of Delete All Order Nr Response
  if template_id == 10124 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_all_order_nr_response(buffer, offset)
  end
  -- Size of Delete All Order Quote Event Broadcast
  if template_id == 10308 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_all_order_quote_event_broadcast(buffer, offset)
  end
  -- Size of Delete All Order Request
  if template_id == 10120 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_all_order_request(buffer, offset)
  end
  -- Size of Delete All Order Response
  if template_id == 10121 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_all_order_response(buffer, offset)
  end
  -- Size of Delete All Quote Broadcast
  if template_id == 10410 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_all_quote_broadcast(buffer, offset)
  end
  -- Size of Delete All Quote Request
  if template_id == 10408 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_all_quote_request(buffer, offset)
  end
  -- Size of Delete All Quote Response
  if template_id == 10409 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_all_quote_response(buffer, offset)
  end
  -- Size of Delete Order Broadcast
  if template_id == 10112 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_order_broadcast(buffer, offset)
  end
  -- Size of Delete Order Nr Response
  if template_id == 10111 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_order_nr_response(buffer, offset)
  end
  -- Size of Delete Order Response
  if template_id == 10110 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_order_response(buffer, offset)
  end
  -- Size of Delete Order Single Request
  if template_id == 10109 then
    return eurex_cash_eti_t7_v6_0_size_of.delete_order_single_request(buffer, offset)
  end
  -- Size of Enter Best Quote Request
  if template_id == 10412 then
    return eurex_cash_eti_t7_v6_0_size_of.enter_best_quote_request(buffer, offset)
  end
  -- Size of Extended Deletion Report
  if template_id == 10128 then
    return eurex_cash_eti_t7_v6_0_size_of.extended_deletion_report(buffer, offset)
  end
  -- Size of Forced Logout Notification
  if template_id == 10012 then
    return eurex_cash_eti_t7_v6_0_size_of.forced_logout_notification(buffer, offset)
  end
  -- Size of Forced User Logout Notification
  if template_id == 10043 then
    return eurex_cash_eti_t7_v6_0_size_of.forced_user_logout_notification(buffer, offset)
  end
  -- Size of Gateway Request
  if template_id == 10020 then
    return eurex_cash_eti_t7_v6_0_size_of.gateway_request(buffer, offset)
  end
  -- Size of Gateway Response
  if template_id == 10021 then
    return eurex_cash_eti_t7_v6_0_size_of.gateway_response(buffer, offset)
  end
  -- Size of Heartbeat
  if template_id == 10011 then
    return eurex_cash_eti_t7_v6_0_size_of.heartbeat(buffer, offset)
  end
  -- Size of Heartbeat Notification
  if template_id == 10023 then
    return eurex_cash_eti_t7_v6_0_size_of.heartbeat_notification(buffer, offset)
  end
  -- Size of Inquire Enrichment Rule Id List Request
  if template_id == 10040 then
    return eurex_cash_eti_t7_v6_0_size_of.inquire_enrichment_rule_id_list_request(buffer, offset)
  end
  -- Size of Inquire Enrichment Rule Id List Response
  if template_id == 10041 then
    return eurex_cash_eti_t7_v6_0_size_of.inquire_enrichment_rule_id_list_response(buffer, offset)
  end
  -- Size of Inquire Session List Request
  if template_id == 10035 then
    return eurex_cash_eti_t7_v6_0_size_of.inquire_session_list_request(buffer, offset)
  end
  -- Size of Inquire Session List Response
  if template_id == 10036 then
    return eurex_cash_eti_t7_v6_0_size_of.inquire_session_list_response(buffer, offset)
  end
  -- Size of Inquire User Request
  if template_id == 10038 then
    return eurex_cash_eti_t7_v6_0_size_of.inquire_user_request(buffer, offset)
  end
  -- Size of Inquire User Response
  if template_id == 10039 then
    return eurex_cash_eti_t7_v6_0_size_of.inquire_user_response(buffer, offset)
  end
  -- Size of Legal Notification Broadcast
  if template_id == 10037 then
    return eurex_cash_eti_t7_v6_0_size_of.legal_notification_broadcast(buffer, offset)
  end
  -- Size of Logon Request
  if template_id == 10000 then
    return eurex_cash_eti_t7_v6_0_size_of.logon_request(buffer, offset)
  end
  -- Size of Logon Response
  if template_id == 10001 then
    return eurex_cash_eti_t7_v6_0_size_of.logon_response(buffer, offset)
  end
  -- Size of Logout Request
  if template_id == 10002 then
    return eurex_cash_eti_t7_v6_0_size_of.logout_request(buffer, offset)
  end
  -- Size of Logout Response
  if template_id == 10003 then
    return eurex_cash_eti_t7_v6_0_size_of.logout_response(buffer, offset)
  end
  -- Size of Mass Quote Request
  if template_id == 10405 then
    return eurex_cash_eti_t7_v6_0_size_of.mass_quote_request(buffer, offset)
  end
  -- Size of Mass Quote Response
  if template_id == 10406 then
    return eurex_cash_eti_t7_v6_0_size_of.mass_quote_response(buffer, offset)
  end
  -- Size of Modify Order Nr Response
  if template_id == 10108 then
    return eurex_cash_eti_t7_v6_0_size_of.modify_order_nr_response(buffer, offset)
  end
  -- Size of Modify Order Response
  if template_id == 10107 then
    return eurex_cash_eti_t7_v6_0_size_of.modify_order_response(buffer, offset)
  end
  -- Size of Modify Order Single Request
  if template_id == 10106 then
    return eurex_cash_eti_t7_v6_0_size_of.modify_order_single_request(buffer, offset)
  end
  -- Size of Modify Order Single Short Request
  if template_id == 10126 then
    return eurex_cash_eti_t7_v6_0_size_of.modify_order_single_short_request(buffer, offset)
  end
  -- Size of New Order Nr Response
  if template_id == 10102 then
    return eurex_cash_eti_t7_v6_0_size_of.new_order_nr_response(buffer, offset)
  end
  -- Size of New Order Response
  if template_id == 10101 then
    return eurex_cash_eti_t7_v6_0_size_of.new_order_response(buffer, offset)
  end
  -- Size of New Order Single Request
  if template_id == 10100 then
    return eurex_cash_eti_t7_v6_0_size_of.new_order_single_request(buffer, offset)
  end
  -- Size of New Order Single Short Request
  if template_id == 10125 then
    return eurex_cash_eti_t7_v6_0_size_of.new_order_single_short_request(buffer, offset)
  end
  -- Size of News Broadcast
  if template_id == 10031 then
    return eurex_cash_eti_t7_v6_0_size_of.news_broadcast(buffer, offset)
  end
  -- Size of Order Exec Notification
  if template_id == 10104 then
    return eurex_cash_eti_t7_v6_0_size_of.order_exec_notification(buffer, offset)
  end
  -- Size of Order Exec Report Broadcast
  if template_id == 10117 then
    return eurex_cash_eti_t7_v6_0_size_of.order_exec_report_broadcast(buffer, offset)
  end
  -- Size of Order Exec Response
  if template_id == 10103 then
    return eurex_cash_eti_t7_v6_0_size_of.order_exec_response(buffer, offset)
  end
  -- Size of Party Action Report
  if template_id == 10042 then
    return eurex_cash_eti_t7_v6_0_size_of.party_action_report(buffer, offset)
  end
  -- Size of Party Entitlements Update Report
  if template_id == 10034 then
    return eurex_cash_eti_t7_v6_0_size_of.party_entitlements_update_report(buffer, offset)
  end
  -- Size of Quote Activation Notification
  if template_id == 10411 then
    return eurex_cash_eti_t7_v6_0_size_of.quote_activation_notification(buffer, offset)
  end
  -- Size of Quote Activation Request
  if template_id == 10403 then
    return eurex_cash_eti_t7_v6_0_size_of.quote_activation_request(buffer, offset)
  end
  -- Size of Quote Activation Response
  if template_id == 10404 then
    return eurex_cash_eti_t7_v6_0_size_of.quote_activation_response(buffer, offset)
  end
  -- Size of Quote Execution Report
  if template_id == 10407 then
    return eurex_cash_eti_t7_v6_0_size_of.quote_execution_report(buffer, offset)
  end
  -- Size of Rfq Broadcast
  if template_id == 10415 then
    return eurex_cash_eti_t7_v6_0_size_of.rfq_broadcast(buffer, offset)
  end
  -- Size of Rfq Request
  if template_id == 10401 then
    return eurex_cash_eti_t7_v6_0_size_of.rfq_request(buffer, offset)
  end
  -- Size of Rfq Response
  if template_id == 10402 then
    return eurex_cash_eti_t7_v6_0_size_of.rfq_response(buffer, offset)
  end
  -- Size of Reject
  if template_id == 10010 then
    return eurex_cash_eti_t7_v6_0_size_of.reject(buffer, offset)
  end
  -- Size of Retransmit Me Message Request
  if template_id == 10026 then
    return eurex_cash_eti_t7_v6_0_size_of.retransmit_me_message_request(buffer, offset)
  end
  -- Size of Retransmit Me Message Response
  if template_id == 10027 then
    return eurex_cash_eti_t7_v6_0_size_of.retransmit_me_message_response(buffer, offset)
  end
  -- Size of Retransmit Request
  if template_id == 10008 then
    return eurex_cash_eti_t7_v6_0_size_of.retransmit_request(buffer, offset)
  end
  -- Size of Retransmit Response
  if template_id == 10009 then
    return eurex_cash_eti_t7_v6_0_size_of.retransmit_response(buffer, offset)
  end
  -- Size of Service Availability Broadcast
  if template_id == 10030 then
    return eurex_cash_eti_t7_v6_0_size_of.service_availability_broadcast(buffer, offset)
  end
  -- Size of Subscribe Request
  if template_id == 10025 then
    return eurex_cash_eti_t7_v6_0_size_of.subscribe_request(buffer, offset)
  end
  -- Size of Subscribe Response
  if template_id == 10005 then
    return eurex_cash_eti_t7_v6_0_size_of.subscribe_response(buffer, offset)
  end
  -- Size of Tm Trading Session Status Broadcast
  if template_id == 10501 then
    return eurex_cash_eti_t7_v6_0_size_of.tm_trading_session_status_broadcast(buffer, offset)
  end
  -- Size of Throttle Update Notification
  if template_id == 10028 then
    return eurex_cash_eti_t7_v6_0_size_of.throttle_update_notification(buffer, offset)
  end
  -- Size of Trade Broadcast
  if template_id == 10500 then
    return eurex_cash_eti_t7_v6_0_size_of.trade_broadcast(buffer, offset)
  end
  -- Size of Trading Session Status Broadcast
  if template_id == 10307 then
    return eurex_cash_eti_t7_v6_0_size_of.trading_session_status_broadcast(buffer, offset)
  end
  -- Size of Trailing Stop Update Notification
  if template_id == 10127 then
    return eurex_cash_eti_t7_v6_0_size_of.trailing_stop_update_notification(buffer, offset)
  end
  -- Size of Unsubscribe Request
  if template_id == 10006 then
    return eurex_cash_eti_t7_v6_0_size_of.unsubscribe_request(buffer, offset)
  end
  -- Size of Unsubscribe Response
  if template_id == 10007 then
    return eurex_cash_eti_t7_v6_0_size_of.unsubscribe_response(buffer, offset)
  end
  -- Size of User Login Request
  if template_id == 10018 then
    return eurex_cash_eti_t7_v6_0_size_of.user_login_request(buffer, offset)
  end
  -- Size of User Login Response
  if template_id == 10019 then
    return eurex_cash_eti_t7_v6_0_size_of.user_login_response(buffer, offset)
  end
  -- Size of User Logout Request
  if template_id == 10029 then
    return eurex_cash_eti_t7_v6_0_size_of.user_logout_request(buffer, offset)
  end
  -- Size of User Logout Response
  if template_id == 10024 then
    return eurex_cash_eti_t7_v6_0_size_of.user_logout_response(buffer, offset)
  end

  return 0
end

-- Display: Payload
eurex_cash_eti_t7_v6_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
eurex_cash_eti_t7_v6_0_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Best Quote Execution Report
  if template_id == 10414 then
    return eurex_cash_eti_t7_v6_0_dissect.best_quote_execution_report(buffer, offset, packet, parent)
  end
  -- Dissect Best Quote Response
  if template_id == 10413 then
    return eurex_cash_eti_t7_v6_0_dissect.best_quote_response(buffer, offset, packet, parent)
  end
  -- Dissect Broadcast Error Notification
  if template_id == 10032 then
    return eurex_cash_eti_t7_v6_0_dissect.broadcast_error_notification(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request
  if template_id == 10118 then
    return eurex_cash_eti_t7_v6_0_dissect.cross_request(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request Response
  if template_id == 10119 then
    return eurex_cash_eti_t7_v6_0_dissect.cross_request_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Broadcast
  if template_id == 10122 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_all_order_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Nr Response
  if template_id == 10124 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_all_order_nr_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Quote Event Broadcast
  if template_id == 10308 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_all_order_quote_event_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Request
  if template_id == 10120 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_all_order_request(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Order Response
  if template_id == 10121 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_all_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Broadcast
  if template_id == 10410 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Request
  if template_id == 10408 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Delete All Quote Response
  if template_id == 10409 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_all_quote_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Broadcast
  if template_id == 10112 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_order_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Nr Response
  if template_id == 10111 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_order_nr_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Response
  if template_id == 10110 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Single Request
  if template_id == 10109 then
    return eurex_cash_eti_t7_v6_0_dissect.delete_order_single_request(buffer, offset, packet, parent)
  end
  -- Dissect Enter Best Quote Request
  if template_id == 10412 then
    return eurex_cash_eti_t7_v6_0_dissect.enter_best_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Extended Deletion Report
  if template_id == 10128 then
    return eurex_cash_eti_t7_v6_0_dissect.extended_deletion_report(buffer, offset, packet, parent)
  end
  -- Dissect Forced Logout Notification
  if template_id == 10012 then
    return eurex_cash_eti_t7_v6_0_dissect.forced_logout_notification(buffer, offset, packet, parent)
  end
  -- Dissect Forced User Logout Notification
  if template_id == 10043 then
    return eurex_cash_eti_t7_v6_0_dissect.forced_user_logout_notification(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Request
  if template_id == 10020 then
    return eurex_cash_eti_t7_v6_0_dissect.gateway_request(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Response
  if template_id == 10021 then
    return eurex_cash_eti_t7_v6_0_dissect.gateway_response(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if template_id == 10011 then
    return eurex_cash_eti_t7_v6_0_dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Notification
  if template_id == 10023 then
    return eurex_cash_eti_t7_v6_0_dissect.heartbeat_notification(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Enrichment Rule Id List Request
  if template_id == 10040 then
    return eurex_cash_eti_t7_v6_0_dissect.inquire_enrichment_rule_id_list_request(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Enrichment Rule Id List Response
  if template_id == 10041 then
    return eurex_cash_eti_t7_v6_0_dissect.inquire_enrichment_rule_id_list_response(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Session List Request
  if template_id == 10035 then
    return eurex_cash_eti_t7_v6_0_dissect.inquire_session_list_request(buffer, offset, packet, parent)
  end
  -- Dissect Inquire Session List Response
  if template_id == 10036 then
    return eurex_cash_eti_t7_v6_0_dissect.inquire_session_list_response(buffer, offset, packet, parent)
  end
  -- Dissect Inquire User Request
  if template_id == 10038 then
    return eurex_cash_eti_t7_v6_0_dissect.inquire_user_request(buffer, offset, packet, parent)
  end
  -- Dissect Inquire User Response
  if template_id == 10039 then
    return eurex_cash_eti_t7_v6_0_dissect.inquire_user_response(buffer, offset, packet, parent)
  end
  -- Dissect Legal Notification Broadcast
  if template_id == 10037 then
    return eurex_cash_eti_t7_v6_0_dissect.legal_notification_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Logon Request
  if template_id == 10000 then
    return eurex_cash_eti_t7_v6_0_dissect.logon_request(buffer, offset, packet, parent)
  end
  -- Dissect Logon Response
  if template_id == 10001 then
    return eurex_cash_eti_t7_v6_0_dissect.logon_response(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request
  if template_id == 10002 then
    return eurex_cash_eti_t7_v6_0_dissect.logout_request(buffer, offset, packet, parent)
  end
  -- Dissect Logout Response
  if template_id == 10003 then
    return eurex_cash_eti_t7_v6_0_dissect.logout_response(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Request
  if template_id == 10405 then
    return eurex_cash_eti_t7_v6_0_dissect.mass_quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Response
  if template_id == 10406 then
    return eurex_cash_eti_t7_v6_0_dissect.mass_quote_response(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Nr Response
  if template_id == 10108 then
    return eurex_cash_eti_t7_v6_0_dissect.modify_order_nr_response(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Response
  if template_id == 10107 then
    return eurex_cash_eti_t7_v6_0_dissect.modify_order_response(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Single Request
  if template_id == 10106 then
    return eurex_cash_eti_t7_v6_0_dissect.modify_order_single_request(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Single Short Request
  if template_id == 10126 then
    return eurex_cash_eti_t7_v6_0_dissect.modify_order_single_short_request(buffer, offset, packet, parent)
  end
  -- Dissect New Order Nr Response
  if template_id == 10102 then
    return eurex_cash_eti_t7_v6_0_dissect.new_order_nr_response(buffer, offset, packet, parent)
  end
  -- Dissect New Order Response
  if template_id == 10101 then
    return eurex_cash_eti_t7_v6_0_dissect.new_order_response(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Request
  if template_id == 10100 then
    return eurex_cash_eti_t7_v6_0_dissect.new_order_single_request(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single Short Request
  if template_id == 10125 then
    return eurex_cash_eti_t7_v6_0_dissect.new_order_single_short_request(buffer, offset, packet, parent)
  end
  -- Dissect News Broadcast
  if template_id == 10031 then
    return eurex_cash_eti_t7_v6_0_dissect.news_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Notification
  if template_id == 10104 then
    return eurex_cash_eti_t7_v6_0_dissect.order_exec_notification(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Report Broadcast
  if template_id == 10117 then
    return eurex_cash_eti_t7_v6_0_dissect.order_exec_report_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Order Exec Response
  if template_id == 10103 then
    return eurex_cash_eti_t7_v6_0_dissect.order_exec_response(buffer, offset, packet, parent)
  end
  -- Dissect Party Action Report
  if template_id == 10042 then
    return eurex_cash_eti_t7_v6_0_dissect.party_action_report(buffer, offset, packet, parent)
  end
  -- Dissect Party Entitlements Update Report
  if template_id == 10034 then
    return eurex_cash_eti_t7_v6_0_dissect.party_entitlements_update_report(buffer, offset, packet, parent)
  end
  -- Dissect Quote Activation Notification
  if template_id == 10411 then
    return eurex_cash_eti_t7_v6_0_dissect.quote_activation_notification(buffer, offset, packet, parent)
  end
  -- Dissect Quote Activation Request
  if template_id == 10403 then
    return eurex_cash_eti_t7_v6_0_dissect.quote_activation_request(buffer, offset, packet, parent)
  end
  -- Dissect Quote Activation Response
  if template_id == 10404 then
    return eurex_cash_eti_t7_v6_0_dissect.quote_activation_response(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution Report
  if template_id == 10407 then
    return eurex_cash_eti_t7_v6_0_dissect.quote_execution_report(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Broadcast
  if template_id == 10415 then
    return eurex_cash_eti_t7_v6_0_dissect.rfq_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Request
  if template_id == 10401 then
    return eurex_cash_eti_t7_v6_0_dissect.rfq_request(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Response
  if template_id == 10402 then
    return eurex_cash_eti_t7_v6_0_dissect.rfq_response(buffer, offset, packet, parent)
  end
  -- Dissect Reject
  if template_id == 10010 then
    return eurex_cash_eti_t7_v6_0_dissect.reject(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Me Message Request
  if template_id == 10026 then
    return eurex_cash_eti_t7_v6_0_dissect.retransmit_me_message_request(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Me Message Response
  if template_id == 10027 then
    return eurex_cash_eti_t7_v6_0_dissect.retransmit_me_message_response(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request
  if template_id == 10008 then
    return eurex_cash_eti_t7_v6_0_dissect.retransmit_request(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Response
  if template_id == 10009 then
    return eurex_cash_eti_t7_v6_0_dissect.retransmit_response(buffer, offset, packet, parent)
  end
  -- Dissect Service Availability Broadcast
  if template_id == 10030 then
    return eurex_cash_eti_t7_v6_0_dissect.service_availability_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Subscribe Request
  if template_id == 10025 then
    return eurex_cash_eti_t7_v6_0_dissect.subscribe_request(buffer, offset, packet, parent)
  end
  -- Dissect Subscribe Response
  if template_id == 10005 then
    return eurex_cash_eti_t7_v6_0_dissect.subscribe_response(buffer, offset, packet, parent)
  end
  -- Dissect Tm Trading Session Status Broadcast
  if template_id == 10501 then
    return eurex_cash_eti_t7_v6_0_dissect.tm_trading_session_status_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Throttle Update Notification
  if template_id == 10028 then
    return eurex_cash_eti_t7_v6_0_dissect.throttle_update_notification(buffer, offset, packet, parent)
  end
  -- Dissect Trade Broadcast
  if template_id == 10500 then
    return eurex_cash_eti_t7_v6_0_dissect.trade_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Broadcast
  if template_id == 10307 then
    return eurex_cash_eti_t7_v6_0_dissect.trading_session_status_broadcast(buffer, offset, packet, parent)
  end
  -- Dissect Trailing Stop Update Notification
  if template_id == 10127 then
    return eurex_cash_eti_t7_v6_0_dissect.trailing_stop_update_notification(buffer, offset, packet, parent)
  end
  -- Dissect Unsubscribe Request
  if template_id == 10006 then
    return eurex_cash_eti_t7_v6_0_dissect.unsubscribe_request(buffer, offset, packet, parent)
  end
  -- Dissect Unsubscribe Response
  if template_id == 10007 then
    return eurex_cash_eti_t7_v6_0_dissect.unsubscribe_response(buffer, offset, packet, parent)
  end
  -- Dissect User Login Request
  if template_id == 10018 then
    return eurex_cash_eti_t7_v6_0_dissect.user_login_request(buffer, offset, packet, parent)
  end
  -- Dissect User Login Response
  if template_id == 10019 then
    return eurex_cash_eti_t7_v6_0_dissect.user_login_response(buffer, offset, packet, parent)
  end
  -- Dissect User Logout Request
  if template_id == 10029 then
    return eurex_cash_eti_t7_v6_0_dissect.user_logout_request(buffer, offset, packet, parent)
  end
  -- Dissect User Logout Response
  if template_id == 10024 then
    return eurex_cash_eti_t7_v6_0_dissect.user_logout_response(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
eurex_cash_eti_t7_v6_0_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return eurex_cash_eti_t7_v6_0_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = eurex_cash_eti_t7_v6_0_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = eurex_cash_eti_t7_v6_0_display.payload(buffer, packet, parent)
  local element = parent:add(eurex_cash_eti_t7_v6_0.fields.payload, range, display)

  return eurex_cash_eti_t7_v6_0_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Template Id
eurex_cash_eti_t7_v6_0_size_of.template_id = 2

-- Display: Template Id
eurex_cash_eti_t7_v6_0_display.template_id = function(value)
  return "Template Id: "..value
end

-- Dissect: Template Id
eurex_cash_eti_t7_v6_0_dissect.template_id = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.template_id(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Body Len
eurex_cash_eti_t7_v6_0_size_of.body_len = 4

-- Display: Body Len
eurex_cash_eti_t7_v6_0_display.body_len = function(value)
  return "Body Len: "..value
end

-- Dissect: Body Len
eurex_cash_eti_t7_v6_0_dissect.body_len = function(buffer, offset, packet, parent)
  local length = eurex_cash_eti_t7_v6_0_size_of.body_len
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_cash_eti_t7_v6_0_display.body_len(value, buffer, offset, packet, parent)

  parent:add(eurex_cash_eti_t7_v6_0.fields.body_len, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
eurex_cash_eti_t7_v6_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + eurex_cash_eti_t7_v6_0_size_of.body_len

  index = index + eurex_cash_eti_t7_v6_0_size_of.template_id

  return index
end

-- Display: Message Header
eurex_cash_eti_t7_v6_0_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
eurex_cash_eti_t7_v6_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 4 Byte Unsigned Fixed Width Integer
  index, body_len = eurex_cash_eti_t7_v6_0_dissect.body_len(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer
  index, template_id = eurex_cash_eti_t7_v6_0_dissect.template_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
eurex_cash_eti_t7_v6_0_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = eurex_cash_eti_t7_v6_0_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_cash_eti_t7_v6_0_display.message_header(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.message_header, range, display)
  end

  return eurex_cash_eti_t7_v6_0_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
eurex_cash_eti_t7_v6_0_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
eurex_cash_eti_t7_v6_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = eurex_cash_eti_t7_v6_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 78 branches
  index = eurex_cash_eti_t7_v6_0_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
eurex_cash_eti_t7_v6_0_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = eurex_cash_eti_t7_v6_0_display.message(buffer, packet, parent)
    parent = parent:add(eurex_cash_eti_t7_v6_0.fields.message, range, display)
  end

  eurex_cash_eti_t7_v6_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < eurex_cash_eti_t7_v6_0_size_of.message_header(buffer, index) then
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
eurex_cash_eti_t7_v6_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = eurex_cash_eti_t7_v6_0_dissect.message(buffer, index, packet, parent, size_of_message)
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
function eurex_cash_eti_t7_v6_0.init()
end

-- Dissector for Eurex Cash Eti T7 6.0
function eurex_cash_eti_t7_v6_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = eurex_cash_eti_t7_v6_0.name

  -- Dissect protocol
  local protocol = parent:add(eurex_cash_eti_t7_v6_0, buffer(), eurex_cash_eti_t7_v6_0.description, "("..buffer:len().." Bytes)")
  return eurex_cash_eti_t7_v6_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, eurex_cash_eti_t7_v6_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.eurex_cash_eti_t7_v6_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Eurex Cash Eti T7 6.0
local function eurex_cash_eti_t7_v6_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.eurex_cash_eti_t7_v6_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = eurex_cash_eti_t7_v6_0
  eurex_cash_eti_t7_v6_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Cash Eti T7 6.0
eurex_cash_eti_t7_v6_0:register_heuristic("tcp", eurex_cash_eti_t7_v6_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 6.0
--   Date: Thursday, October 19, 2017
--   Specification: T7-Enhanced-Trading-Interface-Manual.pdf
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
